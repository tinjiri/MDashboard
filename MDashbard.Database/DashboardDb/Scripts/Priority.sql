MERGE [Priority] WITH (SERIALIZABLE) AS T
USING (VALUES 
(1,'Low','LOW','Yellow'),
(2,'Medium','MED','Orange'),
(3,'High','HIGH','Red'),
(4,'Critical','CRI','Maroon')
) 	AS U ([PriorityId] ,		[PriorityDescription] ,	[PriorityCode], [PriorityColor]  )
	ON U.[PriorityId]=T.[PriorityId]	

WHEN MATCHED THEN 
    UPDATE SET T.[PriorityDescription] =		U.[PriorityDescription] ,	
                T.[PriorityCode] =U.[PriorityCode] ,
                T.[PriorityColor]=U.[PriorityColor]
WHEN NOT MATCHED THEN
    INSERT ([PriorityId] ,		[PriorityDescription] ,	[PriorityCode],[PriorityColor]) 
    VALUES (U.[PriorityId] ,		U.[PriorityDescription] ,	U.[PriorityCode],U.[PriorityColor]);



    


