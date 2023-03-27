-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2022 a las 23:44:04
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IdCliente` int(11) UNSIGNED NOT NULL,
  `Dni` varchar(8) DEFAULT NULL,
  `Nombres` varchar(244) DEFAULT NULL,
  `Direccion` varchar(244) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`IdCliente`, `Dni`, `Nombres`, `Direccion`, `Estado`) VALUES
(17, '2', 'Juan Guerrero Solis', 'Los Alamos', '1'),
(18, '1', 'Maria Rosas Villanueva', 'Los Laureles 234', '1'),
(19, '3', 'Andres de Santa Cruz', 'Av. La Frontera 347', '1'),
(20, '4', 'Andres Mendoza', 'Chosica, Lurigancho', '1'),
(23, '123', 'Marco Antonio', 'los pinos', '1'),
(24, '123', 'El Messi', 'Pasaje los pinos', '1'),
(25, '123', 'reworld', 'mi casa', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `IdDetalleVentas` int(11) UNSIGNED NOT NULL,
  `IdVentas` int(11) UNSIGNED NOT NULL,
  `IdProducto` int(11) UNSIGNED NOT NULL,
  `Cantidad` int(11) UNSIGNED DEFAULT NULL,
  `PrecioVenta` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`IdDetalleVentas`, `IdVentas`, `IdProducto`, `Cantidad`, `PrecioVenta`) VALUES
(270, 101, 4, 6, 500),
(271, 101, 7, 6, 22),
(272, 102, 3, 6, 800),
(273, 102, 7, 6, 22),
(274, 103, 3, 6, 800),
(275, 103, 7, 6, 22),
(276, 103, 4, 4, 500),
(277, 104, 4, 5, 500),
(278, 104, 7, 3, 22),
(279, 105, 3, 3, 800),
(280, 105, 7, 3, 22),
(281, 106, 4, 5, 500),
(282, 106, 3, 4, 800),
(283, 107, 4, 6, 500),
(284, 107, 7, 6, 22),
(285, 108, 4, 5, 500),
(286, 108, 3, 2, 800),
(287, 109, 3, 5, 800),
(288, 109, 4, 6, 500),
(289, 110, 4, 6, 500),
(290, 110, 7, 6, 22),
(291, 111, 4, 4, 500),
(292, 111, 3, 5, 800),
(293, 112, 4, 6, 500),
(294, 112, 7, 10, 22),
(295, 113, 4, 6, 500),
(296, 113, 7, 10, 22),
(297, 113, 3, 7, 800),
(298, 114, 3, 5, 800),
(299, 114, 7, 5, 22),
(300, 115, 4, 5, 500),
(301, 115, 3, 6, 800),
(302, 116, 4, 4, 500),
(303, 116, 3, 4, 800),
(304, 117, 3, 5, 800),
(305, 117, 4, 5, 500),
(306, 118, 9, 6, 2500),
(307, 119, 4, 4, 500),
(308, 120, 4, 4, 500),
(309, 120, 4, 6, 500),
(310, 121, 9, 6, 2500),
(311, 121, 4, 7, 500),
(312, 122, 4, 5, 500),
(313, 122, 9, 6, 2500),
(314, 123, 9, 5, 2500),
(315, 123, 3, 3, 800),
(316, 124, 7, 7, 22),
(317, 124, 9, 2, 2500),
(318, 125, 4, 4, 500),
(319, 125, 3, 3, 800),
(320, 126, 3, 4, 800),
(321, 127, 4, 6, 500),
(322, 127, 9, 5, 2500),
(323, 128, 4, 6, 500),
(324, 128, 9, 3, 2500),
(325, 129, 4, 6, 500),
(326, 129, 9, 4, 2500),
(327, 130, 4, 4, 500),
(328, 130, 9, 6, 2500),
(329, 131, 4, 2, 500),
(330, 132, 7, 2, 22),
(331, 133, 3, 4, 800),
(332, 133, 9, 5, 2500),
(333, 134, 3, 7, 800),
(334, 134, 9, 9, 2500),
(335, 135, 4, 4, 500),
(336, 135, 7, 5, 22),
(337, 136, 4, 5, 500),
(338, 136, 9, 5, 2500),
(339, 137, 3, 6, 800),
(340, 137, 9, 7, 2500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `IdEmpleado` int(10) UNSIGNED NOT NULL,
  `Dni` varchar(8) NOT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Telefono` varchar(9) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `User` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`IdEmpleado`, `Dni`, `Nombres`, `Telefono`, `Estado`, `User`) VALUES
(1, '123', 'Pedro Hernandez', '988252459', '1', 'emp01'),
(2, '123', 'Roman Riquelme', '988252458', '1', 'Jo46'),
(3, '123', 'Palermo Suarez', '453536458', '1', 'Em22'),
(9, '123', 'reddyyy', '997562329', '1', 'leonex19'),
(11, '123', 'Marco Ruiz', '997411126', '1', 'mrc20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `IdProducto` int(11) UNSIGNED NOT NULL,
  `Nombres` varchar(244) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Stock` int(11) UNSIGNED DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`IdProducto`, `Nombres`, `Precio`, `Stock`, `Estado`) VALUES
(1, 'Disco nissan n300', 150, 95, '1'),
(2, 'Set completo de Hyundai gasolinero', 20, 101, '1'),
(3, 'Volante para Toyota todoterreno', 800, 73, '1'),
(4, 'Plato de tractor fergusson', 500, 49, '1'),
(7, 'Set completo de camion de carga', 22, 31, '1'),
(9, 'Disco nuevo de ford', 2500, 87, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `IdVentas` int(11) UNSIGNED NOT NULL,
  `IdCliente` int(11) UNSIGNED NOT NULL,
  `IdEmpleado` int(10) UNSIGNED NOT NULL,
  `NumeroSerie` varchar(244) DEFAULT NULL,
  `FechaVentas` date DEFAULT NULL,
  `Monto` double DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`IdVentas`, `IdCliente`, `IdEmpleado`, `NumeroSerie`, `FechaVentas`, `Monto`, `Estado`) VALUES
(96, 17, 2, '00000010', '2022-11-02', 2000, '1'),
(97, 17, 2, '00000011', '2022-11-22', 3132, '1'),
(98, 18, 2, '00000012', '2022-11-22', 3654, '1'),
(99, 17, 2, '00000013', '2022-11-22', 3632, '1'),
(100, 17, 2, '00000014', '2022-11-22', 6532, '1'),
(101, 17, 2, '00000015', '2022-11-22', 3132, '1'),
(102, 17, 2, '00000016', '2022-11-22', 4932, '1'),
(103, 17, 2, '00000016', '2022-11-22', 6932, '1'),
(104, 17, 2, '00000017', '2022-11-22', 2566, '1'),
(105, 17, 2, '00000018', '2022-11-22', 2466, '1'),
(106, 17, 2, '00000019', '2022-11-22', 5700, '1'),
(107, 17, 2, '00000020', '2022-11-22', 3132, '1'),
(108, 17, 2, '00000021', '2022-11-22', 4100, '1'),
(109, 17, 2, '00000022', '2022-11-22', 7000, '1'),
(110, 20, 2, '00000023', '2022-11-22', 3132, '1'),
(111, 17, 2, '00000024', '2022-11-22', 6000, '1'),
(112, 17, 2, '00000025', '2022-11-22', 3220, '1'),
(113, 20, 2, '00000025', '2022-11-22', 8820, '1'),
(114, 17, 2, '00000026', '2022-11-22', 4110, '1'),
(115, 17, 2, '00000027', '2022-11-22', 7300, '1'),
(116, 17, 2, '00000028', '2022-11-22', 5200, '1'),
(117, 17, 2, '00000029', '2022-11-22', 6500, '1'),
(118, 17, 2, '00000030', '2022-11-22', 15000, '1'),
(119, 17, 2, '00000031', '2022-11-22', 2000, '1'),
(120, 17, 2, '00000032', '2022-11-22', 5000, '1'),
(121, 17, 2, '00000033', '2022-11-22', 18500, '1'),
(122, 17, 2, '00000034', '2022-11-23', 17500, '1'),
(123, 17, 2, '00000035', '2022-11-23', 14900, '1'),
(124, 17, 2, '00000036', '2022-11-23', 5154, '1'),
(125, 17, 2, '00000037', '2022-11-23', 4400, '1'),
(126, 17, 2, '00000038', '2022-11-23', 3200, '1'),
(127, 20, 2, '00000039', '2022-11-23', 15500, '1'),
(128, 17, 2, '00000040', '2022-11-23', 10500, '1'),
(129, 17, 2, '00000041', '2022-11-23', 13000, '1'),
(130, 17, 2, '00000042', '2022-11-23', 17000, '1'),
(131, 17, 2, '00000043', '2022-11-23', 1000, '1'),
(132, 17, 2, '00000044', '2022-11-23', 44, '1'),
(133, 17, 2, '00000045', '2022-11-23', 15700, '1'),
(134, 17, 2, '00000046', '2022-11-23', 28100, '1'),
(135, 17, 2, '00000047', '2022-11-23', 2110, '1'),
(136, 17, 2, '00000048', '2022-11-23', 15000, '1'),
(137, 17, 2, '00000049', '2022-11-23', 22300, '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`IdDetalleVentas`,`IdVentas`,`IdProducto`),
  ADD KEY `Ventas_has_Producto_FKIndex1` (`IdVentas`),
  ADD KEY `Ventas_has_Producto_FKIndex2` (`IdProducto`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`IdEmpleado`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`IdProducto`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`IdVentas`),
  ADD KEY `Ventas_FKIndex1` (`IdEmpleado`),
  ADD KEY `Ventas_FKIndex2` (`IdCliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IdCliente` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `IdDetalleVentas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `IdEmpleado` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `IdProducto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `IdVentas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`IdVentas`) REFERENCES `ventas` (`IdVentas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `producto` (`IdProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleado` (`IdEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`IdCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
