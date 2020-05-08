CREATE TABLE [dbo].[Component]
(
	[ComponentId] INT NOT NULL PRIMARY KEY,
[ComponentDescription]  NVARCHAR(250) NULL,
[ComponentCode]  NVARCHAR(50) NULL, 
    [InStock] BIT NULL,
		  [CreatedBy]  NVARCHAR(50) NULL, 
    [PopulationDate] DATETIME NULL,
     [LastModifiedBy] NVARCHAR(50) NULL, 
[ModificationDate] DATETIME NULL
)
