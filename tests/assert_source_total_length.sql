SELECT *
FROM {{ ref("bronze_roads") }}
WHERE Total_Link_Length_Km<0 
   or Total_Link_Length_Miles<0
   or All_Motor_Vehicles <0