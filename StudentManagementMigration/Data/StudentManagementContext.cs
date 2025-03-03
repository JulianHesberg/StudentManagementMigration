using Microsoft.EntityFrameworkCore;
using StudentManagementMigration.Models;

namespace StudentManagementMigration.Data
{

    public class StudentManagementContext : DbContext
    {
        public StudentManagementContext(DbContextOptions<StudentManagementContext> options)
            : base(options)
        {
        }

        // DbSets represent tables in the database
        public DbSet<Student> Students { get; set; }
        public DbSet<Course> Courses { get; set; }
        public DbSet<Enrollment> Enrollments { get; set; }
        public DbSet<Department> Departments { get; set; }
        public DbSet<Instructor> Instructor { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Call base method
            base.OnModelCreating(modelBuilder);

            // Optional: Configure entity relationships, constraints, or default values here.
            // For example, if you want to make sure that Email is required:
            // modelBuilder.Entity<Student>().Property(s => s.Email).IsRequired();
        }
    }
}