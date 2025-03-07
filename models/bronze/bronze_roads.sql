SELECT  `Road ID` as Road_ID,
         `Road category id` as Road_Category_Id,
         `Road category` as Road_Category,
         `Region id` as Region_ID ,
         `Region name` as Region_Name,
         `Total link length km` as Total_Link_Length_Km,
         `Total link length miles` as Total_Link_Length_Miles,
         `All motor vehicles` as All_Motor_Vehicles,
       current_timestamp() as created_at
FROM {{ source('landing','raw_roads') }}