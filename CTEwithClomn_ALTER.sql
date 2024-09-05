
-- Drop Other Constraints SQL

ALTER TABLE employees
   DROP PRIMARY KEY

;

-- Standard Alter Table SQL

ALTER TABLE customers
   DROP PRIMARY KEY
;
ALTER TABLE departments
   DROP PRIMARY KEY
;
ALTER TABLE sales
   DROP PRIMARY KEY
;

-- Drop Constraint, Rename and Create Table SQL


ALTER TABLE employees
    RENAME TO employees_731970a8

;

CREATE TABLE employees
(
    employee_id   integer     NOT NULL,
    first_name    string(10),
    last_name     string(10),
    department_id integer     NOT NULL,
    manager_id    int
)

;

INSERT INTO employees
( employee_id,
  first_name,
  last_name,
  department_id,
  manager_id ) 
SELECT
employee_id,
first_name,
last_name,
department_id,
manager_id
FROM employees_731970a8

;

DROP TABLE employees_731970a8

;

-- Add Constraint SQL


ALTER TABLE customers
    ADD CONSTRAINT "PK7_1" PRIMARY KEY (customer_id)

;

ALTER TABLE departments
    ADD CONSTRAINT "PK3" PRIMARY KEY (department_id)

;

ALTER TABLE employees
    ADD CONSTRAINT "PK4" PRIMARY KEY (employee_id)

;

ALTER TABLE sales
    ADD CONSTRAINT "PK6" PRIMARY KEY (sales_id)

;

-- Update Views SQL

DROP VIEW "Basic"
;

CREATE VIEW "Basic" AS
WITH 
	EmployeeDept as 
	 (
		SELECT
        e.employee_id,
        e.first_name,
        e.last_name,
        d.department_name
    FROM
        employees e
    JOIN
        departments d ON e.department_id = d.department_id
	 )
SELECT de.department_name, em.first_name, em.last_name, em.employee_id, de.department_id, em.manager_id
FROM departments de, employees em
WHERE em.department_id = de.department_id
;
DROP VIEW "CTEViewDataTransformation"
;

CREATE VIEW "CTEViewDataTransformation" AS
WITH 
	TransformedData as 
	 (
		SELECT
        customer_id,
        'email' AS contact_type,
        email AS contact_value
    FROM
        customers
    UNION ALL
    SELECT
        customer_id,
        'phone' AS contact_type,
        phone AS contact_value
    FROM
        customers
	 )
SELECT
        customer_id,
        'email' AS contact_type,
        email AS contact_value
FROM
        customers
;
DROP VIEW "CTEWithWindowFunction"
;

CREATE VIEW "CTEWithWindowFunction" AS
WITH 
	SalesData as 
	 (
		SELECT
        s.sales_id,
        s.sales_date,
        s.sales_amount,
        d.department_name
    FROM
        sales s
    JOIN
        departments d ON s.department_id = d.department_id
	 )
SELECT sa.sales_amount, sa.sales_date, de.department_name, de.department_id, sa.sales_id, sa.department_id CHK
FROM sales sa, departments de
WHERE sa.department_id = de.department_id
;
DROP VIEW recursive1
;
DROP VIEW aggregation
;

CREATE VIEW aggregation AS
WITH 
	TotalSalesPerDept as 
	 (
		SELECT
        d.department_id,
        d.department_name,
        SUM(s.sales_amount) AS total_sales
    FROM
        sales s
    JOIN
        departments d ON s.department_id = d.department_id
    GROUP BY
        d.department_id, d.department_name
	 )
SELECT de.department_id test1, sa.sales_id, sa.sales_amount, sa.sales_date
FROM sales sa, departments de, sales s, departments d
WHERE sa.department_id = de.department_id
;
CREATE VIEW recursive AS
WITH 
	RECURSIVE EmployeeHierarchy as 
	 (
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
SELECT * from employees
;

-- Add Referencing Foreign Keys SQL


ALTER TABLE sales
    ADD 
    FOREIGN KEY (department_id)
    REFERENCES departments (department_id)
    MATCH FULL
    ON DELETE NO ACTION
    ON UPDATE NO ACTION

;

ALTER TABLE employees
    ADD 
    FOREIGN KEY (department_id)
    REFERENCES departments (department_id)
    MATCH FULL
    ON DELETE NO ACTION
    ON UPDATE NO ACTION

;
