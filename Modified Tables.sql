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


