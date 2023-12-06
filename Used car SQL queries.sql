use used_cars;
-- READ DATA --
SELECT * FROM car_dekho;
-- What is the total number of used car listings? (Count of total records) --
SELECT count(*) from car_dekho
-- 7927 --
-- how many cars are available from the year 2023? --
SELECT count(*) FROM car_dekho 
WHERE year = 2023;
-- 6 Car from the year 2023 --

-- How many cars available form the yaear 2020, 2021 and 2022 --
SELECT count(*) FROM car_dekho 
WHERE year in (2020,2021,2022)   #7 #7 #74
GROUP BY year
-- Print total cars for all years--
SELECT year, Count(*) FROM car_dekho
GROUP BY year;
-- Print total cars by fuel type --
SELECT fuel, Count(*) FROM car_dekho
Group BY fuel;

-- How many Dielse cars are avaibale form the year 2020?--
SELECT Count(*) FROM car_dekho
WHERE year = 2020 AND fuel = "Diesel";   #20

-- Provide number of all petrol cars for each year --
SELECT year, Count(*) FROM car_dekho
WHERE fuel = "petrol" 
GROUP BY year;

-- list of petrol cars names that have been driven for less than 30000 kms from the year 2015 to 2020 --

SELECT name, year, km_driven
FROM car_dekho
WHERE km_driven < 30000 AND fuel = "petrol" AND year BETWEEN 2015 and 2020;
ORDER BY km_driven;
