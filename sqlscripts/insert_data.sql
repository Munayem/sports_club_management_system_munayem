-- Insert data into Members table
INSERT INTO Members (First_Name, Last_Name, Address, Telephone_Number, Email, Date_of_Birth)
VALUES
('John', 'Doe', '123 Main St', '1234567890', 'john@example.com', '1990-05-01'),
('Jane', 'Doe', '456 Side St', '0987654321', 'jane@example.com', '1992-07-15');

-- Insert data into Facilities table
INSERT INTO Facilities (FacilityName, Capacity)
VALUES
('Gym', 50),
('Swimming Pool', 30),
('Yoga Studio', 25);

-- Insert data into Staff table
INSERT INTO Staff (FirstName, LastName, Role, ContactNumber)
VALUES
('Alice', 'Smith', 'Instructor', '987654321'),
('Bob', 'Brown', 'Coach', '123456789'),
('Charlie', 'Johnson', 'Admin', '654321987');

-- Insert data into Classes table
INSERT INTO Classes (StaffID, Title, Day_of_Week, Start_Time, Duration, Capacity)
VALUES
(1, 'Morning Yoga', 'Monday', '07:00:00', 60, 20),
(2, 'Advanced Swimming', 'Tuesday', '09:00:00', 90, 15),
(1, 'Strength Training', 'Wednesday', '08:00:00', 60, 25);

-- Insert data into Bookings table
INSERT INTO Bookings (Member_ID, FacilityID, Class_ID, Booking_Date, Booking_Status, Attendance_Status)
VALUES
(1, 1, 1, '2024-02-01', 'Confirmed', 'Attended'),
(2, 2, 2, '2024-02-03', 'Confirmed', 'Not Attended');

-- Insert data into Membership Payment table
INSERT INTO Membership_Payment (Member_ID, Amount, Membership_type, Membership_duration, Payment_Date)
VALUES
(1, 100.00, 'Annual', 12, '2024-01-10'),
(2, 50.00, 'Monthly', 1, '2024-01-10');
