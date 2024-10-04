--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      DATA MODEL
--
-- Date Created : Friday, October 04, 2024 22:12:20
-- Target DBMS : Snowflake
--

-- 
-- TABLE: PVSCHEMA."Entity1" 
--

CREATE TABLE PVSCHEMA."Entity1"(
    "A"  CHAR(10)      NOT NULL,
    "B"  BINARY(10),
    "C"  CHAR(10),
    CONSTRAINT "PK1" PRIMARY KEY ("A") ENFORCED ,
    CONSTRAINT "uni"  UNIQUE ("B"),
    CONSTRAINT "nonpk"  UNIQUE ("C")
)
;



