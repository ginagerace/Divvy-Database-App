-- Project0506.sql
-- 6.	For each age group (year) among customers, list the average 
--  ride duration among all trips customers of that age group took.  
SELECT TOP 10 (2019 - BirthYear) AS Age,
    SUM(TripDuration) / Count(TripDuration) AS AverageTripDurationPerAgeGroup
FROM Users     
INNER JOIN Trips ON Users.UserID = Trips.UserID
GROUP BY BirthYear
ORDER BY AverageTripDurationPerAgeGroup DESC;