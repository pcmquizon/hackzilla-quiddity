DROP DATABASE IF EXISTS quiddity;
CREATE DATABASE IF NOT EXISTS quiddity;
USE quiddity;

CREATE TABLE user (
    id INT AUTO_INCREMENT NOT NULL,
    username VARCHAR(50),
    password VARCHAR(50),
    email VARCHAR(254) NOT NULL,
    credit_card_num VARCHAR(16),
    credit_card_type VARCHAR(15),
    PRIMARY KEY (id),
    UNIQUE KEY (username),
    UNIQUE KEY (credit_card_num)
);

CREATE TABLE restaurant (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    longitude DOUBLE,
    latitude DOUBLE,
    PRIMARY KEY (id)
);

CREATE TABLE food (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(100) NOT NULL,
    resto_id INT NOT NULL,
    price FLOAT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (resto_id) REFERENCES restaurant(id)
);

CREATE TABLE food_category (
    food_id INT NOT NULL,
    category VARCHAR(25) NOT NULL,
    PRIMARY KEY (food_id, category),
    FOREIGN KEY (food_id) REFERENCES food(id)
);

CREATE TABLE user_order (
    id INT AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL,
    resto_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (resto_id) REFERENCES restaurant(id)
);

CREATE TABLE order_foods (
    order_id INT NOT NULL,
    food_id INT NOT NULL,
    qty INT NOT NULL,
    PRIMARY KEY (order_id, food_id),
    FOREIGN KEY (order_id) REFERENCES user_order(id),
    FOREIGN KEY (food_id) REFERENCES food(id)
);
