-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2024 a las 18:27:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_usuario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_comentario`
--

CREATE TABLE `tbl_comentario` (
  `Id_Comentario` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Comentario` text NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_comentario`
--

INSERT INTO `tbl_comentario` (`Id_Comentario`, `Nombre`, `Comentario`, `Fecha`) VALUES
(1, 'jose', 'holaa', '2024-06-22'),
(2, 'jose', 'holaa', '2024-06-22'),
(3, 'juan jose', 'ola', '2024-06-22'),
(4, 'eee', 'oooooooooooooooo', '2024-06-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_comentarios`
--

CREATE TABLE `tbl_comentarios` (
  `Nombre` varchar(255) NOT NULL,
  `Comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_movimientos`
--

CREATE TABLE `tbl_movimientos` (
  `Id_movimiento` int(11) NOT NULL,
  `Id_producto` int(11) NOT NULL,
  `Fecha_movimiento` date NOT NULL,
  `Tipo_movimiento` enum('entrada','salida') NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_movimientos`
--

INSERT INTO `tbl_movimientos` (`Id_movimiento`, `Id_producto`, `Fecha_movimiento`, `Tipo_movimiento`, `Cantidad`) VALUES
(10, 0, '2004-05-21', 'entrada', 420),
(103, 0, '0000-00-00', '', 0),
(104, 10, '2024-06-26', 'salida', 10),
(105, 10, '2024-06-26', 'salida', 10),
(106, 10, '2024-06-26', 'salida', 10),
(107, 223, '2024-06-13', 'salida', 7),
(108, 225, '2024-06-06', 'entrada', 5),
(109, 225, '2024-06-07', 'salida', 8),
(110, 223, '2024-06-20', 'salida', 420),
(111, 227, '2024-06-19', 'salida', 10),
(112, 227, '2024-06-19', 'salida', 10),
(113, 10, '2024-06-13', 'salida', 10),
(114, 10, '2024-06-13', 'salida', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_productos`
--

CREATE TABLE `tbl_productos` (
  `Id_producto` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Descripción` text NOT NULL,
  `Precio_costo` decimal(10,0) NOT NULL,
  `Precio_venta` decimal(10,0) NOT NULL,
  `Stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_productos`
--

INSERT INTO `tbl_productos` (`Id_producto`, `Nombre`, `Descripción`, `Precio_costo`, `Precio_venta`, `Stock`) VALUES
(223, 'juan jose', 'hjkl;', 563, 565, 813),
(224, 'juan jose', 'hjkl;', 563, 565, 1240),
(225, 'juan jose', 'hjkl;', 563, 565, 1237),
(226, 'Pollop', 'Pollo rey', 200, 500, 1000),
(227, 'Pollop', 'Pollo rey', 200, 500, 980),
(228, 'Crema', 'cremaaa', 200, 400, 1200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `Codigo` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(200) NOT NULL,
  `Correo_Electronico` varchar(200) NOT NULL,
  `Password` decimal(10,0) NOT NULL,
  `Mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`Codigo`, `Nombre`, `Apellido`, `Correo_Electronico`, `Password`, `Mensaje`) VALUES
(9, 'juan jose', 'hhaxbksn', 'jjjd@wjwkj', 123465, 'aaaaaaaaaaaaaaa');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_comentario`
--
ALTER TABLE `tbl_comentario`
  ADD PRIMARY KEY (`Id_Comentario`);

--
-- Indices de la tabla `tbl_comentarios`
--
ALTER TABLE `tbl_comentarios`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `tbl_movimientos`
--
ALTER TABLE `tbl_movimientos`
  ADD PRIMARY KEY (`Id_movimiento`);

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`Id_producto`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`Codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_comentario`
--
ALTER TABLE `tbl_comentario`
  MODIFY `Id_Comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_movimientos`
--
ALTER TABLE `tbl_movimientos`
  MODIFY `Id_movimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  MODIFY `Id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
