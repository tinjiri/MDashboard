CREATE TABLE [dbo].[Employee]
(
	[EmpId] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NULL, 
    [Surname] NVARCHAR(50) NULL, 
    [KnownAs] NVARCHAR(50) NULL, 
    [TitleId] INT NULL, 
    [DateOfBirth] DATETIME NULL, 
    [DateOfEngagement] DATETIME NULL, 
    [DesignationId] INT NULL, 
    [DesignationLevelId] INT NULL, 
    [ReportsTo] INT NULL, 
    [EmploymentStatusId] INT NULL, 
    [DeptId] INT NULL, 
    [EmpStatusId] NCHAR(10) NULL,
	  [CreatedBy]  NVARCHAR(50) NULL, 
    [PopulationDate] DATETIME NULL,
     [LastModifiedBy] NVARCHAR(50) NULL, 
[ModificationDate] DATETIME NULL
)


