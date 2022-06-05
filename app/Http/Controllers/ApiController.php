<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Maps;
use Illuminate\Support\Facades\Log;

class ApiController extends Controller
{
    
    protected $token = "sk.eyJ1IjoiYWpheWdhcmdhIiwiYSI6ImNram1rM21wNjNtcjUzMXNjenE3bm9vYXUifQ.4oQ--6S-yF55fnXdUjs2Zw"; //access token

    /**
     * All business logic handled here.
     */
    public function getmaps(Request $request){
        // logic to get all map json data.
        $inputData = explode(',',$request->data);
        $inputData = array_filter($inputData, 'strlen');
        $format = $request->format;

        $existingData = Maps::whereIn('title',$inputData)
                            ->select('title', 'latitude', 'longitude')
                            ->get();
       
        if(count($existingData)>0){
            foreach($existingData as $existingDataVal){
                if(in_array($existingDataVal->title,$inputData)){
                    unset($inputData[array_search($existingDataVal->title,$inputData)]);
                }
            }
            $inputData = array_merge($inputData); 
        }

        if(count($inputData)>0){
            //Do API CALL AND LATER INSERT RESPONSE IN DB
            $searchKeyName = $inputData[0];
            $curlResponse = $this->curlCall($searchKeyName);
            if($curlResponse["code"]==200){
                $apiResponse = json_decode($curlResponse["response"]);
                if(count($apiResponse->features)>0){
                    if(isset($apiResponse->features[0]->geometry->coordinates)){
                        $latitude = $apiResponse->features[0]->geometry->coordinates[1];
                        $longitude = $apiResponse->features[0]->geometry->coordinates[0];

                        $Maps = new Maps;
                        $Maps->title = $searchKeyName;
                        $Maps->latitude = $latitude;
                        $Maps->longitude = $longitude;
                        $Maps->save();

                        //Build Object and append to $existingData
                        $tempArray =  [
                            'title' => $searchKeyName,
                            'latitude' => $latitude,
                            'longitude' => $longitude,
                        ];
                        $existingData = $existingData->toArray();
                        array_push($existingData,$tempArray);
                        $pathValue = ($format=="true")? 1:0;
                        $existingData = json_decode(json_encode((object) $existingData), $pathValue);
                        
                    }
                }
            }else{
                return response()->json($curlResponse,$curlResponse["code"]);
            }

            
        }else{
            // print_r('No API call');
        }

        if($format=="true"){
            return response()->json($existingData,201);
        }else{
            $data = "name,latitude,longitude";
                foreach($existingData as $value){
                    $data .= "\n".$value->title.",".$value->latitude.",".$value->longitude;
                };
            return response( $data." " , 200)
                    ->header('Content-Type', 'text/plain');    
        }  
         
    }

    public function index(){
        return 1;
    }

    /**
     * Curl Function call.
     */
    public function curlCall($key){
        $url = "https://api.mapbox.com/geocoding/v5/mapbox.places/".$key.".json?access_token=".$this->token;
      
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        //make request
        $code = 200;
        $err = "";
		try {
            $response = curl_exec ($ch);
        } catch (Exception $e) {
			//catch client exception
            $code = 400;
            $err = $e->getMessage() . "'";
		}
        $err = curl_error($ch);  
        curl_close ($ch);
        return array("code"=>$code,"response"=>$response,"err"=>$err); 
    }
}
