USE Ola;
#1. Retrieve all Successful_Bookings:
 Create View Successful_Bookings AS
 SELECT * FROM bookings
 WHERE Booking_Status = 'Success';

#2. Find the average ride distance for each vehicle type:
CREATE VIEW Ride_Distance_For_Each_Vehicle AS
SELECT Vehicle_Type , AVG(Ride_Distance) AS Average_Ride_distance
FROM bookings
GROUP BY Vehicle_Type;

#3. Get the total number of cancelled rides by Customers:
CREATE VIEW Cancelled_Rides_By_Customers AS
SELECT COUNT(*) FROM bookings
WHERE Booking_Status ='Canceled by Customer';

#4. List the top 5 customers who booked the highest number of rides:
CREATE VIEW  Top_5_customers  AS
SELECT Customer_ID, COUNT(Booking_ID) AS Total_Rides
FROM bookings
GROUP BY Customer_ID
ORDER BY Total_Rides DESC LIMIT 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
CREATE VIEW Ride_Cancelled_By_Driver_Personal_Car_Issues AS
SELECT  COUNT(*) 
FROM bookings
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
CREATE VIEW Max_Min_Driver_Rating AS
SELECT MAX(Driver_Ratings) AS max_rating,
MIN(Driver_Ratings) AS min_rating
FROM bookings
WHERE Vehicle_Type ='Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:
CREATE VIEW UPI_Payment AS
SELECT * FROM bookings
WHERE Payment_Method = 'UPI';

#8. Find the average customer rating per vehicle type:
CREATE VIEW Average_Customer_Rating AS
SELECT Vehicle_Type,  AVG(Customer_Rating) AS average_customer_ratings 
FROM bookings
GROUP BY Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully:
CREATE VIEW Total_Bookings_Ride_Successfully AS
SELECT SUM(Booking_Value) AS total_Booking_Values
FROM Bookings
WHERE Booking_Status = 'Success';

#10. List all incomplete rides along with the reason:
CREATE VIEW Incomplete_Rides_Reason AS
SELECT Booking_ID,Incomplete_Rides_Reason
FROM Bookings
WHERE Incomplete_Rides_Reason = 'Customer Demand';




# Retrieved ALL Answers :

#1. Retrieve all Successful_Bookings
SELECT * FROM Successful_Bookings;

#2. Find the average ride distance for each vehicle type
SELECT * FROM Ride_Distance_For_Each_Vehicle; 

#3. Get the total number of cancelled rides by Customers
SELECT * FROM Cancelled_Rides_By_Customers;

#4. List the top 5 customers who booked the highest number of rides
SELECT * FROM  Top_5_customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues
SELECT * FROM Ride_Cancelled_By_Driver_Personal_Car_Issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings
SELECT * FROM  Max_Min_Driver_Rating;

#7. Retrieve all rides where payment was made using UPI
SELECT * FROM UPI_Payment;

#8. Find the average customer rating per vehicle type
SELECT * FROM Average_Customer_Rating;

#9. Calculate the total booking value of rides completed successfully
SELECT * FROM Total_Bookings_Ride_Successfully;

#10. List all incomplete rides along with the reason
SELECT * FROM Incomplete_Rides_Reasons;









