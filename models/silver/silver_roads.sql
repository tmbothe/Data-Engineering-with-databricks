SELECT  Road_ID,
        Road_Category_Id,
        Road_Category ,
        Region_ID,
        Region_Name ,
        Total_Link_Length_Km ,
        Total_Link_Length_Miles ,
        All_Motor_Vehicles ,
        CASE WHEN Road_Category = 'TA'  THEN 'Class A Trunk Road'
             WHEN Road_Category = 'TM'  THEN 'Class A Trunk Motor'
             WHEN Road_Category = 'PA'  THEN 'Class A Principal road'
             WHEN Road_Category = 'PM'  THEN 'Class A Principal Motorway'
             WHEN  Road_Category = 'M'  THEN 'Class B road'
             ELSE  'NA' 
        END as Road_Category_Name,
        created_at,
        current_timestamp() as  Transformed_Time
FROM {{ref('bronze_roads')}}