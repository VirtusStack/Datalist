-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2025 at 07:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `character_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_characters`
--

CREATE TABLE `book_characters` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `book` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_characters`
--

INSERT INTO `book_characters` (`id`, `name`, `role`, `book`) VALUES
(1, 'Harry Potter', 'Wizard', 'Harry Potter and the Philosopher\'s Stone'),
(2, 'Hermione Granger', 'Witch', 'Harry Potter and the Goblet of Fire'),
(3, 'Sherlock Holmes', 'Detective', 'A Study in Scarlet'),
(4, 'Elizabeth Bennet', 'Horror', 'Pride and Prejudice'),
(5, 'Frodo Baggins', 'Ring Bearer', 'The Lord of the Rings'),
(6, 'Hercule Poirot', 'Detective', 'Murder on the Orient Express'),
(7, 'Jay Gatsby', 'Millionaire', 'The Great Gatsby'),
(9, 'Arya Stark', 'Assassin', 'A Game of Thrones'),
(10, 'Bilbo Baggins', 'Adventurer', 'The Hobbit'),
(11, 'Katniss Everdeen', 'Rebel', 'The Hunger Games'),
(12, 'Jon Snow', 'Knight', 'A Game of Thrones'),
(13, 'Lara Croft', 'Adventurer', 'Tomb Raider'),
(14, 'Dorian Gray', 'Eternal Youth', 'The Picture of Dorian Gray'),
(15, 'Willy Wonka', 'Candy Maker', 'Charlie and the Chocolate Factory'),
(16, 'Dracula', 'Vampire', 'Dracula'),
(17, 'James Bond', 'Spy', 'Casino Royale'),
(18, 'Holden Caulfield', 'Teenager', 'The Catcher in the Rye'),
(19, 'Peter Pan', 'Boy Who Never Grows Up', 'Peter Pan'),
(20, 'Matilda Wormwood', 'Gifted Child', 'Matilda'),
(21, 'Alice', 'Adventurer', 'Alice in Wonderland'),
(22, 'Gandalf', 'Wizard', 'The Lord of the Rings'),
(23, 'Ender Wiggin', 'Commander', 'Ender\'s Game'),
(24, 'Scout Finch', 'Narrator', 'To Kill a Mockingbird'),
(25, 'Bilbo Baggins', 'Burglar', 'The Hobbit'),
(26, 'Rick Deckard', 'Blade Runner', 'Do Androids Dream of Electric Sheep?'),
(27, 'Hannibal Lecter', 'Cannibal', 'The Silence of the Lambs'),
(28, 'Clarisse McClellan', 'Rebel', 'Fahrenheit 451'),
(29, 'Jay Gatsby', 'Dreamer', 'The Great Gatsby'),
(30, 'Holden Caulfield', 'Rebel', 'The Catcher in the Rye'),
(31, 'Frodo Baggins', 'Ring Bearer', 'The Lord of the Rings'),
(32, 'Atticus Finch', 'Lawyer', 'To Kill a Mockingbird'),
(33, 'Scout Finch', 'Narrator', 'To Kill a Mockingbird'),
(34, 'Winston Smith', 'Rebel', '1984'),
(35, 'Offred', 'Handmaid', 'The Handmaid\'s Tale'),
(36, 'Katniss Everdeen', 'Revolutionary', 'The Hunger Games'),
(38, 'Jay Gatsby', 'Millionaire', 'The Great Gatsby'),
(39, 'Sherlock Holmes', 'Detective', 'The Hound of the Baskervilles'),
(40, 'Elizabeth Bennet', 'Heroine', 'Pride and Prejudice'),
(41, 'Holden Caulfield', 'Narrator', 'The Catcher in the Rye'),
(42, 'Dorian Gray', 'Subject', 'The Picture of Dorian Gray'),
(43, 'Dr. John Watson', 'Companion', 'Sherlock Holmes'),
(44, 'James Bond', 'Agent', 'Dr. No'),
(45, 'Katniss Everdeen', 'Archer', 'The Hunger Games'),
(46, 'Lara Croft', 'Explorer', 'Tomb Raider'),
(47, 'Ender Wiggin', 'Strategist', 'Ender\'s Game'),
(48, 'Scout Finch', 'Child', 'To Kill a Mockingbird'),
(49, 'Frodo Baggins', 'Hero', 'The Lord of the Rings'),
(50, 'Willy Wonka', 'Inventor', 'Charlie and the Chocolate Factory'),
(51, 'Peter Pan', 'Leader', 'Peter Pan'),
(52, 'Gandalf', 'Guide', 'The Lord of the Rings'),
(53, 'Arya Stark', 'Avenger', 'A Game of Thrones'),
(54, 'Rick Deckard', 'Hunter', 'Blade Runner'),
(55, 'Hannibal Lecter', 'Genius', 'The Silence of the Lambs'),
(56, 'Clarisse McClellan', 'Free Spirit', 'Fahrenheit 451'),
(57, 'Winston Smith', 'Victim', '1984'),
(58, 'Offred', 'Survivor', 'The Handmaid\'s Tale'),
(59, 'Jay Gatsby', 'Romantic', 'The Great Gatsby'),
(60, 'Elizabeth Bennet', 'Witty', 'Pride and Prejudice'),
(61, 'Dorian Gray', 'Corrupted', 'The Picture of Dorian Gray'),
(62, 'James Bond', 'Hero', 'Goldfinger'),
(63, 'Katniss Everdeen', 'Fighter', 'The Hunger Games'),
(64, 'Lara Croft', 'Warrior', 'Tomb Raider'),
(65, 'Ender Wiggin', 'Prodigy', 'Ender\'s Game'),
(66, 'Scout Finch', 'Observer', 'To Kill a Mockingbird'),
(67, 'Frodo Baggins', 'Bearer', 'The Lord of the Rings'),
(68, 'Willy Wonka', 'Eccentric', 'Charlie and the Chocolate Factory'),
(69, 'Peter Pan', 'Eternal Boy', 'Peter Pan'),
(70, 'Gandalf', 'Wizard', 'The Lord of the Rings'),
(71, 'Arya Stark', 'Assassin', 'A Game of Thrones'),
(72, 'Rick Deckard', 'Blade Runner', 'Do Androids Dream of Electric Sheep?'),
(73, 'Hannibal Lecter', 'Psychopath', 'The Silence of the Lambs'),
(74, 'Clarisse McClellan', 'Nonconformist', 'Fahrenheit 451'),
(75, 'Winston Smith', 'Dystopian', '1984'),
(76, 'Offred', 'Handmaid', 'The Handmaid\'s Tale'),
(77, 'Jay Gatsby', 'Mystery', 'The Great Gatsby'),
(78, 'Elizabeth Bennet', 'Romance', 'Pride and Prejudice'),
(79, 'Dorian Gray', 'Tragic Figure', 'The Picture of Dorian Gray'),
(80, 'James Bond', 'Spy', 'Skyfall'),
(81, 'Katniss Everdeen', 'Survivor', 'The Hunger Games'),
(82, 'Lara Croft', 'Adventurer', 'Tomb Raider'),
(83, 'Ender Wiggin', 'Commander', 'Ender\'s Game'),
(84, 'Scout Finch', 'Narrator', 'To Kill a Mockingbird'),
(85, 'Frodo Baggins', 'Ring Bearer', 'The Lord of the Rings'),
(86, 'Willy Wonka', 'Inventor', 'Charlie and the Chocolate Factory'),
(87, 'Peter Pan', 'Magical', 'Peter Pan'),
(88, 'Gandalf', 'Mentor', 'The Lord of the Rings'),
(89, 'Arya Stark', 'Warrior', 'A Game of Thrones'),
(90, 'Rick Deckard', 'Detective', 'Blade Runner'),
(91, 'Hannibal Lecter', 'Villain', 'The Silence of the Lambs'),
(92, 'Clarisse McClellan', 'Rebel', 'Fahrenheit 451'),
(93, 'Mark Wood', 'Villain', 'Chronicles of Aether'),
(94, 'Zara Vale', 'Assassin', 'Shadow City'),
(95, 'Martin Smith', 'Avenger', 'A Game of Thrones'),
(96, 'Nova Star', 'Detective', 'Legends of Orion'),
(97, 'Jett Storm', 'Detective', 'Legends of Orion'),
(98, 'Nova Star', 'Assassin', 'Shadow City'),
(99, 'Raya Quinn', 'Hunter', 'Mystic Realms'),
(100, 'Luna Blaze', 'Hunter', 'Mystic Realms'),
(101, 'lu', 'Detective', 'Dreamwalkers'),
(102, 'Aria Moon', 'Detective', 'Echoes of Eternity'),
(104, 'Martin Smith', 'Assassin', 'Legends of Orion'),
(105, 'Nova Star', 'Adventurer', 'vampire');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_characters`
--
ALTER TABLE `book_characters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_characters`
--
ALTER TABLE `book_characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
