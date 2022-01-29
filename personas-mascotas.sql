-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-01-2022 a las 14:51:18
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `personas-mascotas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personamascota`
--

CREATE TABLE `personamascota` (
  `idpersona` int(11) NOT NULL,
  `nombrePersona` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellidoPersona` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `nombreMascota` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pesoMascota` varchar(50) CHARACTER SET utf8 NOT NULL,
  `razaMascota` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `personamascota`
--

INSERT INTO `personamascota` (`idpersona`, `nombrePersona`, `apellidoPersona`, `correo`, `nombreMascota`, `pesoMascota`, `razaMascota`) VALUES
(3, 'Yola', 'Corra', 'y@gmail.com', 'hola', '5 kg', 'perro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personamascota`
--
ALTER TABLE `personamascota`
  ADD PRIMARY KEY (`idpersona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personamascota`
--
ALTER TABLE `personamascota`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
