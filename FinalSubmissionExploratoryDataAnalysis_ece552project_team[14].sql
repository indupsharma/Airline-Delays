SELECT * FROM AirlineData;

SELECT COUNT(*) FROM AirlineData;
-- Count of total number of records

SELECT DISTINCT "MONTH" FROM AirlineData;
-- Show distinct months

SELECT "CANCELLED", COUNT("CANCELLED") FROM AirlineData 
GROUP BY "CANCELLED" ORDER BY COUNT("CANCELLED") DESC;
-- Count of cancelations

SELECT "ORIGIN", COUNT("ORIGIN") FROM AirlineData 
GROUP BY "ORIGIN" ORDER BY COUNT("ORIGIN") DESC
LIMIT 20;
-- Count of flights from each origin airport

SELECT "OP_CARRIER", "CANCELLED", COUNT("CANCELLED") FROM AirlineData 
GROUP BY "OP_CARRIER","CANCELLED" ORDER BY "CANCELLED" DESC, 
COUNT("CANCELLED") DESC
LIMIT 40;
-- Count of canceled and departed flights per each carrier

SELECT "ORIGIN", "CANCELLED", COUNT("CANCELLED") FROM AirlineData 
GROUP BY "ORIGIN","CANCELLED" ORDER BY "CANCELLED" DESC, COUNT("CANCELLED") DESC
LIMIT 100;
-- Count of canceled and departed flights from the origin airport

SELECT 
    COUNT(*) filter (where CAST("DEP_DELAY_NEW" AS NUMERIC) < 15) as NOT_DELAYED,
    COUNT(*) filter (where CAST("DEP_DELAY_NEW" AS NUMERIC) >= 15) as DELAYED
FROM AirlineData; 
-- Count of Delayed instances

SELECT OP_CARRIER,
    COUNT(*) filter (where CAST("DEP_DELAY_NEW" AS NUMERIC) < 15) as NOT_DELAYED,
    COUNT(*) filter (where CAST("DEP_DELAY_NEW" AS NUMERIC) >= 15) as DELAYED
FROM AirlineData GROUP BY OP_CARRIER ORDER BY DELAYED DESC; 
-- Count of Delayed instances for each carrier