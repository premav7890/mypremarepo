--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      NewHybrid10th.DM1
--
-- Date Created : Tuesday, September 10, 2024 16:29:36
-- Target DBMS : Snowflake
--

-- 
-- SEQUENCE: "PVSCHEMA"."seq" 
--

CREATE SEQUENCE PVSCHEMA."seq"
    START WITH 1
    INCREMENT BY 1
;


-- 
-- TABLE: PVSCHEMA."ENTITY121" 
--

CREATE HYBRID TABLE PVSCHEMA."ENTITY121"(
    "COL3"   BINARY(10)          NOT NULL,
    "COL9"   DECIMAL(10, 0)      NOT NULL,
    "COL1"   VARIANT,
    "COL4"   BOOLEAN,
    "COL5"   CHAR(10),
    "COL7"   DATE,
    "COL8"   DATETIME,
    "COL6"   CHARACTER(10)       NOT NULL,
    "COL10"  DOUBLE,
    "COL11"  DOUBLE PRECISION,
    "COL12"  FLOAT,
    "COL13"  FLOAT4,
    "COL14"  FLOAT8,
    "COL31"  VARCHAR(10)         NOT NULL,
    "COL15"  GEOGRAPHY,
    "COL16"  INT,
    "COL17"  INTEGER,
    "COL18"  NUMBER(10, 0),
    "COL19"  NUMERIC(10, 0),
    "COL20"  OBJECT,
    "COL21"  REAL,
    "COL22"  SMALLINT,
    "COL23"  STRING(10),
    "COL24"  TEXT(10),
    "COL25"  TIME,
    "COL27"  TIMESTAMP_LTZ,
    "COL28"  TIMESTAMP_NTZ,
    "COL29"  TIMESTAMP_TZ,
    "COL30"  VARBINARY,
    "COL32"  VARIANT,
    "COL33"  BIGINT,
    "TEST"   CHAR(10),
    CONSTRAINT "PK1" PRIMARY KEY ("COL31", "COL9", "COL3", "COL6", "COL5") ENFORCED ,
    CONSTRAINT "SK8658946"  UNIQUE ("COL22")
)
;



-- 
-- TABLE: PVSCHEMA."ENTITY2" 
--

CREATE HYBRID TABLE PVSCHEMA."ENTITY2"(
    "COL3"   BINARY(10)        NOT NULL,
    "COL9"   DECIMAL(10, 0)    NOT NULL,
    "COL6"   CHARACTER(10)     NOT NULL,
    "COL31"  VARCHAR(10)       NOT NULL,
    "COL5"   CHAR(10)          NOT NULL,
    CONSTRAINT "PK27" PRIMARY KEY ("COL3", "COL9", "COL6", "COL31", "COL5") ENFORCED , 
    CONSTRAINT "con1" FOREIGN KEY ("COL31", "COL9", "COL3", "COL6", "COL5")
    REFERENCES PVSCHEMA."ENTITY121"("COL31", "COL9", "COL3", "COL6", "COL5")
)
;



-- 
-- VIEW: PVSCHEMA."View4" 
--

CREATE VIEW "PVSCHEMA"."View4"   AS
SELECT EN.COL1, EN.COL4, EN.COL5, EN.COL7, EN.COL8, EN.COL10, EN.COL11, EN.COL12, EN.COL13, EN.COL14, EN.COL15, EN.COL16, EN.COL17, EN.COL18, EN.COL19, EN.COL20, EN.COL21, EN.COL22, EN.COL23, EN.COL24, EN.COL25, EN.COL27, EN.COL28, EN.COL29, EN.COL30, EN.COL32, EN.COL33, EN.TEST
FROM PVSCHEMA.ENTITY121 EN
;

-- 
-- INDEX: "nonpk" 
--

CREATE INDEX "nonpk" ON PVSCHEMA."ENTITY121"("COL16", "COL4")
;
-- 
-- FUNCTION: "PVSCHEMA"."func" (varchar(10), varchar(10))  
--

create or replace function "PVSCHEMA"."func"(col31 varchar(10))
    returns table (col31 varchar(10))
    as
    $$
        select col31
            from ENTITY121
            where col31 = col31
    $$
    ;
;


-- 
-- PROCEDURE: "PVSCHEMA"."Pr" ()  
--

CREATE OR REPLACE PROCEDURE "PVSCHEMA"."Pr"()
RETURNS VARCHAR(16777216)
LANGUAGE JAVASCRIPT
EXECUTE AS OWNER
AS '
  var rs = snowflake.execute( { sqlText: 
      `INSERT INTO Entity1 ("col31") 
           SELECT ''0101'' AS "col31" ;`
       } );
  return ''Done.'';
  ';
;

;


