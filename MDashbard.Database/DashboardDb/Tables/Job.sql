CREATE TABLE [dbo].[Job]
(
	[JobId] INT NOT NULL PRIMARY KEY,	
JobNumber NVARCHAR(100) NULL,
JobName NVARCHAR(100) NULL,
JobTypeId INT NULL,
JobDescription  NVARCHAR(100) NULL,
JobCode  NVARCHAR(50) NULL,
Scope  NVARCHAR(100) NULL,
JobDateIssued DATETIME NULL,
JobStartDate DATETIME NULL,
JobEndDate DATETIME NULL,
JobEstimateDueDate DATETIME NULL,
JobEstimateDurationInHours INT NULL,
DurationInHours INT NULL,
DurationInDays INT NULL,
JobRequestorId  INT NULL, 
PriorityId  INT NULL, 
Invoiced  BIT NULL, 
		  [CreatedBy]  NVARCHAR(50) NULL, 
    [PopulationDate] DATETIME NULL,
     [LastModifiedBy] NVARCHAR(50) NULL, 
[ModificationDate] DATETIME NULL
)
