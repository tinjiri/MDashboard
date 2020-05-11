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




