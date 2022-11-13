-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2022 at 08:54 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'f865b53623b121fd34ee5426c792e5c33af8c227');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`, `created_at`) VALUES
('978-0064430173', 'Goodnight Moon', 'Margaret Wise Brown', 'margaret1.jpg', 'In a great green room, tucked away in bed, is a little bunny. \"Goodnight room, goodnight moon.\" And to all the familiar things in the softly lit room—to the picture of the three little bears sitting on chairs, to the clocks and his socks, to the mittens and the kittens, to everything one by one—the little bunny says goodnight.', '8.99', 4, '2022-11-09 21:46:19'),
('978-0156012195', 'The Little Prince', 'Antoine de Saint-Exupéry', 'anotonie1.jpg', 'A pilot crashes in the Sahara Desert and encounters a strange young boy who calls himself the Little Prince. The Little Prince has traveled there from his home on a lonely, distant asteroid with a single rose. The story that follows is a beautiful and at times heartbreaking meditation on human nature.', '6.89', 2, '2022-11-09 21:39:22'),
('978-0385376716', 'The Wonderful Things You Will Be', 'Emily Winfield Martin', 'emily1.jpg', 'From brave and bold to creative and clever, Emily Winfield Martin\'s rhythmic rhyme expresses all the loving things that parents think of when they look at their children. With beautiful, lush illustrations and a stunning gatefold that opens at the end, this is a book that families will love reading over and over. ', '8.55', 5, '2022-11-09 21:49:10'),
('978-0440408307', 'The Little Island', 'Margaret Wise Brown', 'margaret2.jpg', 'There was a little Island in the ocean./ Around it the winds blew/ And the birds flew/ And the tides rose and fell on the shore , and a kitten who comes ashore learns a secret about the island and a lesson about faith.', '7.99', 4, '2022-11-09 21:48:23'),
('978-0544699595', 'Counting with the Little Prince ', 'Antoine de Saint-Exupéry', 'anotonie2.jpg', 'This classic beloved tale is reimagined as a beautiful, sturdy counting board book -- one prince, two sheep, three trees and so on with a surprise lift-the-flap at the end!', '7.99', 2, '2022-11-09 21:41:00'),
('978-1419748684', 'The Deep End', 'Jeff Kinney', 'jeff2.jpg', 'But things take an unexpected turn, and they find themselves stranded at an RV park that’s not exactly a summertime paradise. When the skies open up and the water starts to rise, the Heffleys wonder if they can save their vacation—or if they’re already in too deep.', '7.38', 3, '2022-11-09 21:43:35'),
('978-1419749155', 'Big Shot', 'Jeff Kinney', 'jeff3.jpg', 'After a disastrous field day competition at school, Greg decides that when it comes to his athletic career, he’s officially retired. But after his mom urges him to give sports one more chance, he reluctantly agrees to sign up for basketball.\r\n\r\nTryouts are a mess, and Greg is sure he won’t make the cut. But he unexpectedly lands a spot on the worst team.\r\n\r\nAs Greg and his new teammates start the season, their chances of winning even a single game look slim. But in sports, anything can happen. When everything is on the line and the ball is in Greg’s hands, will he rise to the occasion? Or will he blow his big shot?', '7.49', 3, '2022-11-09 21:45:10'),
('978-1419762949', 'Diper Överlöde', 'Jeff Kinney', 'jeff1.jpg', 'When he decides to tag along with his brother Rodrick’s band, Löded Diper, Greg doesn’t realize what he’s getting into. But he soon learns that late nights, unpaid gigs, fighting between band members, and money troubles are all part of the rock ’n’ roll lifestyle.', '8.79', 3, '2022-11-09 21:42:25'),
('978-1534438521', 'Stellarlune (9) (Keeper of the Lost Cities)', 'Shannon Messenger', 'shannon1.jpg', 'Stellarlune and the mysterious Elysian might be the key to everything. But finding truth in the Lost Cities always requires sacrifice. And as the Neverseen’s plans sharpen into terrifying focus, it appears that everyone has miscalculated. The Lost Cities’ greatest lie could destroy everything. And in the battle that follows, only one thing is certain: nothing will ever be the same.', '16.99', 1, '2022-11-09 21:34:12'),
('978-1534497269', 'Unlocked Book 8.5 (Keeper of the Lost Cities)', 'Shannon Messenger', 'shannon2.jpg', 'In this extra special installment of the Keeper of the Lost Cities series, the story picks up right from Legacy’s particularly devastating cliffhanger. But chapters alternate between Sophie and Keefe’s perspectives to give readers deeper insights into both beloved characters. New powers will be discovered. Hard truths from the past will come to light. And all of your favorite characters will find themselves tested in ways they never imagined.', '8.99', 1, '2022-11-09 21:37:16'),
('9780006640615', 'The Tiger Who Came to Tea', 'Judith Kerr', 'judith1.jpg', 'The book concerns a small little girl called Sophie, her mother, and an anthropomorphized tiger who invites himself to their afternoon tea and consumes all the food and drink they have.', '16.99', 5, '2022-11-09 21:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(7, 'Mark Cooper', 'Here City There Province, 2306', 'Sample City', '2306', 'Philippines'),
(8, 'Samantha Jane Miller', 'Sample Street', 'Sample City', '2306', 'Sampple'),
(9, 'dar', 'wertyuioqqqqqqqqq', 'bm', '14000', 'Malaysia'),
(10, 'admin', 'wertyuioqqqqqqqqq', 'bm', '14000', 'Malaysia'),
(11, 'Dar', 'rytdyjugtyu', 'tdfyuiughoo', '1111', 'Malaysia');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, '60.00', '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, '60.00', '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, '20.00', '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, '20.00', '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a'),
(5, 4, '80.00', '2022-06-21 00:09:36', 'Mark Cooper', 'Sample Street', 'Here', '2306', 'Sampple'),
(6, 5, '220.00', '2022-06-21 01:35:16', 'Mark Cooper', 'Sample Street', 'Sample City', '2306', 'Philippines'),
(7, 6, '20.00', '2022-06-21 01:38:20', 'Mark Cooper', 'Here City There Province, 2306', 'Here', '2306', 'Philippines'),
(8, 7, '20.00', '2022-06-21 01:40:28', 'Mark Cooper', 'Here City There Province, 2306', 'Sample City', '2306', 'Philippines'),
(9, 8, '80.00', '2022-06-21 01:42:56', 'Samantha Jane Miller', 'Sample Street', 'Sample City', '2306', 'Sampple'),
(10, 9, '8.99', '2022-11-09 06:54:29', 'dar', 'wertyuioqqqqqqqqq', 'bm', '14000', 'Malaysia'),
(11, 10, '67.72', '2022-11-09 08:21:44', 'admin', 'wertyuioqqqqqqqqq', 'bm', '14000', 'Malaysia'),
(12, 11, '13.78', '2022-11-10 00:18:58', 'Dar', 'rytdyjugtyu', 'tdfyuiughoo', '1111', 'Malaysia'),
(13, 9, '16.99', '2022-11-11 03:34:07', 'dar', 'wertyuioqqqqqqqqq', 'bm', '14000', 'Malaysia'),
(14, 9, '8.55', '2022-11-11 04:07:02', 'dar', 'wertyuioqqqqqqqqq', 'bm', '14000', 'Malaysia');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(5, '978-1-4571-0402-2', '20.00', 2),
(5, '978-1-44937-075-6', '20.00', 1),
(5, '978-0-321-94786-4', '20.00', 1),
(6, '978-1-4571-0402-2', '20.00', 10),
(6, '978-1-44937-075-6', '20.00', 1),
(7, '978-0-7303-1484-4', '20.00', 1),
(8, '978-1-1180-2669-4', '20.00', 1),
(9, '978-1-44937-019-0', '20.00', 4),
(10, '978-0064430173', '8.99', 1),
(11, '978-0064430173', '8.99', 6),
(11, '978-0156012195', '6.89', 2),
(12, '978-0156012195', '6.89', 2),
(10, '9780006640615', '16.99', 1),
(10, '978-0385376716', '8.55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Aladdin'),
(2, 'Mariner Books'),
(3, 'Harry N. Abrams'),
(4, 'HarperCollins'),
(5, 'Random House Books for Young Readers');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(3, 'dar', 'darshendran@gmail.com', '94b8cea57c49a3007225a0c70c475450', '2022-11-12 20:26:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
