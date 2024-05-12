Create database if not exists nyc_taxi;
use nyc_taxi;
create table  if not exists fhv_taxi(
    dispatching_base_num	varchar(20),
    pickup_datetime	timestamp not null,
    dropOff_datetime	timestamp,
    PUlocationID	float not null,
    DOlocationID	float not null,
    primary key(pickup_datetime,PUlocationID,DolocationID)
);


create table if not exists nyc_taxi.fhvhv_taxi(
    hvfhs_license_num	varchar(50),
    dispatching_base_num	varchar(50),
    originating_base_num	varchar(50),
    request_datetime	timestamp,
    on_scene_datetime	varchar(25),
    pickup_datetime	timestamp not null,
    dropoff_datetime	timestamp,
    PULocationID	int not null,
    DOLocationID	int not null,
    trip_miles	float,
    trip_time	int,
    base_passenger_fare	float,
    tolls	float,
    bcf float,
    sales_tax   float,
    congestion_surcharge	float,
    airport_fee	float,
    tips	float,
    driver_pay	float,
    shared_request_flag	CHAR(1),
    shared_match_flag	CHAR(1),
    access_a_ride_flag	CHAR(1),
    wav_request_flag	CHAR(1),
    wav_match_flag      CHAR(1),
    primary key(pickup_datetime,PULocationID,DOLocationID)
);

CREATE TABLE  if not exists nyc_taxi.Taxi_Zone_Lookup(
    LocationID	INT not null,
    Borough	varchar(20),
    Zone_name	varchar(50),
    service_zone varchar(50),
    primary key (LocationID)
);

Create table if not exists nyc_taxi.Weather_Data(
Weather_id Varchar(5),
City_name varchar(15),
Weather_type varchar(35),
Temperature varchar(20) not null,
Curr_time timestamp not null,
primary key(Temperature,Curr_time)
);
drop table nyc_taxi.weather_data;

CREATE TABLE nyc_taxi.Business_Locations(
Industry Varchar(50) not null,
Census_track varchar(100) not null,
Location_id int,
Borough varchar(20),
Business_id Varchar(5),
primary key(Census_track,Industry)
);

CREATE TABLE nyc_taxi.Time_Table(
Time_id varchar(10) not null,
timestamp1 timestamp,
primary key(Time_id)
);

create table nyc_taxi.yellow_taxi(
    VendorID	int,
    tpep_pickup_datetime	timestamp not null,
    tpep_dropoff_datetime	timestamp,
    passenger_count	float,
    trip_distance	float,
    RatecodeID	float,
	store_and_fwd_flag	varchar(3),
    PULocationID	int not null,
    DOLocationID	int not null,
    payment_type	int,
    fare_amount	float,
    tip_amount	float,
    tolls_amount	float,
    total_amount	float,
    airport_fee float,
    primary key (tpep_pickup_datetime,PULocationID,DOLocationID)
);

/*CREATE SCHEMA nyc_taxi;*/
drop table nyc_taxi.Detailed_Transportation;
truncate table nyc_taxi.fhv_taxi ;
CREATE Table nyc_taxi.green_taxi (
    VendorID	int,
    lpep_pickup_datetime timestamp not null,
    lpep_dropoff_datetime	timestamp,
    store_and_fwd_flag	varchar(3),
    RatecodeID	float,
    PULocationID	int not null,
    DOLocationID	int not null,
    passenger_count	float,
    trip_distance	float,
    fare_amount	float,
    tip_amount	float,
    tolls_amount float,
    total_amount	float,
    payment_type	float,
    trip_type	float,
    congestion_surcharge float,
    primary key (lpep_pickup_datetime,PULocationID,DOLocationID)
);

#select count(*) from green_taxi;

CREATE TABLE IF NOT EXISTS nyc_taxi.Taxi_Transport (
ID INT NOT NULL auto_increment,
PUdatetime TIMESTAMP,
DOdatetime TIMESTAMP,
passenger_count float,
trip_distance float,
PULocationID INTEGER,
DOLocationID INTEGER,
total_amount float,
tip_amount float,
airport_fee float,
PRIMARY KEY (ID)
);


