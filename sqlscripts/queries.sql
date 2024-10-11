-- Query to show the most active members in the last month
SELECT Member_ID, COUNT(Booking_ID) AS TotalBookings
FROM Bookings
WHERE Booking_Date BETWEEN CURDATE() - INTERVAL 1 MONTH AND CURDATE()
GROUP BY Member_ID
ORDER BY TotalBookings DESC;

-- Query to display current week activities (booked classes)
SELECT * FROM Classes
WHERE WEEK(Booking_Date) = WEEK(CURDATE());

-- Query to list class schedules and instructor information
SELECT Classes.Title, Staff.FirstName, Staff.LastName, Classes.Day_of_Week, Classes.Start_Time
FROM Classes
JOIN Staff ON Classes.StaffID = Staff.StaffID;

-- Query to show the current week's class schedule along with the number of available seats
SELECT Classes.Title, Classes.Day_of_Week, Classes.Start_Time, (Classes.Capacity - COUNT(Bookings.Booking_ID)) AS AvailableSeats
FROM Classes
LEFT JOIN Bookings ON Classes.Class_ID = Bookings.Class_ID
GROUP BY Classes.Class_ID;

-- Query to show all active bookings by members
SELECT Members.First_Name, Members.Last_Name, Bookings.Booking_Date, Classes.Title
FROM Bookings
JOIN Members ON Bookings.Member_ID = Members.Member_ID
JOIN Classes ON Bookings.Class_ID = Classes.Class_ID
WHERE Booking_Status = 'Confirmed';
