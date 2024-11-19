-- 1. Concatenate Course Name and Semester:
select concat (course_name, '-', semester) as course_name_and_semester
from courses;

-- 2. Find Courses with Labs on Fridays:
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Fri%';

-- 3. Upcoming Assignments:
SELECT *
FROM assignments
WHERE due_date > DATE('now');

-- 4. Count Assignments by Status:
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

-- 5. Longest Course Name:
SELECT course_name
FROM courses
ORDER BY LENGTH(course_name) DESC

-- 6. Uppercase Course Names:
SELECT UPPER(course_name) AS uppercase_course_name
FROM courses;

-- 7. Assignments Due in September:
SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';

-- 8. Assignments with Missing Due Dates:
SELECT *
FROM assignments
WHERE due_date IS NULL;
