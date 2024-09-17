--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      normaltable.DM1
--
-- Date Created : Tuesday, September 17, 2024 16:46:18
-- Target DBMS : Snowflake
--

-- 
-- TABLE: "ST1" 
--

CREATE TABLE "ST1"(
    "TEST"  CHAR(10)    NOT NULL,
    "NO1"   CHAR(10),
    "COL1"  CHAR(10)    NOT NULL,
    "COL2"  CHAR(10)    NOT NULL,
    PRIMARY KEY ("TEST", "COL1", "COL2") ENFORCED 
)
;



-- 
-- TABLE: "ST2" 
--

CREATE TABLE "ST2"(
    "GL"      CHAR(10)         NOT NULL,
    "NEW1"    NUMBER(10, 0),
    "NEW3"    CHAR(10),
    "ORDERS"  CHAR(10)         NOT NULL,
    "TEST"    CHAR(10)         NOT NULL,
    "COL1"    CHAR(10)         NOT NULL,
    "COL2"    CHAR(10)         NOT NULL,
    PRIMARY KEY ("GL", "ORDERS") ENFORCED 
)
;



-- 
-- TABLE: "ST3" 
--

CREATE TABLE "ST3"(
    "TEST"  CHAR(10),
    "COL1"  CHAR(10),
    "COL2"  CHAR(10),
    "NO7"   CHAR(10)    NOT NULL,
    PRIMARY KEY ("NO7") ENFORCED 
)
;



-- 
-- TABLE: "ST4" 
--

CREATE TABLE "ST4"(
    "WAREHOUSE"  CHAR(10)    NOT NULL,
    "VENDOR"     CHAR(10),
    "TEST"       CHAR(10)    NOT NULL,
    "COL1"       CHAR(10)    NOT NULL,
    "COL2"       CHAR(10)    NOT NULL,
    PRIMARY KEY ("WAREHOUSE") ENFORCED 
)
;



-- 
-- TABLE: "ST5" 
--

CREATE TABLE "ST5"(
    "INVENTORY"  CHAR(10)    NOT NULL,
    "WAREHOUSE"  CHAR(10),
    PRIMARY KEY ("INVENTORY") ENFORCED 
)
;



-- 
-- TABLE: "ST6" 
--

CREATE TABLE "ST6"(
    "STOCKS"     CHAR(10)    NOT NULL,
    "WAREHOUSE"  CHAR(10),
    PRIMARY KEY ("STOCKS") ENFORCED 
)
;



-- 
-- VIEW: "View5" 
--

CREATE VIEW "View5"   AS
SELECT En.NEW1, En.NEW3
FROM ST2 En
;

-- 
-- VIEW: "View6" 
--

CREATE VIEW "View6"   AS
SELECT En.VENDOR
FROM ST4 En
;

-- 
-- VIEW: "View7" 
--

CREATE VIEW "View7"   AS
SELECT En.NO1
FROM ST1 En
;

