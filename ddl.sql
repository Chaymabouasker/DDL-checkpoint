
--Create Table Product (Product_id,Product_Name,Price)
CREATE TABLE Product(
    Product_id VARCHAR2(20) PRIMARY KEY ,
    Product_Name VARCHAR2(20) NOT NULL ,
    Price Number CHECK (Price>0)

);

--Create Table Customer (Customer_id,Customer_Name,Customer_Tel)
CREATE TABLE Customer(
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER 
);

-- Create Table Orders (#Customer_id,#Product_id,Quantity,Total_amount)
CREATE TABLE Orders (
    Customer_id VARCHAR2(20) ,
    Product_id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT fk_Orders_Customer FOREIGN KEY (Custumer_id) REFERENCES Customer(Costumer_id),
    CONSTRAINT fk_Orders_Products FOREIGN KEY (Product_id) REFERENCES Product(Product_id)

);
--Add a column Category (VARCHAR2(20)) to the PRODUCT table
ALTER TABLE Product ADD Category VARCHAR2(20);

--Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;
