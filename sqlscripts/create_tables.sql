-- Members table
CREATE TABLE Members (
  Member_ID INT AUTO_INCREMENT,
  First_Name VARCHAR(100),
  Last_Name VARCHAR(100),
  Address VARCHAR(255),
  Telephone_Number VARCHAR(20),
  Email VARCHAR(100),
  Date_of_Birth DATE,
  PRIMARY KEY (Member_ID)
) ENGINE=InnoDB;

-- Facilities table
CREATE TABLE Facilities (
  FacilityID INT AUTO_INCREMENT,
  FacilityName VARCHAR(100),
  Capacity INT,
  PRIMARY KEY (FacilityID)
) ENGINE=InnoDB;

-- Staff table
CREATE TABLE Staff (
  StaffID INT AUTO_INCREMENT,
  FirstName VARCHAR(100),
  LastName VARCHAR(100),
  Role VARCHAR(100),
  ContactNumber VARCHAR(20),
  PRIMARY KEY (StaffID)
) ENGINE=InnoDB;

-- Classes table
CREATE TABLE Classes (
  Class_ID INT AUTO_INCREMENT,
  StaffID INT,
  Title VARCHAR(100),
  Day_of_Week VARCHAR(20),
  Start_Time TIME,
  Duration INT,
  Capacity INT,
  PRIMARY KEY (Class_ID),
  FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
) ENGINE=InnoDB;

-- Bookings table
CREATE TABLE Bookings (
  Booking_ID INT AUTO_INCREMENT,
  Member_ID INT,
  FacilityID INT,
  Class_ID INT,
  Attendance_Status VARCHAR(50),
  Booking_Date DATE,
  Booking_Status VARCHAR(50),
  PRIMARY KEY (Booking_ID),
  FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
  FOREIGN KEY (FacilityID) REFERENCES Facilities(FacilityID),
  FOREIGN KEY (Class_ID) REFERENCES Classes(Class_ID)
) ENGINE=InnoDB;

-- Membership Payment table
CREATE TABLE Membership_Payment (
  Payment_ID INT AUTO_INCREMENT,
  Member_ID INT,
  Amount DECIMAL(10, 2),
  Membership_type VARCHAR(100),
  Membership_duration INT,
  Payment_Date DATE,
  PRIMARY KEY (Payment_ID),
  FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID)
) ENGINE=InnoDB;
