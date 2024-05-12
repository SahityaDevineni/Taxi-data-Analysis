INSERT INTO nyc_taxi.taxi_transport( PUdatetime,DOdatetime,passenger_count,trip_distance,PULocationID,DOLocationID,total_amount, tip_amount, airport_fee) 
SELECT tpep_pickup_datetime,tpep_dropoff_datetime,passenger_count,trip_distance,PULocationID,DOLocationID, total_amount, tip_amount, airport_fee from nyc_taxi.yellow_taxi;


INSERT INTO nyc_taxi.taxi_transport( PUdatetime,DOdatetime,passenger_count,trip_distance,PULocationID,DOLocationID,total_amount, tip_amount) 
SELECT lpep_pickup_datetime, lpep_dropoff_datetime,passenger_count,trip_distance,PULocationID,DOLocationID, total_amount, tip_amount from nyc_taxi.green_taxi;

INSERT INTO nyc_taxi.taxi_transport( PUdatetime,DOdatetime,PULocationID,DOLocationID) 
SELECT Pickup_datetime, DropOff_datetime, PULocationID, DOLocationID from nyc_taxi.fhv_taxi;

INSERT INTO nyc_taxi.taxi_transport( PUdatetime,DOdatetime,trip_distance,PULocationID,DOLocationID,total_amount,tip_amount,airport_fee) 
SELECT Pickup_datetime,DropOff_datetime ,trip_miles ,PULocationID,DOLocationID,case when airport_fee is NULL then (base_passenger_fare+tolls +bcf +sales_tax +congestion_surcharge+driver_pay) else (base_passenger_fare+tolls +bcf +sales_tax +congestion_surcharge+driver_pay+airport_fee) END ,tips,airport_fee  from nyc_taxi.fhvhv_taxi