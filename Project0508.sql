-- Project0508.sql
-- 8.	For each hour of the day, list the percentage of bikes checked out during --  that hour relative to the other hours of the day.
DECLARE @totalBikes as int;
SET @totalBikes = (SELECT COUNT(BikeID) FROM Trips); 

SELECT StartingHour,
       COUNT(StartingHour) * 100.0 / @totalBikes AS Percentage
FROM Trips       
GROUP BY StartingHour
ORDER BY StartingHour ASC;