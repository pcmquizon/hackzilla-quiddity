DROP DATABASE IF EXISTS quiddity;
CREATE DATABASE IF NOT EXISTS quiddity;
USE quiddity;

CREATE TABLE restaurant (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    longitude DOUBLE NOT NULL,
    latitude DOUBLE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE food (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    price FLOAT NOT NULL,
    resto_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (resto_id) REFERENCES restaurant(id)
);

CREATE TABLE food_tag (
    food_id INT NOT NULL,
    tag VARCHAR(50) NOT NULL,
    PRIMARY KEY (food_id, tag),
    FOREIGN KEY (food_id) REFERENCES food(id)
);

CREATE TABLE user_order (
    id INT NOT NULL AUTO_INCREMENT,
    resto_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (resto_id) REFERENCES restaurant(id)
);

CREATE TABLE order_food (
    order_id INT NOT NULL,
    food_id INT NOT NULL,
    qty INT NOT NULL,
    PRIMARY KEY (order_id, food_id),
    FOREIGN KEY (order_id) REFERENCES user_order(id),
    FOREIGN KEY (food_id) REFERENCES food(id)
);
