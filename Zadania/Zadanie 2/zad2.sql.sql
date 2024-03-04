-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
CREATE TABLE `ksiazki` (
  `idksiazki` int(11) NOT NULL,
  `imieautora` text NOT NULL,
  `nazwiskoautora` text NOT NULL,
  `tytul` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `cena` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

INSERT INTO `ksiazki` (`idksiazki`, `imieautora`, `nazwiskoautora`, `tytul`, `cena`) VALUES
(1, 'Peter', 'Griffin', 'PHP. Zaawansowane\r\nprogramowanie', 47.29),
(2, 'Andrzej', 'Szeląg', 'Windows 8 PL.\r\nZaawansowana administracja\r\nsystemem', 49.99),
(3, 'Jacob', 'Seidelin', 'HTML5. Tworzenie gier ', 53.65),
(4, 'Tomasz', 'Kowalski', 'Urządzenia techniki\r\nkomputerowej. Podręcznik\r\ndla technikum', 34.15),
(5, 'Łukasz', 'Woźnicki', 'PHP. Tworzenie\r\nnowoczesnych stron WWW', 29.99);

CREATE TABLE `zamowienia` (
  `idzamowienia` int(11) NOT NULL,
  `idklienta` int(11) NOT NULL,
  `idksiazki` int(11) NOT NULL,
  `data` date NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

INSERT INTO `zamowienia` (`idzamowienia`, `idklienta`, `idksiazki`, `data`, `status`) VALUES
(1, 4, 2, '2012-10-08', 'oczekiwanie'),
(2, 3, 1, '2012-09-08', 'wysłano'),
(3, 8, 1, '2012-10-11', 'wysłano'),
(4, 4, 5, '2012-10-15', 'oczekiwanie'),
(5, 4, 4, '2012-08-12', 'oczekiwanie'),
(6, 3, 2, '2012-10-20', 'wysłano');
--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`idksiazki`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`idzamowienia`);

--
-- AUTO_INCREMENT for table `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `idksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `idzamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;