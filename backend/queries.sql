INSERT INTO restaurant(name) VALUES("Yellow Cab");
INSERT INTO restaurant(name) VALUES("McDonald\'s");
INSERT INTO restaurant(name) VALUES("Jonas");
INSERT INTO restaurant(name) VALUES("Jollibee");
INSERT INTO restaurant(name) VALUES("Brothers Burger");
INSERT INTO restaurant(name) VALUES("Chowking");
INSERT INTO restaurant(name) VALUES("KFC");
INSERT INTO restaurant(name) VALUES("S&R New York Style Pizza");
INSERT INTO restaurant(name) VALUES("Burger King");
INSERT INTO restaurant(name) VALUES("Heaven\'s Barbeque");
INSERT INTO restaurant(name) VALUES("Max\'s Restaurant");

        INSERT INTO food(name, resto_id, price) VALUES("Buffalo Wings with Blue Cheese Dip", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 225.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Buffalo Wings with Blue Cheese Dip' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'chicken');

        
        INSERT INTO food(name, resto_id, price) VALUES("Sausage Platter", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 285.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sausage Platter' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'meat');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sausage Platter' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'sausage');

        
        INSERT INTO food(name, resto_id, price) VALUES("Beef Nachos", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 255.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Beef Nachos' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Beef Nachos' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'nachos');

        
        INSERT INTO food(name, resto_id, price) VALUES("Asian Salad with Chicken Barbeque", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 125.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Asian Salad with Chicken Barbeque' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Asian Salad with Chicken Barbeque' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'salad');

        
        INSERT INTO food(name, resto_id, price) VALUES("Mango Asparagus Caesar Salad with Chicken Barbeque", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 135.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Mango Asparagus Caesar Salad with Chicken Barbeque' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Mango Asparagus Caesar Salad with Chicken Barbeque' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'salad');

        
        INSERT INTO food(name, resto_id, price) VALUES("Cheesy Pumpkin Soup", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 115.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheesy Pumpkin Soup' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'soup');

        
        INSERT INTO food(name, resto_id, price) VALUES("Cheesy Broccoli Soup", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 125.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheesy Broccoli Soup' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'soup');

        
        INSERT INTO food(name, resto_id, price) VALUES("Heaven Barsilog", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 155.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Heaven Barsilog' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'egg');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Heaven Barsilog' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'barbeque');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Heaven Barsilog' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'pork');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Heaven Barsilog' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'silog');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Heaven Barsilog' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Sausage Bowl", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 155.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sausage Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'egg');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sausage Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'sausage');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sausage Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'silog');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sausage Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chicken Bowl", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 165.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Liempo Bowl", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 175.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Liempo Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'liempo');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Liempo Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'pork');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Liempo Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'silog');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Liempo Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'egg');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Liempo Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Tapsilog Bowl", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 145.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Tapsilog Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'tapa');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Tapsilog Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'pork');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Tapsilog Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'egg');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Tapsilog Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'silog');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Tapsilog Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Cheese Burger Blast with Egg and Garlic Rice", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 155.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheese Burger Blast with Egg and Garlic Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'burger');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheese Burger Blast with Egg and Garlic Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'egg');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheese Burger Blast with Egg and Garlic Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Maple Cured Bacon and Egg with Garlic Rice", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 155.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Maple Cured Bacon and Egg with Garlic Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'bacon');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Maple Cured Bacon and Egg with Garlic Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'egg');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Maple Cured Bacon and Egg with Garlic Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Longganisa (Native Sausage) with Egg and Garlic Rice", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 135.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Longganisa (Native Sausage) with Egg and Garlic Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'longganisa');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Longganisa (Native Sausage) with Egg and Garlic Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'egg');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Longganisa (Native Sausage) with Egg and Garlic Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Sausage with Egg and Croissant", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 175.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sausage with Egg and Croissant' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'sausage');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sausage with Egg and Croissant' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'egg');

        
        INSERT INTO food(name, resto_id, price) VALUES("Maple Cured Bacon and Egg with Croissant", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 175.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Maple Cured Bacon and Egg with Croissant' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'bacon');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Maple Cured Bacon and Egg with Croissant' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'egg');

        
        INSERT INTO food(name, resto_id, price) VALUES("Cheeseburger", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 95.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheeseburger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Cheesy Hungarian", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 125.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheesy Hungarian' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'sausage');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheesy Hungarian' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'sandwich');

        
        INSERT INTO food(name, resto_id, price) VALUES("Beef Mushroom", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 155.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Beef Mushroom' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'soup');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Beef Mushroom' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'beef');

        
        INSERT INTO food(name, resto_id, price) VALUES("TINAPAsta in Pesto Sauce", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 125.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'TINAPAsta in Pesto Sauce' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'pasta');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'TINAPAsta in Pesto Sauce' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'fish');

        
        INSERT INTO food(name, resto_id, price) VALUES("Spaghetti Alla Arrabiata", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 99.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Spaghetti Alla Arrabiata' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'pasta');

        
        INSERT INTO food(name, resto_id, price) VALUES("Meatballs on Italian Herb Sauce", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 125.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Meatballs on Italian Herb Sauce' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'pasta');

        
        INSERT INTO food(name, resto_id, price) VALUES("Puttanesca", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 115.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Puttanesca' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'pasta');

        
        INSERT INTO food(name, resto_id, price) VALUES("Creamy Mushroom and Bacon Carbonara", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 115.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Creamy Mushroom and Bacon Carbonara' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'pasta');

        
        INSERT INTO food(name, resto_id, price) VALUES("Sausage Platter", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 285.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sausage Platter' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'sausage');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sausage Platter' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'barbeque');

        
        INSERT INTO food(name, resto_id, price) VALUES("One-half Chicken", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 275.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'One-half Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'chicken');

        
        INSERT INTO food(name, resto_id, price) VALUES("Pork Belly Whole Slab", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 265.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pork Belly Whole Slab' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'pork');

        
        INSERT INTO food(name, resto_id, price) VALUES("Angus Rib Eye with Crispy Potato Wedges", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 625.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Angus Rib Eye with Crispy Potato Wedges' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'beef');

        
        INSERT INTO food(name, resto_id, price) VALUES("Grilled Fish in Lemon Butter Sauce", (
            SELECT id FROM restaurant WHERE name = "Heaven\'s Barbeque"), 285.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Grilled Fish in Lemon Butter Sauce' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Heaven\'s Barbeque')), 'fish');

        
        INSERT INTO food(name, resto_id, price) VALUES("Sausage Breakfast", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 235.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sausage Breakfast' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'sausage');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sausage Breakfast' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'breakfast');

        
        INSERT INTO food(name, resto_id, price) VALUES("Corned Beef Breakfast", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 195.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Corned Beef Breakfast' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Corned Beef Breakfast' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'breakfast');

        
        INSERT INTO food(name, resto_id, price) VALUES("Beef Tapa Breakfast", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 215.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Beef Tapa Breakfast' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Beef Tapa Breakfast' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'breakfast');

        
        INSERT INTO food(name, resto_id, price) VALUES("Country Style Breakfast", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 215.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Country Style Breakfast' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'breakfast');

        
        INSERT INTO food(name, resto_id, price) VALUES("Garden Salad with Roasted Walnuts", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 178.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Garden Salad with Roasted Walnuts' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'salad');

        
        INSERT INTO food(name, resto_id, price) VALUES("Kani with Citrus Salad", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 178.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Kani with Citrus Salad' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'salad');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Kani with Citrus Salad' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'kani');

        
        INSERT INTO food(name, resto_id, price) VALUES("Caesar Salad with Chicken", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 188.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Caesar Salad with Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'salad');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Caesar Salad with Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'chicken');

        
        INSERT INTO food(name, resto_id, price) VALUES("Kani Salad Sandwich", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 165.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Kani Salad Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'salad');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Kani Salad Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'kani');

        
        INSERT INTO food(name, resto_id, price) VALUES("Ham and Cheese Sandwich", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 165.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Ham and Cheese Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'sandwich');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Ham and Cheese Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'ham');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chicken Salad Sandwich", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 165.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Salad Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'sandwich');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Salad Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'chicken');

        
        INSERT INTO food(name, resto_id, price) VALUES("Fish Fillet with Tofu and Fresh Leeks", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 165.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Fish Fillet with Tofu and Fresh Leeks' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'fish');

        
        INSERT INTO food(name, resto_id, price) VALUES("Original JONAS Pares", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 198.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Original JONAS Pares' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'pares');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Original JONAS Pares' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'soup');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chicken with Black Beans", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 195.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken with Black Beans' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'chicken');

        
        INSERT INTO food(name, resto_id, price) VALUES("Spaghetti and Meatballs", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 165.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Spaghetti and Meatballs' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'pasta');

        
        INSERT INTO food(name, resto_id, price) VALUES("Salmon Fillet with Soy and Sesame", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 285.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Salmon Fillet with Soy and Sesame' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'fish');

        
        INSERT INTO food(name, resto_id, price) VALUES("Pork Ribs Salt and Pepper", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 195.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pork Ribs Salt and Pepper' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'pork');

        
        INSERT INTO food(name, resto_id, price) VALUES("Prawn Tempura", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 248.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Prawn Tempura' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'shrimp');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chicken Wings Salt and Pepper", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 245.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Wings Salt and Pepper' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'chicken');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chicken with Salted Egg Yolk", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 245.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken with Salted Egg Yolk' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'chicken');

        
        INSERT INTO food(name, resto_id, price) VALUES("Sweet and Sour Fish", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 238.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sweet and Sour Fish' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'fish');

        
        INSERT INTO food(name, resto_id, price) VALUES("Lechon Paksiw", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 245.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Lechon Paksiw' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'pork');

        
        INSERT INTO food(name, resto_id, price) VALUES("Mixed Vegetables", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 149.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Mixed Vegetables' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'vegetables');

        
        INSERT INTO food(name, resto_id, price) VALUES("Wonton Noodle", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 185.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Wonton Noodle' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'noodle');

        
        INSERT INTO food(name, resto_id, price) VALUES("Beef Noodle", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 195.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Beef Noodle' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Beef Noodle' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'noodle');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chicken Noodle", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 175.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Noodle' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Noodle' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'noodle');

        
        INSERT INTO food(name, resto_id, price) VALUES("Seafood Noodle", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 210.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Seafood Noodle' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'seafood');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Seafood Noodle' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'noodle');

        
        INSERT INTO food(name, resto_id, price) VALUES("A Bit of Everything Noodle", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 225.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'A Bit of Everything Noodle' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'A Bit of Everything Noodle' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'A Bit of Everything Noodle' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'seafood');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'A Bit of Everything Noodle' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'noodle');

        
        INSERT INTO food(name, resto_id, price) VALUES("Asadio Siopao", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 45.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Asadio Siopao' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'pork');

        
        INSERT INTO food(name, resto_id, price) VALUES("Bola-bola Siopai", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 45.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Bola-bola Siopai' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'pork');

        
        INSERT INTO food(name, resto_id, price) VALUES("Jumbo Siopao", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 45.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Jumbo Siopao' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'pork');

        
        INSERT INTO food(name, resto_id, price) VALUES("Spring Rolls", (
            SELECT id FROM restaurant WHERE name = "Jonas"), 88.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Spring Rolls' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jonas')), 'vegetables');

        
        INSERT INTO food(name, resto_id, price) VALUES("Bros Burger Meal", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 270.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Bros Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Bros Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Big Brothers Meal", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 315.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Big Brothers Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Big Brothers Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Lamb Burger Meal", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 395.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Lamb Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'lamb');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Lamb Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Angus Burger Meal", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 395.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Angus Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Angus Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Pounder Meal", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 395.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pounder Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pounder Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Double Brothers Burger", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 215.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Double Brothers Burger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Double Brothers Burger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Blues Brother Burger Meal", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 295.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Blues Brother Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Blues Brother Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Ranchero Burger Meal", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 295.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Ranchero Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Ranchero Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Extreme Bacon Burger Meal", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 295.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Extreme Bacon Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'pork');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Extreme Bacon Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'burger');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Extreme Bacon Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'beef');

        
        INSERT INTO food(name, resto_id, price) VALUES("Manileno Sandwich", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 235.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Manileno Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'sandwich');

        
        INSERT INTO food(name, resto_id, price) VALUES("Cheese Steak Sandwich", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 235.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheese Steak Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'sandwich');

        
        INSERT INTO food(name, resto_id, price) VALUES("Grilled Chicken Sandwich", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 235.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Grilled Chicken Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Grilled Chicken Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'sandwich');

        
        INSERT INTO food(name, resto_id, price) VALUES("Crispy Fish Sandwich", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 235.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Crispy Fish Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'fish');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Crispy Fish Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'sandwich');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chorizo Sandwich", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 235.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chorizo Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'sandwich');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chicken Zumo", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 235.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Zumo' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Zumo' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'sandwich');

        
        INSERT INTO food(name, resto_id, price) VALUES("Bacon Mac and Cheese", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 195.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Bacon Mac and Cheese' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'pork');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Bacon Mac and Cheese' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'pasta');

        
        INSERT INTO food(name, resto_id, price) VALUES("Pasta Amatriciana", (
            SELECT id FROM restaurant WHERE name = "Brothers Burger"), 195.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pasta Amatriciana' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Brothers Burger')), 'pasta');

        
        INSERT INTO food(name, resto_id, price) VALUES("Cheese Pizza", (
            SELECT id FROM restaurant WHERE name = "S&R New York Style Pizza"), 569.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheese Pizza' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'S&R New York Style Pizza')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Pepperoni Pizza", (
            SELECT id FROM restaurant WHERE name = "S&R New York Style Pizza"), 629.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pepperoni Pizza' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'S&R New York Style Pizza')), 'pizza');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pepperoni Pizza' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'S&R New York Style Pizza')), 'pork');

        
        INSERT INTO food(name, resto_id, price) VALUES("Garlic Shrimp Pizza", (
            SELECT id FROM restaurant WHERE name = "S&R New York Style Pizza"), 629.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Garlic Shrimp Pizza' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'S&R New York Style Pizza')), 'pizza');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Garlic Shrimp Pizza' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'S&R New York Style Pizza')), 'shrimp');

        
        INSERT INTO food(name, resto_id, price) VALUES("Cheeseburger", (
            SELECT id FROM restaurant WHERE name = "S&R New York Style Pizza"), 119.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheeseburger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'S&R New York Style Pizza')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheeseburger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'S&R New York Style Pizza')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chicken Caesar Salad", (
            SELECT id FROM restaurant WHERE name = "S&R New York Style Pizza"), 179.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Caesar Salad' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'S&R New York Style Pizza')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Caesar Salad' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'S&R New York Style Pizza')), 'salad');

        
        INSERT INTO food(name, resto_id, price) VALUES("1pc Chicken", (
            SELECT id FROM restaurant WHERE name = "S&R New York Style Pizza"), 99.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1pc Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'S&R New York Style Pizza')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1pc Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'S&R New York Style Pizza')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chicken Dinner Meal", (
            SELECT id FROM restaurant WHERE name = "Max\'s Restaurant"), 332.2);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Dinner Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Dinner Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Spring Chicken Meal", (
            SELECT id FROM restaurant WHERE name = "Max\'s Restaurant"), 299.2);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Spring Chicken Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Spring Chicken Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chopsuey Meal", (
            SELECT id FROM restaurant WHERE name = "Max\'s Restaurant"), 282.7);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chopsuey Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'vegetable');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chopsuey Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Platter Meal", (
            SELECT id FROM restaurant WHERE name = "Max\'s Restaurant"), 282.7);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Platter Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Platter Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Fiesta Plate Meal", (
            SELECT id FROM restaurant WHERE name = "Max\'s Restaurant"), 275.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Fiesta Plate Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'rice');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Fiesta Plate Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'chicken');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chicken Barbecue Meal", (
            SELECT id FROM restaurant WHERE name = "Max\'s Restaurant"), 247.5);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Barbecue Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'rice');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Barbecue Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'chicken');

        
        INSERT INTO food(name, resto_id, price) VALUES("Budget Meal", (
            SELECT id FROM restaurant WHERE name = "Max\'s Restaurant"), 242.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Budget Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'rice');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Budget Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'chicken');

        
        INSERT INTO food(name, resto_id, price) VALUES("Basic Meal", (
            SELECT id FROM restaurant WHERE name = "Max\'s Restaurant"), 209.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Basic Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'rice');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Basic Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Max\'s Restaurant')), 'chicken');

        
        INSERT INTO food(name, resto_id, price) VALUES("2-pc. Pancake Meal", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 60.5);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '2-pc. Pancake Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'breakfast');

        
        INSERT INTO food(name, resto_id, price) VALUES("Pancake with Longganisa Meal", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 99.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pancake with Longganisa Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'breakfast');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pancake with Longganisa Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'longganisa');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pancake with Longganisa Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'pork');

        
        INSERT INTO food(name, resto_id, price) VALUES("Hotdog Meal", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 75.9);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Hotdog Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'breakfast');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Hotdog Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'egg');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Hotdog Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'hotdog');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Hotdog Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'pork');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Hotdog Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Beef Tapa Meal", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 108.9);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Beef Tapa Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'breakfast');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Beef Tapa Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'egg');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Beef Tapa Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Breakfast Steak Meal", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 75.9);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Breakfast Steak Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'breakfast');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Breakfast Steak Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'egg');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Breakfast Steak Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Longganisa Meal", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 108.9);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Longganisa Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'breakfast');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Longganisa Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'egg');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Longganisa Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("1-pc. Chickenjoy Meal", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 82.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc. Chickenjoy Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc. Chickenjoy Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("2-pc. Chickenjoy Meal", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 150.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '2-pc. Chickenjoy Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '2-pc. Chickenjoy Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("1-pc. Chickenjoy with Spaghetti", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 115.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc. Chickenjoy with Spaghetti' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc. Chickenjoy with Spaghetti' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'pasta');

        
        INSERT INTO food(name, resto_id, price) VALUES("Jolly Spaghetti", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 55.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Jolly Spaghetti' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'pasta');

        
        INSERT INTO food(name, resto_id, price) VALUES("Jolly Spagetti with Burger Steak", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 99.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Jolly Spagetti with Burger Steak' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'pork');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Jolly Spagetti with Burger Steak' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'pasta');

        
        INSERT INTO food(name, resto_id, price) VALUES("Cheesy Classic Hotdog", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 90.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheesy Classic Hotdog' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'pork');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chili Cheese Hotdog", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 99.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chili Cheese Hotdog' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'pork');

        
        INSERT INTO food(name, resto_id, price) VALUES("Yum Burger Meal", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 75.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Yum Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Yum Burger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Yum Cheeseburger Meal", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 85.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Yum Cheeseburger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Yum Cheeseburger Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Yum with TLC", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 102.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Yum with TLC' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Yum with TLC' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Champ", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 165.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Champ' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Champ' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Cheesy Bacon Mushroom Yum", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 103.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheesy Bacon Mushroom Yum' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheesy Bacon Mushroom Yum' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Cheesy Bacon Mushroom Champ", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 175.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheesy Bacon Mushroom Champ' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheesy Bacon Mushroom Champ' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Mushroom Gravy Burger Steak", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 55.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Mushroom Gravy Burger Steak' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Mushroom Gravy Burger Steak' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'burger');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Mushroom Gravy Burger Steak' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Pepper Cream Burger Steak", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 55.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pepper Cream Burger Steak' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pepper Cream Burger Steak' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'burger');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pepper Cream Burger Steak' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Big Burger Steak", (
            SELECT id FROM restaurant WHERE name = "Jollibee"), 110.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Big Burger Steak' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Big Burger Steak' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'burger');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Big Burger Steak' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Jollibee')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Big Mac Value Meal", (
            SELECT id FROM restaurant WHERE name = "McDonald\'s"), 188.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Big Mac Value Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Big Mac Value Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Quarter Pounder with Cheese", (
            SELECT id FROM restaurant WHERE name = "McDonald\'s"), 187.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Quarter Pounder with Cheese' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Quarter Pounder with Cheese' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("McDouble Deluxe", (
            SELECT id FROM restaurant WHERE name = "McDonald\'s"), 166.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'McDouble Deluxe' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'McDouble Deluxe' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Double Cheeseburger", (
            SELECT id FROM restaurant WHERE name = "McDonald\'s"), 157.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Double Cheeseburger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Double Cheeseburger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("McChicken Sandwich", (
            SELECT id FROM restaurant WHERE name = "McDonald\'s"), 155.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'McChicken Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'McChicken Sandwich' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Filet-O-Fish", (
            SELECT id FROM restaurant WHERE name = "McDonald\'s"), 155.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Filet-O-Fish' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'fish');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Filet-O-Fish' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Cheeseburger Deluxe", (
            SELECT id FROM restaurant WHERE name = "McDonald\'s"), 130.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheeseburger Deluxe' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheeseburger Deluxe' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Cheeseburger", (
            SELECT id FROM restaurant WHERE name = "McDonald\'s"), 109.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheeseburger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Cheeseburger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Burger McDo", (
            SELECT id FROM restaurant WHERE name = "McDonald\'s"), 99.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Burger McDo' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Burger McDo' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("2-pc Chicken McDo with Rice", (
            SELECT id FROM restaurant WHERE name = "McDonald\'s"), 164.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '2-pc Chicken McDo with Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '2-pc Chicken McDo with Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("1-pc Chicken McDo with Rice", (
            SELECT id FROM restaurant WHERE name = "McDonald\'s"), 98.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc Chicken McDo with Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc Chicken McDo with Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("1-pc Chicken McDo and McSpaghetti", (
            SELECT id FROM restaurant WHERE name = "McDonald\'s"), 124.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc Chicken McDo and McSpaghetti' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc Chicken McDo and McSpaghetti' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'McDonald\'s')), 'pasta');

        
        INSERT INTO food(name, resto_id, price) VALUES("Pork Chao Fan", (
            SELECT id FROM restaurant WHERE name = "Chowking"), 59.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pork Chao Fan' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'pork');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pork Chao Fan' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Beef Chao Fan", (
            SELECT id FROM restaurant WHERE name = "Chowking"), 67.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Beef Chao Fan' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Beef Chao Fan' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Yangchow", (
            SELECT id FROM restaurant WHERE name = "Chowking"), 77.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Yangchow' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'pork');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Yangchow' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("1-pc Chinese-Style Fried Chicken", (
            SELECT id FROM restaurant WHERE name = "Chowking"), 87.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc Chinese-Style Fried Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc Chinese-Style Fried Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("2-pc Chinese-Style Fried Chicken", (
            SELECT id FROM restaurant WHERE name = "Chowking"), 148.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '2-pc Chinese-Style Fried Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '2-pc Chinese-Style Fried Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chinese-Style Porkchop", (
            SELECT id FROM restaurant WHERE name = "Chowking"), 105.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chinese-Style Porkchop' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'pork');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chinese-Style Porkchop' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Sweet and Sour Pork", (
            SELECT id FROM restaurant WHERE name = "Chowking"), 105.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sweet and Sour Pork' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'pork');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sweet and Sour Pork' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Sweet and Sour Fish", (
            SELECT id FROM restaurant WHERE name = "Chowking"), 105.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sweet and Sour Fish' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'fish');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Sweet and Sour Fish' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Chowking')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Whopper Jr. Meal", (
            SELECT id FROM restaurant WHERE name = "Burger King"), 119.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Whopper Jr. Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Whopper Jr. Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Whopper Meal", (
            SELECT id FROM restaurant WHERE name = "Burger King"), 179.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Whopper Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Whopper Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("4 Cheese Whopper", (
            SELECT id FROM restaurant WHERE name = "Burger King"), 219.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '4 Cheese Whopper' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '4 Cheese Whopper' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("3 Meat Whopper", (
            SELECT id FROM restaurant WHERE name = "Burger King"), 219.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '3 Meat Whopper' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '3 Meat Whopper' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Double Cheeseburger", (
            SELECT id FROM restaurant WHERE name = "Burger King"), 179.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Double Cheeseburger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Double Cheeseburger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Double BBQ Bacon Cheese", (
            SELECT id FROM restaurant WHERE name = "Burger King"), 215.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Double BBQ Bacon Cheese' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Double BBQ Bacon Cheese' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Double Mushroom Swiss", (
            SELECT id FROM restaurant WHERE name = "Burger King"), 215.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Double Mushroom Swiss' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Double Mushroom Swiss' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Classis Angus Steakhouse", (
            SELECT id FROM restaurant WHERE name = "Burger King"), 219.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Classis Angus Steakhouse' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'beef');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Classis Angus Steakhouse' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("X-tra Long Chicken", (
            SELECT id FROM restaurant WHERE name = "Burger King"), 170.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'X-tra Long Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'X-tra Long Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'sandwich');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chicken Nugget Burger", (
            SELECT id FROM restaurant WHERE name = "Burger King"), 119.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Nugget Burger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Nugget Burger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("2-pc King\'s Crunchy Chicken", (
            SELECT id FROM restaurant WHERE name = "Burger King"), 179.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '2-pc King\'s Crunchy Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '2-pc King\'s Crunchy Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("1-pc King\'s Crunchy Chicken", (
            SELECT id FROM restaurant WHERE name = "Burger King"), 119.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc King\'s Crunchy Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc King\'s Crunchy Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Burger King')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("1-pc Chicken Spaghetti", (
            SELECT id FROM restaurant WHERE name = "KFC"), 99.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc Chicken Spaghetti' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc Chicken Spaghetti' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'pasta');

        
        INSERT INTO food(name, resto_id, price) VALUES("1-pc Chicken Rice Soup", (
            SELECT id FROM restaurant WHERE name = "KFC"), 99.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc Chicken Rice Soup' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc Chicken Rice Soup' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("2-pc Chicken with Rice", (
            SELECT id FROM restaurant WHERE name = "KFC"), 120.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '2-pc Chicken with Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '2-pc Chicken with Rice' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("1-pc Classic Fully Loaded Meal", (
            SELECT id FROM restaurant WHERE name = "KFC"), 160.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc Classic Fully Loaded Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '1-pc Classic Fully Loaded Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("2-pc Classic Fully Loaded Meal", (
            SELECT id FROM restaurant WHERE name = "KFC"), 190.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '2-pc Classic Fully Loaded Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '2-pc Classic Fully Loaded Meal' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chicken Burger", (
            SELECT id FROM restaurant WHERE name = "KFC"), 70.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Burger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chicken Burger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'burger');

        
        INSERT INTO food(name, resto_id, price) VALUES("Twister", (
            SELECT id FROM restaurant WHERE name = "KFC"), 120.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Twister' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Twister' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'sandwich');

        
        INSERT INTO food(name, resto_id, price) VALUES("Zinger", (
            SELECT id FROM restaurant WHERE name = "KFC"), 120.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Zinger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Zinger' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'sandwich');

        
        INSERT INTO food(name, resto_id, price) VALUES("Spaghetti", (
            SELECT id FROM restaurant WHERE name = "KFC"), 50.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Spaghetti' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'pasta');

        
        INSERT INTO food(name, resto_id, price) VALUES("Famous Bowl", (
            SELECT id FROM restaurant WHERE name = "KFC"), 65.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Famous Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Famous Bowl' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Italian Ala King", (
            SELECT id FROM restaurant WHERE name = "KFC"), 116.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Italian Ala King' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Italian Ala King' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Tokyo Pepper Steak", (
            SELECT id FROM restaurant WHERE name = "KFC"), 116.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Tokyo Pepper Steak' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Tokyo Pepper Steak' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Osaska Teriyaki", (
            SELECT id FROM restaurant WHERE name = "KFC"), 116.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Osaska Teriyaki' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Osaska Teriyaki' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("Flavor Shots", (
            SELECT id FROM restaurant WHERE name = "KFC"), 60.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Flavor Shots' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Flavor Shots' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'KFC')), 'rice');

        
        INSERT INTO food(name, resto_id, price) VALUES("New York\'s Finest", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 400.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'New York\'s Finest' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Manhattan Meatlovers", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 400.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Manhattan Meatlovers' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Hawaiian", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 335.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Hawaiian' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Four Seasons", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 395.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Four Seasons' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("#4 Cheese", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 340.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = '#4 Cheese' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("NY Classic", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 340.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'NY Classic' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Barbecue Chicken", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 365.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Barbecue Chicken' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Garden Special", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 330.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Garden Special' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Pepperoni and Mushroom", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 330.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Pepperoni and Mushroom' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Roasted Garlic and Shrimp", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 395.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Roasted Garlic and Shrimp' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Dear Darla", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 330.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Dear Darla' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Four Cheese and Tomatoes", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 260.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Four Cheese and Tomatoes' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Jalapeno and Pepperoni", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 260.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Jalapeno and Pepperoni' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Chelsea\'s Artichoke Pizza", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 280.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Chelsea\'s Artichoke Pizza' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Prosciutto Ham and Boursin Cheese", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 280.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Prosciutto Ham and Boursin Cheese' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Salmon with Dill", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 280.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Salmon with Dill' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pizza');

        
        INSERT INTO food(name, resto_id, price) VALUES("Charlie Chan Chicken Pasta", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 165.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Charlie Chan Chicken Pasta' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'chicken');

        
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Charlie Chan Chicken Pasta' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pasta');

        
        INSERT INTO food(name, resto_id, price) VALUES("Spaghetti and Meatballs", (
            SELECT id FROM restaurant WHERE name = "Yellow Cab"), 170.0);

    
            INSERT INTO food_category VALUES(
                (SELECT id FROM food WHERE name = 'Spaghetti and Meatballs' AND resto_id =
                    (SELECT id FROM restaurant WHERE name = 'Yellow Cab')), 'pasta');

        