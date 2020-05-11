CREATE TABLE [dbo].[JobStatus]
(
	[JobStatusId] INT NOT NULL PRIMARY KEY,
	[JobStatusDescription]  NVARCHAR(100) NULL,
	[JobStatusCode]  NVARCHAR(50) NULL,
	[CreatedBy]  NVARCHAR(50) NULL, 
     [PopulationDate] DATETIME NULL,
     [LastModifiedBy] NVARCHAR(50) NULL, 
	 [ModificationDate] DATETIME NULL
)
