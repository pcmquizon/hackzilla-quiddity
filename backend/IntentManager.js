
'use strict';

const mysql = require('mysql');
const connection = mysql.createConnection({
  host : 'localhost',
  user : 'root',
  password : 'root',
  db : 'quiddity'
});
 

exports.findFood = function(res, parameters) {
    console.log(parameters);
    const { food } = parameters;
    const query = 'SELECT price FROM food WHERE name = ?;';
    
    // connection.query(query, [food], (err, rows) => {
    //     console.log(rows);
    //     res.status(200).send({message: 'Ordered ' + response.result.parameters.food +
    //         ' from ' + response.result.parameters.store +
    //         ' for ' + rows[0].price + 'pesos.'});
    // });
    
    res.status(200).send({
        message: `Here are the restaurants with ${food}`
    });
}

exports.findRestaurant = function(parameters) {
    console.log(parameters);
    const { restaurant } = parameters;

};

exports.findFoodRestaurant = function(parameters) {
    console.log(parameters);
    const { food, restaurant } = parameters;

    const query = 'SELECT price FROM food WHERE name = ?;';

    // connection.query(query, [food], (err, rows) => {
    //     console.log(rows);
    //     res.status(200).send({message: 'Ordered ' + response.result.parameters.food +
    //         ' from ' + response.result.parameters.store +
    //         ' for ' + rows[0].price + 'pesos.'});
    // });

}
