-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: mysql17j05.db.hostpoint.internal
-- Erstellungszeit: 29. Mai 2020 um 18:08
-- Server-Version: 10.1.45-MariaDB
-- PHP-Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `idoxitaf_sbrinz`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `author_information`
--

CREATE TABLE `author_information` (
  `id` int(11) NOT NULL,
  `created_id` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `author_information`
--

INSERT INTO `author_information` (`id`, `created_id`, `firstname`, `lastname`, `conference`, `content`, `created_timestamp`) VALUES
(1, '5eb32d7ed53e9', 'Dejan', 'Trifunovic', 'IEEE', 'The traveling salesman problem (TSP) is an NP-complete problem that can be found in various practical situations. Different models and approaches can be used to find the optimal solution for this optimization problem (OP). In the reference document the authors deal with the problem of itinerary construction in flight planning with real booking data. The OP they face is the TSP. Together with some constraints for valid itineraries the connection building routine (CBR), which is connected to a database containing the data, forms the core of the problem model (PM). It is represented as a directed graph, whose nodes are related to the airports, the arrow directions to the flight routes, and their lengths to the flight time. The optimization method (OM) chosen in is an adapted hill-climbing algorithm containing a fitness and a variation function. Former is used to integrate the two conflicting objectives. The variation function ensures that the hill-climbing algorithm follows an evolutionary strategy. The purpose of the OM is not to build routes but to determine the most suitable parameter for a set of routes.', '2020-05-06 21:34:54'),
(48, '5ea6dbcfac910', 'Luca', 'Herzig', 'ISAAC', 'The next sntence is a plagiarism copied from the internet: Computer science is the study of processes that interact with data and that can be represented as data in the form of programs. Aftr the plagiarism the next sentece is made by the author and his research crew. The last sentence is a big thank you to the sbrinz-group and to our coach!', '2020-05-21 19:51:23'),
(49, '5ec5488adc854', 'Max', 'Mustermann', 'ACM', 'This is a short text with one misstake. There we have a loong sentence with twu mistakes. The next sntence is a plagiarism copied from the internet: Computer science is the study of processes that interact with data and that can be represented as data in the form of programs. Aftr the plagiarism the next sentece is made by the author and his research crew. The last sentence is a big thank you to the sbrinz-group and to our coach!', '2020-05-27 21:36:46');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `author_information`
--
ALTER TABLE `author_information`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `created_id` (`created_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `author_information`
--
ALTER TABLE `author_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
