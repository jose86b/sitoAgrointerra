-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-07-2022 a las 02:09:23
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agro_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`content`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`user_id`, `content`) VALUES
(6, '[{\"id\":\"2\",\"size\":\"LARGE\",\"quantity\":1},{\"id\":\"2\",\"size\":\"MEDIUM\",\"quantity\":16}]'),
(8, '[{\"id\": \"1\", \"size\": \"MEDIUM\", \"quantity\": 1}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `costumer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `costumer_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(80, 6),
(70, 8),
(71, 8),
(72, 8),
(73, 8),
(74, 8),
(75, 8),
(76, 8),
(77, 8),
(78, 8),
(79, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_items`
--

CREATE TABLE `orders_items` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `size` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders_items`
--

INSERT INTO `orders_items` (`order_id`, `item_id`, `quantity`, `size`) VALUES
(64, 1, 3, 'LARGE'),
(65, 1, 1, 'LARGE'),
(65, 1, 1, 'MEDIUM'),
(66, 1, 3, 'MEDIUM'),
(67, 1, 1, 'MEDIUM'),
(68, 1, 3, 'LARGE'),
(68, 1, 3, 'MEDIUM'),
(69, 2, 3, 'MEDIUM'),
(69, 1, 1, 'LARGE'),
(70, 1, 1, 'LARGE'),
(70, 1, 2, 'MEDIUM'),
(70, 1, 3, 'SMALL'),
(70, 3, 4, 'LARGE'),
(71, 1, 2, 'LARGE'),
(71, 1, 2, 'MEDIUM'),
(71, 3, 2, 'LARGE'),
(71, 2, 2, 'LARGE'),
(71, 2, 2, 'MEDIUM'),
(71, 1, 2, 'SMALL'),
(71, 3, 1, 'SMALL'),
(72, 2, 1, 'LARGE'),
(73, 3, 1, 'LARGE'),
(74, 3, 1, 'LARGE'),
(75, 3, 1, 'SMALL'),
(76, 1, 1, 'LARGE'),
(77, 1, 1, 'LARGE'),
(78, 1, 2, 'MEDIUM'),
(79, 1, 2, 'LARGE'),
(80, 2, 4, 'MEDIUM'),
(80, 2, 1, 'SMALL'),
(80, 3, 1, 'LARGE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `title`, `description`) VALUES
(1, 'Lixiviado', 'Lixiviado 100% Orgánico '),
(2, 'Tierra de Lixiviado', 'Tierra de Lixiviado 100% Organica.'),
(3, 'Mejorador de suelo', 'Mejorador de suelo Lixiviado + Leonardita '),
(4, 'Leonarditas', 'Leonardita Sustrato mineral de carbon '),
(5, '...', '...'),
(6, '...', '...'),
(7, 'hola', 'aaa'),
(8, 'hola', 'aaa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('Z3otKhdhiAkEVPrBMU0mddMtEwCYVFjX', 1657939896, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":6},\"msg\":false,\"multer\":0,\"flash\":{}}'),
('oFdlFU9H1Rk9iO1m9YSaaIzEQcgxnBp9', 1657860996, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":6},\"flash\":{},\"msg\":false,\"multer\":0}'),
('ycsVQj5Hv26KBdpXGPZC6FQDR62tdNvF', 1658016517, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sizes`
--

CREATE TABLE `sizes` (
  `product_id` int(11) DEFAULT NULL,
  `size` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sizes`
--

INSERT INTO `sizes` (`product_id`, `size`, `price`, `stock`) VALUES
(1, 'LARGE', '10.50', 9),
(1, 'MEDIUM', '9.50', 7),
(1, 'SMALL', '8.50', 3),
(2, 'LARGE', '10.00', 4),
(2, 'MEDIUM', '9.25', 11),
(2, 'SMALL', '7.10', 0),
(3, 'LARGE', '11.00', 4),
(3, 'MEDIUM', '9.25', 0),
(3, 'SMALL', '6.10', 20),
(4, 'LARGE', '11.50', 11),
(5, 'LARGE', '9.00', 22),
(6, 'LARGE', '10.50', 0),
(4, 'MEDIUM', '10.00', 22),
(5, 'MEDIUM', '8.00', 10),
(6, 'MEDIUM', '9.50', 0),
(4, 'SMALL', '9.50', 8),
(5, 'SMALL', '7.00', 3),
(6, 'SMALL', '7.50', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `password`, `email`) VALUES
(1, NULL, 'Maria Almeida', '$2b$10$vNPDPAva//83gbyad.lIfuo7buBxwvlOuJgWYdJi7PH/5AZ.h/rrm', 'user@user.com'),
(2, NULL, 'Maria', '$2b$10$./ejLdYX5K8nKF8C1MdrAOPq5MILYUccGke/AmJqPjxrI0w5uqN/.', 'admin@assemblerschool.com'),
(3, NULL, 'Betty Boop', '$2b$10$Nf8LdZP/xa0jlVNfP6g5a.Mzsa21KME8l.QHnhCpU4P1ShQTyNnna', 'betty@boop.com'),
(4, NULL, 'Maria12', '$2b$10$AcLQmQ6RuXSAN.mql0/jre2HCYwvd8Jv1rP3fb2jFteH.v8pwrgS.', 'admin@assemblerschool.com'),
(5, NULL, 'Alfred Garcia', '$2b$10$fNyGBL3Wkkv1cWXlYePreOh1cHjHIhEGcKXXlrKqrI.SRkgDe2cdW', 'alfred@garcia.com'),
(6, 'admin', 'Jose Manuel', '$2b$10$8xFWI5uq870C0RuewWZ3l.p2i4y07BoesPWHIqz8rsWbI5Z8p.Q9O', 'admin@admin.com'),
(7, 'employee', 'Empleado', '$2b$10$vNPDPAva//83gbyad.lIfuo7buBxwvlOuJgWYdJi7PH/5AZ.h/rrm', 'employee@employee.com'),
(8, NULL, 'Guilherme Carra', '$2b$10$f0rgUInqHFsrAyfK/vwPtO.psMpygisDA9n9ifQEDofaaf/WKkXzm', 'gui_gc@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `user_id_idx` (`costumer_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indices de la tabla `sizes`
--
ALTER TABLE `sizes`
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `costumer_id` FOREIGN KEY (`costumer_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `sizes`
--
ALTER TABLE `sizes`
  ADD CONSTRAINT `sizes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
