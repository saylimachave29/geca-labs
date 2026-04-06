-- Puzzle C (riddle)
-- "One department never sponsored a project. Which `dept_name` is the wallflower?"

USE join_lab;

USE join_lab;

-- Puzzle B: Finding the "Outsider"
SELECT 
    staff.name AS outsider_name, 
    projects.title AS project_title
FROM staff
JOIN project_staff ON staff.staff_id = project_staff.staff_id
JOIN projects ON project_staff.proj_id = projects.proj_id
WHERE staff.dept_id != projects.dept_id;