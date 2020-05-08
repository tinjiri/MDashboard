CREATE TABLE [dbo].[Location]
(
	[LocationId] INT NOT NULL PRIMARY KEY,
	[LocationName] NVARCHAR(100) NULL,
	[LocationDescription] NVARCHAR(100) NULL,
	[LocationCode] NVARCHAR(20) NULL,
	[City] NVARCHAR(50) NULL,
	[Province] NVARCHAR(50) NULL,
	[PostalCode NVARCHAR(50) NULL,
	[ZipCode] NVARCHAR(20) NULL,
		  [CreatedBy]  NVARCHAR(50) NULL, 
    [PopulationDate] DATETIME NULL,
     [LastModifiedBy] NVARCHAR(50) NULL, 
[ModificationDate] DATETIME NULL
)
