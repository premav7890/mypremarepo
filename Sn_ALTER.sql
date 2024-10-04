
-- Drop Other Constraints SQL

ALTER TABLE "PVSCHEMA"."Entity1"
    DROP CONSTRAINT "uni"

;

ALTER TABLE "PVSCHEMA"."Entity1"
    DROP CONSTRAINT "nonpk"

;

ALTER TABLE "PVSCHEMA"."Entity1"
   DROP PRIMARY KEY

;

-- Drop Constraint, Rename and Create Table SQL


ALTER TABLE "PVSCHEMA"."Entity1"
    RENAME TO "Entity1_5acb2da9"

;

CREATE HYBRID TABLE "Entity1"
(
    "A" char(10)    NOT NULL,
    "B" binary(10),
    "C" float8,
    CONSTRAINT "PK1newd" PRIMARY KEY ("A")  ENFORCED ,
    CONSTRAINT uninew UNIQUE ("B")

)

;

INSERT INTO "Entity1"
( "A",
  "B" ) 
SELECT
"A",
"B"
FROM "PVSCHEMA"."Entity1_5acb2da9"

;

DROP TABLE "PVSCHEMA"."Entity1_5acb2da9"

;

-- Add Indexes SQL


CREATE INDEX "nonpknew" ON "Entity1"(C)

;
