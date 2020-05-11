CREATE TABLE [dbo].[Department]
(
	[DepartmentId] INT NOT NULL PRIMARY KEY,
	[DepartmentName] NVARCHAR(100) NULL,
	[DepartmentCode] NVARCHAR(20) NULL,
	[LocationId] INT NULL,
	  [CreatedBy]  NVARCHAR(50) NULL, 
    [PopulationDate] DATETIME NULL,
     [LastModifiedBy] NVARCHAR(50) NULL, 
	[ModificationDate] DATETIME NULL
)
