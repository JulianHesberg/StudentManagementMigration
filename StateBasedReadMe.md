## Initial Schema
- Generated sql for initial database state
- Student, Course, Enrollment


## Add Student Middle Name
- Create same sql but added new column for student with middle name

## Add Student Date of Birth
- Same sql with new DateTime property on student for date of birth.

## Add Instructor Relation
- Created new relation "Instructor"
- Adds foreign key reference to Instructor(Id) from Courses(InstructorId)

## Refactor Final Grade
- Sql script to generate the same database
- uses column name FinalGrade instead of Grade in Enrollments relation.

## Add Department Relation
- Sql script now has code to generate a Departments relation
- Departments has a foreign key Departments(DepartmentHeadId) that references an instructor Instructor(Id)

## Modify Credits Type
- complete generated database sql script
- final modification was changing type int to decimal on Courses(Credits)
