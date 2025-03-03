create table Instructor
(
    Id        int identity
        constraint PK_Instructor
            primary key,
    FirstName nvarchar(max) not null,
    LastName  nvarchar(max) not null,
    Email     nvarchar(max) not null,
    HireDate  datetime2     not null
)
    go

create table Courses
(
    Id           int identity
        constraint PK_Courses
            primary key,
    Title        nvarchar(max) not null,
    Credits      int           not null,
    InstructorId int default 0 not null
        constraint FK_Courses_Instructor_InstructorId
            references Instructor
            on delete cascade
)
    go

create index IX_Courses_InstructorId
    on Courses (InstructorId)
    go

create table Departments
(
    Id               int identity
        constraint PK_Departments
            primary key,
    Name             nvarchar(max)  not null,
    Budget           decimal(18, 2) not null,
    StartDate        datetime2      not null,
    DepartmentHeadId int            not null
        constraint FK_Departments_Instructor_DepartmentHeadId
            references Instructor
            on delete cascade
)
    go

create index IX_Departments_DepartmentHeadId
    on Departments (DepartmentHeadId)
    go

create table Students
(
    Id             int identity
        constraint PK_Students
            primary key,
    FirstName      nvarchar(max)                                       not null,
    LastName       nvarchar(max)                                       not null,
    Email          nvarchar(max)                                       not null,
    EnrollmentDate datetime2                                           not null,
    MiddleName     nvarchar(max) default N''                           not null,
    DateOfBirth    datetime2     default '0001-01-01T00:00:00.0000000' not null
)
    go

create table Enrollments
(
    Id         int identity
        constraint PK_Enrollments
            primary key,
    StudentId  int           not null
        constraint FK_Enrollments_Students_StudentId
            references Students
            on delete cascade,
    CourseId   int           not null
        constraint FK_Enrollments_Courses_CourseId
            references Courses
            on delete cascade,
    FinalGrade int default 0 not null
)
    go

create index IX_Enrollments_CourseId
    on Enrollments (CourseId)
    go

create index IX_Enrollments_StudentId
    on Enrollments (StudentId)
    go

create table __EFMigrationsHistory
(
    MigrationId    nvarchar(150) not null
        constraint PK___EFMigrationsHistory
            primary key,
    ProductVersion nvarchar(32)  not null
)
    go

