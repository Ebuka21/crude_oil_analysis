DROP TABLE "Ebuka".renewable_africa;

CREATE TABLE "Ebuka".renewable_africa(	
	"Year" INT,
	"Geothermal" INT,
	"Hydro" INT,
	"Wind" INT,
	"Solar PV" INT,
	"Solar Thermal" INT
);

ALTER TABLE "Ebuka".renewable_africa
ADD COLUMN "Units" VARCHAR(3);

COPY "Ebuka".renewable_africa("Year","Geothermal","Hydro","Wind","Solar PV","Solar Thermal","Units")
FROM 'C:\Users\Ebuka\Documents\PD\Projects\1\a_new_info\renewable_generation_africa.csv'
DELIMITER ','
CSV HEADER;

SELECT *
FROM "Ebuka".renewable_africa



CREATE TABLE "Ebuka".renewable_asia(	
	"Year" INT,
	"Geothermal" INT,
	"Hydro" INT,
	"Solar PV" INT,
	"Tide, wave, ocean" INT,
	"Wind" INT,
	"Solar Thermal" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE "Ebuka".renewable_south_america(	
	"Year" INT,
	"Geothermal" INT,
	"Hydro" INT,
	"Wind" INT,
	"Solar PV" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE "Ebuka".renewable_europe(	
	"Year" INT,
	"Geothermal" INT,
	"Hydro" INT,
	"Solar PV" INT,
	"Tide, wave, ocean" INT,
	"Wind" INT,
	"Solar Thermal" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE "Ebuka".renewable_north_america(	
	"Year" INT,
	"Geothermal" INT,
	"Solar Thermal" INT,
	"Hydro" INT,
	"Solar PV" INT,
	"Tide, wave, ocean" INT,
	"Wind" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE "Ebuka".renewable_world(	
	"Year" INT,
	"Geothermal" INT,
	"Solar Thermal" INT,
	"Hydro" INT,
	"Solar PV" INT,
	"Tide, wave, ocean" INT,
	"Wind" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE "Ebuka".world_oil_supply_demand(	
	"Year" INT,
	"Crude oil and NGL production" FLOAT,
	"Total oil demand" FLOAT,
	"Supply-Demand gap (secondary axis)" FLOAT
);

CREATE TABLE "Ebuka".world_oil_production(	
	"Year" INT,
	"OECD" FLOAT,
	"OPEC" FLOAT,
	"Rest of the world" FLOAT,
	"Total" FLOAT
);


