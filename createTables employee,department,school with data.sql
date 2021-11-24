Use analysis;

CREATE TABLE departments(
dept_id BIGINT IDENTITY,
dept VARCHAR(100),
city VARCHAR(100),
CONSTRAINT dept_key PRIMARY KEY (dept_id),
CONSTRAINT dept_city_unique UNIQUE (dept, city)
);

CREATE TABLE employees (
emp_id BIGINT IDENTITY,
first_name VARCHAR(100),
last_name VARCHAR(100),
salary INT,
dept_id BIGINT REFERENCES departments (dept_id),
CONSTRAINT emp_key PRIMARY KEY (emp_id),
CONSTRAINT emp_dept_unique UNIQUE (emp_id, dept_id)
);

INSERT INTO departments(dept, city)
VALUES				   ('Tax', 'Atlanta'),
					   ('IT', 'Boston');

INSERT INTO employees(first_name, last_name, salary, dept_id)
VALUES				 ('Nancy', 'Jones', '62500', '1'),
					 ('Lee', 'Smith', '59300', '1'),
					 ('Soo', 'Nguyen', '83000', '2'),
					 ('Janet', 'King', '95000', '2');

CREATE TABLE schools_left (
id INT CONSTRAINT left_id_key PRIMARY KEY,
left_school VARCHAR(30)
);

CREATE TABLE schools_right(
id INT CONSTRAINT right_id_key PRIMARY KEY,
right_school VARCHAR(30)
);

INSERT INTO schools_left VALUES					
(1, 'Oak Street School'),
(2, 'Roosevelt High School'),
(5, 'Washington Middle School'),
(6, 'Jefferson High School');

INSERT INTO schools_right VALUES					
(1, 'Oak Street School'),
(2, 'Roosevelt High School'),
(3, 'Morrison Elementary School'),
(4, 'Chase Magnet School'),
(6, 'Jefferson High School');


