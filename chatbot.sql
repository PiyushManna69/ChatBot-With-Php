-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2023 at 05:35 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_data`
--

CREATE TABLE `chat_data` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_data`
--

INSERT INTO `chat_data` (`id`, `question`, `answer`) VALUES
(1, 'User: Hello!', 'Hi there! How can I assist you today?'),
(2, 'User: I need help with a technical issue.', 'Sure, I\'d be happy to help. Could you please describe the issue in more detail?'),
(3, 'User: My internet connection is slow.', 'Slow internet can be frustrating. Let\'s troubleshoot the issue. Have you tried restarting your router?'),
(4, 'User: Yes, I\'ve tried that, but it didn\'t work.', 'I see. Let\'s check your connection settings. Can you tell me which provider you\'re using?'),
(5, 'User: I\'m with XYZ Internet.', 'Thanks for providing that information. Let\'s verify your connection speed. Please go to speedtest.com and share your download and upload speeds.'),
(6, 'User: My download speed is 10 Mbps, and upload speed is 2 Mbps.', 'Those speeds seem slower than expected. It could be a line issue. Please contact XYZ Internet\'s support for further assistance.'),
(7, 'User: Thanks, I\'ll reach out to them.', 'You\'re welcome! If you have any other questions, feel free to ask.'),
(8, 'User: What are your business hours', 'Our business hours are from 9 AM to 5 PM, Monday through Friday.'),
(9, 'User: Do you have a mobile app', 'Yes, we do have a mobile app. You can download it from the App Store or Google Play Store.'),
(10, 'User: Can you tell me about your return policy', 'Sure, our return policy allows for returns within 30 days of purchase, provided the item is in its original condition.'),
(11, 'User: How do I reset my password', 'To reset your password, go to the login page and click on \'Forgot Password.\' Follow the instructions sent to your email.'),
(12, 'User: What\'s the latest product you have released', 'Our latest product is the XYZ-1000, a state-of-the-art smartphone with advanced features.'),
(13, 'User: What\'s the weather like today', 'I\'m sorry, but I can\'t provide real-time weather information. You can check a weather website or app for the current conditions.'),
(14, 'User: Tell me a joke.', 'Why don\'t scientists trust atoms? Because they make up everything!'),
(15, 'User: Goodbye!', 'Goodbye! If you have more questions in the future, don\'t hesitate to ask.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_data`
--
ALTER TABLE `chat_data`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `chat_data` ADD FULLTEXT KEY `question` (`question`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_data`
--
ALTER TABLE `chat_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
