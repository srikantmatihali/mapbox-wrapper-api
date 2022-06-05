# MAPBOX API wrapper

License: MIT

Authors: Srikanth V Mattihalli [github](https://github.com/srikantmatihali) | [Linkedin](https://www.linkedin.com/in/srikanthvmattihalli/) | [Twitter](https://twitter.com/srikantmatihali/) | <a href="mailto:srikantmatihali@gmail.com?"><img src="https://img.shields.io/badge/gmail-%23DD0031.svg?&style=for-the-badge&logo=gmail&logoColor=white"/></a>

## Problem Statement

Please refer problem-statement.pdf


## Tech Stack
- php Laravel
- Mysql

## Project setup instructions

Install LAMP Stack and get nginx/apache, mysql, php running.

Import MYSQL database
```sh
    cd /path/mapbox-wrapper-api/db ;
    mysql -u username -p mapbox < mapbox.sql
```

Curl Request
```sh
    curl --location --request POST 'http://localhost:8000/api/maps' \
    --form 'data="melbourne,chicago,hyderabad"' \
    --form 'format="false"'
```

or Postman Link
https://www.getpostman.com/collections/29324cbef256c2c42f03
