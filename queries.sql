1)—List the following details of each employee: employee number, last name, first name, sex, and salary.
select emp.emp_no,emp.last_name,emp.first_name,emp.sex,s.salary from employees as emp join salaries as s on (emp.emp_no=s.emp_no) order by emp.emp_no;

2)—List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date from employees where hire_date between '1986-01-01' AND ‘1986-12-31';

3)—List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.dept_no, d.dept_name,dm.emp_no, emp.last_name, emp.first_name from department as d join dept_manager as dm on (d.dept_no=dm.dept_no) join employees as emp on (emp.emp_no=dm.emp_no);

4)—List the department of each employee with the following information: employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, d.dept_name from employees as emp cross join department as d ;

5)—List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name,sex from employees where first_name = 'Hercules' and last_name like 'B%' ;

6)—List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name
FROM Employees AS emp
JOIN dept_emp as de ON
emp.emp_no = de.emp_no
INNER JOIN department AS d ON
de.dept_no = d.dept_no
WHERE dept_name = ‘Sales';

7)—List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name
FROM Employees AS emp
JOIN dept_emp as de  ON
emp.emp_no = de.emp_no
INNER JOIN department AS d ON
de.dept_no = d.dept_no
WHERE dept_name = 'Sales' or dept_name = ‘Development';

8)—In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) FROM Employees
GROUP BY last_name
ORDER BY count(last_name) desc;

