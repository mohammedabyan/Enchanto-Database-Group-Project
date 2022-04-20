DROP TABLE Sellers cascade constraints;
DROP TABLE Products cascade constraints;
DROP TABLE Categories cascade constraints;
DROP TABLE Customers cascade constraints;
DROP TABLE Orders cascade constraints;
DROP TABLE Courier cascade constraints;

Create Table Sellers
(Seller_ID Number(4),
Seller_Name Varchar2(15),
Commission_Fee Number(3),
City Varchar(20),
State Varchar(20),
Constraint Sellers_Seller_ID_Pk Primary Key (Seller_ID));

Create Table Courier
(Courier_ID Number(3),
Courier_Name Varchar2(20),
Constraint Courier_Courier_ID_Pk Primary Key (Courier_ID));

Create Table Categories
(Category_ID Number(3),
Category_Name Varchar2(30),
Constraint Categories_Category_ID_Pk Primary Key (Category_ID));

Create Table Customers
(Customer_ID Number(4),
F_Name Varchar2(30),
L_Name Varchar2(30),
Phone Number(10),
Address Varchar2(50),
City Varchar2(20),
State Varchar2(20),
Zip_Code Number(5),
Constraint Customers_Customer_ID_Pk Primary Key (Customer_ID));

Create Table Products
(Product_ID Number(4),
Product_Name Varchar2(30),
Category_ID Number(3),
Seller_ID Number(4),
List_Price Number(10),
Constraint Products_Product_ID_Pk Primary Key (Product_ID),
Constraint Categories_Category_ID_Fk Foreign Key (Category_ID) References Categories(Category_ID),
Constraint Sellers_Seller_ID_Fk Foreign Key (Seller_ID) References Sellers(Seller_ID));

Create Table Orders
(Order_ID Number(4),
Customer_ID Number(4),
Product_ID Number(4),
Quantity Number(3),
Courier_ID Number(3),
Constraint Orders_Order_ID_Pk Primary Key (Order_ID),
Constraint Customers_Customer_ID_Fk Foreign Key (Customer_ID) References Customers(Customer_ID),
Constraint Products_Product_ID_Fk Foreign Key (Product_ID) References Products(Product_ID),
Constraint Courier_Courier_ID_Fk Foreign Key (Courier_ID) References Courier(Courier_ID));

INSERT INTO Sellers
VALUES(1000, 'Michael', 3, 'Shah Alam', 'SEL');

INSERT INTO Sellers
VALUES(1001, 'Liam', 3, 'Kuching', 'SAR');

INSERT INTO Sellers
VALUES(1002, 'Noah', 3, 'Ipoh', 'PER');

INSERT INTO Sellers
VALUES(1003, 'Oliver', 3, 'Klang', 'SEL');

INSERT INTO Sellers
VALUES(1004, 'Elijah', 3, 'Johor Bahru', 'JOH');

INSERT INTO Sellers
VALUES(1005, 'William', 3, 'Kota Kinabalu', 'SAB');

INSERT INTO Sellers
VALUES(1006, 'James', 3, 'Kuantan', 'PAH');

INSERT INTO Sellers
VALUES(1007, 'Benjamin', 3, 'Alor Setar', 'KED');

INSERT INTO Sellers
VALUES(1008, 'Lucas', 3, 'Muar', 'JOH');

INSERT INTO Sellers
VALUES(1009, 'James', 3, 'Gombak', 'SEL');

INSERT INTO COURIER
VALUES(000, 'JT Express');

INSERT INTO COURIER
VALUES(100, 'Ninjavan');

INSERT INTO COURIER
VALUES(200, 'Citylink');

INSERT INTO COURIER
VALUES(300, 'Fedex');

INSERT INTO COURIER
VALUES(400, 'UPS');

INSERT INTO COURIER
VALUES(500, 'SF Holding');

INSERT INTO COURIER
VALUES(600, 'DHL');

INSERT INTO COURIER
VALUES(700, 'Lalamove');

INSERT INTO COURIER
VALUES(800, 'Pgeon');

INSERT INTO COURIER
VALUES(900, 'GDex');
INSERT INTO CATEGORIES
VALUES(000, 'Jewelry-Accessories');

INSERT INTO CATEGORIES
VALUES(100, 'Clothing');

INSERT INTO CATEGORIES
VALUES(200, 'Home-Living');

INSERT INTO CATEGORIES
VALUES(300, 'Toys-Entertainment');

INSERT INTO CATEGORIES
VALUES(400, 'Art-Collectibles');

INSERT INTO CATEGORIES
VALUES(500, 'Craft-Supplies');

INSERT INTO CATEGORIES
VALUES(600, 'Books');

INSERT INTO CATEGORIES
VALUES(700, 'Bags-Wallet');

INSERT INTO CATEGORIES
VALUES(800, 'DigitalArt-NFT');

INSERT INTO CATEGORIES
VALUES(900, 'Perfume-Candles');

INSERT INTO CUSTOMERS
VALUES(1000, 'Lebron', 'James', 0123456780, '10 Street House 10', 'Shah Alam', 'SEL', 40100);

INSERT INTO CUSTOMERS
VALUES(1001, 'Anthony', 'Davis', 0123456781, '20 Street House 20', 'Kuching', 'SAR', 40200);

INSERT INTO CUSTOMERS
VALUES(1002, 'Steph', 'Curry', 0123456782, '30 Street House 30', 'Ipoh', 'PER', 40300);

INSERT INTO CUSTOMERS
VALUES(1003, 'Trey', 'Parker', 0123456783, '40 Street House 40', 'Klang', 'SEL', 40400);

INSERT INTO CUSTOMERS
VALUES(1004, 'Lamar', 'Wilson', 0123456784, '50 Street House 50', 'Johor Bahru', 'JOH', 40500);

INSERT INTO CUSTOMERS
VALUES(1005, 'Isalah', 'Thomas', 0123456785, '60 Street House 60', 'Kota Kinabalu', 'SAB', 40600);

INSERT INTO CUSTOMERS
VALUES(1006, 'Kevin', 'Hart', 0123456786, '70 Street House 70', 'Kuantan', 'PAH', 40700);

INSERT INTO CUSTOMERS
VALUES(1007, 'Matt', 'Stone', 0123456787, '80 Street House 80', 'Alor Setar', 'KED', 40800);

INSERT INTO CUSTOMERS
VALUES(1008, 'Damian', 'Jones', 0123456788, '90 Street House 90', 'Muar', 'JOH', 40900);

INSERT INTO CUSTOMERS
VALUES(1009, 'Amira', 'Brown', 0123456789, '100 Street House 100', 'Gombak', 'SEL', 41000);

INSERT INTO Products
VALUES(1000, 'Minimalist Pendant', 000, 1000, 40);

INSERT INTO Products
VALUES(1001, 'Knitted Sweater', 100, 1001, 70);

INSERT INTO Products
VALUES(1002, 'Wooden Wall Art', 200, 1002, 150);

INSERT INTO Products
VALUES(1003, 'Personalized Puzzle', 300, 1003, 80);

INSERT INTO Products
VALUES(1004, 'NYC Artwork', 400, 1004, 120);

INSERT INTO Products
VALUES(1005, 'Embroidery Kit', 500, 1005, 30);

INSERT INTO Products
VALUES(1006, '2022 Planner', 600, 1006, 20);

INSERT INTO Products
VALUES(1007, 'Leather Wallet', 700, 1007, 50);

INSERT INTO Products
VALUES(1008, 'NFT Canvas', 800, 1008, 60);

INSERT INTO Products
VALUES(1009, 'French Lavender Candle', 900, 1009, 30);

INSERT INTO ORDERS
VALUES(1000, 1000, 1000, 1, 000);

INSERT INTO ORDERS
VALUES(1001, 1001, 1001, 1, 100);

INSERT INTO ORDERS
VALUES(1002, 1002, 1002, 1, 200);

INSERT INTO ORDERS
VALUES(1003, 1003, 1003, 1, 300);

INSERT INTO ORDERS
VALUES(1004, 1004, 1004, 1, 400);

INSERT INTO ORDERS
VALUES(1005, 1005, 1005, 1, 500);

INSERT INTO ORDERS
VALUES(1006, 1006, 1006, 1, 600);

INSERT INTO ORDERS
VALUES(1007, 1007, 1007, 1, 700);

INSERT INTO ORDERS
VALUES(1008, 1008, 1008, 1, 800);

INSERT INTO ORDERS
VALUES(1009, 1009, 1009, 1, 900);


--Procedure: Create a new seller and assign a new product to the seller.
CREATE OR REPLACE PROCEDURE add_seller
( p_sid IN sellers.seller_id%type,
p_sname IN sellers.seller_name%type,
p_comfee IN sellers.commission_fee%type,
p_city IN VARCHAR,
p_state IN VARCHAR,
p_errormsg OUT VARCHAR)

IS
BEGIN
INSERT INTO sellers (seller_id, seller_name, commission_fee, city, state)
VALUES (p_sid, p_sname, p_comfee,p_city, p_state);
	
	COMMIT;
EXCEPTION
	WHEN OTHERS THEN
		p_errormsg := SQLERROR;

END add_seller;

SELECT * FROM sellers
BEGIN
	add_seller(1010, ‘Carl’, 3, ‘Ampang’, ‘SEL’);
END;


--Procedure: Add new product
CREATE OR REPLACE PROCEDURE add_product
( p_pid IN products.product_id%type,
p_pname IN products.product_name%type,
p_pcid IN products.category_id%type,
p_psid IN products.seller_id%type,
p_plp IN products.list_price%type )
IS
BEGIN
INSERT INTO products VALUES ( p_pid, p_pname, p_pcid, p_psid, p_plp);
COMMIT;
	dbms_output.put_line(‘Product added. ‘);
END add_product;

SELECT * FROM products
BEGIN
	add_product(1010, ‘Wax Seal Kit’, 500, 1010, 60);
END;

--Function: calculate average order value
CREATE or REPLACE FUNCTION avgordervalue return number is ordervalue number;

    totov number := 0;
    counter number := 0;
    aov number;
    CURSOR o_cursor IS
    SELECT ov 
    FROM
(SELECT order_id, product_id, quantity, list_price, quantity*list_price as ov from orders natural join products);
    
BEGIN
    
    OPEN o_cursor;
        LOOP
            FETCH o_cursor into ordervalue;
            EXIT WHEN o_cursor%notfound;
            totov := totov + ordervalue;
            counter := counter + 1;
        END LOOP;
    CLOSE o_cursor;
    aov := totov / counter;
    RETURN aov;

END avgordervalue;

--Fucntion: Calculate order price.
CREATE or REPLACE FUNCTION order_price(orderid in number)RETURN NUMBER IS
    
    price number;

BEGIN
    SELECT op INTO price
    FROM
        (SELECT order_id, product_id, quantity, list_price, quantity*list_price as op from orders natural join products)
    WHERE order_id = orderid;
    RETURN price;
END order_price;



