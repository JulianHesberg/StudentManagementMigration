BEGIN TRANSACTION;
ALTER TABLE [Enrollments] ADD [FinalGrade] int NOT NULL DEFAULT 0;

UPDATE Enrollments SET FinalGrade = Grade

DECLARE @var sysname;
SELECT @var = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Enrollments]') AND [c].[name] = N'Grade');
IF @var IS NOT NULL EXEC(N'ALTER TABLE [Enrollments] DROP CONSTRAINT [' + @var + '];');
ALTER TABLE [Enrollments] DROP COLUMN [Grade];

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250303092154_RefactorFinalGrade', N'9.0.2');

COMMIT;
GO

