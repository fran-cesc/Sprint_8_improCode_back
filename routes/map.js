const express = require("express");
const app = express();

const dotenv = require("dotenv");
dotenv.config();


// Database connection
const {connection} = require("../app/config/config.db");


// Get all map positions
const getAllPositions = (request, response) => {
    connection.query("SELECT * FROM map", 
    (error, results) => {
        if(error)
            throw error;
        response.status(200).json(results);
    });
};

// Route
app.route("/map")
.get(getAllPositions);

module.exports = app;