# Sprint 8 Improcode back: Barcelona Marathon

Restful CRUD API made with Node.js and Express with MySql database for Sprint 8 Improcode: Barcelona Marathon. 


## Features:

* CRUD runners from the event with Node.js and Express.
* Info map with  [Mapbox](https://www.mapbox.com/).
* Data graph with [Chart.js](https://www.chartjs.org/).
* [Calendar](https://fullcalendar.io/) with some events.

## Installation:

1. Clone repository:

    ```bash
    git clone https://github.com/fran-cesc/Sprint_8_improCode_back.git
    ```
2. Enter the directory:

    ```bash
    cd Sprint_8_improCode_back
    ```

3. Install node packages:
  
    ```bash
    npm install
    ```

4. Rename .env.template to .env and add your database settings.

5. Import [database](database\Improcode_database.sql) to your database server and start it.

5. Start server with nodemon.

        ```bash
        nodemon index.js
        ```