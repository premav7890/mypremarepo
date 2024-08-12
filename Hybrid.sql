--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      20.4Hybridmodel.DM1
--
-- Date Created : Monday, August 12, 2024 15:17:10
-- Target DBMS : Snowflake
--

-- 
-- TABLE: PVSCHEMA."Table4" 
--

CREATE HYBRID TABLE PVSCHEMA."Table4"(
    "A"   VARIANT             NOT NULL,
    "B"   BIGINT              NOT NULL,
    "C"   BINARY(10)          NOT NULL,
    "D"   BOOLEAN             NOT NULL,
    "E"   CHAR(10),
    "F"   CHARACTER(10),
    "G"   DATE,
    "H"   DATETIME,
    "I"   DECIMAL(10, 0),
    "J"   DOUBLE,
    "K"   DOUBLE PRECISION,
    "L"   FLOAT,
    "M"   FLOAT4,
    "N"   FLOAT8,
    "G1"  GEOGRAPHY           NOT NULL,
    "P"   INT                 IDENTITY(1,1),
    "Q"   INTEGER,
    "R"   NUMBER(10, 0),
    "S"   NUMERIC(10, 0),
    "O1"  OBJECT,
    "U"   REAL,
    "V"   SMALLINT,
    "W"   STRING(10),
    "X"   TEXT(10),
    "Y"   TIME,
    "Z"   TIMESTAMP,
    "Z1"  TIMESTAMP_LTZ,
    "Y1"  TIMESTAMP_NTZ,
    "T1"  TIMESTAMP_TZ,
    "R1"  VARBINARY,
    "X1"  VARCHAR(10),
    "V1"  VARIANT,
    CONSTRAINT "PK1" PRIMARY KEY ("R1") NOT DEFERRABLE ,
    CONSTRAINT "nonpkunique"  UNIQUE ("W", "X")
)
;



-- 
-- TABLE: PVSCHEMA."Table5" 
--

CREATE HYBRID TABLE PVSCHEMA."Table5"(
    "Q1"  CHAR(10),
    "R1"  VARBINARY    NOT NULL,
    CONSTRAINT "PK9" PRIMARY KEY ("R1") NOT DEFERRABLE , 
    FOREIGN KEY ("R1")
    REFERENCES "Table4"("R1")
)
;



-- 
-- TABLE: PVSCHEMA."Table6" 
--

CREATE HYBRID TABLE PVSCHEMA."Table6"(
    "test1"  CHAR(10),
    CONSTRAINT "PK6" PRIMARY KEY ("test1") NOT DEFERRABLE 
)
;



-- 
-- INDEX: "nonpk" 
--

CREATE INDEX "nonpk" ON PVSCHEMA."Table4"("C", "I", "K", "U")
;
