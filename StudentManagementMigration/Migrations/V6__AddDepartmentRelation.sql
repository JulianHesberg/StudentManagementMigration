BEGIN TRANSACTION;
CREATE TABLE [Departments] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NOT NULL,
    [Budget] decimal(18,2) NOT NULL,
    [StartDate] datetime2 NOT NULL,
    [DepartmentHeadId] int NOT NULL,
    CONSTRAINT [PK_Departments] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Departments_Instructor_DepartmentHeadId] FOREIGN KEY ([DepartmentHeadId]) REFERENCES [Instructor] ([Id]) ON DELETE CASCADE
);

CREATE INDEX [IX_Departments_DepartmentHeadId] ON [Departments] ([DepartmentHeadId]);

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250303102737_AddDepartmentRelation', N'9.0.2');

COMMIT;
GO

