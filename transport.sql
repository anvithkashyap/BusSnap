-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 17, 2024 at 03:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+05:30";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transport`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `login` (IN `uname` VARCHAR(255), IN `psw` VARCHAR(255))   BEGIN
    SELECT * FROM admin WHERE name=uname AND psw=psw;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `psw` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `name`, `psw`) VALUES
(1, 'admin1', 'admin1'),
(2, 'admin2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `booking_det`
--

CREATE TABLE `booking_det` (
  `bus_id` int(11) NOT NULL,
  `vacant` int(11) NOT NULL,
  `jdate` varchar(30) NOT NULL,
  `bfrom` varchar(30) NOT NULL,
  `bto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking_det`
--

INSERT INTO `booking_det` (`bus_id`, `vacant`, `jdate`, `bfrom`, `bto`) VALUES
(118, 78, '2024-4-3', 'Bengaluru', 'Hyderabad');

-- --------------------------------------------------------

--
-- Table structure for table `bus_details`
--

CREATE TABLE `bus_details` (
  `bus_id` int(11) NOT NULL,
  `bname` varchar(30) NOT NULL,
  `bno` varchar(20) NOT NULL,
  `bfrom` varchar(30) NOT NULL,
  `bto` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `no_seat` int(11) NOT NULL,
  `fare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bus_details`
--

INSERT INTO `bus_details` (`bus_id`, `bname`, `bno`, `bfrom`, `bto`, `time`, `type`, `no_seat`, `fare`) VALUES
(118, 'SRS', 'KA01F1211', 'Bengaluru', 'Hyderabad', '6:30pm', 'Ac', 80, 1000),
(119, 'Airavata', 'KA01F1212', 'Bengaluru', 'Hyderabad', '7pm', 'Ac', 80, 1000),
(120, 'Raajahamsa', 'KA01F1213', 'Bengaluru', 'Hyderabad', '8pm', 'Ac', 80, 600),
(121, 'VRL', 'KA01F1214', 'Bengaluru', 'Mysuru', '7:30pm', 'Non Ac', 80, 500),
(122, 'Airavata', 'KA01F1215', 'Bengaluru', 'Mysuru', '8pm', 'Non Ac', 80, 500),
(123, 'Raajahamsa', 'KA01F1216', 'Bengaluru', 'Mysuru', '9pm', 'Non Ac', 80, 300),
(124, 'SRS', 'KA01F1217', 'Chennai', 'Ooty', '6:30am', 'Ac', 80, 350),
(125, 'KPN', 'KA01F1218', 'Chennai', 'Ooty', '7am', 'Ac', 80, 350),
(126, 'Airavata', 'KA01F1219', 'Chennai', 'Ooty', '8am', 'Ac', 80, 350),
(127, 'SRS', 'KA01F1220', 'Bengaluru', 'Chennai', '9:30am', 'Ac', 60, 1200),
(128, 'KPN', 'KA01F1221', 'Bengaluru', 'Chennai', '10am', 'Ac', 60, 1200),
(129, 'Raajahamsa', 'KA01F1222', 'Bengaluru', 'Chennai', '11am', 'Ac', 60, 720),
(130, 'VRL', 'KA01F1223', 'Mysuru', 'Bengaluru', '9:00am', 'Non Ac', 70, 800),
(131, 'SRS', 'KA01F1224', 'Mysuru', 'Bengaluru', '10:00am', 'Non Ac', 70, 800),
(132, 'KPN', 'KA01F1225', 'Mysuru', 'Bengaluru', '11:00am', 'Non Ac', 70, 800),
(133, 'Orange', 'KA01F1226', 'Chennai', 'Coimbatore', '10:30pm', 'Ac', 50, 1000),
(134, 'Airavata', 'KA01F1227', 'Chennai', 'Coimbatore', '11:30pm', 'Ac', 50, 1000),
(135, 'Raajahamsa', 'KA01F1228', 'Chennai', 'Coimbatore', '12:30am', 'Ac', 50, 600),
(136, 'SRS', 'KA01F1229', 'Chennai', 'Madurai', '11:30am', 'Non Ac', 60, 900),
(137, 'VRL', 'KA01F1230', 'Chennai', 'Madurai', '12:30pm', 'Non Ac', 60, 900),
(138, 'Orange', 'KA01F1231', 'Chennai', 'Madurai', '1:30pm', 'Non Ac', 60, 900),
(139, 'KPN', 'KA01F1232', 'Bengaluru', 'Mangalore', '7:30pm', 'Ac', 70, 1500),
(140, 'SRS', 'KA01F1233', 'Bengaluru', 'Mangalore', '8:30pm', 'Ac', 70, 1500),
(141, 'Airavata', 'KA01F1234', 'Bengaluru', 'Mangalore', '9:30pm', 'Ac', 70, 1500),
(142, 'SRS', 'KA01F1235', 'Mysuru', 'Chennai', '6:00pm', 'Non Ac', 80, 700),
(143, 'KPN', 'KA01F1236', 'Mysuru', 'Chennai', '6:30pm', 'Non Ac', 80, 700),
(144, 'Raajahamsa', 'KA01F1237', 'Mysuru', 'Chennai', '7:00pm', 'Non Ac', 80, 420);


-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `tid` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `seat_no` varchar(30) NOT NULL,
  `no_seat` int(11) NOT NULL,
  `ticket_status` varchar(30) NOT NULL,
  `jdate` varchar(30) NOT NULL,
  `booking_date` date NOT NULL,
  `pname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`tid`, `bus_id`, `uid`, `seat_no`, `no_seat`, `ticket_status`, `jdate`, `booking_date`, `pname`) VALUES
(1, 118, 1, ' 1 2', 2, 'Confirm', '2024-04-03', '2024-04-03', 'Anvith Kashyap');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `uid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL,
  `adhar_no` varchar(30) NOT NULL,
  `psw` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`uid`, `name`, `uname`, `age`, `adhar_no`, `psw`, `email`) VALUES
(1, 'Anvith', 'Anvith Kashyap', '22', '123456', '12345', 'anvith@gmail.com'),
(2, 'Darshan', 'Darshan R', '22', '12345', '12345', 'darshan@gmail.com'),
(3, 'Bharath', 'Bharath Keshav', '23', '1234567', '12345', 'bharath@gmail.com');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `log_new_user_added` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN
    INSERT INTO user_log (event_time, event_description)
    VALUES (NOW(), CONCAT('New user added: ', NEW.name));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `log_id` int(11) NOT NULL,
  `event_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `event_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `email_queue`
CREATE TABLE `email_queue` (
  `email_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `user_email` VARCHAR(50) NOT NULL,
  `message` TEXT NOT NULL,
  `total_tickets` INT NOT NULL,
  `fare` INT NOT NULL,
  `journey_date` VARCHAR(30) NOT NULL,
  `sent` TINYINT(1) NOT NULL DEFAULT 0, -- Default value is 0 indicating email not sent
  PRIMARY KEY (`email_id`)
);
 ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Trigger to insert values into the email_queue when a new ticket is added
DELIMITER $$
CREATE TRIGGER `add_to_email` AFTER INSERT ON `ticket` FOR EACH ROW 
BEGIN
    DECLARE user_email VARCHAR(50);
    DECLARE user_id INT;
    DECLARE message TEXT;
    DECLARE total_tickets INT;
    DECLARE fare INT;
    DECLARE journey_date VARCHAR(30);

    -- Fetch user details related to the newly inserted ticket
    SELECT u.email, t.uid, CONCAT('Your ticket for bus ', b.bname, ' with seat(s) ', NEW.seat_no, ' has been confirmed. Journey date: ', NEW.jdate) AS message, NEW.no_seat AS total_tickets, bd.fare, NEW.jdate
    INTO user_email, user_id, message, total_tickets, fare, journey_date
    FROM ticket AS t
    JOIN user_info AS u ON t.uid = u.uid
    JOIN bus_details AS bd ON t.bus_id = bd.bus_id
    JOIN booking_det AS bdet ON bdet.bus_id = bd.bus_id
    WHERE t.tid = NEW.tid;

    -- Insert values into email_queue
    INSERT INTO email_queue (user_id, user_email, message, total_tickets, fare, journey_date)
    VALUES (user_id, user_email, message, total_tickets, fare, journey_date);
END$$
DELIMITER ;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `bus_details`
--
ALTER TABLE `bus_details`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bus_details`
--
ALTER TABLE `bus_details`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
