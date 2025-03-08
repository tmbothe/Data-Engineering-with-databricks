
SELECT sr.Region_Name,sr.Road_Category_Name, round(AVG(st.Electric_Vehicles_Count),2) as avg_ev
FROM {{ ref('silver_traffic') }} st 
INNER JOIN {{ ref('silver_roads') }} sr ON st.Region_id = sr.Region_ID 
GROUP BY sr.Region_Name,sr.Road_Category_Name
ORDER BY avg_ev DESC