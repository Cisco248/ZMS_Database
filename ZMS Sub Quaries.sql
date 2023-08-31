SELECT * FROM employees;
INSERT INTO employees(Employee_ID, Employee_Name, Employee_Address, Emp_Phone_No, Gender, Work_Shift, Building_ID, Age) VALUES('E001', 'W.Samarasinghe', 'Cetlon Street, Colombo 8', '077-3190490', 'Male', 'Day','B01', 55);
INSERT INTO employees(Employee_ID, Employee_Name, Employee_Address, Emp_Phone_No, Gender, Work_Shift, Building_ID, Age) VALUES('E002', 'R.Nummuni', 'Cetlon Street, Colombo 8', '077-3567890', 'Female', 'Day','B04', 36);
INSERT INTO employees(Employee_ID, Employee_Name, Employee_Address, Emp_Phone_No, Gender, Work_Shift, Building_ID, Age) VALUES('E003', 'S.Silva', 'Amour Street, Colombo 11', '075-3099008', 'Male', 'Day','B02', 40);
INSERT INTO employees(Employee_ID, Employee_Name, Employee_Address, Emp_Phone_No, Gender, Work_Shift, Building_ID, Age) VALUES('E004', 'W.Perera', 'Church Road, Colombo 9', '077-3156590', 'Male', 'Night','B01', 38);
INSERT INTO employees(Employee_ID, Employee_Name, Employee_Address, Emp_Phone_No, Gender, Work_Shift, Building_ID, Age) VALUES('E005', 'K.Amarasinghe', 'Temple Street, Colombo 6', '011-3190477', 'Male', 'Day','B03', 32);

SELECT * FROM buildings;
INSERT INTO buildings(Building_ID, Building_Name, Department_Name, Cell_ID, Employee_ID) VALUES('B01', 'Admin', 'Administration', '', 'E002');
INSERT INTO buildings(Building_ID, Building_Name, Department_Name, Cell_ID, Employee_ID) VALUES('B02', 'Food', 'Animal Foods', '', 'E001');
INSERT INTO buildings(Building_ID, Building_Name, Department_Name, Cell_ID, Employee_ID) VALUES('B03', 'Security', 'Security', '', 'E004');
INSERT INTO buildings(Building_ID, Building_Name, Department_Name, Cell_ID, Employee_ID) VALUES('B04', 'Reptilia', '', 'C001', 'E005');
INSERT INTO buildings(Building_ID, Building_Name, Department_Name, Cell_ID, Employee_ID) VALUES('B05', 'Marine', '', 'C002', 'E003');
INSERT INTO buildings(Building_ID, Building_Name, Department_Name, Cell_ID, Employee_ID) VALUES('B06', 'Mammalia', '', 'C004', 'E003');

SELECT * FROM cells;
INSERT INTO cells(Cell_ID, Cell_Name, Building_ID, Animal_ID) VALUES('C001', 'Cobra Cell', 'B04', 'A011');
INSERT INTO cells(Cell_ID, Cell_Name, Building_ID, Animal_ID) VALUES('C002', 'Viper Cell', 'B04', 'A012');
INSERT INTO cells(Cell_ID, Cell_Name, Building_ID, Animal_ID) VALUES('C003', 'Betta Fish Cell', 'B05', 'A009');
INSERT INTO cells(Cell_ID, Cell_Name, Building_ID, Animal_ID) VALUES('C004', 'Elephant Cell', 'B06', 'A001');
INSERT INTO cells(Cell_ID, Cell_Name, Building_ID, Animal_ID) VALUES('C005', 'Sea Lion Cell', 'B05', 'A002');

SELECT * FROM animals;
INSERT INTO animals(Animal_ID, Animal_Name, Animal_Type, Gender, Food_ID, Cell_ID) VALUES ('A001', 'Elephant', 'Mammalia', 'Male', 'F0010', 'C004');
INSERT INTO animals(Animal_ID, Animal_Name, Animal_Type, Gender, Food_ID, Cell_ID) VALUES ('A002', 'Sea Lion', 'Marine', 'Male', 'F0011', 'C005');
INSERT INTO animals(Animal_ID, Animal_Name, Animal_Type, Gender, Food_ID, Cell_ID) VALUES ('A009', 'Betta Fish', 'Marine', 'Male', 'F0008', 'C003');
INSERT INTO animals(Animal_ID, Animal_Name, Animal_Type, Gender, Food_ID, Cell_ID) VALUES ('A011', 'Cobra', 'Reptilia', '', 'F0004', 'C001');

SELECT * FROM foods;
INSERT INTO foods(Food_ID, Food_Name, Animal_ID, Supplier_ID) VALUES ('F0004', 'Eggs', 'A011', 'S001');
INSERT INTO foods(Food_ID, Food_Name, Animal_ID, Supplier_ID) VALUES ('F0008', 'Warms', 'A009', 'S002');
INSERT INTO foods(Food_ID, Food_Name, Animal_ID, Supplier_ID) VALUES ('F0010', 'Leafs', 'A001', 'S003');
INSERT INTO foods(Food_ID, Food_Name, Animal_ID, Supplier_ID) VALUES ('F0011', 'Fish', 'A002', 'S004');

SELECT * FROM suppliers;
INSERT INTO suppliers(Supplier_ID, Supplier_Name, Supplier_Address, Food_ID, Stock_Date, Stock_Quantity) VALUE('S001', 'Jayaweera Supplier', 'Mainstreet, Colombo 10', 'F0004', '2022-10-13', '15');
INSERT INTO suppliers(Supplier_ID, Supplier_Name, Supplier_Address, Food_ID, Stock_Date, Stock_Quantity) VALUE('S002', 'Jayawardane Supplier', 'Mainstreet, Colombo 11', 'F0008', '2022-10-13', '25');
INSERT INTO suppliers(Supplier_ID, Supplier_Name, Supplier_Address, Food_ID, Stock_Date, Stock_Quantity) VALUE('S003', 'Jayani Supplier', 'Mainstreet, Colombo 11', 'F0010', '2022-10-13', '10');
INSERT INTO suppliers(Supplier_ID, Supplier_Name, Supplier_Address, Food_ID, Stock_Date, Stock_Quantity) VALUE('S004', 'Jakody Supplier', 'Mainstreet, Colombo 10', 'F0011', '2022-10-13', '5');

SELECT * FROM animal_events;
INSERT INTO animal_events(Animal_Event_ID, Animal_ID, Animal_Event_Name, Venue, Time_Slot, Date_Type) VALUES('AE01', 'A001', 'Elephant Show', 'Elephant Area', '13.00 - 14.00', 'Weekdays');
INSERT INTO animal_events(Animal_Event_ID, Animal_ID, Animal_Event_Name, Venue, Time_Slot, Date_Type) VALUES('AE02', 'A002', 'Sea Lion Show', 'Marine Area', '15.00 - 16.00', 'Weekend');

INSERT INTO ongate_tickets(Visitor_ID, Ticket_Type, Ticket_Price) VALUES (1, 'Child', 100);
INSERT INTO ongate_tickets(Visitor_ID, Ticket_Type, Ticket_Price) VALUES (2, 'Adult', 300);
INSERT INTO ongate_tickets(Visitor_ID, Ticket_Type, Ticket_Price) VALUES (3, 'Senior', 200);
INSERT INTO ongate_tickets(Visitor_ID, Ticket_Type, Ticket_Price) VALUES (4, 'Child', 100);

INSERT INTO visitors(Ticket_ID, Visitor_Name, Visitor_Address, Visitor_Phone_No, Visitor_Age, Gender) VALUES ('1',  'Akash Menula', 'Panadura Road, Horana', '071-2345678', 10, 'Male');
INSERT INTO visitors(Ticket_ID, Visitor_Name, Visitor_Address, Visitor_Phone_No, Visitor_Age, Gender) VALUES ('2',  'Rukmal Bandara', 'Panadura Road, Horana', '071-2345678', 34, 'Male');
INSERT INTO visitors(Ticket_ID, Visitor_Name, Visitor_Address, Visitor_Phone_No, Visitor_Age, Gender) VALUES ('3',  'Sandamali Perera', 'Panadura Road, Horana', '071-2345678', 32, 'Female');
INSERT INTO visitors(Ticket_ID, Visitor_Name, Visitor_Address, Visitor_Phone_No, Visitor_Age, Gender) VALUES ('4',  'Malkanthi Perera', 'Panadura Road, Horana', '071-2345678', 60, 'Female');

INSERT INTO online_booking_tickets(EVisitor_ID, Ticket_Type, Ticket_Price, Entry_Date) VALUES (1, 'Child', 100, '2023-10-13');
INSERT INTO online_booking_tickets(EVisitor_ID, Ticket_Type, Ticket_Price, Entry_Date) VALUES (2, 'Adult', 300, '2023-10-13');
INSERT INTO online_booking_tickets(EVisitor_ID, Ticket_Type, Ticket_Price, Entry_Date) VALUES (3, 'Adult', 300, '2023-10-13');
INSERT INTO online_booking_tickets(EVisitor_ID, Ticket_Type, Ticket_Price, Entry_Date) VALUES (4, 'Senior', 200, '2023-10-13');

INSERT INTO evisitors(ETicket_ID, EVisitor_Name, EVisitor_Address, EVisitor_Phone_No, EVisitor_Age, Gender) VALUES (1, 'Sanath Perara', 'Church Road, Kaluthara', '077-2345678', 44, 'Male');
INSERT INTO evisitors(ETicket_ID, EVisitor_Name, EVisitor_Address, EVisitor_Phone_No, EVisitor_Age, Gender) VALUES (2, 'Ransumal Jayasinghe', 'Church Road, Kaluthara', '077-2345678', 22, 'Male');
INSERT INTO evisitors(ETicket_ID, EVisitor_Name, EVisitor_Address, EVisitor_Phone_No, EVisitor_Age, Gender) VALUES (3, 'Tharanga Wickrama', 'Church Road, Kaluthara', '077-2345678', 38, 'Female');
INSERT INTO evisitors(ETicket_ID, EVisitor_Name, EVisitor_Address, EVisitor_Phone_No, EVisitor_Age, Gender) VALUES (4, 'Renuka Perera', 'Church Road, Kaluthara', '077-2345678', 59, 'Female');