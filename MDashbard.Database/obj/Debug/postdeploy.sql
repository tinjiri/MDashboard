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




MERGE [Title] WITH (SERIALIZABLE) AS T
USING (VALUES 
(1,'Mister','Mister', 'MR', 'Mr'),
(2,'Professor','Professor', 'Prof', 'Prof'),
(3,'Mrs','Mistress', 'MRS', 'Mrs')
) 	AS U ([TitleId],	[TitleName] ,	[TitleDescription] ,	[TitleCode] ,	[TitleAbbreviation] )
	ON U.[TitleId]=T.[TitleId]	

WHEN MATCHED THEN 
    UPDATE SET T.[TitleName] = U.[TitleName],
	 T.[TitleDescription] = U.[TitleDescription],
     	 T.[TitleCode] = U.[TitleCode],
         	 T.[TitleAbbreviation] = U.[TitleAbbreviation]
WHEN NOT MATCHED THEN
    INSERT ([TitleId], [TitleName] ,[TitleDescription], [TitleCode], [TitleAbbreviation]) 
    VALUES (U.[TitleId],U.[TitleName] ,U.[TitleDescription] , U.[TitleCode], U.[TitleAbbreviation]);






GO


GO
