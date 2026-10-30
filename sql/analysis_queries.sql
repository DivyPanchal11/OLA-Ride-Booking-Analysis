
USE ola;

-- 1. Retrieve all successful bookings
SELECT * FROM successful_bookings;

-- 2. Average ride distance for each vehicle type
SELECT * FROM avg_ride_distance_each_vehicle;

-- 3. Number of rides canceled by customers
SELECT * FROM canceled_by_customer;

-- 4. Top 5 customers by number of rides
SELECT * FROM top_5_customers;

-- 5. Driver cancellations for personal and car-related issues
SELECT * FROM canceled_by_driver_personal_car_issue;

-- 6. Maximum and minimum driver ratings for Prime Sedan bookings
SELECT * FROM prime_sedan_driver_rating_range;

-- 7. Rides paid for using UPI
SELECT * FROM payment_by_upi;

-- 8. Average customer rating by vehicle type
SELECT * FROM avg_customer_rating_by_vehicle;

-- 9. Total booking value for successful rides
SELECT * FROM total_successful_booking_value;

-- 10. Incomplete rides and their reasons
SELECT * FROM incomplete_rides;
