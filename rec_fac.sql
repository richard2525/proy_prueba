-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2020 a las 03:24:39
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rec_fac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `per_id` int(11) NOT NULL,
  `per_ic` varchar(15) NOT NULL,
  `per_type` varchar(10) NOT NULL DEFAULT 'CI',
  `per_country` varchar(50) NOT NULL DEFAULT 'BOLIVIA',
  `per_ic_expedition` varchar(20) NOT NULL,
  `per_name` varchar(50) NOT NULL,
  `per_first_name` varchar(50) NOT NULL,
  `per_last_name` varchar(50) NOT NULL,
  `per_birth_date` date NOT NULL,
  `per_sex` varchar(10) NOT NULL,
  `per_e_mail` varchar(50) NOT NULL,
  `per_image` varchar(100) NOT NULL,
  `per_number_mobile` varchar(20) NOT NULL,
  `per_language` varchar(15) NOT NULL,
  `per_address` varchar(100) NOT NULL,
  `per_marital_status` varchar(20) NOT NULL,
  `per_profession` varchar(20) NOT NULL,
  `per_date_register` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`per_id`, `per_ic`, `per_type`, `per_country`, `per_ic_expedition`, `per_name`, `per_first_name`, `per_last_name`, `per_birth_date`, `per_sex`, `per_e_mail`, `per_image`, `per_number_mobile`, `per_language`, `per_address`, `per_marital_status`, `per_profession`, `per_date_register`) VALUES
(1, '3410919', 'cedula de ', 'BOLIVIA', '', 'agustin', 'suarez', 'casa', '0000-00-00', 'masculino', 'richardsuarezcasa@gmail.com', '', '78880061', 'castellano', 'villa exaltacio n 22', 'soltero', '', ''),
(2, '3410920', 'CI', 'BOLIVIA', '', 'juan', 'suarez ', 'dante', '0000-00-00', '', '', '', '', '', '', '', 'abogado', ''),
(9, '3410921', 'CI', 'BOLIVIA', '', 'KEVIN', 'SUAREZ', 'SUAREZ', '0000-00-00', '', '', '', '', '', '', '', 'CONTADOR', '30-Mar-2020'),
(10, '3410922', 'CI', 'BOLIVIA', '', 'JOEL', 'PEREZ', 'SANCHEZ', '0000-00-00', '', '', '', '', '', '', '', 'INGENIERO CIVIL', '30-Mar-2020'),
(11, '464646', 'CI', 'BOLIVIA', '', 'sssssssssss', 'sssssssss', 'sssssssssss', '0000-00-00', '', '', '', '', '', '', '', 'sssssssssssss', '03-Apr-2020'),
(12, '3410919', 'CI', 'BOLIVIA', '', 'ffffffff', 'fffffffffffff', 'fffffffffffff', '0000-00-00', '', '', '', '', '', '', '', 'sistemas', '03-Apr-2020'),
(13, '3410919', 'CI', 'BOLIVIA', '', 'ffffffff', 'fffffffffffff', 'fffffffffffff', '0000-00-00', '', '', '', '', '', '', '', 'sistemas', '03-Apr-2020'),
(14, '3410920', 'CI', 'BOLIVIA', '', 'dddddd', 'ddddddd', 'ddddddd', '0000-00-00', '', '', '', '', '', '', '', 'dddddddddd', '03-Apr-2020'),
(15, '3410925', 'CI', 'BOLIVIA', '', 'fffff', 'fffffffffff', 'fffffffffffffff', '0000-00-00', '', '', '', '', '', '', '', 'ffffffffffffff', '03-Apr-2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_entreda_salida`
--

CREATE TABLE `registro_entreda_salida` (
  `reg_ent_sal_id` int(11) NOT NULL,
  `per_id` int(11) NOT NULL,
  `reg_in_hour` varchar(15) NOT NULL,
  `reg_out_hour` varchar(15) NOT NULL,
  `reg_fecha` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registro_entreda_salida`
--

INSERT INTO `registro_entreda_salida` (`reg_ent_sal_id`, `per_id`, `reg_in_hour`, `reg_out_hour`, `reg_fecha`) VALUES
(2, 0, '12:45', '12:50', '29-Mar-2020'),
(3, 1, ' 5:06 PM', '11:44 PM', '29-Mar-2020'),
(4, 1, ' 8:34 PM', '11:44 PM', '29-Mar-2020'),
(5, 1, ' 9:21 AM', '11:44 PM', '30-Mar-2020'),
(6, 1, ' 9:21 AM', '11:44 PM', '30-Mar-2020'),
(7, 1, '10:30 AM', '11:44 PM', '30-Mar-2020'),
(8, 1, '10:39 AM', '11:44 PM', '30-Mar-2020'),
(9, 1, '10:42 AM', '11:44 PM', '30-Mar-2020'),
(10, 1, '10:42 AM', '11:44 PM', '30-Mar-2020'),
(11, 1, '10:42 AM', '11:44 PM', '30-Mar-2020'),
(12, 1, '10:42 AM', '11:44 PM', '30-Mar-2020'),
(20, 1, '11:48 PM', '', '31-Mar-2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `target_rbn`
--

CREATE TABLE `target_rbn` (
  `target_id` int(11) NOT NULL,
  `per_id` int(11) NOT NULL,
  `per_ci` int(11) NOT NULL,
  `target_prom` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla de promedios del entrenamiento';

--
-- Volcado de datos para la tabla `target_rbn`
--

INSERT INTO `target_rbn` (`target_id`, `per_id`, `per_ci`, `target_prom`) VALUES
(1, 1, 0, 135.748),
(2, 1, 0, 133.508),
(3, 1, 0, 142.165),
(4, 1, 0, 147.231),
(5, 1, 0, 121.053),
(6, 1, 0, 120.088),
(7, 1, 0, 163.811),
(8, 1, 0, 129.204),
(9, 1, 0, 126.52),
(10, 1, 0, 125.53),
(11, 1, 0, 143.588),
(12, 1, 0, 156.631),
(13, 1, 0, 110.521),
(14, 1, 0, 130.574),
(15, 1, 0, 123.874),
(16, 1, 0, 134.37),
(17, 1, 0, 146.141),
(18, 1, 0, 144.333),
(19, 1, 0, 108.619),
(20, 1, 0, 178.226);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `training`
--

CREATE TABLE `training` (
  `train_id` int(11) NOT NULL,
  `per_id` int(11) NOT NULL,
  `per_ci` varchar(15) NOT NULL,
  `dist` float NOT NULL,
  `dist1` float NOT NULL,
  `dist2` float NOT NULL,
  `dist3` float NOT NULL,
  `dist4` float NOT NULL,
  `dist5` float NOT NULL,
  `dist6` float NOT NULL,
  `dist7` float NOT NULL,
  `dist8` float NOT NULL,
  `dist9` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `training`
--

INSERT INTO `training` (`train_id`, `per_id`, `per_ci`, `dist`, `dist1`, `dist2`, `dist3`, `dist4`, `dist5`, `dist6`, `dist7`, `dist8`, `dist9`) VALUES
(1, 1, '', 160.153, 77.6177, 125.445, 228.178, 214.401, 110.908, 96.1379, 53.0848, 172.292, 119.267),
(2, 1, '', 198.278, 134.629, 133.952, 183.266, 184.564, 188.156, 102.124, 63.2653, 92.8924, 53.9491),
(3, 1, '', 221.473, 114.054, 146.912, 196.367, 178.119, 186.259, 119.258, 91.6856, 114.501, 53.0212),
(4, 1, '', 213.487, 123.208, 153.617, 211.758, 205.137, 177.204, 105.827, 84.7231, 138.523, 58.826),
(5, 1, '', 198.727, 95.1893, 175.422, 160.781, 151.855, 109.245, 115.812, 70.9119, 85.3756, 47.207),
(6, 1, '', 201.274, 108.052, 133.028, 174.092, 143.858, 140.639, 102.528, 61.7454, 94.5939, 41.067),
(7, 1, '', 191.8, 99.2975, 144.045, 264.976, 272.236, 134.76, 108.9, 60.6321, 210.842, 150.62),
(8, 1, '', 162.519, 81.8917, 108.707, 209.77, 207.661, 107.435, 92.581, 39.8811, 160.594, 121),
(9, 1, '', 166.575, 85.1499, 115.244, 205.353, 198.56, 89.1656, 90.6601, 33.1059, 155.821, 125.564),
(10, 1, '', 196.963, 117.618, 124.677, 170.253, 161.815, 174.46, 99.6619, 69.1177, 89.5056, 51.2299),
(11, 1, '', 212.785, 157.137, 160.943, 204.752, 206.573, 190.127, 123.237, 48.2105, 88.3091, 43.8092),
(12, 1, '', 196.001, 99.3, 136.589, 266.242, 243.482, 132.606, 121.701, 42.6878, 183.742, 143.96),
(13, 1, '', 181.511, 81.1542, 138.997, 145.252, 151.916, 112.75, 111.496, 54.5206, 88.411, 39.2046),
(14, 1, '', 168.547, 93.984, 114.089, 205.267, 214.267, 104.995, 88.596, 35.9026, 156.959, 123.135),
(15, 1, '', 158.349, 88.941, 100.902, 196.163, 204.72, 100.688, 80.5062, 32.596, 153.887, 121.989),
(16, 1, '', 165.67, 86.954, 111.759, 220.264, 216.775, 119.501, 97.5833, 41.5993, 161.611, 121.989),
(17, 1, '', 179.202, 98.5203, 127.287, 238.236, 237.829, 134.165, 110.463, 43.1741, 167.007, 125.528),
(18, 1, '', 169.739, 90.3466, 130.519, 237.607, 235.786, 131.21, 109.806, 48.4407, 168.5, 121.372),
(19, 1, '', 172.842, 94.2258, 127.525, 146.467, 151.347, 127.016, 91.3017, 59.7537, 87.5471, 28.1603),
(20, 1, '', 214.149, 117.015, 161.375, 305.189, 265.214, 152.794, 111.349, 75.7793, 227.13, 152.265);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `use_id` int(11) NOT NULL,
  `fun_id` int(11) NOT NULL,
  `use_nick` varchar(50) NOT NULL,
  `use_password` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`use_id`, `fun_id`, `use_nick`, `use_password`, `photo`) VALUES
(1, 121, 'BLANCA', 'blanca', ''),
(2, 222, 'WILFREDO', 'wilfredo', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`per_id`);

--
-- Indices de la tabla `registro_entreda_salida`
--
ALTER TABLE `registro_entreda_salida`
  ADD PRIMARY KEY (`reg_ent_sal_id`);

--
-- Indices de la tabla `target_rbn`
--
ALTER TABLE `target_rbn`
  ADD PRIMARY KEY (`target_id`);

--
-- Indices de la tabla `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`train_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`use_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `person`
--
ALTER TABLE `person`
  MODIFY `per_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `registro_entreda_salida`
--
ALTER TABLE `registro_entreda_salida`
  MODIFY `reg_ent_sal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `target_rbn`
--
ALTER TABLE `target_rbn`
  MODIFY `target_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `training`
--
ALTER TABLE `training`
  MODIFY `train_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `use_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
