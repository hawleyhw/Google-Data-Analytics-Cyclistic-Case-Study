-- Combining the data

DROP TABLE IF EXISTS `cyclistic_tripdata.combined_data`;

-- Combining all twelve months of data tables into a single table from 202305 to 202404.

CREATE TABLE IF NOT EXISTS `cyclistic_tripdata.combined_data` AS (
  SELECT * FROM `cyclistic_tripdata.202305_tripdata`
  UNION ALL
  SELECT * FROM `cyclistic_tripdata.202306_tripdata`
  UNION ALL
  SELECT * FROM `cyclistic_tripdata.202307_tripdata`
  UNION ALL
  SELECT * FROM `cyclistic_tripdata.202308_tripdata`
  UNION ALL
  SELECT * FROM `cyclistic_tripdata.202309_tripdata`
  UNION ALL
  SELECT * FROM `cyclistic_tripdata.202310_tripdata`
  UNION ALL
  SELECT * FROM `cyclistic_tripdata.202311_tripdata`
  UNION ALL
  SELECT * FROM `cyclistic_tripdata.202312_tripdata`
  UNION ALL
  SELECT * FROM `cyclistic_tripdata.202401_tripdata`
  UNION ALL
  SELECT * FROM `cyclistic_tripdata.202402_tripdata`
  UNION ALL
  SELECT * FROM `cyclistic_tripdata.202403_tripdata`
  UNION ALL
  SELECT * FROM `cyclistic_tripdata.202404_tripdata`
);

-- Number of rows checked, 5738612.

SELECT COUNT(*)
FROM `cyclistic_tripdata.combined_data`;
