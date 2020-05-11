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





