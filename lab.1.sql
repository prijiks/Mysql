CREATE DATABASE Mysql1_db;

CREATE TABLE IF NOT EXISTS `User_login` (
 `Id` int(11) NOT NULL AUTO_INCREMENT,
 `Username` varchar(50) NOT NULL,
 `Email` varchar(50) NOT NULL,
 `Password` varchar(50) NOT NULL,
 `Date_and_Time` datetime NOT NULL,
 PRIMARY KEY (`id`)
);


CREATE TABLE IF NOT EXISTS `Complaint_form` (
 `Id` int(11) NOT NULL AUTO_INCREMENT,
 `User_id` int(11) NOT NULL,  
 `Complaints` text NOT NULL,
 `Date` date NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `Time` time NOT NULL,
 `Timestamp` varchar(15) NOT NULL,
 PRIMARY KEY (`id`),
 FOREIGN KEY(User_id) REFERENCES User_login(id)
);
