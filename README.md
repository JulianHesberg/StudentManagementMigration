# Student Management System

This project is a .NET 8 console-based application that demonstrates a change-based migration strategy using Entity Framework Core. The Student Management system is designed to manage basic data for students, courses, and enrollments.

## Overview

The main objectives of this project are to:
- Define and map models for Students, Courses, and Enrollments.
- Set up an EF Core DbContext to bridge the models with the database.
- Use Change-Based vs. State-Based migrations to incrementally evolve the database schema.
- Leverage Git for version control and feature branching.

## Project Structure

## Models

### Student

- **Properties:**
  - `Id` (int): Primary key.
  - `FirstName` (string): Student's first name.
  - `LastName` (string): Student's last name.
  - `Email` (string): Student's email address.
  - `EnrollmentDate` (DateTime): The date the student enrolled.
- **Navigation Property:**
  - `Enrollments`: A collection of enrollments indicating which courses the student is taking.

### Course

- **Properties:**
  - `Id` (int): Primary key.
  - `Title` (string): Title of the course.
  - `Credits` (int): Number of credits for the course.
- **Navigation Property:**
  - `Enrollments`: A collection of enrollments linking the course to students.

### Enrollment

- **Properties:**
  - `Id` (int): Primary key.
  - `StudentId` (int): Foreign key referencing a Student.
  - `CourseId` (int): Foreign key referencing a Course.
  - `Grade` (int): Numeric representation of the grade.
- **Navigation Properties:**
  - `Student`: The related Student entity.
  - `Course`: The related Course entity.

## DbContext

The `StudentManagementContext` class is defined in the **Data** folder and inherits from `DbContext`. Its primary responsibilities include:

- **Entity Mapping:**  
  Maps the model classes (Student, Course, Enrollment) to corresponding database tables.

- **Change Tracking and CRUD Operations:**  
  Manages the database connection and tracks changes to entities, enabling create, read, update, and delete operations.

- **Schema Management:**  
  Works in tandem with EF Core migrations to create and update the database schema.