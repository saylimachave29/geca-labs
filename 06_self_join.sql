-- Task 6: Self join — pairs of staff in the **same** department (same dept_id)
-- Avoid duplicate pairs: only rows where a.staff_id < b.staff_id

USE join_lab;

-- Selecting pairs of staff members from the same department
SELECT 
    a.name AS staff_member_1, 
    b.name AS staff_member_2, 
    a.dept_id
FROM staff a
JOIN staff b ON a.dept_id = b.dept_id
WHERE a.staff_id < b.staff_id;