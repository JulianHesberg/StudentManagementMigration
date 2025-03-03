create table Courses
(
    Id      int identity
        constraint PK_Courses
            primary key,
    Title   nvarchar(max) not null,
    Credits int           not null
)
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
    Id        int identity
        constraint PK_Enrollments
            primary key,
    StudentId int           not null
        constraint FK_Enrollments_Students_StudentId
            references Students
            on delete cascade,
    CourseId  int           not null
        constraint FK_Enrollments_Courses_CourseId
            references Courses
            on delete cascade,
    Grade     int default 0 not null
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

