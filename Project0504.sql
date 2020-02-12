-- Project0504.sql
-- 4.	For each StationID, retrieve the number of trips taken 
-- from that station and to that station (as separate values).
SELECT TOP 10 StationID,
       SUM(CASE WHEN FromStation=StationID THEN 1 ELSE 0 END) AS NumTripsFrom,
       SUM(CASE WHEN ToStation=StationID THEN 1 ELSE NULL END) AS NumTripsTo
FROM Stations, Trips       
GROUP BY StationID
ORDER BY (SUM(CASE WHEN FromStation=StationID THEN 1 ELSE 0 END) + SUM(CASE WHEN ToStation=StationID THEN 1 ELSE 0 END)) DESC, StationID ASC;