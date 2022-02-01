CREATE DATABASE Msqllab2_db;

CREATE TABLE IF NOT EXISTS `Users` (
 `Id` int(11) NOT NULL AUTO_INCREMENT,
 `Username` varchar(50) NOT NULL,
 `Email` varchar(50) NOT NULL,
 `Password` varchar(50) NOT NULL,
 `Create_datetime` datetime NOT NULL,
 PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `Agents`( 
	`Id` int NOT NULL AUTO_INCREMENT, 
	`Name` VARCHAR(100) NOT NULL, 
	`Email` VARCHAR(100) NOT NULL, 
  `Password` varchar(50) NOT NULL,
	PRIMARY KEY(`Id`)
);

CREATE TABLE IF NOT EXISTS `Employees`( 
	`Id` int NOT NULL AUTO_INCREMENT, 
	`Name` VARCHAR(100) NOT NULL, 
	`Email` VARCHAR(100) NOT NULL, 
  `Password` varchar(50) NOT NULL,
	PRIMARY KEY(`Id`)
);


CREATE TABLE IF NOT EXISTS `Complaint_form` (
 `Id` int(11) NOT NULL AUTO_INCREMENT,
 `User_id` int(11) NOT NULL,
 `Agent_id` INT, 
 `Employee_id` INT,  
 `Complaints` text NOT NULL,
 `Status` VARCHAR(20) NOT NULL,
 `Date` date NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (`Id`),
 FOREIGN KEY(user_id) REFERENCES users(Id),
 FOREIGN KEY(agent_id) REFERENCES agents(Id),
 FOREIGN KEY(employee_id) REFERENCES employees(Id)
);
