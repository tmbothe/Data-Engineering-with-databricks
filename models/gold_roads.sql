SELECT * , current_timestamp() as Load_time
FROM {{ref('silver_roads')}}
