namespace StudentManagementMigration.Models
{
    public class Course
    {
        // Primary Key
        public int Id { get; set; }

        // Course Details
        public string Title { get; set; }
        public int Credits { get; set; }
        
        public int InstructorId { get; set; }

        // Navigation Property: A course can have multiple enrollments
        public ICollection<Enrollment> Enrollments { get; set; }
        public Instructor Instructor { get; set; }
    }
}