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





