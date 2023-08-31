CREATE SCHEMA zoo_database;

USE zoo_database;

CREATE TABLE `animal_events` (
  `Animal_Event_ID` VARCHAR(10) NOT NULL,
  `Animal_ID` VARCHAR(10) NOT NULL,
  `Animal_Event_Name` VARCHAR(20) DEFAULT NULL,
  `Venue` VARCHAR(20) DEFAULT NULL,
  `Time_Slot` VARCHAR(20) DEFAULT NULL,
  `Date_Type` VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (`Animal_Event_ID`),
  KEY `Animal_ID_idx` (`Animal_ID`)
);

CREATE TABLE `employees` (
  `Employee_ID` VARCHAR(10) NOT NULL,
  `Employee_Name` VARCHAR(20) DEFAULT NULL,
  `Employee_Address` VARCHAR(45) DEFAULT NULL,
  `Emp_Phone_No` VARCHAR(20) DEFAULT NULL,
  `Gender` VARCHAR(20) DEFAULT NULL,
  `Work_Shift` VARCHAR(45) DEFAULT NULL,
  `Building_ID` VARCHAR(10) DEFAULT NULL,
  `Age` VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`)
);

CREATE TABLE `buildings` (
  `Building_ID` VARCHAR(10) NOT NULL,
  `Building_Name` VARCHAR(20) DEFAULT NULL,
  `Department_Name` VARCHAR(15) DEFAULT NULL,
  `Cell_ID` VARCHAR(45) DEFAULT NULL,
  `Employee_ID` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`Building_ID`),
  KEY `Employee_ID_idx` (`Employee_ID`),
  KEY `Cell_ID_idx` (`Cell_ID`),
  CONSTRAINT `Employee_ID` FOREIGN KEY (`Employee_ID`) REFERENCES `employees` (`Employee_ID`)
);

CREATE TABLE `cells` (
  `Cell_ID` VARCHAR(10) NOT NULL,
  `Cell_Name` VARCHAR(45) DEFAULT NULL,
  `Building_ID` VARCHAR(10) NOT NULL,
  `Animal_ID` VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`Cell_ID`),
  KEY `Building_ID_idx` (`Building_ID`),
  CONSTRAINT `Building_ID` FOREIGN KEY (`Building_ID`) REFERENCES `buildings` (`Building_ID`)
);

CREATE TABLE `animals` (
  `Animal_ID` VARCHAR(10) NOT NULL,
  `Animal_Name` VARCHAR(45) DEFAULT NULL,
  `Animal_Type` VARCHAR(45) DEFAULT NULL,
  `Gender` VARCHAR(15) DEFAULT NULL,
  `Food_ID` VARCHAR(10) DEFAULT NULL,
  `Cell_ID` VARCHAR(10) DEFAULT NULL,
  `Animal_Event_ID` VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY (`Animal_ID`),
  KEY `Cell_ID_idx` (`Cell_ID`),
  KEY `Animal_Event_ID_idx` (`Animal_Event_ID`),
  CONSTRAINT `Animal_Event_ID` FOREIGN KEY (`Animal_Event_ID`) REFERENCES `animal_events` (`Animal_Event_ID`),
  CONSTRAINT `Cell_ID` FOREIGN KEY (`Cell_ID`) REFERENCES `cells` (`Cell_ID`)
);

CREATE TABLE `foods` (
  `Food_ID` VARCHAR(10) NOT NULL,
  `Food_Name` VARCHAR(45) DEFAULT NULL,
  `Animal_ID` VARCHAR(10) NOT NULL,
  `Supplier_ID` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`Food_ID`),
  KEY `Animal_ID_idx` (`Animal_ID`),
  CONSTRAINT `Animal_ID` FOREIGN KEY (`Animal_ID`) REFERENCES `animals` (`Animal_ID`)
);

 CREATE TABLE `suppliers` (
  `Supplier_ID` VARCHAR(10) NOT NULL,
  `Supplier_Name` VARCHAR(25) DEFAULT NULL,
  `Supplier_Address` VARCHAR(45) DEFAULT NULL,
  `Food_ID` VARCHAR(10) NOT NULL,
  `Stock_Date` DATETIME DEFAULT NULL,
  `Stock_Quantity` VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (`Supplier_ID`),
  KEY `Food_ID_idx` (`Food_ID`),
  CONSTRAINT `Food_ID` FOREIGN KEY (`Food_ID`) REFERENCES `foods` (`Food_ID`)
);

CREATE TABLE `ongate_tickets` (
  `Ticket_ID` INT AUTO_INCREMENT NOT NULL ,
  `Visitor_ID` INT NOT NULL,
  `Ticket_Type` ENUM('Adult', 'Child', 'Senior'),
  `Ticket_Price` FLOAT DEFAULT NULL,
  `Entry_Date` DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Ticket_ID`)
);

CREATE TABLE `visitors` (
  `Ticket_ID` INT NOT NULL,
  `Visitor_ID` INT AUTO_INCREMENT NOT NULL,
  `Visitor_Name` VARCHAR(20) DEFAULT NULL,
  `Visitor_Address` VARCHAR(45) DEFAULT NULL,
  `Visitor_Phone_No` VARCHAR(15) DEFAULT NULL,
  `Visitor_Age` INT DEFAULT NULL COMMENT 'Child, Young, Old',
  `Visit_Date` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Gender` VARCHAR(15) DEFAULT NULL,
  PRIMARY KEY (`Visitor_ID`),
  KEY `Ticket_ID_idx` (`Ticket_ID`),
  CONSTRAINT `Ticket_ID` FOREIGN KEY (`Ticket_ID`) REFERENCES `ongate_tickets` (`Ticket_ID`)
);

CREATE TABLE `online_booking_tickets` (
  `ETicket_ID` INT NOT NULL AUTO_INCREMENT,
  `EVisitor_ID` INT NOT NULL,
  `Ticket_Type` ENUM('Adult', 'Child', 'Senior'),
  `Ticket_Price` FLOAT DEFAULT NULL,
  `Booking_Date` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Entry_Date` DATE NOT NULL,
  PRIMARY KEY (`ETicket_ID`)
);

CREATE TABLE `evisitors` (
  `ETicket_ID` INT NOT NULL,
  `EVisitor_ID` INT NOT NULL AUTO_INCREMENT,
  `EVisitor_Name` VARCHAR(20) DEFAULT NULL,
  `EVisitor_Address` VARCHAR(45) DEFAULT NULL,
  `EVisitor_Phone_No` VARCHAR(15) DEFAULT NULL,
  `EVisitor_Age` INT DEFAULT NULL,
  `Gender` ENUM('Male','Female','Unknown'),
  PRIMARY KEY (`EVisitor_ID`),
  KEY `ETicket_ID_idx` (`ETicket_ID`),
  CONSTRAINT `ETicket_ID` FOREIGN KEY (`ETicket_ID`) REFERENCES `online_booking_tickets` (`ETicket_ID`)
);