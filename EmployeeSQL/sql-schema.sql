--Drop Tables when needed
DROP Table departments CASCADE;
DROP TABLE dept_emp CASCADE;
DROP TABLE dept_manager CASCADE;
DROP TABLE employees CASCADE;
DROP TABLE salaries CASCADE;
DROP TABLE titles CASCADE;

-- Create employees table
create table employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(8) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(35) NOT NULL,
	last_name VARCHAR(35) NOT NULL,
	sex VARCHAR(1)NOT NULL,
	hire_date DATE NOT NULL
);

-- Create departments table
create table departments (
	dept_no VARCHAR(8) primary key NOT NULL,
	dept_name VARCHAR(35) NOT NULL
);

-- Create titles table
create table titles (
	title_id VARCHAR(8) NOT NULL,
	title VARCHAR(35) NOT NULL
);

-- Create department employee table
create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(8) NOT NULL,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

-- Create salaries table
create table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
    foreign key (emp_no) references employees (emp_no)
);

-- Create Department manager table
create table dept_manager (
	dept_no VARCHAR(8) NOT NULL,
	emp_no INT NOT NULL,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

--test to see table values
SELECT * FROM departments;
select * from dept_emp; 
select * from dept_manager; 
select * from titles; 
select * from salaries; 
select * from employees;