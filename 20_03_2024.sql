-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Kwi 2024, 13:43
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `20.03.2024`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drzewa`
--

CREATE TABLE `drzewa` (
  `IDD` int(11) NOT NULL,
  `gatunek` varchar(30) DEFAULT NULL,
  `rodzaj` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drzewostan`
--

CREATE TABLE `drzewostan` (
  `ID_drzewa` int(11) DEFAULT NULL,
  `ID_ulicy` int(11) DEFAULT NULL,
  `liczba_drzew` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ulice`
--

CREATE TABLE `ulice` (
  `IDU` int(11) NOT NULL,
  `ulica` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `drzewa`
--
ALTER TABLE `drzewa`
  ADD PRIMARY KEY (`IDD`);

--
-- Indeksy dla tabeli `drzewostan`
--
ALTER TABLE `drzewostan`
  ADD KEY `ID_drzewa` (`ID_drzewa`),
  ADD KEY `ID_ulicy` (`ID_ulicy`);

--
-- Indeksy dla tabeli `ulice`
--
ALTER TABLE `ulice`
  ADD PRIMARY KEY (`IDU`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `drzewa`
--
ALTER TABLE `drzewa`
  MODIFY `IDD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ulice`
--
ALTER TABLE `ulice`
  MODIFY `IDU` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `drzewostan`
--
ALTER TABLE `drzewostan`
  ADD CONSTRAINT `drzewostan_ibfk_1` FOREIGN KEY (`ID_drzewa`) REFERENCES `drzewa` (`IDD`),
  ADD CONSTRAINT `drzewostan_ibfk_2` FOREIGN KEY (`ID_ulicy`) REFERENCES `ulice` (`IDU`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
