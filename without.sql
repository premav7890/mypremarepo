--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      WITHCTEclomnsgit.DM1
--
-- Date Created : Thursday, September 05, 2024 22:06:37
-- Target DBMS : Snowflake
--

-- 
-- TABLE: "customers" 
--

CREATE TABLE "customers"(
    "customer_id"  INTEGER       NOT NULL,
    "email"        STRING(10),
    "phone"        STRING(10),
    CONSTRAINT "PK7_1" PRIMARY KEY ("customer_id") 
)
;



-- 
-- TABLE: "departments" 
--

CREATE TABLE "departments"(
    "department_id"    INTEGER       NOT NULL,
    "department_name"  STRING(10),
    CONSTRAINT "PK3" PRIMARY KEY ("department_id") 
)
;



-- 
-- TABLE: "employees" 
--

CREATE TABLE "employees"(
    "employee_id"    INTEGER       NOT NULL,
    "first_name"     STRING(10),
    "last_name"      STRING(10),
    "department_id"  INTEGER       NOT NULL,
    "manager_id"     INTEGER       NOT NULL,
    CONSTRAINT "PK4" PRIMARY KEY ("employee_id") , 
    FOREIGN KEY ("department_id")
    REFERENCES "departments"("department_id")
)
;



-- 
-- TABLE: "sales" 
--

CREATE TABLE "sales"(
    "sales_id"       INTEGER           NOT NULL,
    "sales_amount"   DECIMAL(10, 0),
    "sales_date"     DATE,
    "department_id"  INTEGER           NOT NULL,
    CONSTRAINT "PK6" PRIMARY KEY ("sales_id") 
)
;



-- 
-- VIEW: "Basic" 
--

CREATE VIEW "Basic"   AS
SELECT de.department_name, de.department_id, em.first_name, em.employee_id, em.last_name, em.department_id test, em.manager_id
FROM departments de, sales sa, employees em
WHERE sa.department_id = de.department_id AND em.department_id = de.department_id
;

-- 
-- VIEW: "CTEViewDataTransformation" 
--

CREATE VIEW "CTEViewDataTransformation"   AS
SELECT
        customer_id,
        'email' AS contact_type,
        email AS contact_value
FROM
        customers
;

-- 
-- VIEW: "CTEWithWindowFunction" 
--

CREATE VIEW "CTEWithWindowFunction"   AS
SELECT sa.sales_amount, sa.sales_date, de.department_name, de.department_id, sa.sales_id, sa.department_id CHK
FROM sales sa, departments de
WHERE sa.department_id = de.department_id
;

-- 
-- VIEW: "recursive1" 
--

CREATE VIEW "recursive1"   AS
WITH RECURSIVE EmployeeHierarchy AS (
    SELECT
        employee_id,
        first_name,
        last_name,
        manager_id,
        1 AS level
    FROM
        employees
    WHERE
        manager_id IS NULL
    UNION ALL
    SELECT
        e.employee_id,
        e.first_name,
        e.last_name,
        e.manager_id,
        eh.level + 1
    FROM
        employees e
    JOIN
        EmployeeHierarchy eh ON e.manager_id = eh.employee_id
)
SELECT
    *
FROM
    employees
ORDER BY
    level, employee_id;
;

-- 
-- VIEW: "aggregation" 
--

CREATE VIEW "aggregation"   AS
SELECT Vi.manager_id, de.department_id test1, sa.sales_id, sa.sales_amount, sa.sales_date, Vi.department_name, Vi.department_id, Vi.last_name
FROM Basic Vi, sales sa, departments de
WHERE sa.department_id = de.department_id
;

