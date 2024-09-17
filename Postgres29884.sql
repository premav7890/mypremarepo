--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      MainModel.DM1
--
-- Date Created : Tuesday, September 17, 2024 18:51:38
-- Target DBMS : PostgreSQL 13.x-16.x
--

-- 
-- TABLE: "Entity1" 
--

CREATE TABLE "Entity1"(
    col1    character(10)    NOT NULL,
    col2    character(10),
    col3    character(10)    NOT NULL,
    CONSTRAINT "PK1En1" PRIMARY KEY (col1),
    CONSTRAINT "UniquewithoutPk"  UNIQUE (col3)
)
;



-- 
-- TABLE: "Entity2" 
--

CREATE TABLE "Entity2"(
    col6    character(10)    NOT NULL,
    col1    character(10)    NOT NULL,
    col4    character(10),
    col5    character(10),
    CONSTRAINT "PK2Entity2" PRIMARY KEY (col6, col1), 
    FOREIGN KEY (col1)
    REFERENCES "Entity1"(col1)
)
;



-- 
-- TABLE: "Entity3" 
--

CREATE TABLE "Entity3"(
    col7     character(10)    NOT NULL,
    col10    character(10),
    col11    character(10),
    col12    character(10),
    col9     character(10)    NOT NULL,
    col8     character(10),
    col1     character(10)    NOT NULL,
    col6     character(10),
    CONSTRAINT "PK3En3" PRIMARY KEY (col7, col9), 
    FOREIGN KEY (col1)
    REFERENCES "Entity1"(col1),
    FOREIGN KEY (col6, col1)
    REFERENCES "Entity2"(col6, col1)
)
;



-- 
-- INDEX: "IncludeCol" 
--

CREATE UNIQUE INDEX "IncludeCol" ON "Entity1"(col2)
INCLUDE (col2,col3)
;
-- 
-- INDEX: includemany 
--

CREATE UNIQUE INDEX includemany ON "Entity3"(col8)
INCLUDE (col10,col11,col12,col7)
;
