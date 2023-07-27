-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2023 at 06:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gt_solutions`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarDeudaClientes` ()   BEGIN
    UPDATE contrato
SET debe_mensualidad = 1
WHERE NOT EXISTS (
    SELECT 1
    FROM registro_pago rp
    WHERE rp.id_contrato = contrato.id_contrato
      AND EXTRACT(YEAR_MONTH FROM rp.fecha_pago) = EXTRACT(YEAR_MONTH FROM contrato.fecha_cobro)
);

UPDATE contrato
SET debe_mensualidad = 0
WHERE EXISTS (
    SELECT 1
    FROM registro_pago rp
    WHERE rp.id_contrato = contrato.id_contrato
      AND EXTRACT(YEAR_MONTH FROM rp.fecha_pago) = EXTRACT(YEAR_MONTH FROM contrato.fecha_cobro)
);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarFechasContrato` (IN `contrato_id` INT)   BEGIN
    -- Variables para las fechas actuales y nuevas
    DECLARE fecha_cobro_actual DATE;
    DECLARE fecha_corte_actual DATE;
    DECLARE fecha_cobro_nueva DATE;
    DECLARE fecha_corte_nueva DATE;
    
    -- Obtener las fechas actuales de fecha_cobro y fecha_corte
    SELECT fecha_cobro, fecha_corte
    INTO fecha_cobro_actual, fecha_corte_actual
    FROM contrato
    WHERE id_contrato = contrato_id;
    
    -- Calcular las nuevas fechas sumando un mes a las fechas actuales
    SET fecha_cobro_nueva = DATE_ADD(fecha_cobro_actual, INTERVAL 1 MONTH);
    SET fecha_corte_nueva = DATE_ADD(fecha_corte_actual, INTERVAL 1 MONTH);
    
    -- Actualizar fecha_cobro y fecha_corte del contrato
    UPDATE contrato
    SET fecha_cobro = fecha_cobro_nueva,
        fecha_corte = fecha_corte_nueva
    WHERE id_contrato = contrato_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerSumatoriaMensualidadesPagadas` ()   BEGIN
    SELECT SUM(monto_pago) AS sumatoria_mensualidades, fecha_pago
    FROM registro_pago
    WHERE MONTH(fecha_pago) = MONTH(CURDATE()) AND YEAR(fecha_pago) = YEAR(CURDATE());
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `identificacion` varchar(255) DEFAULT NULL,
  `nombre_cliente` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `coordenadas` varchar(255) DEFAULT NULL,
  `id_tipo_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contrato`
--

CREATE TABLE `contrato` (
  `id_contrato` int(11) NOT NULL,
  `numero_contrato` varchar(255) DEFAULT NULL,
  `numero_facturacion` varchar(255) DEFAULT NULL,
  `TMU` varchar(255) DEFAULT NULL,
  `fecha_instalacion` date DEFAULT NULL,
  `monto_instalacion` double DEFAULT NULL,
  `abono_instalacion` double DEFAULT NULL,
  `mensualidad` double DEFAULT NULL,
  `fecha_cobro` date DEFAULT NULL,
  `fecha_corte` date DEFAULT NULL,
  `debe_mensualidad` tinyint(1) DEFAULT 0,
  `id_cliente` int(11) NOT NULL,
  `activo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipo`
--

CREATE TABLE `equipo` (
  `id_equipo` int(11) NOT NULL,
  `equipo` varchar(255) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registro_pago`
--

CREATE TABLE `registro_pago` (
  `id_pago` int(11) NOT NULL,
  `id_contrato` int(11) NOT NULL,
  `fecha_pago` date DEFAULT NULL,
  `monto_pago` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL,
  `velocidad_contratada` varchar(255) DEFAULT NULL,
  `sector_anclado` varchar(255) DEFAULT NULL,
  `contra_ppoe` varchar(255) DEFAULT NULL,
  `id_contrato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_cliente`
--

CREATE TABLE `tipo_cliente` (
  `id_tipo_cliente` int(11) NOT NULL,
  `descripcion_tipo_cliente` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tipo_cliente`
--

INSERT INTO `tipo_cliente` (`id_tipo_cliente`, `descripcion_tipo_cliente`) VALUES
(3, 'Residencial'),
(4, 'Empresarial');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `nombre_tipo_usuario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `nombre_tipo_usuario`) VALUES
(1, 'super_admin'),
(2, 'administrador'),
(3, 'solo_vista');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_tipo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `correo`, `password`, `id_tipo_usuario`) VALUES
(2, 'Joshua Sandi Guevara', 'joshuasg99@gmail.com', '$2y$10$O0xKhy563EvvdQs7.reFveZL2u.uaSLJ88I2sffV8VumBrKMu4I2u', 1),
(4, 'GT-Solutions', 'gtsolutionscr@gmail.com', '$2y$10$upY1rp6702NJ7vWI8I9LbubcpbV2Q1ZK1qAYqnHVaukzyJoUKmqo6', 2);

-- --------------------------------------------------------

--
-- Table structure for table `wifi`
--

CREATE TABLE `wifi` (
  `id_wifi` int(11) NOT NULL,
  `nombre_wifi` varchar(255) DEFAULT NULL,
  `contra_wifi` varchar(255) DEFAULT NULL,
  `id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `fk_cliente_tipo_cliente` (`id_tipo_cliente`);

--
-- Indexes for table `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`id_contrato`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indexes for table `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id_equipo`),
  ADD KEY `fk_equipo_servicio` (`id_servicio`);

--
-- Indexes for table `registro_pago`
--
ALTER TABLE `registro_pago`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `fk_registro_pago_servicio` (`id_contrato`);

--
-- Indexes for table `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`),
  ADD KEY `id_contrato` (`id_contrato`);

--
-- Indexes for table `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  ADD PRIMARY KEY (`id_tipo_cliente`);

--
-- Indexes for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indexes for table `wifi`
--
ALTER TABLE `wifi`
  ADD PRIMARY KEY (`id_wifi`),
  ADD KEY `fk_wifi_servicio` (`id_servicio`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1231;

--
-- AUTO_INCREMENT for table `contrato`
--
ALTER TABLE `contrato`
  MODIFY `id_contrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;

--
-- AUTO_INCREMENT for table `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1546;

--
-- AUTO_INCREMENT for table `registro_pago`
--
ALTER TABLE `registro_pago`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;

--
-- AUTO_INCREMENT for table `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  MODIFY `id_tipo_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wifi`
--
ALTER TABLE `wifi`
  MODIFY `id_wifi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente_tipo_cliente` FOREIGN KEY (`id_tipo_cliente`) REFERENCES `tipo_cliente` (`id_tipo_cliente`);

--
-- Constraints for table `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE;

--
-- Constraints for table `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `fk_equipo_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`) ON DELETE CASCADE;

--
-- Constraints for table `registro_pago`
--
ALTER TABLE `registro_pago`
  ADD CONSTRAINT `fk_registro_pago_servicio` FOREIGN KEY (`id_contrato`) REFERENCES `contrato` (`id_contrato`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `servicio_ibfk_1` FOREIGN KEY (`id_contrato`) REFERENCES `contrato` (`id_contrato`) ON DELETE CASCADE;

--
-- Constraints for table `wifi`
--
ALTER TABLE `wifi`
  ADD CONSTRAINT `fk_wifi_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`) ON DELETE CASCADE;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `ActualizarDeudaEvent` ON SCHEDULE EVERY 1 DAY STARTS '2023-07-16 18:51:33' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    CALL ActualizarDeudaClientes();
END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
