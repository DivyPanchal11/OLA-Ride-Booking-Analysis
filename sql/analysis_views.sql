-- OLA ride analysis: database and reusable analysis views

CREATE DATABASE IF NOT EXISTS ola;
USE ola;

CREATE OR REPLACE VIEW successful_bookings AS
SELECT *
FROM bookings
WHERE Booking_Status = 'Success';

CREATE OR REPLACE VIEW avg_ride_distance_each_vehicle AS
SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_distance
FROM bookings
GROUP BY Vehicle_Type;

CREATE OR REPLACE VIEW canceled_by_customer AS
SELECT COUNT(*) AS canceled_bookings
FROM bookings
WHERE Booking_Status = 'Canceled by Customer';

CREATE OR REPLACE VIEW top_5_customers AS
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC, Customer_ID
LIMIT 5;

CREATE OR REPLACE VIEW canceled_by_driver_personal_car_issue AS
SELECT COUNT(*) AS canceled_rides_by_driver
FROM bookings
WHERE Canceled_Rides_By_Driver = 'Personal & Car related issue';

CREATE OR REPLACE VIEW prime_sedan_driver_rating_range AS
SELECT MAX(Driver_Ratings) AS max_rating,
       MIN(Driver_Ratings) AS min_rating
FROM bookings
WHERE Vehicle_Type = 'Prime Sedan';

CREATE OR REPLACE VIEW payment_by_upi AS
SELECT *
FROM bookings
WHERE Payment_Method = 'UPI';

CREATE OR REPLACE VIEW avg_customer_rating_by_vehicle AS
SELECT Vehicle_Type,
       AVG(Customer_Rating) AS avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;

CREATE OR REPLACE VIEW total_successful_booking_value AS
SELECT SUM(Booking_Value) AS total_successful_booking_value
FROM bookings
WHERE Booking_Status = 'Success';

CREATE OR REPLACE VIEW incomplete_rides AS
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';
