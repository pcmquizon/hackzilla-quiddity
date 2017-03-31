'use strict'

const express = require('express');
const cookieSession = require('cookie-session');
const apiai = require('apiai');
const bodyParser = require('body-parser')
const mysql = require('mysql');
const im = require('./IntentManager.js');
const constants = require('./constants.js');
const app = express();
const ai = apiai('61fcbc0a546640cf9432593611d8ba66');
const connection = mysql.createConnection({
  host : 'localhost',
  user : 'root',
  password : '',
  db : 'quiddity'
});

connection.connect((err) => {
    if (!err) {
        connection.query('USE quiddity');
        console.log("Database connected!");
    } else {
        console.log("Error in database connection!");
    }
});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.post('/query', (req, res) => {

    const { query, location } = req.body;
    const request = ai.textRequest(query, {sessionId: '69'});

    request.on('response', (response) => {
        const { parameters } = response.result;
        console.log(response.result.metadata.intentName );
        switch(response.result.metadata.intentName) {
            case constants.FIND_FOOD : im.findRestaurant(res, parameters, location); break;
            case constants.FIND_RESTAURANT : im.findFood(res, parameters); break;
            case constants.FIND_FOOD_RESTAURANT : im.findFoodRestaurant(res, parameters); break;
            case constants.FIND_MEAL : 
                im.findMeal(res, parameters); break;
        }
    });

    request.on('error', (error) => {
        console.log(error);
    });

    request.end();

});

app.listen(8000, () => {
    console.log('Listening at localhost:8000');
});
