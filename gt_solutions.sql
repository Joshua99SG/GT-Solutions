-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 05:24 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `precio_residencial`
--

CREATE TABLE `precio_residencial` (
  `id_precio` int(11) NOT NULL,
  `velocidad` int(11) DEFAULT NULL,
  `precio` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `precio_residencial`
--

INSERT INTO `precio_residencial` (`id_precio`, `velocidad`, `precio`) VALUES
(1, 2, 15000),
(2, 3, 20000),
(3, 4, 25900),
(4, 10, 29900),
(5, 15, 35000),
(6, 20, 39900),
(7, 30, 49900),
(8, 50, 59900),
(9, 100, 69900);

-- --------------------------------------------------------

--
-- Table structure for table `tblcliente`
--

CREATE TABLE `tblcliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `velocidad_contratada` int(11) DEFAULT NULL,
  `numero_contrato` varchar(255) DEFAULT NULL,
  `coordenadas` varchar(255) DEFAULT NULL,
  `contrasena_ppoe` varchar(255) DEFAULT NULL,
  `equipo_1` varchar(255) DEFAULT NULL,
  `mac_address_1` varchar(255) DEFAULT NULL,
  `equipo_2` varchar(255) DEFAULT NULL,
  `mac_address_2` varchar(255) DEFAULT NULL,
  `equipo_3` varchar(255) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `wifi_nombre` varchar(255) DEFAULT NULL,
  `wifi_contrasena` varchar(255) DEFAULT NULL,
  `sector_anclado` varchar(255) DEFAULT NULL,
  `cedula` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `id_tipo_cliente` int(11) NOT NULL,
  `fecha_instalacion` date DEFAULT NULL,
  `monto_instalacion` double NOT NULL DEFAULT 0,
  `mensualidad` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `tblcliente`
--

INSERT INTO `tblcliente` (`id_cliente`, `nombre_cliente`, `telefono`, `localidad`, `velocidad_contratada`, `numero_contrato`, `coordenadas`, `contrasena_ppoe`, `equipo_1`, `mac_address_1`, `equipo_2`, `mac_address_2`, `equipo_3`, `serie`, `wifi_nombre`, `wifi_contrasena`, `sector_anclado`, `cedula`, `correo`, `id_tipo_cliente`, `fecha_instalacion`, `monto_instalacion`, `mensualidad`) VALUES
(584, 'Paula Annette White', '83391131', 'Vista al mar', 20, '20221001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 114),
(585, 'MP-Gabiruski Corporation S.A', '83981165', 'Mal pais', 20, '20221010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 203),
(586, 'MAL PAIS BUSINESS ADMINISTRATION S.A (paga fabio casa biba)', '72911222', 'Mal pais', 20, '20221002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 172),
(587, 'MAL PAIS MAINTENANCE COMPANY S.A.', '83219900', 'Mal pais', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0),
(588, 'Zodiac Mountain S.A.', '83511208', 'Mal pais', 20, '20221003\r\n20221005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 252),
(589, 'CASA TECAL', '26400880', 'Pausaleku', 20, '20221004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 355),
(590, 'RC Holdings LLC Limitada', '26400611', 'Pausaleku', 20, '20221005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0),
(591, 'AKWABA LIMITADA', '87295233', NULL, 10, '20221006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0),
(592, 'David Gonzalez Quesada', '88304749', 'Panorama', 10, '20221007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 172),
(593, 'Villa Forrest Veintiseis Limitada', '9.72509E+11', 'Panorama', 50, '20221008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 517),
(594, 'TRES CIENTO UNO SETECIENTOS SIETE MIL DOSCIENTOS SESENTA SOCIEDAD ANONIMA', '88206261', 'Panorama', 20, '20221009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 114),
(595, '3-102-739344 LTDA', '22888888', 'Garza', 5, '20221011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 269),
(596, 'Carole Priggione', '85504670', 'Garza', 20, '20221012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 201),
(597, 'SABOR Y SENTIMIENTO SOCIEDAD AN�NIMA (cristopher loss)', '2640 0045', NULL, 20, '20221013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 177),
(598, 'ELI AND THE BOYS RETREAT SRL', '87090089', NULL, 40, '20221014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 201),
(599, 'FINCA CRIVELLI LIMITADA (DANIEL PAGA EL SERVICIO)', 'c xz', 'Garza', 20, '20221015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 218),
(600, 'HERN INDUSTRIES LLC SOCIEDAD DE RESPONSABILIDAD LIMITADA', '83773066', NULL, 5, '20221016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 170),
(601, 'MP-MARGOT WINTER (BOUGANBILIA) ST THUNDER PAGA', '88388911', 'Garza', 20, '20221017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 143),
(602, 'Martin Tait', '3455260286', 'Garza', 30, '20221018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0),
(603, 'Richard Bryant', '83215132', 'Garza', 20, '20221019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 172),
(604, 'SHUKRANI INVESTMENT SRL', '83114920', 'Garza', 20, '20221020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0),
(605, 'Thomas Drummond Walker', '17579991305', 'Garza', 10, '20221021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 143),
(606, 'Venus de Garza', '84115242', 'Garza', 20, '20221022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 154),
(607, 'Arenal Compuesto Zeta S.A.', '87031561', 'Tilaran', 20, '20221023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 102),
(608, 'Rancho Margot S.A', '89112108', 'Tilaran', 20, '20221024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0),
(609, 'MALA MUJER LIMITADA', '88172816', 'Cerro Azul', 15, '20221025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 172),
(610, 'Lloyd George Standish', '40000977', 'cerro azul', 10, '20221026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0),
(611, 'Carlotta Jovino', '85166245', 'Cerro Azul', 15, '20221027', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 229),
(612, 'HACIENDA VALLE SOLO SRL', '87126519', 'Vista al Mar', 30, '20221028', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 315),
(613, 'Asociacion del Santo Nombre', '87379595', 'Vista al Mar', 20, '20221029', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 269),
(614, 'Gary Chambers Macdonald (paga 506942244)', '83854080 / 84038326', 'Garza', 30, '20221030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 172),
(615, 'MP-Scott Ford', '89916832', NULL, 3, '20221031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 167),
(616, 'luis Orlando Rojas', '8640-3282', 'Los Angeles', 10, '20201201', '10.078495, -85.393794', 'ZK7sRxuZ', 'NBE-5AC-Gen2', 'E063DAF205E9', 'hAP ac lite', 'E063DAF205E9', 'ETH-SP-G2', '20044104612.0', 'Orlando', 'Dylan2009', 'GT1', NULL, NULL, 3, NULL, 0, 0),
(617, 'Royner Rodriguez Castro', '8462-0817', 'Los Angeles', 10, '20201202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(618, 'Osvaldo Sibaja Soto', '8413-1820', 'Los Angeles', 6, '20201203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(619, 'Walter Cruz Fonseca', '8345-7587', 'Los Angeles', 10, '20201204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(620, 'Maria Eugenia Castro Villalobos', '8812-5847', 'Los Angeles', 6, '20201205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(621, 'Jorge Brayan Sandoval Vega', '8698-2661', 'Los Angeles', 6, '20201206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(622, 'Maria De los Angeles Esquivel', '8924-7821', 'Los Angeles', 10, '20201207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(623, 'Yesenia Gonzalez Vargas', '8512-9170', 'Pita rayada', 10, '20201208', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(624, 'Enid Venegas Acosta', '8916-9987', 'Los Angeles', 10, '20201209', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(625, 'Miguel Angel Mendoza Perez', '2659-9321', 'Los Angeles', 10, '20201210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(626, 'Christian Carrillo Torres', '8832-4526', 'Los Angeles', 20, '20210101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(627, 'Cristian Vega Carrillo', '6070-0590', 'Pita rayada', 6, '20210102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(628, 'Maikol Vargas Carrillo', '8440-9535', 'Pita rayada', 20, '20210103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(629, 'Rosa Irene Castillo Alfaro', '8430-7777', 'El Ceiba', 6, '20210104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(630, 'Francisco Mesen Fernandez', '8313-1247', 'Pita rayada', 6, '20210105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(631, 'Blanca Rosa Venegas ENID', '8526-0091', 'Los Angeles', 10, '20210106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(632, 'Luigi Pellegrini', '8416-4360', 'Pita rayada', 6, '20210107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(633, 'Magaly Castillo Castillo', '8486-7963', 'Pita rayada', 6, '20210108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(634, 'Emilce Camacho Arquiar', '8604-0074', 'Huacas', 6, '20210109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(635, 'Gina Sandoval', '6101-0096', 'Pilangosta', 6, '20210110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(636, 'Leydi Carrillo cortes', '84703211', 'Pita rayada', 10, '20210111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(637, 'Jennifer Carrillo Picado', '8681-2337', 'Pita rayada', 10, '20210112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(638, 'Antony Elizondo Hernandez', '8498-0782', 'Pita rayada', 10, '20210113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(639, 'Mercedes Vasquez Rodriguez', '8925-3271', 'Huacas', 10, '20210114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(640, 'Alejandra Lara Vasquez', '8370-1198', 'Los Angeles', 6, '20210115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(641, 'Roger Cuesta Grande', 'REGALIA', 'Cuesta Grande', 3, '20210116', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(642, 'Keiryn Iveth Venegas Rodriguez', '8520-4255', 'Los Angeles', 10, '20210117', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(643, 'Dennis Vargas Ag�ero', '6006-0845', 'Pita rayada', 6, '20210118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(644, 'Katiana Esquivel Venegas', '8707-9129', 'Los Angeles', 10, '20210119', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(645, 'Diego Castro', '8367-2326', 'Los Angeles', 6, '20210120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(646, 'Israel Retana', '7093-0626', 'Pita rayada', 3, '20210121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(647, 'Jairo Carrillo Gomez', '8399-7934', 'Huacas', 10, '20210122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(648, 'Escuela Los Angeles', '8536-0984', 'Los Angeles', 6, '20210123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(649, 'Jorge Armando Esquivel', '8701-2909', 'Lapas', 3, '20210124', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(650, 'Victor Cerros ', 'REGALIA', 'Los Cerrillos', 2, '20210125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(651, 'Doris Salazar Barrantes', '8759-8079', 'Pita rayada', 6, '20210126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(652, 'Ruben Venegas Zu�iga', '8303-4138', 'Pita rayada', 10, '20210127', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(653, 'Jairo Rojas Vargas', '8314-6543', 'Lapas', 10, '20210128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(654, 'Danilo Sanchez Cruz', '8302-1335', 'Lapas', 10, '20210128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(655, 'Leida Cruz Moreno', '8701-2456', 'Lapas', 10, '20210129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(656, 'Flory Castillo Badilla', '8989-2442', 'Lapas', 6, '20210130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(657, 'Veronica Sanchez Mejias', '8910-4928', 'Pita rayada', 10, '20210131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(658, 'nan', 'nan', 'nan', 6, '20210132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(659, 'Alfonso Gutierrez Sibaja', '8879-9227', 'Huacas', 20, '20210133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(660, 'Adilio Gutierrez Ramirez', '8821-4430', 'Huacas', 10, '20210134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(661, 'Marcia Pineda Castrillo', '8996-5931', 'Arenas', 10, '20210135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(662, 'Melvin Fonseca Cruz', '8378-0291', 'Huacas', 20, '20210136', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(663, 'Leydi Carrillo cortes', '84703211', 'Pita rayada', 6, '20210137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(664, 'Yanori Sandoval Perez', '8436-0746', 'Pilangosta', 6, '20210138', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(665, 'Lilly Campos Garcia', '8822-2622', 'Arenas', 10, '20210139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(666, 'Yeimy Porras Boza', '6036-7844', 'Los Angeles', 20, '20210140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(667, 'Jhon Bradley', '8702-4855', 'Huacas', 20, '20210141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(668, 'Elena Bermudez Villalobos', '8920-4610', 'Los Angeles', 3, '20210142', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(669, 'Victor Salazar Vargas', '8699-4130', 'La Libertad', 10, '20210143', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(670, 'Julio Cesar Poveda Orozco', '8914-1943', 'Lapas', 10, '20210144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(671, 'Laura Mireya Corrales Vasquez', '6041-0017', 'Pita rayada', 10, '20210145', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(672, 'Edwin Barrantes Elizondo', '8372-9259', 'Huacas', 10, '20210146', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(673, 'Juan elizondo Badilla', '8850-9432', 'huacas', 3, '20210147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(674, 'Diego Abarca Espinoza', '8585-6130', 'Huacas', 6, '20210148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(675, 'nan', 'nan', 'nan', 6, '20210149', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(676, 'Marcos Batista', '8320-6234', 'Huacas', 3, '20210150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(677, 'Luis Guillermo Bonilla Pizarro', '6012-4173', 'Los Angeles', 6, '20210151', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(678, 'Dixy Granados Cardenas', '8333-1184', 'Los Angeles', 10, '20210152', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(679, 'Leonardo Fonseca Rodriguez', '8751-4345', 'Huacas', 3, '20210153', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(680, 'Bernal Sanchez Uma�a', '8788-8856', 'Los Angeles', 3, '20210154', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(681, 'Rodney Villalobos Mu�oz', '8467-1110', 'Los Angeles', 6, '20210155', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(682, 'Adriana Perez Perez', '8410-2030', 'Matambuguito', 6, '20210156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(683, 'Heilyn Perez Perez', '6049-9740', 'Matambuguito', 10, '20210157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(684, 'Marcela Elizondo Prendas', '8380-1124', 'Huacas', 6, '20210158', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(685, 'Mario Alberto Carrillo Vasquez', '8656-6047', 'Los Angeles', 3, '20210159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(686, 'Maria Yesenia Hernandez O.', '8400-5154', 'Matambuguito', 3, '20210160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(687, 'Johana Hernandez Obregon', '8564-5255', 'Matambuguito', 3, '20210161', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(688, 'Carlos Jimnez (ESTRADA)', 'REGALIA', 'Carrillo', 3, '20210162', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(689, 'Karen Ruiz Zu�iga', '8552-2421', 'Matambuguito', 3, '20210163', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(690, 'Katia Hernandez', '8801-6723', 'Matambuguito', 3, '20210164', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(691, 'Franz werkstetter', 'REGALIA', 'Amaranta', 10, '20210165', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(692, 'Maria del Carmen Gomez E.', '8578-6258', 'La Libertad', 3, '20210166', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(693, 'Marina Mendoza Camacho', '6342-7011', 'La Libertad', 10, '20210167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(694, 'Johan Sandstrom', '46705516200', 'Huacas', 20, '20210168', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(695, 'Diego Mendoza', '8719-2108', 'Esterones', 10, '20210169', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(696, 'Rod Bosse', '864 2054054', 'Carrillo', 10, '20210170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(697, 'Casey winn ( Antiguo pacho)', '86137675', 'Buena Vista', 10, '20210171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(698, 'Oscar Enrique Coto Carrillo', '8741-2561', 'Huacas', 10, '20210172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(699, 'Henry Garcia Jimenez', '8891-8731', 'Cuesta Grande', 20, '20210173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(700, 'Fotseu Marion Aude Murielle', '.41 79 254 76 37.', 'Amaranta', 20, '20210174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(701, 'Jordan Frances', '85238585', 'Samara', 3, '20210175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(702, 'Filander Vasquez', '8703-5970', 'Los Angeles', 6, '20210176', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(703, 'Carlos Vargas', 'nan', 'Buena Vista', 10, '20210177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(704, 'Alberto Pacho', '6014-0402', 'Buena Vista', 6, '20210178', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(705, 'Jhon Noska', '.+1(757)870-9062', 'Samara', 10, '20210179', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(706, 'Jorge Perez Rojas', '8529-4277', 'La Libertad', 3, '20210180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(707, 'fransisco terciopelo', '6472-4391', 'terciopelo', 10, '20210181', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(708, 'Jose alexis Obregon Carrillo', '8546-8231', 'HUacas', 3, '20210182', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(709, 'Ivannia Mendoza Espinoza', '8639-5565', 'Esterones', 20, '20210183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(710, 'Omar josue Granados', '8886-3239', 'Los Angeles', 10, '20210184', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(711, 'Dafina Thur', '8758-7518', 'Altos del socorro', 20, '20210185', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(712, 'Joshep Young', '8474-5793', 'Camaronal', 20, '20210186', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(713, 'Paulo Collar', '8704-0027', 'Camaronal', 20, '20210187', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(714, 'Yordano Hernandez B', '8632-3915', 'La Libertad', 3, '20210188', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(715, 'Brenda Amaranta', '8706-7176', 'Amaranta', 20, '20210189', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(716, 'Jessica Lito Hernandez', '8359-4474', 'Pita Rayada', 10, '20210190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(717, 'Ridley buena vista', '8359-5045', 'Buena Vista', 20, '20220101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(718, 'Roy Arias', '8826-2524', 'buena vista', 10, '20220102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(719, 'Martin Lanz', '8966-1136', 'Altos del Socorro', 20, '20220103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(720, 'Leticia Villalobos Mu�oz', '8560-7983', 'HUacas', 3, '20220104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(721, 'Carlos Navarro', '8685-5833', 'Pilangosta', 10, '20220105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(722, 'Simon Antonio Moreno', '8927-1337', 'Huacas', 3, '20220106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(723, 'Melissa sandobal', '1 310 347 6431', 'camaronal', 30, '20220107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(724, 'Finca Lucky', '8736-1465', 'Buena vista', 50, '20220108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(725, 'Gustavo Aguilera Castro', '8719-8906', 'HUacas', 3, '20220109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(726, 'Manfred Altos del Socorro', '(+491786014016)', 'Altos del socorro', 30, '20220110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(727, 'Steven Jimenez', '61982020', 'cuesta grande', 10, '20220111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(728, 'Cristel Artavia', '6094-4079', 'Buena Vista', 10, '20220112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(729, 'Sylvain Dostie', '8982-8798', 'Maquenco', 10, '20220113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(730, 'Joselyn Gutierrez Solis', '8768-9948', 'Mansion', 6, '20220114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(731, 'Maria Fernanda Lopez', '8545-6269', 'Matambuguito', 6, '20220115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(732, 'JOE', 'nan', 'Camaronal', 50, '20220116', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(733, 'William Mejias Venegas', '8386-5190', 'San Gerardo', 10, '20220117', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(734, 'Sophie Elvire Chepy', '8546-1421', 'Santo Domingo', 20, '20220118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(735, 'Mathew Gregory Mccormack', '8553-8776', 'Esterones', 10, '20220119', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(736, 'Danny Ramirez Sibaja', '8885-6187', 'Los Angeles', 10, '20220120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(737, 'Joe CIANCIO', '8514-9193', 'Maquenco', 10, '20220121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(738, 'Deibin DIaz Carrillo', '8461-2582', 'Huacas', 6, '20220122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(739, 'Karol Murillo Lopez', '8991-0627', 'LOs Angeles', 3, 'Brayan Sandoval', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(740, 'Milanda Hernandez Venegas', '6227-5590', 'Matambuguito', 6, '20220124', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(741, 'Leonardo Araya Jimenez', '8303-3064', 'LOs Angeles', 3, '20220125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(742, 'Javier Hernandez Gaitan', '8371-7706', 'LOs Angeles', 6, '20220126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(743, 'Henry Garcia Jimenez', '88918731', 'Santa Elena', 10, '20220127', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(744, 'Lorena Vargas', '8915-9526', 'Pita Rayada', 6, '20220128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(745, 'Greivin Rmirez Rodriguez', '8597-3937', 'Los Cerrillos', 6, '20220129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(746, 'Didier Mu�oz Sequeira', '8378-8015', 'Los Cerrillos', 6, '20220130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(747, 'Abel Barrantes', '6033-8389', 'Los Cerrillos', 6, '20220131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(748, 'Yeimi Mu�oz Carrillo', '8611-2919', 'Los Cerrillos', 6, '20220132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(749, 'karen Salazar Vasquez', '6072-8655', 'Huacas', 3, '20220133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(750, 'Ana Lidieth Mu�oz', '8993-7213', 'Los Cerrillos', 6, '20220134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(751, 'Gabriel Thur', '8966-1147', 'Altos del socorro', 10, '20220135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(752, 'Carina Risi', '6482-8415', 'Altos del socorro', 10, '20220136', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(753, 'ROberto Garcia Guevara', '8822-7998', 'Hojancha', 20, '20220137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(754, 'Dereck Rodriguez', '6030-1104', 'Pilangosta', 3, '20220138', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(755, 'Ron Frances', '8601-3651', 'San Gerardo', 15, '20220139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(756, 'James Nick Weed', '8932-9504', 'El carmen', 20, '20220140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(757, 'Michael Thomas Cabinas Rio Ora', '6398-3825', 'Buena Vista', 6, '20220141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(758, 'Joselyn Carrillo Elizondo', '8410-0272', 'Huacas', 3, '20220142', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(759, 'Grace Jimenez', '8639-4833', 'La libertad', 10, '20220143', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(760, 'Jane collins camaronal', '19144787855', 'Camaronal', 10, '20220144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(761, 'Julio Obregon', '8582-1627', 'Polvazales', 20, '20220145', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(762, 'Rogelio Rodriguez', '8816-1316', 'Carrilo', 10, '20220146', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(763, 'vicent Geyer', '8428-1759', 'cuesta grande', 10, '20220147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(764, 'Adolfo Brenes', '8596-1285', 'LOs Angeles', 1, '20220148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(765, 'Magally Oviedo', '70141185', 'Gamalotal', 30, '20220149', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(766, 'Asdrubal Aguero', '8375-2869', 'Pita Rayada', 6, '20220150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(767, 'Jean-Claude AZOULAY', '83632176', 'Carrillo', 20, '20220151', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(768, 'Marta Arelys Gomez', '8549-6112', 'La Libertad', 6, '20220152', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(769, 'Channa santo domingo', '85015624', 'Carrillo', 30, '20220153', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(770, 'Anthon Kast', '8912-3968', 'La Libertad', 10, '20220154', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(771, 'Anita Camaronal', '8431-6078', 'Camaronal', 10, '20220155', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(772, 'Anderson Mendez', '8321-5507', 'San Gerardo', 10, '20220156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(773, 'Carlos Jimenez Estrada casa La Paz', '83601950', 'Estrada', 3, '20220157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(774, 'Carlos Jimenez Estrada casa silencio', '83601950', 'Estrada', 100, '20220158', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(775, 'Carlos Jimenez Estrada casa Tranquila', '83601950', 'Estrada', 50, '20220159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(776, 'Gerber Edinson', '6170-5107', 'Dulce Nombre', 10, '20220160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(777, 'Anthon Kast (pollera)', '8912-3968', 'La libertad', 3, '20220161', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(778, 'Tara jaeger', '84481059', 'camaronal', 10, '20220162', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(779, 'Ricardo Delicias Garza', '7075-3920', 'Delicias Garza', 10, '20220163', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(780, 'Guerin Rojas', '8452-6740', 'Huacas', 3, '20220164', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(781, 'Juan Carlos Pineda Alvarado', '8978-2522', 'La libertad', 3, '20220165', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(782, 'Udo Ehrenfeuchter', '4.91703E+11', 'Huacas', 10, '20220166', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(783, 'Franz Ruhl amaranta', '84581103', 'Amaranta', 30, '20220167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(784, 'Juan Carlos terciopelo', 'nan', 'Terciopelo', 10, '20220168', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(785, 'Flor Casa Brillasol', '83866556', 'Terciopelo', 10, '20220169', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(786, 'Pura Vida Homes MSJ SRL', '49 163 2695612', 'Buena Vista', 30, '20220170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(787, 'Nikole Neukirch amaranta', '86473922', 'Amaranta', 100, '20220171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(788, 'Maria Perez Mora', '6020-0905', 'LOs Angeles', 6, '20220172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(789, 'Ridley Casa Marina', '8359-5045', 'Samara', 20, '20220173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(790, 'Susana Vargas Vargas', '60084334', 'Cuesta Grande', 20, '20220174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(791, 'Jos� Luiz zeledon', '88033698', 'Santa Elena', 3, '20220175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(792, 'Dagnes orias rosales', '50113610', 'Santa Elena', 3, '20220176', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(793, 'Comite deportes Pilangosta', '8315-2259', 'Pilangosta', 20, '20220177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(794, 'Ivannia Mendoza Espinoza (Casa Jungle)', '8639-5565', 'Buena Vista', 20, '20220178', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(795, 'Vidal Esquivel Herrera', '8619 2823', 'Nosarita', 3, '20220179', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(796, 'Casa Jungle (Tierry Mappas)', '8785 9757', 'Buena Vista', 50, '20220180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(797, 'Ivannia Castro Castro', '8543-7412', 'Huacas', 6, '20220181', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(798, 'Refugio y Reserva Camaronal', '84541376', 'Camronal', 30, '20220182', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(799, 'Ron Manuel Sporer', '8601-3651', 'San Gerardo', 6, '20220183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(800, 'James McGregor', '1 (514) 927-0933', 'Buen Vista', 10, '20220184', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(801, 'Freiman Venegas Gran', '6299-1952', 'LOs Angeles', 6, '20220185', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(802, 'Gerardo Salazar Picado', '8851-8849', 'Cuesta Blanca', 10, '20220186', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(803, 'Agustin Hidalgo Morera (Ganaderia el comienzo)', '8834-3095', 'Terciopelo', 50, '20220187', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(804, 'Zeneida Castro Castro', '8429-0403', 'Huacas', 3, '20220188', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(805, 'Johan Delicias', '1 202 999 0806', 'Las delicias', 50, '20220189', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(806, 'Johan Delicias', '1 202 999 0806', 'Las Delicias', 50, '20220190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(807, 'Maxime Plessis Belair', '1 819 570 8484', 'Cuesta Grande', 10, '20220191', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(808, 'Silvain Carrier', '506 87801572', 'Cuesta Grande', 10, '20220192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(809, 'Javier Humberto Matarrita Morera', '8557-5378', 'Pita Rayada', 10, '20220193', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(810, 'William Fonseca Alvarado', '(+1(951)602-0642', 'Huacas', 3, '20220194', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(811, 'Pierre', 'nan', 'Naranjal', 10, '20220195', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(812, 'Deborah Moss', 'nan', 'Delicias Garza', 10, '20220196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(813, 'Pablo Garita', '8311-6437', 'San Gerardo', 6, '20220197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(814, 'Luci Price', '(+1 (808) 936-9988)', 'BUENA Vista', 10, '20220198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(815, 'Josh Silver', '(+1 (413)687-5584)', 'Esterones', 20, '20220199', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(816, 'Jose Angel Urbina', '6068-3457', 'San isidro', 10, '20220200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(817, 'Marco D�molly', '88369469', 'Amaranta', 10, '20220201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(818, 'Luis Elias', 'nan', 'San Gerardo', 10, '20220202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(819, 'Juana Rivas Mendoza', '83767605', 'LOs Angeles', 3, '20220203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(820, 'Franklin Venegas Castillo', '8764-3808', 'LOs Angeles', 3, '20230101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(821, 'Saskia Quiros Batres', '8627-1859', 'Santa Martha', 10, '20230102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(822, 'Proyecto Hotel Cerro Azul', '8946-3019', 'Cerro Azul', 10, '20230103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(823, 'Guillermo Angulo', '6040-8023', 'Altos del socorro', 20, '20230104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(824, 'FLAWLESS VIEW LIMITADA casa argudas', '8611-8407', 'Las delicias', 10, '20230105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(825, 'frank caba�as Amaranta', 'Regalia', 'amaranta', 15, '20230105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(826, 'Mauricio Castro Hernandes', '83275492', 'Santa Martha', 10, '20230106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(827, 'Karla Veronica Carrillo Obando', '8911-1887', 'Los angeles', 6, '20230107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(828, 'Catherine suarez (fabiola carvajal)', '6225-0781', 'San Fernando', 50, '20230108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(829, 'Joshua Broussard', '8760-7570', 'Santa Martha', 10, '20230109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(830, 'Cecile Colnaghi', '6346-3590', 'Buena Vista', 20, '20230110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(831, 'Eddi Gonzales', '8886-6828', 'Santa Elena', 10, '20230111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(832, 'Eduardo Pineda Barrantes', '6015-0393', 'La Libertad', 20, '20230112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(833, 'Alexander Villagra Hernandez', '84493040', 'santa Martha', 10, '20230113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(834, 'Flor Guevara', '8321-1331', 'Amaranta', 10, '20230114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(835, 'Fredy Obregon Aleman', '8778-3774', 'santa Martha', 10, '20230115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(836, 'Quetzal Tomartia Hernandez', '8352-6856', 'Las Delicias', 10, '20230116', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(837, 'Wilfredo Matarrita Matarrita', '8517-0710', 'Los angeles', 6, '20230117', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(838, 'Maria Kruse', '8449-2525', 'Cuesta Grande', 10, '20230118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(839, 'ASADA Buena Vista Tanque', 'nan', 'Amaranta', 3, '20230119', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(840, 'ASADA Buena Vista Pozo', 'nan', 'Buena Vista', 3, '20230120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(841, 'Angelica Delgado Madrigal', '8814-2283', 'La libertad', 10, '20230121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(842, 'Melany Venegas', '8515-6164', 'Pita Rayada', 3, '20230122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(843, 'Luis Adolfo Castrillo Fajardo', '8788-9098', 'San Gerardo', 6, '20230123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(844, 'Sara Maria Erb', '41797770714', 'Zapotal', 20, '20230124', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(845, 'Cecile Colnaghi', '6346-3590', 'Buena Vista', 10, '20230125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(846, 'Rebeca Navarrte Noguera (Tj Jac Information)', '8811-1968', 'Garza', 20, '20230126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(847, 'Steve Bliss (Camaronal)', '8658-4031', 'Camaronal', 20, '20230127', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(848, 'Allan Obregon Lopez', '8604-6917', 'San Gerardo', 10, '20230128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(849, 'Mariana Mayorga Perez', '6079-0703', 'Matmabuguito', 6, '20230129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(850, 'Dafina Thur', 'nan', 'Altos del socorro', 20, '20230130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(851, 'Dayanna barthley arce', '8690-7375', 'Maquenco', 10, '20230131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(852, 'Dievy Ronaldo Carazo', '8461-6814', 'Pita Rayada', 3, '20230132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(853, 'Wolfgang con Stachelski', '8984-9852', 'Altos del socorro', 10, '20230133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(854, 'Manfred Ad�n Vega Espinoza', '8644-0142', 'La libertad', 10, '20230134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(855, 'Mariana Madrigal Castillo', '6284-7836', 'Samara', 20, '20230135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(856, 'Cloudbird bonin Nube', '89240495', 'samara', 10, '20230136', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(857, 'Alejandro Arce Ulloa', '8599-4352', 'Buena vista', 10, '20230137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(858, 'Troy (Edith Zeledon)', '8972-2929', 'Cuesta Grande', 10, '20230138', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(859, 'Katie Redford (Charles Milner Due�o casa)', '1 250 320 3959', 'cuesta grande', 20, '20230139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(860, 'Rudy Mendoza', '87088403', 'Esterones', 10, '20230140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(861, 'Robert Calhoun Grainger Casa Gaia', 'email', 'Garza', 30, '20230141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(862, 'Mike Schaefe', '8656-0308', 'Estrada', 30, '20230142', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(863, 'Michael Keenan & Carol Guida (STEADY AS WE GO LLC SRL)', '1 (860) 933-2027', 'Garza', 10, '20230143', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(864, 'Asada San Fernando', 'nan', 'San Fernando', 10, '20230144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(865, 'Oldemar Matarrita Matarrita', '6312-5943', 'San Fernando', 6, '20230145', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(866, 'Marjurie Miranda Matamoros', '6347-0009', 'Estrada', 6, '20230146', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(867, 'Dixi Dayana Matarrita Salazar', '8539-6615', 'Pita Rayada', 3, '20230147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(868, 'Luis Alberto Romero Borge', '8821-4792', 'San Fernando', 10, '20230148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(869, 'Luis Fernando Mendoza Centeno', '6212-0426', 'La libertad', 10, '20230149', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(870, 'Maria Custodia Carrillo Alem�n', '8554-0930', 'La libertad', 3, '20230150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(871, 'yanina Jim�nez Fajardo', '8777-6964', 'La libertad', 3, '20230151', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(872, 'Margaret Dunn', '8803-7700', 'San Fernando', 10, '20230152', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(873, 'Jaykay samara', '8328-0221', 'San Fernando', 20, '20230153', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(874, 'David Alberto Quiros Solis', '8372-2900', 'San Fernando', 20, '20230154', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(875, 'Marco Gawehns', '8797-1600', 'Estrada', 30, '20230155', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(876, 'Greddy Centeno', '8807-7811', 'San Fernando', 6, '20230156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(877, 'Jos� �ngel Montiel Torres', '8832-6267', 'Huacas', 20, '20230157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(878, 'Guillermo Angulo', '6040-8023', 'Altos del socorro', 3, '20230158', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(879, 'Steve Bliss (Camaronal)', '8658-4031', 'Camaronal', 20, '20230159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(880, 'Mar�a del Rosio S�nchez Porras', '6008-3808', 'La libertad', 6, '20230160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0),
(881, 'Manuel Estrada', '83493462', 'Estrada', 10, '20230161', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_cliente`
--

CREATE TABLE `tipo_cliente` (
  `id_tipo_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `tipo_cliente`
--

INSERT INTO `tipo_cliente` (`id_tipo_cliente`, `nombre_cliente`) VALUES
(3, 'Residencial'),
(4, 'Empresarial');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `correo`, `password`) VALUES
(2, 'Joshua Sandi Guevara', 'joshuasg99@gmail.com', '$2y$10$O0xKhy563EvvdQs7.reFveZL2u.uaSLJ88I2sffV8VumBrKMu4I2u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `precio_residencial`
--
ALTER TABLE `precio_residencial`
  ADD PRIMARY KEY (`id_precio`);

--
-- Indexes for table `tblcliente`
--
ALTER TABLE `tblcliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_tipo_cliente` (`id_tipo_cliente`);

--
-- Indexes for table `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  ADD PRIMARY KEY (`id_tipo_cliente`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `precio_residencial`
--
ALTER TABLE `precio_residencial`
  MODIFY `id_precio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcliente`
--
ALTER TABLE `tblcliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=882;

--
-- AUTO_INCREMENT for table `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  MODIFY `id_tipo_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcliente`
--
ALTER TABLE `tblcliente`
  ADD CONSTRAINT `tblcliente_ibfk_1` FOREIGN KEY (`id_tipo_cliente`) REFERENCES `tipo_cliente` (`id_tipo_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
