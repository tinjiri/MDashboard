CREATE TABLE [dbo].[Designation]
(
	[DesignationId] INT NOT NULL PRIMARY KEY,
	[DesignationDescription] NVARCHAR(100) NULL,
	[DesignationCode] NVARCHAR(100) NULL,
	[DesignationLevelId] INT NULL,
		  [CreatedBy]  NVARCHAR(50) NULL, 
    [PopulationDate] DATETIME NULL,
     [LastModifiedBy] NVARCHAR(50) NULL, 
[ModificationDate] DATETIME NULL
)
