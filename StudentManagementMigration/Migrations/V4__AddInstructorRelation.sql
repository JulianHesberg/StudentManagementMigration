BEGIN TRANSACTION;
ALTER TABLE [Courses] ADD [InstructorId] int NOT NULL DEFAULT 0;

CREATE TABLE [Instructor] (
    [Id] int NOT NULL IDENTITY,
    [FirstName] nvarchar(max) NOT NULL,
    [LastName] nvarchar(max) NOT NULL,
    [Email] nvarchar(max) NOT NULL,
    [HireDate] datetime2 NOT NULL,
    CONSTRAINT [PK_Instructor] PRIMARY KEY ([Id])
);

CREATE INDEX [IX_Courses_InstructorId] ON [Courses] ([InstructorId]);

ALTER TABLE [Courses] ADD CONSTRAINT [FK_Courses_Instructor_InstructorId] FOREIGN KEY ([InstructorId]) REFERENCES [Instructor] ([Id]) ON DELETE CASCADE;

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250303090218_AddInstructorRelation', N'9.0.2');

COMMIT;
GO

