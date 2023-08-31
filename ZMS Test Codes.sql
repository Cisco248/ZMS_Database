-- Retrieve animal events that are scheduled in the same venue as an event named 'Lion Show'
SELECT * FROM animal_events WHERE Venue IN (SELECT Venue FROM animal_events WHERE Animal_Event_Name = 'Sea Lion Show');

-- Retrieve employees working during the day shift
SELECT * FROM employees WHERE Work_Shift = 'Day';

-- Insert data into the employees table
INSERT INTO employees (Employee_ID, Employee_Name, Employee_Address, Emp_Phone_No, Gender, Work_Shift, Building_ID, Age)
VALUES('E006', 'E.Kothalawala', '123 Main St, Colombo 9', '071-0897653', 'Male', 'Night', 'B003', '45');

-- Update an employee's phone number
UPDATE employees SET Emp_Phone_No = '079-1234567' WHERE Employee_ID = 'E006';

-- Delete an E006 Row From Employees Table
DELETE FROM employees WHERE Employee_ID = 'E006';

-- Count the number of employees by gender
SELECT Gender, COUNT(*) AS Employee_Count FROM employees GROUP BY Gender;