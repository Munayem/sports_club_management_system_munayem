# Sports Club Management System

## Project Overview
This project showcases the development of a Sports Club Management System that automates the booking process, membership management, and class scheduling for the "HEALTHY" sports club. This system was developed as part of my coursework in Data Modelling and Management.

Key components:
- Use Case Diagrams to illustrate interactions between users and the system.
- Activity Diagrams to show the workflow of actions, such as class bookings.
- Entity-Relationship Diagram (ERD) for designing the database schema.
- SQL Queries for implementing and testing database functionalities.

## Features
- **Database Design**: A fully normalized relational database designed in phpMyAdmin, following best practices.
- **Booking and Scheduling System**: Automation of class and facility booking, including real-time updates.
- **SQL Queries**: SQL scripts that demonstrate the management of bookings, member activities, class scheduling, and payment processing.

## Technologies Used
- **PHPMyAdmin** for database creation and management.
- **MySQL** for SQL queries and relational database management.
- **Visual Paradigm** for designing UML diagrams (Use Case, Activity, and ERD).
- **XAMPP** for local server setup.

## Project Structure
- `/sql-scripts`: SQL scripts for creating, populating, and querying the database.
- `/diagrams`: Use Case Diagrams, ERD, and Activity Diagrams for system design.
- `/documentation`: Project report detailing system design and implementation.
- `/screenshots`: Screenshots of working queries and database outputs.

## Key SQL Queries
Here are a few example SQL queries used in this project:

- **Show Most Active Members**:
    ```sql
    SELECT Member_ID, COUNT(Booking_ID) AS TotalBookings
    FROM Bookings
    WHERE Booking_Date BETWEEN CURDATE() - INTERVAL 1 MONTH AND CURDATE()
    GROUP BY Member_ID
    ORDER BY TotalBookings DESC;
    ```

- **Display Current Week Activities**:
    ```sql
    SELECT * FROM Classes
    WHERE DAYOFWEEK(CURDATE()) BETWEEN 1 AND 7;
    ```

- **List Class Schedules and Instructor Info**:
    ```sql
    SELECT Classes.Title, Staff.FirstName, Staff.LastName, Classes.Day_of_Week, Classes.Start_Time
    FROM Classes
    INNER JOIN Staff ON Classes.StaffID = Staff.StaffID;
    ```

## Diagrams
- **Use Case Diagram**: [Link to image or show inline]
- **ERD Diagram**: [Link to image or show inline]

## How to Run the Project
1. Install **XAMPP** to set up a local development environment.
2. Import the **SQL scripts** provided in the `/sql-scripts` folder into **phpMyAdmin**.
3. Test the system using the SQL queries provided in the project.
4. Optionally, connect the database to a front-end web or mobile application.
