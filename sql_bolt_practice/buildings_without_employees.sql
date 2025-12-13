-- Goal: Identify entities that exist but have no related records (missing relationships).
-- What I did: Used LEFT JOIN and filtered rows where the joined table has NULL values.
-- Business question: Which locations/assets have no assigned employees (gaps, inactivity, data quality issues)?

SELECT DISTINCT
  building_name
FROM buildings
LEFT JOIN employees
  ON building_name = building
WHERE role IS NULL;
