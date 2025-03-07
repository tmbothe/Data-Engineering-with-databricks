SELECT *,
       Motor_Vehicles_Count/Link_length_km as Vehicle_Intensity,
       current_timestamp() as Load_time
FROM {{ ref('silver_traffic') }}