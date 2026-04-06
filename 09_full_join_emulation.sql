-- Task 9: Full outer join emulation (MySQL has no FULL OUTER JOIN)
-- List every project title and every staff name that has hours on that project;
-- also show projects with no assignments and staff who never appear in project_staff (use UNION of left + anti patterns, or two LEFT JOINs with UNION — choose a correct emulation you can explain)

USE join_lab;

-- Strategy: Use UNION to combine a LEFT JOIN and a RIGHT JOIN 
-- to emulate a FULL OUTER JOIN between projects and staff.

SELECT projects.title, staff.name
FROM projects
LEFT JOIN project_staff ON projects.proj_id = project_staff.proj_id
LEFT JOIN staff ON project_staff.staff_id = staff.staff_id

UNION

SELECT projects.title, staff.name
FROM projects
RIGHT JOIN project_staff ON projects.proj_id = project_staff.proj_id
RIGHT JOIN staff ON project_staff.staff_id = staff.staff_id;