/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      DATA MODEL
 *
 * Date Created : Tuesday, June 04, 2024 15:02:17
 * Target DBMS : Microsoft SQL Server 2019
 */

/* 
 * TABLE: Entity1 
 */

CREATE TABLE Entity1(
    A    char(10)    NULL,
    B    char(10)    NULL
)

go


IF OBJECT_ID('Entity1') IS NOT NULL
    PRINT '<<< CREATED TABLE Entity1 >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Entity1 >>>'
go

