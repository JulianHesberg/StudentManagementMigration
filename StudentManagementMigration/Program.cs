using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.EntityFrameworkCore;
using StudentManagementMigration.Data;
using Microsoft.Extensions.Configuration;

var host = Host.CreateDefaultBuilder(args)
    .ConfigureServices((context, services) =>
    {
        // Configure the DbContext with a connection string from configuration
        services.AddDbContext<StudentManagementContext>(options =>
            options.UseSqlServer(context.Configuration.GetConnectionString("DefaultConnection")));

        // Add other services as needed.
    })
    .Build();

// Now you can retrieve the context from the host's service provider
using (var scope = host.Services.CreateScope())
{
    var dbContext = scope.ServiceProvider.GetRequiredService<StudentManagementContext>();
    // Use the dbContext here (e.g., run migrations or seed data)
}

await host.RunAsync();
