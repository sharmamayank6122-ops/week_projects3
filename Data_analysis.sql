-- use studentperformance;
                             -- Data analysis --
       -- 1. Overall Average Performance --
-- SELECT AVG(Overall_Average) AS Class_Avg
-- FROM Students;       


	  -- 2. Best Performing Students --
-- SELECT Name, Overall_Average
-- FROM Students
-- ORDER BY Overall_Average DESC
-- LIMIT 10;      


      -- 3. Average Scores by Gender --
-- SELECT Gender,
--        AVG(Math_Score) AS Avg_Math,
--        AVG(Science_Score) AS Avg_Science,
--        AVG(Engineering_Score) AS Avg_Engineering,
--        AVG(Technology_Score) AS Avg_Tech,
--        AVG(Overall_Average) AS Avg_Overall
-- FROM Students
-- GROUP BY Gender; 


      -- 4. School-wise Average Scores --
-- SELECT School,
--        AVG(Overall_Average) AS School_Avg
-- FROM Students
-- GROUP BY School
-- ORDER BY School_Avg DESC;      


      -- 5. Impact of Attendance on Performance --
-- SELECT CASE 
--            WHEN Attendance >= 90 THEN 'Excellent Attendance'
--            WHEN Attendance BETWEEN 75 AND 89 THEN 'Good Attendance'
--            ELSE 'Poor Attendance'
--        END AS Attendance_Category,
--        AVG(Overall_Average) AS Avg_Score
-- FROM Students
-- GROUP BY Attendance_Category;      

	
	 -- 6. Subject-wise Top Performers --
-- SELECT Name, Math_Score, Science_Score, Engineering_Score, Technology_Score
-- FROM Students
-- WHERE Math_Score = (SELECT MAX(Math_Score) FROM Students)
--    OR Science_Score = (SELECT MAX(Science_Score) FROM Students)
--    OR Engineering_Score = (SELECT MAX(Engineering_Score) FROM Students)
--    OR Technology_Score = (SELECT MAX(Technology_Score) FROM Students);       