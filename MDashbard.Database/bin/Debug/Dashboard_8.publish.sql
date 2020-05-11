﻿/*
Deployment script for DashboardDb

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "DashboardDb"
:setvar DefaultFilePrefix "DashboardDb"
:setvar DefaultDataPath "C:\Users\JTi\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"
:setvar DefaultLogPath "C:\Users\JTi\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Altering [dbo].[Department]...';


GO
ALTER TABLE [dbo].[Department] DROP COLUMN [DepartmentDescription];


GO
PRINT N'Altering [dbo].[Location]...';


GO
ALTER TABLE [dbo].[Location] DROP COLUMN [LocationDescription];


GO
PRINT N'Altering [dbo].[Title]...';


GO
ALTER TABLE [dbo].[Title] DROP COLUMN [TitleAbbreviation], COLUMN [TitleName];


GO
PRINT N'Creating [dbo].[Priority]...';


GO
CREATE TABLE [dbo].[Priority] (
    [PriorityId]          INT           NOT NULL,
    [PriorityDescription] NVARCHAR (50) NULL,
    [PriorityCode]        NVARCHAR (20) NULL,
    [PriorityColor]       NVARCHAR (20) NULL,
    PRIMARY KEY CLUSTERED ([PriorityId] ASC)
);


GO
/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

MERGE [Department] WITH (SERIALIZABLE) AS T
USING (VALUES 
(1,'Human Resources','Human Resources', 'HR', 1),
(2,'Production','Production', 'PROD', 1),
(3,'Maintenance','Maintenance', 'MAIN', 1),
(4,'Production','Production', 'PROD', 2),
(5,'Maintenance','Maintenance', 'MAIN', 2),
(6,'Information Systems','Information Sysytems', 'INFOSYS', 1)
) 	AS U ([DepartmentId],	[DepartmentName],	[DepartmentCode],	[LocationId]) 
	ON U.[DepartmentId]=T.[DepartmentId]	

WHEN MATCHED THEN 
    UPDATE SET  T.[DepartmentName]=U.[DepartmentName],
               T.[DepartmentCode]=U.[DepartmentCode],
            T.[LocationId]=U.[LocationId]

WHEN NOT MATCHED THEN
    INSERT ([DepartmentId],	[DepartmentName],	[DepartmentCode],	[LocationId]) 
    VALUES (U.[DepartmentId],	U.[DepartmentName],	U.[DepartmentCode],	U.[LocationId]);





GO

MERGE [JobStatus] WITH (SERIALIZABLE) AS T
USING (VALUES 
(1,'To Do','TOD'),
(2,'In Progress','INP'),
(3,'Done','DON'),
(4,'Terminated','TER')
) 	AS U ([JobStatusId],	[JobStatusDescription] ,	[JobStatusCode])
	ON U.[JobStatusId]=T.[JobStatusId]

WHEN MATCHED THEN 
    UPDATE SET T.[JobStatusDescription] =U.[JobStatusDescription] ,
			   T.[JobStatusCode]=U.[JobStatusCode]
WHEN NOT MATCHED THEN
    INSERT ( [JobStatusId],	[JobStatusDescription] ,	[JobStatusCode]) 
    VALUES (U.[JobStatusId],U.[JobStatusDescription] ,U.[JobStatusCode]);



  







GO

MERGE [Location] WITH (SERIALIZABLE) AS T
USING (VALUES 
(1,'SPRINGS','SPRINGS', 'SPR','Springs','Gauteng','1559' , ''),
(2,'DELMAS','DELMAS', 'DLM','Delmas','Mpumalanga','2210' , '')
) 	AS U ([LocationId] ,[LocationName] ,	[LocationCode] ,	[City] ,	[Province],	[PostalCode],	[ZipCode])
	ON U.[LocationId]=T.[LocationId]	

WHEN MATCHED THEN 
    UPDATE SET  T.[LocationName] =U.[LocationName] ,	
	    	T.[LocationCode] =U.[LocationCode] ,	
			T.[City] =U.[City] ,	
			T.[Province]=U.[Province],	
			T.[PostalCode]=U.[PostalCode],	
			T.[ZipCode]=U.[ZipCode]


WHEN NOT MATCHED THEN
    INSERT ([LocationId] ,	[LocationName] ,	[LocationCode] ,	[City] ,	[Province],	[PostalCode],	[ZipCode]) 
    VALUES (U.[LocationId] ,	U.[LocationName] ,	U.[LocationCode] ,	U.[City] ,	U.[Province],	U.[PostalCode],	U.[ZipCode]);

   
	




GO

MERGE [Title] WITH (SERIALIZABLE) AS T
USING (VALUES 
(1,'Mister','Mister', 'MR', 'Mr'),
(2,'Professor','Professor', 'Prof', 'Prof'),
(3,'Mrs','Mistress', 'MRS', 'Mrs'),
(4,'Engineer','Engineer', 'ENG', 'Eng'),
(5,'Mistress','Mistress', 'MS', 'Ms'),
(6,'Mistress','Mistress', 'MS', 'Miss'),
(7,'Doctor','Doctor', 'DOCTOR', 'Dr')
) 	AS U ([TitleId],	[TitleDescription] ,	[TitleCode] )
	ON U.[TitleId]=T.[TitleId]	

WHEN MATCHED THEN 
    UPDATE SET T.[TitleDescription] = U.[TitleDescription],
     	 T.[TitleCode] = U.[TitleCode]
WHEN NOT MATCHED THEN
    INSERT ([TitleId], [TitleDescription], [TitleCode]) 
    VALUES (U.[TitleId],U.[TitleDescription] , U.[TitleCode]);






GO




GO

GO
PRINT N'Update complete.';


GO
