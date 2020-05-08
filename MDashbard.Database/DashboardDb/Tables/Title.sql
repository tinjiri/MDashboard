CREATE TABLE [dbo].[Title]
(
	[TitleId] INT NOT NULL PRIMARY KEY,
	[TitleName] NVARCHAR(100) NULL,
	[TitleDescription] NVARCHAR(100) NULL,
	[TitleCode] NVARCHAR(20) NULL,
	[TitleAbbreviation] NVARCHAR(20) NULL,
		  [CreatedBy]  NVARCHAR(50) NULL, 
    [PopulationDate] DATETIME NULL,
     [LastModifiedBy] NVARCHAR(50) NULL, 
[ModificationDate] DATETIME NULL
)
