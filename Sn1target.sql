--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      NewHybrid.DM1
--
-- Date Created : Tuesday, September 03, 2024 13:05:52
-- Target DBMS : Snowflake
--

-- 
-- TABLE: PVSCHEMA."ENTITY1" 
--

CREATE HYBRID TABLE PVSCHEMA."ENTITY1"(
    "COL3"   BINARY(10)          NOT NULL,
    "COL6"   CHARACTER(10)       NOT NULL,
    "COL9"   DECIMAL(10, 0)      NOT NULL,
    "COL31"  VARCHAR(10)         NOT NULL,
    "COL1"   VARIANT,
    "COL4"   BOOLEAN,
    "COL5"   CHAR(10),
    "COL7"   DATE,
    "COL8"   DATETIME,
    "COL10"  DOUBLE,
    "COL11"  DOUBLE PRECISION,
    "COL12"  FLOAT,
    "COL13"  FLOAT4,
    "COL14"  FLOAT8,
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
    CONSTRAINT "PK1" PRIMARY KEY ("COL31", "COL9", "COL3", "COL6") ENFORCED 
)
;



-- 
-- TABLE: PVSCHEMA."ENTITY2" 
--

CREATE HYBRID TABLE PVSCHEMA."ENTITY2"(
    "COL3"   BINARY(10)        NOT NULL,
    "COL9"   DECIMAL(10, 0)    NOT NULL,
    "COL31"  VARCHAR(10)       NOT NULL,
    "COL6"   CHARACTER(10)     NOT NULL,
    CONSTRAINT "PK7" PRIMARY KEY ("COL3", "COL9", "COL31", "COL6") ENFORCED NOT DEFERRABLE , 
    CONSTRAINT "con1" FOREIGN KEY ("COL31", "COL9", "COL3", "COL6")
    REFERENCES PVSCHEMA."ENTITY1"("COL31", "COL9", "COL3", "COL6")
)
;



-- 
-- VIEW: PVSCHEMA."View5" 
--

CREATE VIEW "PVSCHEMA"."View5"   AS
SELECT EN.COL1, EN.COL4, EN.COL5, EN.COL7, EN.COL8, EN.COL10, EN.COL11, EN.COL12, EN.COL13, EN.COL14, EN.COL15, EN.COL16, EN.COL17, EN.COL18, EN.COL19, EN.COL20, EN.COL21, EN.COL22, EN.COL23, EN.COL24, EN.COL25, EN.COL27, EN.COL28, EN.COL29, EN.COL30, EN.COL32
FROM PVSCHEMA."ENTITY1" EN
;
