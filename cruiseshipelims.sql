-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 11, 2022 at 11:38 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cruiseshipelims`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `booking_id` int(50) NOT NULL AUTO_INCREMENT,
  `member_count` int(10) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `booked_by` varchar(10) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `member_count`, `p_id`, `status`, `booked_by`) VALUES
(1, 1, '104', NULL, '40'),
(2, 1, '104', NULL, '40'),
(3, 1, '104', NULL, '40'),
(4, 2, '108', NULL, '40'),
(5, 1, '104', NULL, '40'),
(6, 2, '105', NULL, '40');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

DROP TABLE IF EXISTS `booking_details`;
CREATE TABLE IF NOT EXISTS `booking_details` (
  `det_id` int(50) NOT NULL AUTO_INCREMENT,
  `booking_id` int(50) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `cabins` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `passport` varchar(100) NOT NULL,
  `p_type` varchar(50) NOT NULL,
  `added_by` int(9) DEFAULT NULL,
  PRIMARY KEY (`det_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`det_id`, `booking_id`, `fname`, `cabins`, `category`, `dob`, `passport`, `p_type`, `added_by`) VALUES
(1, 1, 'Ameer', 'inside', 'adults', '2000/04/07', '673456748865', 'single', NULL),
(2, 2, 'Ameer', 'inside', 'adults', '2000/04/07', '673456748865', 'single', NULL),
(3, 3, 'Ameer', 'inside', 'adults', '2000/04/07', '673456748865', 'single', NULL),
(4, 5, 'Ameer', 'inside', 'adults', '1999/09/12', '673456748865', 'single', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pack`
--

DROP TABLE IF EXISTS `pack`;
CREATE TABLE IF NOT EXISTS `pack` (
  `p_id` int(9) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(50) DEFAULT NULL,
  `p_name` varchar(200) DEFAULT NULL,
  `port` varchar(100) NOT NULL,
  `dest` varchar(150) NOT NULL,
  `p_rate` float NOT NULL,
  `d_date` date NOT NULL,
  `time` time NOT NULL,
  `a_date` date NOT NULL,
  `category` varchar(10) NOT NULL,
  `cabins` varchar(15) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `p_type` varchar(1000) NOT NULL,
  `pack_desc` longtext NOT NULL,
  `highlights` longtext NOT NULL,
  `offervalid` varchar(10) NOT NULL,
  `sploffer` varchar(200) NOT NULL,
  `acco_id` int(5) DEFAULT NULL,
  `photo` varchar(350) DEFAULT NULL,
  `images` varchar(350) NOT NULL,
  `added_by` int(9) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pack`
--

INSERT INTO `pack` (`p_id`, `c_name`, `p_name`, `port`, `dest`, `p_rate`, `d_date`, `time`, `a_date`, `category`, `cabins`, `type`, `p_type`, `pack_desc`, `highlights`, `offervalid`, `sploffer`, `acco_id`, `photo`, `images`, `added_by`) VALUES
(83, NULL, NULL, '', '', 0, '0000-00-00', '00:00:00', '0000-00-00', '', '', NULL, '', '', '', '', '', NULL, NULL, '1641218732871-bezkoder-1528747841106.jpeg', 0),
(84, NULL, NULL, '', '', 0, '0000-00-00', '00:00:00', '0000-00-00', '', '', NULL, '', '', '', '', '', NULL, NULL, '1641218743347-bezkoder-shutterstock_1258322896.jpg', 0),
(85, NULL, NULL, '', '', 0, '0000-00-00', '00:00:00', '0000-00-00', '', '', NULL, '', '', '', '', '', NULL, NULL, '1641218753217-bezkoder-rOKkgGoqQOGl.jpg', 0),
(86, NULL, NULL, '', '', 0, '0000-00-00', '00:00:00', '0000-00-00', '', '', NULL, '', '', '', '', '', NULL, NULL, '1641218763762-bezkoder-The-stunning-beach-of-Goa.jpg', 0),
(87, NULL, NULL, '', '', 0, '0000-00-00', '00:00:00', '0000-00-00', '', '', NULL, '', '', '', '', '', NULL, NULL, '1641218784682-bezkoder-The-stunning-beach-of-Goa.jpg', 0),
(100, NULL, NULL, '', '', 0, '0000-00-00', '00:00:00', '0000-00-00', '', '', NULL, '', '', '', '', '', NULL, NULL, '1641288185301-bezkoder-Andaman-and-Nicobar-Islands.jpg', 0),
(104, 'Cordelia Cruises london cruise', 'LONDON', 'MUMBAI', 'LONDON', 25000, '2022-04-07', '03:00:00', '2022-04-15', '1,', '1,', '1,', '1,', 'London is one of the world\'s leading tourism destinations, and the city is home to an array of famous tourist attractions. The city attracted 20.42 million international visitors in 2018, making it one of the world\'s most visited in terms of international visits. It welcomed an additional 27.8 million overnighting domestic tourists in 2017,and had 280 million day trippers in 2015', '', 'n', '', NULL, '1648197984001-bezkoder-ban_img1.jpg', '', 36),
(105, 'Cordelia Cruises singapore cruise', 'SINGAPORE', 'KOLKATA', 'SINGAPORE', 55000, '2022-05-15', '06:00:00', '2022-05-30', '2,', '2,', '1,', '4,', 'Singapore officially the Republic of Singapore, is a sovereign island city-state in maritime Southeast Asia. It lies about one degree of latitude (137 kilometres or 85 miles) north of the equator, off the southern tip of the Malay Peninsula, bordering the Straits of Malacca to the west, the Riau Islands (Indonesia) to the south, and the South China Sea to the east.', '', 'n', '', NULL, '1648198066637-bezkoder-ban_img2.jpg', '', 36),
(106, 'Sunderbans Luxury Cruise', 'RUSSIA', 'KOLKATA', 'RUSSIA', 53000, '2022-06-10', '04:00:00', '2022-06-26', '3,', '3,', '1,', '4,', 'Rich cultural heritage and great natural variety place Russia among the most popular tourist destinations in the world. Not including Crimea. Major tourist routes in Russia include a travel around the Golden Ring of ancient cities, and show a great variety of traditions, including Russian Maslenitsa, Tatar Sabantuy, or Siberian shamanist rituals. In 2013, Russia was visited by 33 million tourists, making it the ninth-most visited country in the world and the seventh-most visited in Europe.', '', 'n', '', NULL, '1648198257725-bezkoder-russia4.jpg', '', 36),
(107, 'Cordelia Cruises', 'MALDIVES', 'CHENNAI', 'MALDIVES', 23000, '2022-05-15', '06:00:00', '2022-05-30', '2,', '2,', '2,', '2,', 'The Maldives is an archipelagic state situated in the Indian Ocean known for its luxurious water villas. A tropical haven of white sand beaches, the Maldives is located in the south of Sri Lanka and is ideal for an adventure, honeymoon, or leisure holiday.', '', 'y', '10k discount', NULL, '1648199130847-bezkoder-ban_img2.jpg', '', 36),
(108, 'Cordelia Cruises goa cruise', 'GOA', 'KOCHI', 'GOA', 43000, '2022-06-10', '03:00:00', '2022-06-26', '2,', '3,', '2,', '2,', 'The coastal paradise, Goa is not unknown to anyone. This tiny state in West India is famous for its plethora of beautiful beaches, great seafood, amazing nightlife, and thrilling watersports.  Goa along with being a popular beach destination in India is a perfect honeymoon destination, a great getaway with friends, and an amazing family holiday place, which means, the place is filled with activities and attractions to keep all its visitors engaged.  The state is majorly divided into two districts - North Goa and South Goa. North Goa is famous for its lively beaches like Calangute, Baga, Candolim, Anjuna; beach shacks, Fort Aguada; Church of Mae De Dues; Boghdeshwara Temple; and Chorao, Divar Island.', '', 'n', '', NULL, '1648201025491-bezkoder-goa 300x364.jpg', '', 36),
(111, 'Cordelia Cruises netherlands cruise', 'NETHERLANDS', 'DUBAI', 'NETHERLANDS', 120000, '2022-05-15', '04:00:00', '2022-05-30', '3,', '2,', '2,', '2,', 'The Netherlands, a country in northwestern Europe, is known for a flat landscape of canals, tulip fields, windmills and cycling routes. Amsterdam, the capital, is home to the Rijksmuseum, Van Gogh Museum and the house where Jewish diarist Anne Frank hid during WWII.', '', 'n', '', NULL, '1648201843831-bezkoder-tim-trad-S80l8OMq0xA-unsplash 1.jpg', '', 36),
(112, 'Sunderbans mumbai Cruise', 'MUMBAI', 'KOCHI', 'MUMBAI', 34000, '2022-05-15', '03:00:00', '2022-05-30', '2,', '3,', '3,', '4,', 'Mumbai is a huge and populous city, the level of crime is high. Travelers can easily become victims so they need to avoid traveling alone on public transport or in taxis, especially at night. Mumbai offers natural heritage and modern entertainment including leisure spots, beaches, cinemas, studios, holy places, amusement parks and historical monuments. Transport options include air, road, train and ship.', '', 'n', '', NULL, '1648202503400-bezkoder-Mumbai.png', '', 36),
(113, 'Stenza Cruises', 'DUBAI', 'KOCHI', 'DUBAI', 43000, '2022-07-15', '02:00:00', '2022-07-30', '2,', '3,', '3,', '4,', 'Dubai has grown to be one of the most recognisable destinations worldwide with its lavish architecture, incredible skylines and giant shopping malls. Among the most progressive destinations in the Middle East, Dubai is also the home to Burj Khalifa, the tallest human-made building globally. While Abu Dhabi is the capital of the UAE, Dubai is the most popular & populous city.', '', 'n', '', NULL, '1648203249818-bezkoder-uae 2.jpg', '', 36),
(114, 'Cordelia Cruises', 'CHINA', 'KOCHI', 'CHINA', 55000, '2022-04-07', '03:00:00', '2022-04-15', '2,', '3,', '3,', '4,', 'factor that affects to turn China into a pole of attraction for tourism is the vastness of the territory, about twenty times the land of Germany, which allows treasuring a great landscape and climatic diversity. Another element that invites to Discover China Tourism is that of having lived closed in itself during centuries, when it was the most refined and inventive civilization of the planet, leaving a rich cultural and historical heritage.', '', 'n', '', NULL, '1648203795520-bezkoder-china .jpg', '', 36);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `mobilenumber` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `optr_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressproof` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proofid` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(350) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `address`, `city`, `state`, `country`, `mobilenumber`, `company_name`, `optr_id`, `dob`, `addressproof`, `proofid`, `photo`, `user_type`, `created_at`, `updated_at`) VALUES
(13, 'reshmi@gmail.com', '$2b$10$fyWLtPnefmMoCFNScy/R1eYvKHKClb8NrJeZCC1S/k1joeWubPwLm', 'Reshmi', 'K S', '', '', '', '', '', '', '', '0000-00-00', '0', '0', '', 'cl', NULL, NULL),
(32, 'geetha@gmail.com', '$2b$10$fVJgqk7hUd0WZNp4IToA.ep5ov8TGU/Fd3X0mKZl3vYSWYvY1SeVa', 'Geetha', 'p', 'Sreenilayam', 'Thrissur', 'kerala', 'India', '7898767898', '', '', '1972/05/15', 'aadhar', '2147483647', '', 'user', NULL, NULL),
(36, 'arun@gmail.com', '$2b$10$fyWLtPnefmMoCFNScy/R1eYvKHKClb8NrJeZCC1S/k1joeWubPwLm', 'Arun', 'KR', 'krishna nivas', 'Thrissur', 'kerala', 'India', '8790568967', 'TALES OF TIME TRAVEL', 'A123456789001', NULL, 'aadhar', '5678876556', '1641218299987-bezkoder-h7.jpg', 'toptr', NULL, NULL),
(40, 'nami@gmail.com', '$2b$10$fyWLtPnefmMoCFNScy/R1eYvKHKClb8NrJeZCC1S/k1joeWubPwLm', 'namitha', 'K S', 'PANIKKER PADI', 'Kolazhy', 'KERALA', 'India', '9876546789', '', '', '30/01/1994', 'aadhar', '3452678456', '', 'user', NULL, NULL),
(41, 'neethu@gmail.com', '$2b$10$cAP54oITkP7pBrzyGa6Q5OzMfP7VdzgV4uM19OD25kOBxQPcWxYh6', 'Neethu', 'H', 'PANIKKER PADI', 'Kolazhy', 'KERALA', 'India', '9876546789', '', '', '30/01/1994', 'aadhar', '3456278658', '', 'user', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
