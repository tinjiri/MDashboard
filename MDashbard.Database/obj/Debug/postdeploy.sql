﻿/*
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
(1,'Human Resources', 'HR', 1),
(2,'Production', 'PROD', 1),
(3,'Maintenance', 'MAIN', 1),
(4,'Production', 'PROD', 2),
(5,'Maintenance', 'MAIN', 2),
(6,'Information Systems', 'INFOSYS', 1)
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
(1,'SPRINGS', 'SPR','Springs','Gauteng','1559' , ''),
(2,'DELMAS', 'DLM','Delmas','Mpumalanga','2210' , '')
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
(1,'Mister',  'Mr'),
(2,'Professor', 'Prof'),
(3,'Mrs', 'Mrs'),
(4,'Engineer', 'Eng'),
(5,'Mistress', 'Ms'),
(6,'Mistress',  'Miss'),
(7,'Doctor', 'Dr')
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
