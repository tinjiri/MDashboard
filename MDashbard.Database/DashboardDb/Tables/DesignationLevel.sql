CREATE TABLE [dbo].[DesignationLevel]
(
	[DesignationLevelId] INT NOT NULL PRIMARY KEY,
	[DesignationLevelDescription] NVARCHAR(100) NULL,
	[DesignationLevelCode] NVARCHAR(100) NULL,
	[DesignationLevelName] INT NULL,
		  [CreatedBy]  NVARCHAR(50) NULL, 
    [PopulationDate] DATETIME NULL,
     [LastModifiedBy] NVARCHAR(50) NULL, 
[ModificationDate] DATETIME NULL
)
