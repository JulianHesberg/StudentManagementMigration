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
- Created the Migration file and updated the DB.
- Generated the script file.
** Argument **
- In our case no one is dependant on the Grade Column so going the distructive way is faster and more conveniant.
- In the application code we referance the old property Grade to the new property FinalGrade.

## AddDepartmentRelation
- Created Department propert with attributes and added a relation such as an Instructor is the HeadDepartment.
- Create Migration file annd update the DB.
- Generate the Script file.

## ModifyCreditsType
- Modified the Cources Credit relation fron Int to Decimal[5,2] destructivve.
- Created the Migration file and updated the DB.
- Generated the Script file.
** Argument **
- Similer to FinalGrade nothing is dependant on Credit so going the destructive way is faster and more conveniant.
- In our case we modify from Int to Decimal, this way any int number will be safly transitioned into a decimal without any errors example: 1 -> 1,0
