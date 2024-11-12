-- Assignments for a Specific Course
-- Write a query to display the title and due_date of assignments for the course COMP1234.

SELECT * FROM assignments
WHERE course_id like 'comp1234%'
ORDER by due_date
