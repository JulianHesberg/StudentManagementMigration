using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace StudentManagementMigration.Migrations
{
    /// <inheritdoc />
    public partial class AddStudentMiddleName : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "MiddleName",
                table: "Students",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "MiddleName",
                table: "Students");
        }
    }
}
