-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 19, 2020 at 07:33 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `bd_elio_diego_aaron`
--
CREATE DATABASE IF NOT EXISTS `bd_elio_diego_aaron` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bd_elio_diego_aaron`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categoria`
--

CREATE TABLE `tbl_categoria` (
  `categoria_id` int(11) NOT NULL,
  `categoria_nom` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`categoria_id`, `categoria_nom`) VALUES
(1, 'Halógeno'),
(2, 'LED'),
(3, 'Fluorescente'),
(4, 'Bajo consumo'),
(5, 'Neón');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_estoc`
--

CREATE TABLE `tbl_estoc` (
  `estoc_id` int(11) NOT NULL,
  `estoc_q_max` int(5) NOT NULL,
  `estoc_q_min` int(5) NOT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `lloc_id` int(11) DEFAULT NULL,
  `estoc_actual` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_estoc`
--

INSERT INTO `tbl_estoc` (`estoc_id`, `estoc_q_max`, `estoc_q_min`, `prod_id`, `lloc_id`, `estoc_actual`) VALUES
(55, 250, 35, 1, 1, 123),
(56, 250, 35, 2, 2, 234),
(57, 250, 35, 3, 3, 122),
(58, 250, 35, 4, 4, 213),
(59, 250, 35, 5, 5, 233),
(60, 250, 35, 6, 6, 238),
(61, 250, 35, 7, 7, 246),
(62, 250, 35, 8, 8, 225),
(63, 250, 35, 9, 9, 165),
(64, 250, 35, 10, 10, 98),
(65, 250, 35, 11, 11, 246),
(66, 250, 35, 12, 12, 56),
(67, 250, 35, 13, 6, 78),
(68, 250, 35, 14, 10, 243),
(69, 250, 35, 15, 4, 243),
(70, 250, 35, 16, 10, 249),
(71, 250, 35, 17, 3, 231),
(72, 250, 35, 18, 9, 211);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lloc`
--

CREATE TABLE `tbl_lloc` (
  `lloc_id` int(11) NOT NULL,
  `num_bloc` enum('Bloc 1','Bloc 2','Bloc 3','Bloc 4','Bloc 5','Bloc 6','Bloc 7','Bloc 8') COLLATE utf8_unicode_ci NOT NULL,
  `num_passadis` enum('passadis 1','passadis 2','passadis 3','passadis 4','passadis 5','passadis 6','passadis 7','passadis 8','passadis 9','passadis 10','passadis 11','passadis 12') COLLATE utf8_unicode_ci NOT NULL,
  `num_lleixa` enum('lleixa 1','lleixa 2','lleixa 3','lleixa 4','lleixa 5','lleixa 6','lleixa 7','lleixa 8') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_lloc`
--

INSERT INTO `tbl_lloc` (`lloc_id`, `num_bloc`, `num_passadis`, `num_lleixa`) VALUES
(1, 'Bloc 1', 'passadis 5', 'lleixa 3'),
(2, 'Bloc 5', 'passadis 5', 'lleixa 4'),
(3, 'Bloc 6', 'passadis 4', 'lleixa 8'),
(4, 'Bloc 2', 'passadis 8', 'lleixa 3'),
(5, 'Bloc 4', 'passadis 12', 'lleixa 2'),
(6, 'Bloc 3', 'passadis 8', 'lleixa 7'),
(7, 'Bloc 2', 'passadis 7', 'lleixa 2'),
(8, 'Bloc 7', 'passadis 2', 'lleixa 2'),
(9, 'Bloc 4', 'passadis 6', 'lleixa 4'),
(10, 'Bloc 5', 'passadis 5', 'lleixa 1'),
(11, 'Bloc 3', 'passadis 5', 'lleixa 2'),
(12, 'Bloc 8', 'passadis 3', 'lleixa 5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_producte`
--

CREATE TABLE `tbl_producte` (
  `prod_id` int(11) NOT NULL,
  `prod_nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_foto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prod_preu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serie_id` int(11) DEFAULT NULL,
  `prod_descripcio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prod_descompte` int(2) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_producte`
--

INSERT INTO `tbl_producte` (`prod_id`, `prod_nom`, `prod_foto`, `prod_preu`, `serie_id`, `prod_descripcio`, `prod_descompte`, `id_usuario`) VALUES
(1, 'TB4002/CW/NW/WW/O/T \r\n', NULL, '26,78', 23, 'Pantalla Estanca para Tubos Led. ESPECIFICACIONES Cantidad de Tubos : 2 x 600 mm Cuerpo de policarbonato Disfusor de policarbonato Transparente Casquillo G 13 Color Gris Dimensiones: 125 x 88x 660 mm\r\n', NULL, NULL),
(2, 'L1002/CW/NW/WW/O \r\n', NULL, '53,08', 23, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(3, 'PA3002/CW \r\n', NULL, '53,08', 17, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(4, 'PA2013/CW/NW/WW \r\n', NULL, '53,08', 19, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(5, 'B1013/CW/NW/WW \r\n', NULL, '53,08', 24, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(6, 'B2002/CW/NW/WW \r\n', NULL, '53,08', 18, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(7, 'B4034/CW/NW/WW \r\n', NULL, '53,08', 16, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(8, 'TB2004/CW/NW/WW/O/T \r\n', NULL, '53,08', 25, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(9, 'TB2003/CW/NW/WW/O/T \r\n', NULL, '53,08', 17, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(10, 'TB4002/CW/NW/WW/O/T \r\n', NULL, '53,08', 23, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(11, 'TB6001/CW/NW/WW/O/T \r\n', NULL, '53,08', 16, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(12, 'TB6003/CW/NW/WW/O/T \r\n', NULL, '53,08', 22, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(13, 'L1001/CW/NW/WW/O \r\n', NULL, '53,08', 23, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(14, 'DW1003/CW/WW \r\n', NULL, '53,08', 16, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(15, 'DW2002/CW/WW \r\n', NULL, '53,08', 25, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(16, 'DW2007/NW/WW \r\n', NULL, '53,08', 20, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(17, 'DW2036/CW/NW/WW \r\n', NULL, '53,08', 20, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL),
(18, 'DW3021/CW/WW \r\n', NULL, '53,08', 20, 'Lámpara de 48 LEDs 5630 SMD 22W Consumo 22W, Lúmenes 2100 Dimensiones 540x38x28mm 50.000 HORAS, EQUIVALENTE A 1 X 55 W Anular Reactancia previamente', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_serie`
--

CREATE TABLE `tbl_serie` (
  `serie_id` int(11) NOT NULL,
  `serie_nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categoria_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_serie`
--

INSERT INTO `tbl_serie` (`serie_id`, `serie_nom`, `categoria_id`) VALUES
(16, 'Bombilla estándar', 4),
(17, 'Bombilla dicroica', 4),
(18, 'Bombilla fluorescente compacta', 3),
(19, 'Tubo fluorescente', 3),
(20, 'Bombilla reflectora', 1),
(21, 'Bombilla lineal', 1),
(22, 'Bombilla plana', 2),
(23, 'Tira led', 2),
(24, 'Bombilla tipo foco', 1),
(25, 'Bombilla ojo de buey', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `correo_usuario` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_usuario` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_usuario`, `correo_usuario`, `password_usuario`) VALUES
(1, 'diego@gmail.com', '1234'),
(2, 'aaron@gmail.com', '1234'),
(3, 'elio@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indexes for table `tbl_estoc`
--
ALTER TABLE `tbl_estoc`
  ADD PRIMARY KEY (`estoc_id`),
  ADD KEY `FK_estoc_prod` (`prod_id`),
  ADD KEY `FK_estoc_lloc` (`lloc_id`);

--
-- Indexes for table `tbl_lloc`
--
ALTER TABLE `tbl_lloc`
  ADD PRIMARY KEY (`lloc_id`);

--
-- Indexes for table `tbl_producte`
--
ALTER TABLE `tbl_producte`
  ADD PRIMARY KEY (`prod_id`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`),
  ADD KEY `FK_prod_serie` (`serie_id`);

--
-- Indexes for table `tbl_serie`
--
ALTER TABLE `tbl_serie`
  ADD PRIMARY KEY (`serie_id`),
  ADD KEY `FK_serie_categoria` (`categoria_id`);

--
-- Indexes for table `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_estoc`
--
ALTER TABLE `tbl_estoc`
  MODIFY `estoc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tbl_lloc`
--
ALTER TABLE `tbl_lloc`
  MODIFY `lloc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_producte`
--
ALTER TABLE `tbl_producte`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_serie`
--
ALTER TABLE `tbl_serie`
  MODIFY `serie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_estoc`
--
ALTER TABLE `tbl_estoc`
  ADD CONSTRAINT `FK_estoc_lloc` FOREIGN KEY (`lloc_id`) REFERENCES `tbl_lloc` (`lloc_id`),
  ADD CONSTRAINT `FK_estoc_prod` FOREIGN KEY (`prod_id`) REFERENCES `tbl_producte` (`prod_id`);

--
-- Constraints for table `tbl_producte`
--
ALTER TABLE `tbl_producte`
  ADD CONSTRAINT `FK_prod_serie` FOREIGN KEY (`serie_id`) REFERENCES `tbl_serie` (`serie_id`),
  ADD CONSTRAINT `tbl_producte_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`);

--
-- Constraints for table `tbl_serie`
--
ALTER TABLE `tbl_serie`
  ADD CONSTRAINT `FK_serie_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `tbl_categoria` (`categoria_id`);
