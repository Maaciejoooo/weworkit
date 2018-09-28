-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Wrz 2018, 19:16
-- Wersja serwera: 10.1.36-MariaDB
-- Wersja PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `dziaa`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employee`
--

CREATE TABLE `employee` (
  `Id` int(11) NOT NULL,
  `Name` tinytext NOT NULL,
  `Surename` tinytext NOT NULL,
  `Mail` varchar(100) NOT NULL,
  `Phone number` int(20) DEFAULT NULL,
  `About` text,
  `Password` tinytext NOT NULL,
  `Nick Name` varchar(25) NOT NULL,
  `Subscription` date NOT NULL,
  `RegistrationTime` date NOT NULL,
  `Points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `employee`
--

INSERT INTO `employee` (`Id`, `Name`, `Surename`, `Mail`, `Phone number`, `About`, `Password`, `Nick Name`, `Subscription`, `RegistrationTime`, `Points`) VALUES
(1, 'Test', '', 'itwework7@gmail.com', NULL, NULL, 'test123', 'test', '0000-00-00', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employerbig`
--

CREATE TABLE `employerbig` (
  `Id` int(11) NOT NULL,
  `Company Name` varchar(20) DEFAULT NULL,
  `Nip` varchar(12) DEFAULT NULL,
  `Mail` varchar(100) DEFAULT NULL,
  `Password` tinytext,
  `About` text,
  `Subscription` date DEFAULT NULL,
  `RegistrationTime` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employersmall`
--

CREATE TABLE `employersmall` (
  `Id` int(11) NOT NULL,
  `Name` tinytext NOT NULL,
  `Surename` tinytext NOT NULL,
  `About` text NOT NULL,
  `Mail` varchar(100) NOT NULL,
  `Password` text NOT NULL,
  `Subscription` date NOT NULL,
  `RegistrationTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`),
  ADD UNIQUE KEY `Mail` (`Mail`),
  ADD UNIQUE KEY `Nick Name` (`Nick Name`),
  ADD UNIQUE KEY `Phone number` (`Phone number`);

--
-- Indeksy dla tabeli `employerbig`
--
ALTER TABLE `employerbig`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indeksy dla tabeli `employersmall`
--
ALTER TABLE `employersmall`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`),
  ADD UNIQUE KEY `Mail` (`Mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `employee`
--
ALTER TABLE `employee`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `employerbig`
--
ALTER TABLE `employerbig`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `employersmall`
--
ALTER TABLE `employersmall`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
