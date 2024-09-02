const express = require("express");
const app = express();

const dotenv = require("dotenv");
dotenv.config();


// Database connection
const {connection} = require("../app/config/config.db");


// Get total participants
const getTotals = (request, response) => {
    connection.query("SELECT * FROM total_numbers", 
    (error, results) => {
        if(error)
            throw error;
        response.status(200).json(results);
    });
};

// Route
app.route("/graph")
.get(getTotals);

module.exports = app;