-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 17, 2023 at 08:34 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nadolski_baza`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ilosc_rozegranych`
--

CREATE TABLE `ilosc_rozegranych` (
  `id` int(11) NOT NULL,
  `ilosc_meczy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ilosc_rozegranych`
--

INSERT INTO `ilosc_rozegranych` (`id`, `ilosc_meczy`) VALUES
(1, '0 - 4'),
(2, '5 - 9'),
(3, '10 - 14'),
(4, '15 - 19'),
(5, '20 - 25'),
(6, '26 - 30'),
(7, '31 - 35+');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `imie_nazwisko`
--

CREATE TABLE `imie_nazwisko` (
  `id` int(11) NOT NULL,
  `Imie_nazwisko` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `imie_nazwisko`
--

INSERT INTO `imie_nazwisko` (`id`, `Imie_nazwisko`) VALUES
(1, 'daniel bielica'),
(2, 'pawel sokol'),
(3, 'kevin broll'),
(4, 'richard jensen'),
(5, 'aleksander paluszek'),
(6, 'kryspin szczesniak'),
(7, 'emil bergstrom'),
(8, 'pawel olkowski'),
(9, 'jonatan kotzke'),
(10, 'rafal janicki'),
(11, 'erik janza'),
(12, 'jakub szymanski'),
(13, 'robert dadok'),
(14, 'dani pachecko'),
(15, 'blaz vrhove'),
(16, 'mateusz cholewiak'),
(17, 'norbert wojtuszek'),
(18, 'robin kamber'),
(19, 'jean jules mvondo'),
(20, 'krzysztof kolanko'),
(21, 'lukas podolski'),
(22, 'szymon wlodarczyk'),
(23, 'piotr krawczyk'),
(24, 'kanji okunuki'),
(25, 'amadej marosa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lepsza_noga`
--

CREATE TABLE `lepsza_noga` (
  `id` int(11) NOT NULL,
  `lepsza_noga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lepsza_noga`
--

INSERT INTO `lepsza_noga` (`id`, `lepsza_noga`) VALUES
(1, 'lewa'),
(2, 'prawa'),
(3, 'obie'),
(4, 'nieznane');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pilkarze_gornika`
--

CREATE TABLE `pilkarze_gornika` (
  `id` int(11) NOT NULL,
  `imie_nazwisko_id` int(11) NOT NULL,
  `pozycja_id` int(11) NOT NULL,
  `sklad_id` int(11) NOT NULL,
  `wiek_id` int(11) NOT NULL,
  `ilosc_rozegranych_id` int(11) NOT NULL,
  `lepsza_noga_id` int(11) DEFAULT NULL,
  `wartosc_rynkowa_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pilkarze_gornika`
--

INSERT INTO `pilkarze_gornika` (`id`, `imie_nazwisko_id`, `pozycja_id`, `sklad_id`, `wiek_id`, `ilosc_rozegranych_id`, `lepsza_noga_id`, `wartosc_rynkowa_id`) VALUES
(1, 1, 4, 1, 2, 3, 2, 2),
(2, 2, 4, 2, 2, 1, 2, 1),
(3, 3, 4, 2, 2, 3, 2, 2),
(4, 4, 3, 1, 3, 3, 2, 2),
(5, 5, 3, 2, 2, 3, 2, 2),
(6, 6, 2, 1, 3, 5, 3, 2),
(7, 7, 3, 1, 2, 3, 1, 1),
(8, 8, 3, 1, 3, 3, 2, 1),
(9, 9, 2, 2, 4, 3, 2, 3),
(10, 10, 3, 2, 4, 3, 2, 3),
(11, 11, 2, 1, 3, 5, 1, 4),
(12, 12, 3, 2, 3, 6, 2, 1),
(13, 13, 3, 1, 3, 4, 2, 3),
(14, 14, 2, 2, 3, 1, 3, 1),
(15, 15, 2, 2, 4, 1, 2, 2),
(16, 16, 2, 2, 2, 3, 1, 1),
(17, 17, 2, 1, 3, 5, 4, 1),
(18, 18, 2, 2, 2, 4, 2, 2),
(19, 19, 2, 1, 2, 4, 2, 2),
(20, 20, 2, 2, 1, 1, 2, 1),
(21, 21, 1, 1, 5, 5, 1, 2),
(22, 22, 1, 1, 3, 4, 2, 3),
(23, 23, 1, 2, 3, 3, 2, 2),
(24, 24, 1, 1, 2, 3, 2, 2),
(25, 25, 1, 2, 3, 1, 2, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pozycja`
--

CREATE TABLE `pozycja` (
  `id` int(11) NOT NULL,
  `pozycja` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pozycja`
--

INSERT INTO `pozycja` (`id`, `pozycja`) VALUES
(1, 'napastnik'),
(2, 'pomocnik'),
(3, 'obronca'),
(4, 'bramkarz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sklad`
--

CREATE TABLE `sklad` (
  `id` int(11) NOT NULL,
  `miejsce_w_skladzie` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sklad`
--

INSERT INTO `sklad` (`id`, `miejsce_w_skladzie`) VALUES
(1, 'wyjsciowa-11'),
(2, 'rezerwowi');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wartosc_rynkowa`
--

CREATE TABLE `wartosc_rynkowa` (
  `id` int(11) NOT NULL,
  `cena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wartosc_rynkowa`
--

INSERT INTO `wartosc_rynkowa` (`id`, `cena`) VALUES
(1, '0 - 200 tys. $'),
(2, '200 - 400 tys. $'),
(3, '400 - 600 tys. $'),
(4, '600 - 800 tys. $'),
(5, '800 - 1+ mil. $');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wiek`
--

CREATE TABLE `wiek` (
  `id` int(11) NOT NULL,
  `wiek` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wiek`
--

INSERT INTO `wiek` (`id`, `wiek`) VALUES
(1, '16 - 20'),
(2, '21 - 25'),
(3, '26 - 30'),
(4, '31 - 35'),
(5, '36 - 40+');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `ilosc_rozegranych`
--
ALTER TABLE `ilosc_rozegranych`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `imie_nazwisko`
--
ALTER TABLE `imie_nazwisko`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lepsza_noga`
--
ALTER TABLE `lepsza_noga`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pilkarze_gornika`
--
ALTER TABLE `pilkarze_gornika`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pozycja_id` (`pozycja_id`),
  ADD KEY `sklad_id` (`sklad_id`),
  ADD KEY `wiek_id` (`wiek_id`),
  ADD KEY `ilosc_rozegranych_id` (`ilosc_rozegranych_id`),
  ADD KEY `lepsza_noga_id` (`lepsza_noga_id`),
  ADD KEY `wartosc_rynkowa_id` (`wartosc_rynkowa_id`),
  ADD KEY `imie_nazwisko_id` (`imie_nazwisko_id`) USING BTREE;

--
-- Indeksy dla tabeli `pozycja`
--
ALTER TABLE `pozycja`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sklad`
--
ALTER TABLE `sklad`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wartosc_rynkowa`
--
ALTER TABLE `wartosc_rynkowa`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wiek`
--
ALTER TABLE `wiek`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ilosc_rozegranych`
--
ALTER TABLE `ilosc_rozegranych`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `imie_nazwisko`
--
ALTER TABLE `imie_nazwisko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `lepsza_noga`
--
ALTER TABLE `lepsza_noga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pilkarze_gornika`
--
ALTER TABLE `pilkarze_gornika`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pozycja`
--
ALTER TABLE `pozycja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sklad`
--
ALTER TABLE `sklad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wartosc_rynkowa`
--
ALTER TABLE `wartosc_rynkowa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wiek`
--
ALTER TABLE `wiek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pilkarze_gornika`
--
ALTER TABLE `pilkarze_gornika`
  ADD CONSTRAINT `pilkarze_gornika_ibfk_1` FOREIGN KEY (`imie_nazwisko_id`) REFERENCES `imie_nazwisko` (`id`),
  ADD CONSTRAINT `pilkarze_gornika_ibfk_2` FOREIGN KEY (`pozycja_id`) REFERENCES `pozycja` (`id`),
  ADD CONSTRAINT `pilkarze_gornika_ibfk_3` FOREIGN KEY (`sklad_id`) REFERENCES `sklad` (`id`),
  ADD CONSTRAINT `pilkarze_gornika_ibfk_4` FOREIGN KEY (`wiek_id`) REFERENCES `wiek` (`id`),
  ADD CONSTRAINT `pilkarze_gornika_ibfk_5` FOREIGN KEY (`ilosc_rozegranych_id`) REFERENCES `ilosc_rozegranych` (`id`),
  ADD CONSTRAINT `pilkarze_gornika_ibfk_6` FOREIGN KEY (`lepsza_noga_id`) REFERENCES `lepsza_noga` (`id`),
  ADD CONSTRAINT `pilkarze_gornika_ibfk_7` FOREIGN KEY (`wartosc_rynkowa_id`) REFERENCES `wartosc_rynkowa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
