'use strict'

const express = require('express');
const cookieSession = require('cookie-session');
const apiai = require('apiai');
const bodyParser = require('body-parser')
const mysql = require('mysql');
const im = require('./IntentManager.js');
const constants = require('./constants.js');
const app = express();
const ai = apiai('9042474a853848ae9fcf0b0b8292f792');
const connection = mysql.createConnection({
  host : 'localhost',
  user : 'root',
  password : 'root',
  db : 'quiddity'
});

const googleMaps = require('@google/maps').createClient({
    key : 'AIzaSyBk6Ms0o4SoXkmdOQJyVN2tl6gPu_bWICw',
    Promise: require('q').Promise
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
        switch(response.result.metadata.intentName) {
            case constants.FIND_FOOD : im.findFood(res, parameters); break;
            case constants.FIND_RESTAURANT : im.findRestaurant(res, parameters); break;
            case constants.FIND_FOOD_RESTAURANT : im.findFoodRestaurant(res, parameters); break;
        }
    });

    request.on('error', (error) => {
        console.log(error);
    });

    request.end();
    
});

app.post('/places', (req, res) => {

    var a = {
      query: 'food delivery',
      language: 'en',
      location: [14.5528663,121.0496398],
      radius: 1500,
      opennow: true
    };

    googleMaps.places(a)
    .asPromise()
    .then(function(response) {

    });

    res.end();
});

app.listen(8000, () => {
    console.log('Listening at localhost:8000');
});
