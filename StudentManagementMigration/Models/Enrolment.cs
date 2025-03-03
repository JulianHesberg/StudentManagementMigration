using System.ComponentModel.DataAnnotations.Schema;

namespace StudentManagementMigration.Models
{

    public class Enrollment
    {
        // Primary Key
        public int Id { get; set; }

        // Foreign Keys
        public int StudentId { get; set; }
        public int CourseId { get; set; }

        // Grade stored as an int
        public int FinalGrade { get; set; }
        
        [NotMapped]
        public int Grade { get=>FinalGrade; set=>FinalGrade = value; }

        // Navigation Properties: Linking to Student and Course entities
        public Student Student { get; set; }
        public Course Course { get; set; }
    }
}
