-- Project0510.sql
-- 10.	Compute for each trip the average speed of the bicyclist, by taking the 
--  distance travelled computed in the previous question (which is in miles) and 
--  divide by the length in hours (the length is stored in seconds).  For the 10 
--  fastest trips, return the trip ID, bike ID, and the speed as mph.
SELECT TOP 10 TripID, BikeID, 
  ((SQRT((SQUARE(69*(s1.Latitude-s2.Latitude))) + (SQUARE(52*(s1.Longitude-s2.Longitude))))) / (TripDuration/3600.0)) AS mph
FROM Trips, Stations AS s1, Stations AS s2
WHERE s1.StationID = FromStation AND s2.StationID = ToStation
ORDER BY mph DESC;