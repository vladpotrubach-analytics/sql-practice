-- Goal: Find the names of the buildings that hold no employees.
-- What I did: Used LEFT JOIN and filtered rows where the joined table has NULL values.
-- Business question: Which locations/assets have no assigned employees (gaps, inactivity, data quality issues)?

SELECT DISTINCT
  building_name
FROM buildings
LEFT JOIN employees
  ON building_name = building
WHERE role IS NULL;
