-- Query 1: Display all placed students
SELECT *
FROM placement_data
WHERE status = 'Placed';

-- Query 2: Count students by degree type
SELECT degree_t,
COUNT(*) AS total_students
FROM placement_data
GROUP BY degree_t;

-- Query 3: Display highest salary
SELECT gender,
degree_t,
salary
FROM placement_data
WHERE salary > 0
ORDER BY salary DESC;

-- Query 4: Degree types with average salary above 300000
SELECT degree_t,
AVG(salary) AS average_salary
FROM placement_data
WHERE salary > 0
GROUP BY degree_t
HAVING AVG(salary) > 300000;

-- Query 5: Students with degree percentage between 70 and 90
SELECT sI no, gender,
degree_t,
degree_percentag
FROM placement_data
WHERE degree_percentag BETWEEN 70 AND 90;

-- Query 6: Average salary by specialization
SELECT specialisation,
COUNT(*) AS placed_students,
AVG(salary) AS average_salary
FROM placement_data
WHERE status = 'Placed'
GROUP BY specialisation
HAVING COUNT(*) > 20
ORDER BY average_salary DESC;