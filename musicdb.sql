-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2018 a las 04:50:51
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `musicdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genres`
--

CREATE TABLE `genres` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Country'),
(3, 'Rap'),
(4, 'Classical'),
(5, 'Indie Rock'),
(6, 'Noise Rock'),
(7, 'Latin Pop Rock'),
(8, 'Classic Rock'),
(9, 'Pop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `songs`
--

CREATE TABLE `songs` (
  `artist` varchar(1024) DEFAULT NULL,
  `title` varchar(1024) DEFAULT NULL,
  `genre` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `songs`
--

INSERT INTO `songs` (`artist`, `title`, `genre`, `duration`) VALUES
('424', 'Gala', 5, 189),
('Colornoise', 'Amalie', 6, 246),
('Los Waldners', 'Horacio', 7, 165),
('Beatles', 'Strawberry Fields Forever', 8, 245),
('Chubby Checker', 'The Twist', 9, 235),
('Santana', 'Smooth', 9, 167),
('Bobby Darin', 'Mack the Knife', 1, 245),
('LeAnn Rhimes', 'How Do I Live', 2, 237),
('LMFAO', 'Party Rock Anthem', 3, 189),
('The Black Eyed Peas', 'I Gotta Feeling', 3, 219),
('Los Del Rio', 'Macarena', 9, 159),
('Olivia Newton-John', 'Physical', 9, 195),
('Debby Boone', 'You Light Up My Life', 9, 245),
('Beatles', 'Hey Jude', 8, 162);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
