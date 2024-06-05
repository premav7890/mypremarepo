/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      computed1.DM1
 *
 * Date Created : Wednesday, June 05, 2024 16:01:41
 * Target DBMS : Microsoft SQL Server 2019
 */

/* 
 * TABLE: Entity1 
 */

CREATE TABLE Entity1(
    testA    char(10)    NULL,
    testB    char(10)    NULL,
    testC    char(10)    NULL,
    testD    char(10)    NULL,
    testE    char(10)    NULL
)

go


IF OBJECT_ID('Entity1') IS NOT NULL
    PRINT '<<< CREATED TABLE Entity1 >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Entity1 >>>'
go

