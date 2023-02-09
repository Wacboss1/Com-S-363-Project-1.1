-- SELECT snum, ssn
-- FROM students
-- WHERE (name) = 'Becky';

-- Select major.name, major.level
-- FROM major
-- INNER JOIN students ON major.snum = students.snum
-- where students.ssn = 123097834;

-- Select courses.name
-- FROM courses
-- INNER JOIN departments ON courses.department_code = departments.code
-- WHERE departments.name = "Computer Science";