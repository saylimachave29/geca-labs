-- Task 7: Non-equi join — pairs of staff where person A joined **strictly before** person B (same department)

USE join_lab;

USE join_lab;

-- Task 7: Non-equi join
SELECT 
    a.name, 
    b.name, 
    a.joined_on, 
    b.joined_on
FROM staff a
JOIN staff b ON a.dept_id = b.dept_id 
             AND a.joined_on < b.joined_on;