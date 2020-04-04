-- Data Analysis

-- List the following details of each employee:
-- employee number, last name, first name, gender, and salary.

select e.emp_no as "Employee #", e.last_name as "Last Name",
	   e.first_name as "First Name", e.gender as "Gender", s.salary as "Salary"
from employees e
inner join salaries s
on e.emp_no = s.emp_no;

-- List employees who were hired in 1986

select last_name as "Last Name", first_name as "First Name",
	   hire_date as "Date Hired"
from employees
where to_char(hire_date, 'yyyy') = '1986';

-- List the manager of each department with the following information:
-- department number, department name, the manager's employee number,
-- last name, first name, and start and end employment dates

select dm.dept_no as "Department #", d.dept_name as "Department Name",
	   dm.emp_no as "Manager Employee #", e.last_name as "Manager Last Name",
	   e.first_name as "Manager First Name", dm.from_date as "Employment Start Date",
	   dm.to_date as "Employment End Date"
from dept_manager dm
inner join departments d
on dm.dept_no = d.dept_no
inner join employees e
on dm.emp_no = e.emp_no;

-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name

select e.emp_no as "Employee #", e.last_name as "Last Name",
	   e.first_name as "First Name", d.dept_name as "Department"
from employees e
inner join dept_emp de
on e.emp_no = de.emp_no
inner join departments d
on de.dept_no = d.dept_no;

-- List all employees whose first name is "Hercules" and last names begin with "B"

select last_name as "Last Name", first_name as "First Name"
from employees
where last_name like 'B%'
and first_name = 'Hercules';

-- List all employees in the Sales department,
-- including their employee number, last name, first name, and department name

select e.emp_no as "Employee #", e.last_name as "Last Name",
	   e.first_name as "First Name", d.dept_name as "Department Name"
from employees e
inner join dept_emp de
on e.emp_no = de.emp_no
inner join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and department name

select e.emp_no as "Employee #", e.last_name as "Last Name",
	   e.first_name as "First Name", d.dept_name as "Department Name"
from employees e
inner join dept_emp de
on e.emp_no = de.emp_no
inner join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales'
or d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names,
-- i.e., how many employees share each last name

select last_name as "Last Name", count(last_name) as "Frequency of Employee Last Name"
from employees
group by 1
order by 2 DESC;