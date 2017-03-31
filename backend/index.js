'use strict'

const express = require('express');
const cookieSession = require('cookie-session');
const apiai = require('apiai');
const bodyParser = require('body-parser')
const mysql = require('mysql');

const app = express();
const ai = apiai('9042474a853848ae9fcf0b0b8292f792');
const connection = mysql.createConnection({
  host : 'localhost',
  user : 'root',
  password : 'root',
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
    console.log('req ' + req.body)
    const request = ai.textRequest(req.body.query, {sessionId: '69'});

    request.on('response', (response) => {
        console.log(response)
        const query = 'SELECT price FROM food WHERE name = ?;';
        console.log(response.result.parameters.food)
        connection.query(query, [response.result.parameters.food], (err, rows) => {
            console.log(rows);
            res.status(200).send({message: 'Ordered ' + response.result.parameters.food +
                ' from ' + response.result.parameters.store +
                ' for ' + rows[0].price + 'pesos.'});
        });
    });

    request.on('error', (error) => {
        console.log(error);
    });

    request.end();
});

app.post('/places', (req, res) => {

});

app.listen(8000, () => {
    console.log('Listening at localhost:8000');
});
