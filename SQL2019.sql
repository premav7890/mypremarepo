/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      Example_synapse_test_1.DM1
 *
 * Date Created : Friday, June 21, 2024 18:28:05
 * Target DBMS : Microsoft SQL Server 2019
 */

/* 
 * TABLE: Customer 
 */

CREATE TABLE Customer(
    CustomerID    int             NOT NULL,
    FirstName     nvarchar(10)    NULL,
    LastName      nvarchar(10)    NULL,
    Email         nvarchar(10)    NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (CustomerID)
)

go


IF OBJECT_ID('Customer') IS NOT NULL
    PRINT '<<< CREATED TABLE Customer >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Customer >>>'
go

/* 
 * TABLE: Order 
 */

CREATE TABLE Order(
    OrderID        int               NOT NULL,
    CustomerID     int               NOT NULL,
    OrderDate      datetime          NULL,
    TotalAmount    decimal(18, 2)    NULL,
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (OrderID, CustomerID)
)

go


IF OBJECT_ID('Order') IS NOT NULL
    PRINT '<<< CREATED TABLE Order >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Order >>>'
go

/* 
 * VIEW: CustomerOrders 
 */

CREATE VIEW CustomerOrders   AS
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    o.OrderID,
    o.OrderDate,
    o.TotalAmount
FROM Customer c
JOIN "Order" o ON c.CustomerID = o.CustomerID
go

IF OBJECT_ID('CustomerOrders') IS NOT NULL
    PRINT '<<< CREATED VIEW CustomerOrders >>>'
ELSE
    PRINT '<<< FAILED CREATING VIEW CustomerOrders >>>'
go

