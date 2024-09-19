
-- Drop Other Constraints SQL

ALTER TABLE "Entity1"
   DROP PRIMARY KEY

;

-- Drop Constraint, Rename and Create Table SQL


ALTER TABLE "Entity1"
    RENAME TO "Entity1_c4506822"

;

CREATE HYBRID TABLE "Entity1"
(
    "B"   char(10)    NOT NULL,
    test1 char(10),
    test3 string(10),
    test4 char(10),
    CONSTRAINT "PK1" PRIMARY KEY ("B")  ENFORCED INITIALLY IMMEDIATE ENABLE VALIDATE 
)

;

INSERT INTO "Entity1"
( "B",
  test1 ) 
SELECT
"B",
test1
FROM "Entity1_c4506822"

;

DROP TABLE "Entity1_c4506822"

;

-- Add Indexes SQL


CREATE INDEX "nonpk" ON "Entity1"(test1)

;
