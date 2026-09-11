# OLA Analytics – SQL Project

A SQL-based analytics project on OLA ride-booking data. It uses SQL views to answer common business questions about bookings, cancellations, ratings, payments, and revenue.

## Overview

This project analyzes ride-booking data from OLA using MySQL. It creates a set of reusable **views** on top of the `bookings` table, each designed to answer a specific business question — from successful bookings and cancellation trends to driver/customer ratings and revenue.

## Database

- **Database name:** `Ola`
- **Main table:** `bookings`

Key columns used across the queries:
- `Booking_ID`, `Booking_Status`, `Booking_Value`
- `Customer_ID`, `Customer_Rating`
- `Vehicle_Type`, `Ride_Distance`
- `Driver_Ratings`, `Canceled_Rides_by_Driver`
- `Payment_Method`
- `Incomplete_Rides_Reason`

## Business Questions Answered

| # | Question | View Name |
|---|----------|-----------|
| 1 | Retrieve all successful bookings | `Successful_Bookings` |
| 2 | Average ride distance per vehicle type | `Ride_Distance_For_Each_Vehicle` |
| 3 | Total rides cancelled by customers | `Cancelled_Rides_By_Customers` |
| 4 | Top 5 customers by number of rides booked | `Top_5_customers` |
| 5 | Rides cancelled by drivers (personal/car issues) | `Ride_Cancelled_By_Driver_Personal_Car_Issues` |
| 6 | Max & min driver ratings for Prime Sedan | `Max_Min_Driver_Rating` |
| 7 | Rides paid via UPI | `UPI_Payment` |
| 8 | Average customer rating per vehicle type | `Average_Customer_Rating` |
| 9 | Total booking value of successful rides | `Total_Bookings_Ride_Successfully` |
| 10 | Incomplete rides and their reasons | `Incomplete_Rides_Reason` |

## Tech Stack

- **Database:** MySQL
- **Concepts used:** Views, Aggregate functions (`AVG`, `SUM`, `COUNT`, `MAX`, `MIN`), `GROUP BY`, `ORDER BY`, `LIMIT`, filtering with `WHERE`

## File Structure

```
├── OLA_Analytics_SQL.sql   # All view definitions + queries to retrieve results
└── README.md               # Project documentation
```

## How to Use

1. Create/import the `Ola` database with a `bookings` table containing the columns listed above.
2. Run `OLA_Analytics_SQL.sql` — this creates all 10 views.
3. Query any view directly to get the answer to that business question, e.g.:
   ```sql
   SELECT * FROM Successful_Bookings;
   SELECT * FROM Top_5_customers;
   ```

## Sample Insights You Can Derive

- Which vehicle type has the highest average ride distance and customer satisfaction
- How much revenue is generated from successfully completed rides
- The most loyal/frequent customers
- Common reasons behind ride cancellations and incomplete trips
- Adoption of digital payment methods like UPI

## Author
Ramya Peetala 
GitHub: https://github.com/RamyaPeethala 
LinkedIn: https://www.linkedin.com/in/ramya-peethala/
Feel free to fork this repo, explore the queries, and extend them with your own business questions!
