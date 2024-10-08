
-- Drop Referencing Constraints SQL

ALTER TABLE "PVSCHEMA"."ENTITY2"
    DROP CONSTRAINT "con1"

;

-- Standard Alter Table SQL


/*
Warning : This script may give an error as some changes are not compatible.
An example of this is changing the datatype of a column
that is referenced by a foreign key in another table.
*/
;

-- Drop Constraint, Rename and Create Table SQL


ALTER TABLE "PVSCHEMA"."ENTITY121"
    RENAME TO "ENTITY121_a9722260"

;

CREATE HYBRID TABLE "PVSCHEMA"."ENTITY121"
(
    "COL3"  binary(10)        NOT NULL,
    "COL9"  decimal(10,0)     NOT NULL,
    "COL1"  variant,
    "COL4"  boolean,
    "COL5"  char(10),
    "COL7"  date,
    "COL8"  datetime,
    "COL6"  character(10)     NOT NULL,
    "COL10" double,
    "COL11" double precision,
    "COL12" float,
    "COL13" float4,
    "COL14" float8,
    "COL31" varchar(10)       NOT NULL,
    "COL15" geography,
    "COL16" int,
    "COL17" integer,
    "COL18" number(10,0),
    "COL19" numeric(10,0),
    "COL20" object,
    "COL21" real,
    "COL22" smallint,
    "COL23" string(10),
    "COL24" text(10),
    "COL25" time,
    "COL27" timestamp_ltz,
    "COL28" timestamp_ntz,
    "COL29" timestamp_tz,
    "COL30" varbinary,
    "COL32" variant,
    "COL33" bigint,
    "TEST"  char(10),
    CONSTRAINT PK1 PRIMARY KEY (COL31, COL9, COL3, COL6, COL5),
    CONSTRAINT SK8658946 UNIQUE (COL22)

)

;

INSERT INTO "PVSCHEMA"."ENTITY121"
( "COL3",
  "COL9",
  "COL1",
  "COL4",
  "COL5",
  "COL7",
  "COL8",
  "COL6",
  "COL10",
  "COL11",
  "COL12",
  "COL14",
  "COL31",
  "COL15",
  "COL16",
  "COL17",
  "COL18",
  "COL20",
  "COL21",
  "COL22",
  "COL23",
  "COL24",
  "COL25",
  "COL27",
  "COL28",
  "COL29",
  "COL30",
  "COL32",
  "COL33",
  "TEST" ) 
SELECT
"COL3",
"COL9",
"COL1",
"COL4",
"COL5",
"COL7",
"COL8",
"COL6",
"COL10",
"COL11",
"COL12",
"COL14",
"COL31",
"COL15",
"COL16",
"COL17",
"COL18",
"COL20",
"COL21",
"COL22",
"COL23",
"COL24",
"COL25",
"COL27",
"COL28",
"COL29",
"COL30",
"COL32",
"COL33",
"TEST"
FROM "PVSCHEMA"."ENTITY121_a9722260"

;

DROP TABLE "PVSCHEMA"."ENTITY121_a9722260"

;

ALTER TABLE "PVSCHEMA"."ENTITY2"
    RENAME TO "ENTITY2_0a583176"

;

CREATE HYBRID TABLE "PVSCHEMA"."ENTITY2"
(
    "COL3"  binary(10)     NOT NULL,
    "COL9"  decimal(10,0)  NOT NULL,
    "COL6"  character(10)  NOT NULL,
    "COL31" varchar(10)    NOT NULL,
    "COL5"  char(10)       NOT NULL,
    CONSTRAINT PK27 PRIMARY KEY (COL3, COL9, COL6, COL31, COL5),
    CONSTRAINT con1 FOREIGN KEY (COL31, COL9, COL3, COL6, COL5)
    REFERENCES "ENTITY121"(COL31, COL9, COL3, COL6, COL5)
)

;

INSERT INTO "PVSCHEMA"."ENTITY2"
( "COL3",
  "COL9",
  "COL6",
  "COL31",
  "COL5" ) 
SELECT
"COL3",
"COL9",
"COL6",
"COL31",
"COL5"
FROM "PVSCHEMA"."ENTITY2_0a583176"

;

DROP TABLE "PVSCHEMA"."ENTITY2_0a583176"

;
CREATE HYBRID TABLE "PVSCHEMA"."Entity5"
(
    "TEST1" char(10)       NOT NULL,
    "COL3"  binary(10)     NOT NULL,
    "COL6"  character(10)  NOT NULL,
    "COL9"  decimal(10,0)  NOT NULL,
    "COL31" varchar(10)    NOT NULL,
    "COL5"  char(10)       NOT NULL,
    CONSTRAINT PK13 PRIMARY KEY (TEST1),
    CONSTRAINT name2 FOREIGN KEY (COL31, COL9, COL3, COL6, COL5)
    REFERENCES "ENTITY121"(COL31, COL9, COL3, COL6, COL5)
)

;
CREATE HYBRID TABLE "PVSCHEMA"."Entity6"
(
    "TEST2" char(10)       NOT NULL,
    "COL3"  binary(10),
    "COL6"  character(10),
    "COL9"  decimal(10,0),
    "COL31" varchar(10),
    "COL5"  char(10),
    CONSTRAINT PK14 PRIMARY KEY (TEST2),
    CONSTRAINT name3 FOREIGN KEY (COL31, COL9, COL3, COL6, COL5)
    REFERENCES "ENTITY121"(COL31, COL9, COL3, COL6, COL5)
)

;
CREATE HYBRID TABLE new
(
    "A" char(10),
    CONSTRAINT PK28 PRIMARY KEY (A)
)

;

-- Add Indexes SQL


DROP INDEX "ENTITY121"."PVSCHEMA".nonpk

;

CREATE INDEX nonpk ON "ENTITY121"(COL16, COL4)

;

-- Update Views SQL

DROP VIEW "PVSCHEMA"."View4"
;

CREATE VIEW "PVSCHEMA"."View4" AS
SELECT EN.COL1, EN.COL4, EN.COL5, EN.COL7, EN.COL8, EN.COL10, EN.COL11, EN.COL12, EN.COL13, EN.COL14, EN.COL15, EN.COL16, EN.COL17, EN.COL18, EN.COL19, EN.COL20, EN.COL21, EN.COL22, EN.COL23, EN.COL24, EN.COL25, EN.COL27, EN.COL28, EN.COL29, EN.COL30, EN.COL32, EN.COL33, EN.TEST
FROM PVSCHEMA.ENTITY121 EN
;

-- Functions Alter SQL

create or replace function PVSCHEMA.func(col31 varchar(10))
    returns table (col31 varchar(10))
    as
    $$
        select col31
            from ENTITY121
            where col31 = col31
    $$

;

-- Procedures Alter SQL

CREATE OR REPLACE PROCEDURE PVSCHEMA.Pr()
RETURNS VARCHAR(16777216)
LANGUAGE JAVASCRIPT
EXECUTE AS OWNER
AS '
  var rs = snowflake.execute( { sqlText: 
      `INSERT INTO Entity1 ("col31") 
           SELECT ''0101'' AS "col31" ;`
       } );
  return ''Done.'';
  '
;
