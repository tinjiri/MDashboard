CREATE TABLE [dbo].[EmploymentStatus]
(
	[EmploymentStatusId] INT NOT NULL PRIMARY KEY,
[EmploymentStatusDescription]  NVARCHAR(100) NULL,
[EmploymentStatusCode]  NVARCHAR(50) NULL,		
[CreatedBy]  NVARCHAR(50) NULL, 
    [PopulationDate] DATETIME NULL,
     [LastModifiedBy] NVARCHAR(50) NULL, 
[ModificationDate] DATETIME NULL
)
