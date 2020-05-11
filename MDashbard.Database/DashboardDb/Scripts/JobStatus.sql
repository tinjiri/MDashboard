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



  






