/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      computed1.DM1
 *
 * Date Created : Friday, May 31, 2024 18:05:22
 * Target DBMS : Databricks
 */

/* 
 * TABLE: prema.com 
 */

CREATE TABLE prema.com
(
    testA    string GENERATED ALWAYS AS ('abc'),
    testB    int GENERATED ALWAYS AS (1),
    testC    boolean GENERATED ALWAYS AS (true),
    testD    decimal(10, 0) GENERATED ALWAYS AS ((CAST(0 AS decimal(10, 0)))),
    testE    smallint GENERATED ALWAYS AS (CAST(9 AS smallint)),
    testF    int,
    testG    int,
    testH    int GENERATED ALWAYS AS (testF+testG),
    testJ    string GENERATED ALWAYS AS ('hello')
)
;

