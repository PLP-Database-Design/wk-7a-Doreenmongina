-- Question 1 Achieving 1NF (First Normal Form) 🛠️
-- OrderDetail table
CREATE TABLE OrderDetail(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR (50),
    ProductID INT,
    FOREIGN KEY (ProductID) REFERENCES ProductDetail(ProductID)
);

-- ProductDetail table
CREATE TABLE ProductDetail(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR (200)
);

-- Question 2 Achieving 2NF (Second Normal Form) 🧩

CREATE TABLE OrderDetail(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES ProductDetail(ProductID)
);

-- ProductDetail table
CREATE TABLE ProductDetail(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR (200)
);

-- Customer table
CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(200)
);

