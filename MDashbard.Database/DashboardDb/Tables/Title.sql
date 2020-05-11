CREATE TABLE [dbo].[Title]
(
	[TitleId] INT NOT NULL PRIMARY KEY,
	[TitleDescription] NVARCHAR(100) NULL,
	[TitleCode] NVARCHAR(20) NULL,	
		  [CreatedBy]  NVARCHAR(50) NULL, 
    [PopulationDate] DATETIME NULL,
     [LastModifiedBy] NVARCHAR(50) NULL, 
[ModificationDate] DATETIME NULL
)
