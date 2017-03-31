
'use strict';

const mysql = require('mysql');
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
    const { food } = parameters;
    const query = 'SELECT price FROM food WHERE name = ?;';

    res.status(200).send({
        message: `Here are the restaurants with ${food}`
    });
}

exports.findRestaurant = function(res, parameters, location) {

    const { food } = parameters;
    const { latitude, longitude } = JSON.parse(location);
    /*
        get restaurants from google api
        and compare with restaurants from db
    */
    // let pojo = {};

    // googleMaps.places({
    //     query: 'food delivery',
    //     language: 'en',
    //     location: [latitude, longitude],
    //     opennow: true,
    //     radius: 2000,
    // })
    // .asPromise()
    // .then(function(response) {
    //     response.json.results.forEach(e => {
    //         pojo[e.place_id] = e;
    //     });
    //     function getNextPage() {
    //         return googleMaps.places({
    //             pagetoken: response.json.next_page_token
    //         }).asPromise();
    //     }
    //     return getNextPage()
    //             .then(function repeatWhileInvalid(nextResponse) {
    //                 if (nextResponse.json.status !== 'INVALID_REQUEST') {
    //                     return nextResponse;
    //                 }
    //                 // Wait one second, and try again.
    //                 return new Promise(function(resolve) {
    //                     setTimeout(resolve, 1000);
    //                 })
    //                 .then(getNextPage)
    //                 .then(repeatWhileInvalid);
    //             });
    // })
    // .then(function(nextResponse) {
    //     nextResponse.json.results.forEach(e => {
    //         pojo[e.place_id] = e;
    //     });
    // });
    const query = `SELECT DISTINCT (restaurant.id), min(food.price), max(food.price) FROM restaurant JOIN food ON restaurant.id = food.resto_id WHERE food.name LIKE \"%${food[0]}%\" OR food.id IN ( SELECT food_id FROM food_category WHERE category LIKE \"%${food[0]}%\") GROUP BY restaurant.id;`
    connection.query(query, [food[0], food[0]], (err, rows) => {
        err? console.log(err) : res.send(rows);
    });

};

exports.findFoodRestaurant = function(parameters) {
    console.log(parameters);
    const { food, restaurant } = parameters;

    // connection.query(query, [food], (err, rows) => {
    //     console.log(rows);
    //     res.status(200).send({message: 'Ordered ' + response.result.parameters.food +
    //         ' from ' + response.result.parameters.store +
    //         ' for ' + rows[0].price + 'pesos.'});
    // });
};

exports.findMeal = function(parameters) {
          
};
