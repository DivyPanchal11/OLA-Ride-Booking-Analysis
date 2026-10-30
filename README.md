# OLA Ride Booking Analysis

An end-to-end data analytics project that explores OLA ride-booking data
using **MySQL** and **Power BI**. The project examines booking
performance, vehicle usage, cancellations, customer and driver ratings,
payment methods, ride distance, and booking value.

## Project Overview

Ride-booking data can help identify demand patterns, service issues,
customer preferences, and opportunities to improve operations. This
project uses SQL to query and organize the booking data, then presents
the analysis through an interactive Power BI report.

### Project Objectives

-   Analyze total bookings and booking-status distribution.
-   Identify successful bookings and calculate the booking value
    associated with successful rides.
-   Compare average ride distance and customer ratings across vehicle
    types.
-   Examine customer cancellations, driver cancellations, and incomplete
    rides.
-   Identify the most frequent customers by booking count.
-   Explore payment-method usage, including UPI bookings.
-   Present booking trends and key performance indicators in Power BI.

## Business Questions

The SQL analysis is designed to answer the following questions:

1.  How many bookings were successful, and what was the total booking
    value for successful bookings?
2.  What is the average ride distance for each vehicle type?
3.  How many bookings were canceled by customers?
4.  What are the most common driver-cancellation reasons related to
    personal or car issues?
5.  Who are the top five customers by number of bookings?
6.  What are the maximum and minimum driver ratings for Prime Sedan
    bookings?
7.  Which bookings were paid for using UPI?
8.  What is the average customer rating for each vehicle type?
9.  How many rides were marked incomplete, and what reasons were
    recorded?
10. How does booking volume change over time?

The Power BI report is intended to explore booking volume over time,
booking status, ride distance by vehicle type, ratings, cancellation
reasons, booking value by payment method, customer booking value,
ride-distance distribution, rating distributions, and
customer-versus-driver ratings. The exact visuals available depend on
the pages included in the submitted `.pbix` file.

## Tools and Technologies

  Tool                    Purpose
  ----------------------- ------------------------------------------------------
  MySQL 8.0+              Database management, SQL views, and analysis queries
  MySQL Workbench         Database setup, CSV import, and SQL execution
  Power BI Desktop        Interactive dashboard and data visualization
  Microsoft Excel / CSV   Dataset inspection and preparation
  Git and GitHub          Version control and project sharing

## Repository Structure

``` text
OLA-Ride-Booking-Analysis/
│
├── README.md
│
├── data/
│   └── OLA_Bookings.csv
│
├── docs/
│   └── OLA_Business_Insights.pdf
│
├── sql/
│   ├── analysis_views.sql
│   └── analysis_queries.sql
│
└── powerbi/
    ├── OLA_Ride_Booking_Analysis.pbix
    └── screenshots/
        ├── Overall.png
        ├── Vehicle_Type.png
        ├── Revenue.png
        ├── Cancellation.png
        └── Ratings.png
```


## Dataset Description

The dataset contains ride-booking records and fields relating to booking
date and time, booking ID, booking status, customer ID, vehicle type,
pickup and drop locations, turnaround time, cancellation details,
incomplete-ride details, booking value, payment method, ride distance,
driver ratings, and customer ratings.

See `docs/OLA_Data_Dictionary.xlsx` for field descriptions, suggested
data types, examples, and data-quality notes.

### Data Preparation Notes

Before importing or analyzing the dataset:

-   Check that date and time values are interpreted correctly.
-   Treat booking and customer identifiers as text values.
-   Check whether values such as `null` are stored as text and convert
    them to actual SQL `NULL` values where appropriate.
-   Confirm the units for `V_TAT`, `C_TAT`, and `Ride_Distance`.
-   Confirm the currency and meaning of `Booking_Value`.
-   Confirm the rating scale used for driver and customer ratings.
-   Check for duplicate booking IDs, missing values, invalid ratings,
    and unexpected category values.

## SQL Analysis

The SQL scripts are used to prepare the database and perform the
analysis.

The analysis views and queries cover:

-   Successful bookings.
-   Average ride distance by vehicle type.
-   Customer-canceled bookings.
-   Top five customers by booking count.
-   Driver cancellations associated with personal or car-related issues.
-   Maximum and minimum driver ratings for Prime Sedan bookings.
-   Bookings made using UPI.
-   Average customer rating by vehicle type.
-   Total booking value for successful bookings.
-   Incomplete rides and their recorded reasons.

## How to Run the SQL

1.  Install MySQL Server and open MySQL Workbench.
2.  Connect to your MySQL server.
3.  Open and execute `sql/01_schema.sql` to create the `ola` database
    and the `bookings` table.
4.  Import `data/OLA_Bookings.csv` into the `ola.bookings` table using
    the MySQL Workbench Table Data Import Wizard.
5.  Check that the CSV column names and order match the table
    definition. Confirm the date format and data types during import.
6.  Open and execute `sql/analysis_views.sql` to create the analysis
    views.
7.  Open and execute `sql/analysis_queries.sql` to retrieve the analysis
    results.

**Important:** The schema script creates the database table structure;
it does not automatically load the CSV data. The analysis views and
queries will only return meaningful results after the data has been
imported successfully. If your schema script or filenames differ, update
the commands and repository structure accordingly.

## Power BI Report

Open `powerbi/OLA_Ride_Booking_Analysis.pbix` using Power BI Desktop.

If Power BI asks for the data source:

1.  Connect the report to the imported `ola.bookings` table.
2.  Update the data-source settings if the database server or database
    name is different.
3.  Refresh the report.
4.  Confirm that the date slicers, KPI cards, and visuals respond
    correctly to filters.

Dashboard screenshots can be placed in `powerbi/screenshots/` so
visitors can preview the report without opening Power BI.

## Key Findings

The `docs/OLA_Business_Insights.pdf` file contains the initial
interpretation of the Overall dashboard and recommendations for further
analysis.

The booking counts and percentages in that report are approximate values
read from the dashboard screenshot. Validate them against the underlying
SQL results and the Power BI filter context before treating them as
final findings. Add further conclusions only when they are supported by
your own query outputs and dashboard results.

## Future Improvements

-   Add further data-cleaning and validation checks.
-   Expand the SQL analysis using joins, CTEs, subqueries, and window
    functions.
-   Add clearly defined Power BI measures for success rate, cancellation
    rate, average booking value, and average ride distance.
-   Compare cancellation patterns by vehicle type, time, and pickup
    location.
-   Explore weekday, weekend, and hourly booking trends.
-   Add drill-through pages and tooltips to the Power BI report.
-   Document additional findings and practical recommendations based on
    validated results.

## Data Source, Privacy, and Usage

Add the original dataset source, publisher, download date, and license
or permission details here before publishing the repository.

Only upload `data/OLA_Bookings.csv` if you have permission to
redistribute it and have checked that it contains no personal,
confidential, or otherwise restricted information. If redistribution is
not permitted, do not include the raw CSV. Instead, provide instructions
for obtaining an authorized copy.

Avoid publishing identifiable customer information or unnecessarily
precise location data.

## Conclusion

This project demonstrates a practical data analytics workflow: preparing
ride-booking data, analyzing it with SQL, and communicating patterns
through Power BI. It focuses on booking performance, cancellations,
vehicle usage, ratings, payment methods, and booking value.
