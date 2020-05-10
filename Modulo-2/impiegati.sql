-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 10, 2020 alle 21:13
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

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `impiegati`
--
ALTER TABLE `impiegati`
  ADD PRIMARY KEY (`matricola`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
