const express = require("express");
const app = express();

const dotenv = require("dotenv");
dotenv.config();


// Database connection
const {connection} = require("../app/config/config.db");


// Get all runners
const getAllRunners = (request, response) => {
    connection.query("SELECT * FROM runners", 
    (error, results) => {
        if(error)
            throw error;
        response.status(200).json(results);
    });
};

// Route
app.route("/runners")
.get(getAllRunners);


// Post a runner
const postRunner = (request, response) => {
    console.log(request.body.value);
    console.log(request.body);
    const {first_name, last_name, gender, country, race_time, best_time} = request.body;
    console.log("valors rebuts a request.body:", request.body);
    connection.query(
    "INSERT INTO runners(first_name, last_name, gender, country, race_time, best_time) VALUES (?,?,?,?,?,?)", 
    [first_name, last_name, gender, country, race_time, best_time],
    (error, results) => {
        if(error){
            throw error;
        }
        // response.status(201).json({"Runner added succesfully": results.affectedRows});
        console.log('Runner added successfuly, results:', results)
    }
    );
};

// Route
app.route("/runners")
.post(postRunner);


// Delete runner
const delRunner = (request, response) => {
    const id = request.params.id;
    connection.query("Delete from runners where id = ?", 
    [id],
    (error, results) => {
        if(error)
            throw error;
        response.status(201).json({"Runner removed successfully":results.affectedRows});
    });
};

// Route
app.route("/runners/:id")
.delete(delRunner);


// Update runner
const updateRunner = (request, response) => {
    const id = request.params.id;
    const {first_name, last_name, gender, country, race_time, best_time} = request.body;
    connection.query(
    `UPDATE runners SET first_name=?, last_name=?, gender=?, country=?, race_time=?, best_time=? WHERE ID=?`,
    [first_name, last_name, gender, country, race_time, best_time, id],
    (error, results) => {
        if(error)
            throw error;
        response.status(201).json({"Runner updated succesfully": results.affectedRows});
    }
    );
};

// Route
app.route("/runners/:id")
.patch(updateRunner);


module.exports = app;