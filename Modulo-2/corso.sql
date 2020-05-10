-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 10, 2020 alle 21:34
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corso`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `impiegati`
--

CREATE TABLE `impiegati` (
  `matricola` varchar(10) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `filiale` varchar(20) NOT NULL,
  `stipendio` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `impiegati`
--

INSERT INTO `impiegati` (`matricola`, `cognome`, `filiale`, `stipendio`) VALUES
('5698', 'Rossi', 'Roma', '64'),
('5998', 'Neri', 'Milano', '64'),
('7309', 'Neri', 'Napoli', '35'),
('9553', 'Rossi', 'Roma', '44');

-- --------------------------------------------------------

--
-- Struttura della tabella `maternita`
--

CREATE TABLE `maternita` (
  `madre` varchar(50) NOT NULL,
  `figlio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `maternita`
--

INSERT INTO `maternita` (`madre`, `figlio`) VALUES
('Luisa', 'Maria'),
('Luisa', 'Luigi'),
('Anna', 'Olga'),
('Anna', 'Filippo'),
('Maria', 'Andrea'),
('Maria', 'Aldo');

-- --------------------------------------------------------

--
-- Struttura della tabella `paternita`
--

CREATE TABLE `paternita` (
  `padre` varchar(50) NOT NULL,
  `figlio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `paternita`
--

INSERT INTO `paternita` (`padre`, `figlio`) VALUES
('Sergio', 'Franco'),
('Luigi', 'Olga'),
('Luigi', 'Filippo'),
('Franco', 'Andrea'),
('Franco', 'Aldo');

-- --------------------------------------------------------

--
-- Struttura della tabella `persone`
--

CREATE TABLE `persone` (
  `nome` varchar(50) NOT NULL,
  `eta` int(11) NOT NULL,
  `reddito` float NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `persone`
--

INSERT INTO `persone` (`nome`, `eta`, `reddito`, `ID`) VALUES
('Andrea', 27, 21, 7),
('Maria', 55, 42, 8),
('Anna', 50, 35, 9),
('Filippo', 26, 30, 10),
('Luigi', 50, 40, 11),
('Franco', 60, 20, 12),
('Olga', 30, 41, 13),
('Sergio', 85, 35, 14),
('Luisa', 75, 87, 15);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `impiegati`
--
ALTER TABLE `impiegati`
  ADD PRIMARY KEY (`matricola`);

--
-- Indici per le tabelle `persone`
--
ALTER TABLE `persone`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `persone`
--
ALTER TABLE `persone`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
