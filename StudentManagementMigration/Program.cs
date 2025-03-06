using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.EntityFrameworkCore;
using StudentManagementMigration.Data;
using Microsoft.Extensions.Configuration;

var host = Host.CreateDefaultBuilder(args)
    .ConfigureServices((context, services) =>
    {
        services.AddDbContext<StudentManagementContext>(options =>
            options.UseSqlServer(context.Configuration.GetConnectionString("DefaultConnection")));

    })
    .Build();

using (var scope = host.Services.CreateScope())
{
    var dbContext = scope.ServiceProvider.GetRequiredService<StudentManagementContext>();
}

await host.RunAsync();
