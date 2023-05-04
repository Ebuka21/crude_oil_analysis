

CREATE TABLE renewable_africa(	
	"Year" INT,
	"Geothermal" INT,
	"Hydro" INT,
	"Wind" INT,
	"Solar PV" INT,
	"Solar Thermal" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE renewable_asia(	
	"Year" INT,
	"Geothermal" INT,
	"Hydro" INT,
	"Solar PV" INT,
	"Tide, wave, ocean" INT,
	"Wind" INT,
	"Solar Thermal" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE renewable_south_america(	
	"Year" INT,
	"Geothermal" INT,
	"Hydro" INT,
	"Wind" INT,
	"Solar PV" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE renewable_europe(	
	"Year" INT,
	"Geothermal" INT,
	"Hydro" INT,
	"Solar PV" INT,
	"Tide, wave, ocean" INT,
	"Wind" INT,
	"Solar Thermal" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE renewable_north_america(	
	"Year" INT,
	"Geothermal" INT,
	"Solar Thermal" INT,
	"Hydro" INT,
	"Solar PV" INT,
	"Tide, wave, ocean" INT,
	"Wind" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE renewable_world(	
	"Year" INT,
	"Geothermal" INT,
	"Solar Thermal" INT,
	"Hydro" INT,
	"Solar PV" INT,
	"Tide, wave, ocean" INT,
	"Wind" INT,
	"Units" VARCHAR(3)
);

CREATE TABLE world_oil_supply_demand(	
	"Year" INT,
	"Crude oil and NGL production" FLOAT,
	"Total oil demand" FLOAT,
	"Supply-Demand gap (secondary axis)" FLOAT
);

CREATE TABLE world_oil_production(	
	"Year" INT,
	"OECD" FLOAT,
	"OPEC" FLOAT,
	"Rest of the world" FLOAT,
	"Total" FLOAT
);


--- Load data from csv files to respective tables

LOAD DATA LOCAL INFILE 'D:/Projects/crude_oil_analysis/renewable_generation_africa.csv' INTO TABLE renewable_africa
FIELDS TERMINATED BY ","

LOAD DATA LOCAL INFILE 'D:/Projects/crude_oil_analysis/renewable_generation_asia.csv' INTO TABLE renewable_asia
FIELDS TERMINATED BY ","

LOAD DATA LOCAL INFILE 'D:/Projects/crude_oil_analysis/renewable_generation_europe.csv' INTO TABLE renewable_europe
FIELDS TERMINATED BY ","

LOAD DATA LOCAL INFILE 'D:/Projects/crude_oil_analysis/renewable_generation_south_america.csv' INTO TABLE renewable_south_america
FIELDS TERMINATED BY ","

LOAD DATA LOCAL INFILE 'D:/Projects/crude_oil_analysis/renewable_generation_north_america.csv' INTO TABLE renewable_north_america
FIELDS TERMINATED BY ","

LOAD DATA LOCAL INFILE 'D:/Projects/crude_oil_analysis/renewable_generation_world.csv' INTO TABLE renewable_world
FIELDS TERMINATED BY ","

LOAD DATA LOCAL INFILE 'D:/Projects/crude_oil_analysis/world_oil_production.csv' INTO TABLE world_oil_production
FIELDS TERMINATED BY ","

LOAD DATA LOCAL INFILE 'D:/Projects/crude_oil_analysis/world_oil_supply_demand.csv' INTO TABLE world_oil_supply_demand
FIELDS TERMINATED BY ","



