use studentperformance;
                             -- DATA CLEANING -- 
	-- 1. check for missing valuse or null value --
-- SELECT 
--     SUM(CASE WHEN Student_ID IS NULL THEN 1 ELSE 0 END) AS Missing_IDs,
--     SUM(CASE WHEN Name IS NULL THEN 1 ELSE 0 END) AS Missing_Names,
--     SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Missing_Genders,
--     SUM(CASE WHEN Attendance IS NULL THEN 1 ELSE 0 END) AS Missing_Attendance,
--     SUM(CASE WHEN Math_Score IS NULL THEN 1 ELSE 0 END) AS Missing_Math,
--     SUM(CASE WHEN Science_Score IS NULL THEN 1 ELSE 0 END) AS Missing_Science,
--     SUM(CASE WHEN Engineering_Score IS NULL THEN 1 ELSE 0 END) AS Missing_Engineering,
--     SUM(CASE WHEN Technology_Score IS NULL THEN 1 ELSE 0 END) AS Missing_Tech
-- FROM Students;

  -- 2. Remove duplicate values --   
-- SELECT Student_ID, COUNT(*) 
-- FROM Students
-- GROUP BY Student_ID
-- HAVING COUNT(*) > 1;-- 

   -- 3. Validate Ranges of Scores --
-- SELECT * 
-- FROM Students
-- WHERE Math_Score NOT BETWEEN 0 AND 100
--    OR Science_Score NOT BETWEEN 0 AND 100
--    OR Engineering_Score NOT BETWEEN 0 AND 100
--    OR Technology_Score NOT BETWEEN 0 AND 100
--    OR Attendance NOT BETWEEN 0 AND 100;

