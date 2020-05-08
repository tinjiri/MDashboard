CREATE TABLE [dbo].[EmployeeStatus]
(
	[EmployeeStatusId] INT NOT NULL PRIMARY KEY,
[EmployeeStatusDescription]  NVARCHAR(100) NULL,
[EmployeeStatusCode]  NVARCHAR(50) NULL,
		  [CreatedBy]  NVARCHAR(50) NULL, 
    [PopulationDate] DATETIME NULL,
     [LastModifiedBy] NVARCHAR(50) NULL, 
[ModificationDate] DATETIME NULL 
)
