-- Goal: Find the total number of employee years worked in each building.
-- What I did: Grouped employees by building and summed years_employed per building.
-- Business question: Which buildings have the highest total employee experience (capacity/knowledge concentration)?

SELECT
  building,
  SUM(years_employed) AS total_years_employed
FROM employees
GROUP BY building;
