
'use strict';

const mysql = require('mysql');
const exec = require('child_process').exec;
const connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : 'root',
    database : 'quiddity'
});

const googleMaps = require('@google/maps').createClient({
    key : 'AIzaSyBk6Ms0o4SoXkmdOQJyVN2tl6gPu_bWICw',
    Promise: require('q').Promise
});


exports.findFood = function(res, parameters) {
  console.log(parameters);
    exec('python3 ../knn.py find-food ' + parameters.username + ' 4 ' + parameters.food[0],
        function callback(error, stdout, stderr) {
            stdout = {data: JSON.parse(stdout), food: parameters.food[0], username: parameters.username, intent: parameters.intent};
            console.log(error);
            console.log(stdout);
            console.log(stderr);
            res.send(stdout);
    });
}

exports.findRestaurant = function(res, parameters) {
    const query = `SELECT id FROM restaurant WHERE name = "${parameters.restaurant}" LIMIT 1`;
    console.log(parameters);
    connection.query(query, [], (err, rows) => {
        let id = rows[0].id;
        exec('python3 ../knn.py find-restaurant ' + parameters.username + ' 4 ' + id,
            function callback(error, stdout, stderr) {
                stdout = {data: JSON.parse(stdout), username: parameters.username, intent: parameters.intent};
                res.send(stdout);
            });
    });
};

exports.findFoodRestaurant = function(res, parameters) {
    if (parameters.resto_id != 'undefined') {
      let id = parameters.resto_id;
      console.log('python3 ../knn.py find-food-restaurant ' + parameters.username + ' 4 ' + parameters.food
          + ' ' + id);
      exec('python3 ../knn.py find-food-restaurant ' + parameters.username + ' 4 ' + parameters.food
          + ' ' + id, function callback(error, stdout, stderr){

          stdout = {data: JSON.parse(stdout),  food: parameters.food, username: parameters.username, intent: 'find-food-restaurant'};
          res.send(stdout);
      });
    } else {
      const query = `SELECT id FROM restaurant WHERE name = "${parameters.restaurant}" LIMIT 1`;

      connection.query(query, [], (err, rows) => {
          console.log(err);
          console.log(rows);
          let id = rows[0].id;
          console.log('python3 ../knn.py find-food-restaurant ' + parameters.username + ' 4 ' + parameters.food
              + ' ' + id);
          exec('python3 ../knn.py find-food-restaurant ' + parameters.username + ' 4 ' + parameters.food
              + ' ' + id, function callback(error, stdout, stderr){
              stdout = {data: JSON.parse(stdout),  food: parameters.food, username: parameters.username, intent: parameters.intent};
              res.send(stdout);
          });
      });
    }
};
// IM HUNGRY
exports.findMeal = function(res, parameters) {
    exec('python3 ../knn.py find-meal ' + parameters.username + ' 4', function callback(error, stdout, stderr){
        console.log(error)
        console.log(stdout)
        console.log(stderr)
        stdout = {data: JSON.parse(stdout), intent: parameters.intent};
        res.send(stdout);
    });
};
