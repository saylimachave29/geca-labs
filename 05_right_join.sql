-- Task 5: Right outer join (MySQL supports RIGHT JOIN)
-- All staff rows, with department name when present

USE join_lab;


SELECT departments.dept_name, staff.name
FROM departments
RIGHT JOIN staff 
ON departments.dept_id = staff.dept_id;