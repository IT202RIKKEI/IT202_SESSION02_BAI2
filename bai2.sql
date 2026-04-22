CREATE DATABASE session02;
USE session02;

CREATE TABLE CUSTOMERS (
	CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(100),
    Age int
);

-- ràng buộc độc nhất
ALTER TABLE CUSTOMERS
ADD constraint UQ_Email UNIQUE (Email);

-- ràng buộc tuổi
ALTER TABLE CUSTOMERS
ADD constraint CK_Age check (age > 0);
