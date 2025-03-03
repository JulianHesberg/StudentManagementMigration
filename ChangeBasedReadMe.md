## InitialSchema
- Created the Initial Schema migration file.
- Updated the database with the migration file.
- Generated the script.

** Models **
- Cource
- Enrollment
- Student

## AddStudentMiddleName
- Added MiddleName property to the Student Model.
- Created the Migration File and Updated the DB.
- Generated the Script.

## AddStudentDateOfBirth
- Added DateOfBirth property to the Student Model.
- Created the Migration file and updated the DB.
- Generated the script file.

## AddInstructorRelation
- Created Instructor Relation with attributes and relation.
- Created the Migration file and updated the DB.
- Generated the Script file.  

## RefactorFinalGrade
- Renamed the Grade attribute to FinalGrade in the Enrollment relation in a distructive way.
- Created the Migration file and updated the DP.
- Generated the script file.
** Argument **
- In our case no one is dependant on the Grade Column so going the distructive way is faster and more conveniant.
- In the application code we referance the old property Grade to the new property FinalGrade.
