-- Project0505.sql
-- 5.	For each customer list the number of trips they have taken.
--   Restrict the results to the 10 users who have taken the most trips.
SELECT TOP 10 Trips.UserID,
       COUNT(Trips.UserID) AS NumTrips
FROM Trips       
INNER JOIN Users ON Trips.UserID = Users.UserID
GROUP BY Trips.UserID
ORDER BY NumTrips DESC, UserID ASC;