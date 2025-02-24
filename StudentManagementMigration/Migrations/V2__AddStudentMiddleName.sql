BEGIN TRANSACTION;
ALTER TABLE [Students] ADD [MiddleName] nvarchar(max) NOT NULL DEFAULT N'';

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250224122618_AddStudentMiddleName', N'9.0.2');

COMMIT;
GO

