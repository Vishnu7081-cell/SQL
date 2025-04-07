create table employess(
employee_id INT,
first_name VARCHAR(100),
last_name VARCHAR(100),
department	VARCHAR(100),
salary INT,
hire_date DATE,
commission INT)


INSERT INTO employess VALUES(1, 'Ikka', 'Javed', 'Operations', 25000, '02-03-2025', 500)
INSERT INTO employess VALUES(2, 'Ji', 'Vidhya', 'Analytics', 25000, '01-04-2025', 600)
INSERT INTO employess VALUES(3, 'jee', 'Balajee', 'Sales', 30000, '02-07-2025', 800)
INSERT INTO employess VALUES(4, 'Vishnu', 'Gopinath', 'Operations', 25000, '02-03-2025', 500)
INSERT INTO employess VALUES(1, 'Akshay', 'AK', 'Analytics', 27000, '01-04-2025', 600)


select * from employess


SELECT *,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employess;

SELECT *,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employess;

SELECT *,
       RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank
FROM employess;

SELECT *,
       RANK() OVER (PARTITION BY department ORDER BY hire_date) AS dept_hire_rank
FROM employess;



