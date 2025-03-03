using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace StudentManagementMigration.Migrations
{
    /// <inheritdoc />
    public partial class RefactorFinalGrade : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            // Add new column
            migrationBuilder.AddColumn<int>(
                name: "FinalGrade",
                table: "Enrollments",
                nullable: false,
                defaultValue: 0);
        
            // Copy data from the old column to the new column
            migrationBuilder.Sql("UPDATE Enrollments SET FinalGrade = Grade");
        
            // Remove the old column
            migrationBuilder.DropColumn(
                name: "Grade",
                table: "Enrollments");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            // Add old column back
            migrationBuilder.AddColumn<int>(
                name: "Grade",
                table: "Enrollments",
                nullable: false,
                defaultValue: 0);
        
            // Copy data from the new column to the old column
            migrationBuilder.Sql("UPDATE Enrollments SET Grade = FinalGrade");
        
            // Remove the new column
            migrationBuilder.DropColumn(
                name: "FinalGrade",
                table: "Enrollments");
        }
    }
}
