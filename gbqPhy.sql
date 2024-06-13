/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      Buildtest.DM1
 *
 * Date Created : Thursday, June 13, 2024 16:48:37
 * Target DBMS : Microsoft SQL Server 2019
 */

/* 
 * TABLE: varshini.testDemo 
 */

CREATE TABLE varshini.testDemo(
    col1         char(10)       NOT NULL,
    col2         char(10)       DEFAULT a+b NULL
                 CHECK (col2 col>10),
    testDemo2    varchar(18)    NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (col1)
)

go


IF OBJECT_ID('varshini.testDemo') IS NOT NULL
    PRINT '<<< CREATED TABLE varshini.testDemo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE varshini.testDemo >>>'
go

/* 
 * TABLE: varshini.testDemo2 
 */

CREATE TABLE varshini.testDemo2(
    col3    char(10)    NULL,
    col4    char(10)    NULL
)

go


IF OBJECT_ID('varshini.testDemo2') IS NOT NULL
    PRINT '<<< CREATED TABLE varshini.testDemo2 >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE varshini.testDemo2 >>>'
go

