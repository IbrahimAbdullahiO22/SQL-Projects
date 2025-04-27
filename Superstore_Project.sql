**Schema (SQLite v3.46)**

    CREATE TABLE superstore (
        item_id INTEGER PRIMARY KEY,
        item_name TEXT,
        category TEXT,
        price DECIMAL(10, 2),
        stock_quantity INTEGER,
        average_rating DECIMAL(3, 2)
    );
    
    INSERT INTO superstore (item_id, item_name, category, price, stock_quantity, average_rating)
    VALUES
        (1, 'Stainless Steel Cookware Set', 'Kitchen Supplies', 89.99, 50, 4.6),
        (2, 'Memory Foam Mattress', 'Furnishings', 499.99, 30, 4.8),
        (3, 'Smart LED TV', 'Electronics', 549.00, 20, 4.5),
        (4, 'Robot Vacuum Cleaner', 'Appliances', 199.50, 40, 4.3),
        (5, 'Wireless Bluetooth Speaker', 'Electronics', 39.99, 60, 4.2),
        (6, 'Non-Stick Baking Set', 'Kitchen Supplies', 29.95, 80, 4.4),
        (7, 'Cotton Bedding Set', 'Furnishings', 89.00, 25, 4.7),
        (8, 'Smart Home Security Camera', 'Electronics', 79.95, 15, 4.1),
        (9, 'Air Purifier', 'Appliances', 129.50, 35, 4.6),
        (10, 'Premium Coffee Maker', 'Kitchen Supplies', 79.99, 50, 4.9),
        (11, 'Ergonomic Office Chair', 'Furnishings', 189.00, 20, 4.5),
        (12, 'Wireless Earbuds', 'Electronics', 49.99, 75, 4.3),
        (13, 'Slow Cooker', 'Appliances', 49.95, 30, 4.7),
        (14, 'Cutlery Set', 'Kitchen Supplies', 34.50, 40, 4.4),
        (15, 'Cozy Throw Blanket', 'Furnishings', 24.99, 100, 4.2);
        
        
    -- © Copyright 2025 Break Into Tech  --
    

---

**Query #1**

    SELECT * 
    FROM superstore
    ORDER BY price
    LIMIT 5;

| item_id | item_name                  | category         | price | stock_quantity | average_rating |
| ------- | -------------------------- | ---------------- | ----- | -------------- | -------------- |
| 15      | Cozy Throw Blanket         | Furnishings      | 24.99 | 100            | 4.2            |
| 6       | Non-Stick Baking Set       | Kitchen Supplies | 29.95 | 80             | 4.4            |
| 14      | Cutlery Set                | Kitchen Supplies | 34.5  | 40             | 4.4            |
| 5       | Wireless Bluetooth Speaker | Electronics      | 39.99 | 60             | 4.2            |
| 13      | Slow Cooker                | Appliances       | 49.95 | 30             | 4.7            |

---
**Query #2**

    
    
    SELECT AVG(price)
    AS Average_price
    FROM superstore;

| Average_price      |
| ------------------ |
| 142.35266666666666 |

---
**Query #3**

    
    
    SELECT SUM(price)	
    AS Total_price
    FROM superstore;

| Total_price |
| ----------- |
| 2135.29     |

---
**Query #4**

    
    
    SELECT MIN(price)
    AS Minimum_price
    FROM superstore;

| Minimum_price |
| ------------- |
| 24.99         |

---
**Query #5**

    
    
    SELECT COUNT(*)
    AS Number_of_items
    FROM superstore;

| Number_of_items |
| --------------- |
| 15              |

---
**Query #6**

    
    
    
    SELECT Max(price)
    AS Expensive_price
    FROM superstore;

| Expensive_price |
| --------------- |
| 549             |

---
**Query #7**

    
    
    
    SELECT AVG(price)
    AS Kitchen_supplies
    FROM superstore
    WHERE category ='Kitchen_Supplies';

| Kitchen_supplies |
| ---------------- |
|                  |

---
**Query #8**

    
    
    SELECT stock_quantity
    FROM superstore
    Where item_name = 'Air Purifier';

| stock_quantity |
| -------------- |
| 35             |

---
**Query #9**

    
    
    SELECT item_name,price
    from superstore 
    Where category = 'Electronics'
    Order by price desc;

| item_name                  | price |
| -------------------------- | ----- |
| Smart LED TV               | 549   |
| Smart Home Security Camera | 79.95 |
| Wireless Earbuds           | 49.99 |
| Wireless Bluetooth Speaker | 39.99 |

---
**Query #10**

    
    
    SELECT category, AVG(price)
    AS Average_price
    From superstore
    Group by category
    Order by Average_price desc;

| category         | Average_price      |
| ---------------- | ------------------ |
| Furnishings      | 200.745            |
| Electronics      | 179.73250000000002 |
| Appliances       | 126.31666666666666 |
| Kitchen Supplies | 58.607499999999995 |

---
**Query #11**

    
    -- Which category has the highest average item price
    
    -- Which item has the highest customer rating overall?
    SELECT item_name,average_rating
    From superstore
    Order by average_rating
    LIMIT 1;

| item_name                  | average_rating |
| -------------------------- | -------------- |
| Smart Home Security Camera | 4.1            |

---
**Query #12**

    
    
    -- What is the total stock value (inventory worth) per category?
    Select category, SUM(price * stock_quantity)
    AS total_inventory_value
    From superstore
    Group by category
    Order by total_inventory_value desc;

| category         | total_inventory_value |
| ---------------- | --------------------- |
| Furnishings      | 23503.7               |
| Electronics      | 18327.9               |
| Appliances       | 14011                 |
| Kitchen Supplies | 12275                 |

---
**Query #13**

    
    
    -- How many items have an average customer rating below 4.5?
    Select Count(*) 
    AS low_rated_items 
    From superstore
    Where Average_rating < 4.5;

| low_rated_items |
| --------------- |
| 7               |

---
**Query #14**

    
    
    -- List all items that are both expensive (over $100) and low stock (less than 20 units).
    Select item_name,price,stock_quantity
    From superstore
    where price > 100 AND stock_quantity < 20;

There are no results to be displayed.

---

[View on DB Fiddle](https://www.db-fiddle.com/f/PvBAaQwEUSWAxZCsg4Vmx/243)
