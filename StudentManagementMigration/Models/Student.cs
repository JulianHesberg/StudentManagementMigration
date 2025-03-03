namespace StudentManagementMigration.Models
{

    public class Student
    {
        // Primary Key
        public int Id { get; set; }

        // Student Information
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string MiddleName { get; set; }
        public string Email { get; set; }
        public DateTime EnrollmentDate { get; set; }
        public DateTime DateOfBirth { get; set; }

        // Navigation Property: A student can have multiple enrollments
        public ICollection<Enrollment> Enrollments { get; set; }
    }

}

