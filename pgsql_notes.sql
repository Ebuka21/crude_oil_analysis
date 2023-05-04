-- Create schema

DROP SCHEMA IF EXISTS "EnergyData" ;

CREATE SCHEMA IF NOT EXISTS "EnergyData"
    AUTHORIZATION postgres;

COMMENT ON SCHEMA "EnergyData"
    IS 'This will contain multiple tables for analysis of energy sources ranging from crude oil to renewable energy';


-- DROP TABLE "EnergyData".renewable_africa;

CREATE TABLE "EnergyData".renewable_africa(	
	"Year" INT,
	"Geothermal" INT,
	"Hydro" INT,
	"Wind" INT,
	"Solar PV" INT,
	"Solar Thermal" INT
	"Units" VARCHAR(3)
);

ALTER TABLE "EnergyData".renewable_africa
ADD COLUMN "Units" VARCHAR(3);



CREATE TABLE "EnergyData".renewable_asia(	
	"Year" INT,
	"Geothermal" INT,
	"Hydro" INT,
	"Solar PV" INT,
	"Tide, wave, ocean" INT,
	"Wind" INT,
	"Solar Thermal" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE "EnergyData".renewable_south_america(	
	"Year" INT,
	"Geothermal" INT,
	"Hydro" INT,
	"Wind" INT,
	"Solar PV" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE "EnergyData".renewable_europe(	
	"Year" INT,
	"Geothermal" INT,
	"Hydro" INT,
	"Solar PV" INT,
	"Tide, wave, ocean" INT,
	"Wind" INT,
	"Solar Thermal" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE "EnergyData".renewable_north_america(	
	"Year" INT,
	"Geothermal" INT,
	"Solar Thermal" INT,
	"Hydro" INT,
	"Solar PV" INT,
	"Tide, wave, ocean" INT,
	"Wind" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE "EnergyData".renewable_world(	
	"Year" INT,
	"Geothermal" INT,
	"Solar Thermal" INT,
	"Hydro" INT,
	"Solar PV" INT,
	"Tide, wave, ocean" INT,
	"Wind" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE "EnergyData".world_oil_supply_demand(	
	"Year" INT,
	"Crude oil and NGL production" FLOAT,
	"Total oil demand" FLOAT,
	"Supply-Demand gap (secondary axis)" FLOAT
);

CREATE TABLE "EnergyData".world_oil_production(	
	"Year" INT,
	"OECD" FLOAT,
	"OPEC" FLOAT,
	"Rest of the world" FLOAT,
	"Total" FLOAT
);


--- Load data from csv files to respective tables

COPY "EnergyData".renewable_africa("Year","Geothermal","Hydro","Wind","Solar PV","Solar Thermal","Units")
FROM 'D:\Projects\crude_oil_analysis\renewable_generation_africa.csv'
DELIMITER ','
CSV HEADER;

COPY "EnergyData".renewable_asia("Year","Geothermal","Hydro","Solar PV","Tide, wave, ocean","Wind","Solar Thermal","Units")
FROM 'D:\Projects\crude_oil_analysis\renewable_generation_asia.csv'
DELIMITER ','
CSV HEADER;

COPY "EnergyData".renewable_south_america("Year","Geothermal","Hydro","Wind","Solar PV","Units")
FROM 'D:\Projects\crude_oil_analysis\renewable_generation_south_america.csv'
DELIMITER ','
CSV HEADER;

COPY "EnergyData".renewable_europe("Year","Geothermal","Hydro","Solar PV","Tide, wave, ocean","Wind","Solar Thermal","Units")
FROM 'D:\Projects\crude_oil_analysis\renewable_generation_europe.csv'
DELIMITER ','
CSV HEADER;

COPY "EnergyData".renewable_north_america("Year","Geothermal","Solar Thermal","Hydro","Solar PV","Tide, wave, ocean","Wind","Units")
FROM 'D:\Projects\crude_oil_analysis\renewable_generation_north_america.csv'
DELIMITER ','
CSV HEADER;

COPY "EnergyData".renewable_world("Year","Geothermal","Solar Thermal","Hydro","Solar PV","Tide, wave, ocean","Wind","Units")
FROM 'D:\Projects\crude_oil_analysis\renewable_generation_world.csv'
DELIMITER ','
CSV HEADER;

COPY "EnergyData".world_oil_supply_demand("Year","Crude oil and NGL production","Total oil demand","Supply-Demand gap (secondary axis)" )
FROM 'D:\Projects\crude_oil_analysis\world_oil_supply_demand.csv'
DELIMITER ','
CSV HEADER;

COPY "EnergyData".world_oil_production("Year","OECD","OPEC","Rest of the world","Total")
FROM 'D:\Projects\crude_oil_analysis\world_oil_production.csv'
DELIMITER ','
CSV HEADER;

/*
SELECT *
FROM "EnergyData".renewable_africa
*/

