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

   
	



