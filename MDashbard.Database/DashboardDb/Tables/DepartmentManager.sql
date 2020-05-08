CREATE TABLE [dbo].[DepartmentManager]
(
	[DepartmentManagerId] INT NOT NULL PRIMARY KEY,
	[DepartmentId] INT NULL,
	[EmployeeId] INT NULL,
	[DesignationLevelId]  INT NULL,
		  [CreatedBy]  NVARCHAR(50) NULL, 
    [PopulationDate] DATETIME NULL,
     [LastModifiedBy] NVARCHAR(50) NULL, 
[ModificationDate] DATETIME NULL
)
