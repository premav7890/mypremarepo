/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      Example_synapse_test_1.DM1
 *
 * Date Created : Friday, June 21, 2024 18:31:10
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

