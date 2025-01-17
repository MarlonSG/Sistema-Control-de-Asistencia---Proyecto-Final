-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2024 a las 09:42:16
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
-- Base de datos: `siscontroldeasistencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `miembro_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id`, `fecha`, `miembro_id`, `created_at`, `updated_at`) VALUES
(1, '2024-07-14', 1, '2024-07-14 15:59:39', '2024-07-14 21:11:09'),
(2, '2024-07-14', 13, '2024-07-14 20:30:02', '2024-07-14 20:30:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `miembros`
--

CREATE TABLE `miembros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_apellido` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `fecha_nacimiento` varchar(255) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `estado` varchar(5) NOT NULL,
  `ministerio` varchar(255) NOT NULL,
  `fotografia` text DEFAULT NULL,
  `fecha_ingreso` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `miembros`
--

INSERT INTO `miembros` (`id`, `nombre_apellido`, `direccion`, `telefono`, `fecha_nacimiento`, `genero`, `email`, `estado`, `ministerio`, `fotografia`, `fecha_ingreso`, `created_at`, `updated_at`) VALUES
(1, 'Vida Ondricka', '375 Catherine Via\nNew Bertram, WV 94615-5138', '97151334', '2020-01-13', 'MASCULINO', 'klocko.jamel@example.net', '1', 'PASTORAL', 'Image.jpg', '2010-08-04', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(2, 'Danika Carroll', '5527 Elizabeth Path Suite 762\nHamillshire, IN 94938', '91088215', '1994-12-09', 'MASCULINO', 'aufderhar.victor@example.net', '1', 'PASTORAL', 'Image.jpg', '1994-03-01', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(3, 'Kody Metz', '47657 Sipes Ridge\nMedhurstburgh, CO 28186', '90457757', '2013-06-02', 'MASCULINO', 'myrtie82@example.com', '1', 'PASTORAL', 'Image.jpg', '1976-09-22', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(4, 'Dr. Stella Johnson Jr.', '90158 Gorczany Street\nOranchester, MI 89715', '96472731', '1995-12-30', 'MASCULINO', 'therese.botsford@example.org', '1', 'PASTORAL', 'Image.jpg', '2019-07-16', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(5, 'Brody Boyle', '658 Marian Corners\nEast Alice, MS 33662-5893', '94603172', '1978-06-12', 'MASCULINO', 'luciano.davis@example.org', '1', 'PASTORAL', 'Image.jpg', '2024-07-09', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(6, 'Betty Farrell', '78053 Weimann Roads Apt. 374\nEast Melisa, TN 83034-5596', '94446949', '1976-06-24', 'MASCULINO', 'mpagac@example.org', '1', 'PASTORAL', 'Image.jpg', '2001-08-28', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(7, 'Juliet Harber', '4770 Hilda Avenue Suite 857\nNorth Deja, WA 49033', '92479175', '1973-03-29', 'MASCULINO', 'shanahan.elaina@example.net', '1', 'PASTORAL', 'Image.jpg', '1998-08-10', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(8, 'Mrs. Yesenia Runolfsson', '126 Hal Tunnel\nNew Hallie, NC 83249', '93278018', '1971-06-18', 'MASCULINO', 'tess78@example.net', '1', 'PASTORAL', 'Image.jpg', '1989-04-14', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(9, 'Alek Cummings', '659 Freida Shoal Suite 968\nNorth Thad, MD 02212-5284', '90583948', '2006-08-06', 'MASCULINO', 'zmayert@example.net', '1', 'PASTORAL', 'Image.jpg', '1974-01-29', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(10, 'Rafaela Hintz V', '697 Hermiston Viaduct Suite 475\nVincentport, PA 26931', '96032023', '2011-06-11', 'MASCULINO', 'sbecker@example.com', '1', 'PASTORAL', 'Image.jpg', '2004-02-11', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(11, 'Elwin Wolf', '69363 Margarita Village\nSouth Ressiestad, GA 55944-0926', '98265412', '1999-07-23', 'MASCULINO', 'rhea39@example.com', '1', 'PASTORAL', 'Image.jpg', '1977-06-18', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(12, 'Rosemarie Fisher', '8504 Jerde Land\nBernadettebury, ND 69417-6510', '97880849', '1987-07-22', 'MASCULINO', 'louisa.tillman@example.org', '1', 'PASTORAL', 'Image.jpg', '1979-12-10', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(13, 'Braeden Stokes', '170 Kaylin Cliffs Apt. 478\nLindsayland, KY 75284-7676', '93408731', '2002-12-07', 'MASCULINO', 'greinger@example.org', '1', 'PASTORAL', 'Image.jpg', '2018-12-22', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(14, 'Joanie Gorczany', '2124 Hiram Loop\nKlockoport, IL 98380-6619', '90810061', '1992-04-25', 'MASCULINO', 'patrick.emard@example.net', '1', 'PASTORAL', 'Image.jpg', '2002-03-07', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(15, 'Prof. Jalen Murray', '387 Hand Light\nEast Maybell, AL 24876', '95118016', '1970-05-09', 'MASCULINO', 'ckirlin@example.net', '1', 'PASTORAL', 'Image.jpg', '1985-01-25', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(16, 'Frances Mann', '1374 Lockman Common\nPort Annieton, AL 48287', '91043389', '2011-10-30', 'MASCULINO', 'wkuhic@example.net', '1', 'PASTORAL', 'Image.jpg', '1978-10-21', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(17, 'Brain Frami', '57551 George Corner\nMurphymouth, RI 93463', '98187428', '2005-01-10', 'MASCULINO', 'kris.reginald@example.net', '1', 'PASTORAL', 'Image.jpg', '2019-01-22', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(18, 'Marcelina Volkman', '30104 Keeling Road Suite 844\nLydaland, IA 21665', '99977073', '1970-10-02', 'MASCULINO', 'mayer.rosalinda@example.org', '1', 'PASTORAL', 'Image.jpg', '1996-12-06', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(19, 'Austen Fisher', '722 Dan Drive Apt. 973\nNorth Nyasiaburgh, GA 09096-2890', '96088528', '1971-05-06', 'MASCULINO', 'marlin.smith@example.com', '1', 'PASTORAL', 'Image.jpg', '2005-03-21', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(20, 'Lucius Jast DVM', '5818 Dickens Branch Suite 042\nMyrticeberg, MN 80238', '90674576', '2011-11-24', 'MASCULINO', 'pattie.donnelly@example.org', '1', 'PASTORAL', 'Image.jpg', '1976-03-27', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(21, 'Valentina Koelpin', '54442 Esther Extension\nOndrickafort, MA 60349-4729', '91072843', '1992-08-22', 'MASCULINO', 'ykeeling@example.org', '1', 'PASTORAL', 'Image.jpg', '2015-04-27', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(22, 'Audrey Rosenbaum', '626 Muller Key\nEast Chasityfurt, KY 70965', '94050607', '2013-01-29', 'MASCULINO', 'orion32@example.org', '1', 'PASTORAL', 'Image.jpg', '1997-05-27', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(23, 'Laverne Monahan', '4257 Heber Heights\nLueilwitzhaven, CA 62454-8177', '93378282', '1977-05-08', 'MASCULINO', 'vonrueden.amir@example.com', '1', 'PASTORAL', 'Image.jpg', '1981-09-20', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(24, 'Trisha Watsica', '145 Isai Crossroad\nLake Skye, OR 31197', '93437918', '1987-07-05', 'MASCULINO', 'dbergstrom@example.com', '1', 'PASTORAL', 'Image.jpg', '2015-06-16', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(25, 'Joshua Murazik', '18877 Aufderhar Groves\nQuitzonmouth, ID 00257', '90579705', '1993-03-12', 'MASCULINO', 'modesta44@example.org', '1', 'PASTORAL', 'Image.jpg', '1973-02-12', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(26, 'Ansley Little', '966 Louie Valleys Apt. 498\nPort Rainaville, LA 15750-7193', '99117082', '1994-01-30', 'MASCULINO', 'tcorwin@example.org', '1', 'PASTORAL', 'Image.jpg', '1991-10-23', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(27, 'Miss Estefania Leannon', '4565 Devante Courts Suite 720\nSwaniawskimouth, MI 45220', '90497943', '1989-09-14', 'MASCULINO', 'earnest.swaniawski@example.net', '1', 'PASTORAL', 'Image.jpg', '1976-08-12', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(28, 'Dr. Oleta Rowe II', '3557 Gage Spring\nStarkton, MS 45811', '96234103', '2023-02-09', 'MASCULINO', 'trace.balistreri@example.net', '1', 'PASTORAL', 'Image.jpg', '2005-02-10', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(29, 'Loren Hartmann', '903 Franecki Springs\nWest Kirk, WY 86875', '94197688', '2016-11-12', 'MASCULINO', 'darryl.bauch@example.com', '1', 'PASTORAL', 'Image.jpg', '2011-03-04', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(30, 'Geraldine Gulgowski II', '9887 Christophe Plains\nSouth Donnie, HI 87406-8240', '96127881', '2013-07-17', 'MASCULINO', 'herminia.champlin@example.com', '1', 'PASTORAL', 'Image.jpg', '2003-06-06', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(31, 'Annetta Macejkovic', '480 Kiera Mission Apt. 495\nNorth Leonel, ME 20827-1686', '99113346', '1970-08-23', 'MASCULINO', 'nola23@example.org', '1', 'PASTORAL', 'Image.jpg', '1973-01-27', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(32, 'Milton Cole', '9466 Halvorson Ports\nFrankville, TN 27214', '94785740', '2020-05-06', 'MASCULINO', 'homenick.toy@example.org', '1', 'PASTORAL', 'Image.jpg', '2004-06-24', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(33, 'Dolly Kshlerin', '476 Darrick Mount\nWiegandshire, UT 45774', '98261562', '2021-06-11', 'MASCULINO', 'alysha39@example.net', '1', 'PASTORAL', 'Image.jpg', '2021-12-10', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(34, 'Miss Gisselle Kreiger Jr.', '811 Heidenreich Knoll Suite 072\nNorth Dillon, WI 42580-9313', '90439973', '2002-05-23', 'MASCULINO', 'phyllis31@example.org', '1', 'PASTORAL', 'Image.jpg', '2014-07-18', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(35, 'Megane Considine', '325 Doyle Ford\nRubystad, FL 27440-6157', '92666742', '1971-11-16', 'MASCULINO', 'lavinia.haag@example.net', '1', 'PASTORAL', 'Image.jpg', '1993-07-25', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(36, 'Marcelo Conroy IV', '7891 Bell Extension Apt. 308\nSchuppeville, NM 94953', '96771271', '2013-08-25', 'MASCULINO', 'eulah.larkin@example.org', '1', 'PASTORAL', 'Image.jpg', '1980-09-14', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(37, 'Mrs. Destiny Ritchie', '815 Elias Terrace\nZelmaborough, WI 00361', '96799534', '1984-08-20', 'MASCULINO', 'rath.nathanael@example.com', '1', 'PASTORAL', 'Image.jpg', '2015-08-21', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(38, 'Pasquale Pagac', '760 Susanna Haven Apt. 110\nEffertzchester, DC 11474', '91834901', '1984-11-28', 'MASCULINO', 'morar.letha@example.org', '1', 'PASTORAL', 'Image.jpg', '2011-01-10', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(39, 'Lessie Shields', '5031 Jonathon Mountains\nEast Kristoferfurt, TX 17303', '95716180', '2021-05-20', 'MASCULINO', 'okuphal@example.net', '1', 'PASTORAL', 'Image.jpg', '2007-06-12', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(40, 'Jeanne Lindgren', '12132 Abshire Squares Suite 649\nCrooksburgh, MT 19579', '93529574', '2021-11-26', 'MASCULINO', 'mkunde@example.net', '1', 'PASTORAL', 'Image.jpg', '2017-03-20', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(41, 'Dr. Cara Wiegand I', '91056 Von Center Apt. 708\nNew Oranmouth, MT 50762-2760', '97173406', '1982-03-09', 'MASCULINO', 'rjacobi@example.com', '1', 'PASTORAL', 'Image.jpg', '1974-07-28', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(42, 'Georgianna VonRueden I', '6396 Crawford Valleys\nLake Clair, DC 19811-6622', '91135011', '1997-05-25', 'MASCULINO', 'thalia.hermiston@example.com', '1', 'PASTORAL', 'Image.jpg', '1978-09-22', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(43, 'Mateo Zboncak', '86353 Bogisich Views\nRowlandfort, NY 63820-0977', '90671031', '2009-09-09', 'MASCULINO', 'ola81@example.org', '1', 'PASTORAL', 'Image.jpg', '2009-11-24', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(44, 'Mrs. Elvie Robel II', '7390 Imelda Forks\nNorth Brad, MD 37211', '93536510', '2021-03-31', 'MASCULINO', 'owen60@example.com', '1', 'PASTORAL', 'Image.jpg', '2001-09-22', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(45, 'Hanna Jacobs PhD', '23807 Asa Mills Apt. 827\nRosettaburgh, TX 71239', '91055829', '1982-12-14', 'MASCULINO', 'idubuque@example.org', '1', 'PASTORAL', 'Image.jpg', '1970-05-31', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(46, 'Carolanne Cormier V', '59067 Juliet Rue\nLincolntown, AR 29116-1628', '94519220', '2013-08-25', 'MASCULINO', 'dharvey@example.com', '1', 'PASTORAL', 'Image.jpg', '1991-12-16', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(47, 'Laurie White', '87645 Shanahan Valley Suite 115\nBeverlyberg, MT 06433', '90191575', '2006-10-10', 'MASCULINO', 'gerlach.alaina@example.com', '1', 'PASTORAL', 'Image.jpg', '2018-11-17', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(48, 'Ms. Savanah Moore', '74643 Moore Plains\nWest Paulastad, NM 70121', '95039178', '2010-10-07', 'MASCULINO', 'lilliana49@example.com', '1', 'PASTORAL', 'Image.jpg', '2015-04-17', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(49, 'Erick Purdy', '870 Reilly Spur\nOttiston, WY 27863', '96103099', '1974-02-22', 'MASCULINO', 'omari22@example.org', '1', 'PASTORAL', 'Image.jpg', '2021-11-25', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(50, 'Prof. Octavia Lang', '19305 Kaylin Manor Apt. 181\nRobelburgh, CA 02388-7502', '91339848', '2012-01-24', 'MASCULINO', 'trevor.purdy@example.org', '1', 'PASTORAL', 'Image.jpg', '2010-03-24', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(51, 'Danika O\'Kon', '31110 Robyn Extension\nStokeschester, NM 25833-8438', '96478612', '2010-01-17', 'MASCULINO', 'emmie.bruen@example.org', '1', 'PASTORAL', 'Image.jpg', '2002-01-03', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(52, 'Roosevelt Casper', '9736 Ashlee Mountain\nGreenhaven, NJ 36277-8197', '97976403', '2000-04-29', 'MASCULINO', 'hilario05@example.com', '1', 'PASTORAL', 'Image.jpg', '1995-07-09', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(53, 'Lionel Romaguera', '6371 Austen Wells Suite 192\nHillmouth, AL 37573', '90092876', '2023-07-15', 'MASCULINO', 'gage11@example.org', '1', 'PASTORAL', 'Image.jpg', '1987-07-19', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(54, 'Ruben Armstrong', '83940 Hahn Crossing Suite 591\nMayerstad, NH 30945-4405', '97740580', '2022-02-15', 'MASCULINO', 'isaiah.hand@example.org', '1', 'PASTORAL', 'Image.jpg', '2007-12-22', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(55, 'Marina Olson', '327 Hailee Creek\nRempelmouth, WA 57516-3841', '97486912', '2021-03-27', 'MASCULINO', 'rowe.destin@example.net', '1', 'PASTORAL', 'Image.jpg', '1975-08-30', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(56, 'Allen Ledner', '7839 Anthony Trace Apt. 723\nNaomiemouth, KS 66944', '97078695', '2012-08-24', 'MASCULINO', 'rocky05@example.net', '1', 'PASTORAL', 'Image.jpg', '2009-03-27', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(57, 'Norval O\'Hara PhD', '5539 Johan Junction Apt. 293\nNorth Isadorefurt, VT 73386', '94592092', '2010-03-16', 'MASCULINO', 'crooks.jarod@example.com', '1', 'PASTORAL', 'Image.jpg', '2018-04-17', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(58, 'April Padberg', '3076 Katheryn Plains\nEast Willaland, WV 48239', '95064944', '1995-08-03', 'MASCULINO', 'halvorson.fausto@example.net', '1', 'PASTORAL', 'Image.jpg', '1983-05-19', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(59, 'Tyra Pollich', '836 Daniel Turnpike\nSouth Suzanneburgh, RI 42011-7564', '99819068', '1989-12-19', 'MASCULINO', 'presley28@example.com', '1', 'PASTORAL', 'Image.jpg', '1977-10-11', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(60, 'Miss Amy Bayer', '1307 Hoeger Drive\nTitusberg, VA 28300-6038', '95595059', '1984-01-22', 'MASCULINO', 'afisher@example.com', '1', 'PASTORAL', 'Image.jpg', '1972-08-01', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(61, 'Valentin Connelly', '48946 Joany Ramp\nCartwrightbury, MN 21231', '94287437', '2014-10-20', 'MASCULINO', 'wiegand.linnea@example.com', '1', 'PASTORAL', 'Image.jpg', '2022-03-01', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(62, 'Keven Fay', '9124 Andres Overpass\nNew Crystel, VA 29117', '90182834', '1991-06-18', 'MASCULINO', 'jovan03@example.com', '1', 'PASTORAL', 'Image.jpg', '2007-09-09', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(63, 'Monserrate Hermiston', '7110 Kyle Oval Apt. 684\nWolffville, VA 21303', '99983989', '1995-07-26', 'MASCULINO', 'hessel.ariane@example.net', '1', 'PASTORAL', 'Image.jpg', '2013-01-06', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(64, 'Austin Ledner', '6531 Efrain Locks Suite 551\nTryciaville, AL 19008', '92381524', '1973-03-09', 'MASCULINO', 'tomasa67@example.net', '1', 'PASTORAL', 'Image.jpg', '2004-12-17', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(65, 'Ms. Carolyne Roob', '35982 Fredy Vista\nEast Melissaberg, KS 28008', '98799630', '1991-10-01', 'MASCULINO', 'mazie66@example.org', '1', 'PASTORAL', 'Image.jpg', '2010-01-11', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(66, 'Mr. Jaylen Marks', '6828 Mante Mount\nNorth Daphne, NJ 77603-5024', '99847865', '1987-02-03', 'MASCULINO', 'ewatsica@example.net', '1', 'PASTORAL', 'Image.jpg', '1981-11-14', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(67, 'Fermin Daniel II', '58624 Lubowitz Plains\nPort Michale, UT 70804-5522', '97593698', '1970-03-21', 'MASCULINO', 'zella67@example.org', '1', 'PASTORAL', 'Image.jpg', '2003-01-15', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(68, 'Columbus Medhurst', '1325 Stokes Causeway\nChamplinbury, AZ 48185-7208', '92760458', '2002-05-16', 'MASCULINO', 'vleuschke@example.net', '1', 'PASTORAL', 'Image.jpg', '2021-12-20', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(69, 'Prof. Westley Price Sr.', '468 Gutmann Road\nEast Jammie, LA 88020-4674', '95133788', '1995-03-01', 'MASCULINO', 'garrison61@example.net', '1', 'PASTORAL', 'Image.jpg', '1985-08-08', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(70, 'Mrs. Annette Daugherty', '31625 Hauck Neck\nNorth Helmerfort, IN 25094', '98795448', '2023-05-25', 'MASCULINO', 'terry.hoeger@example.net', '1', 'PASTORAL', 'Image.jpg', '1990-08-19', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(71, 'Kiarra Ortiz PhD', '7073 Shayne Points\nEast Titotown, MS 66231', '97818143', '2008-05-29', 'MASCULINO', 'nella74@example.net', '1', 'PASTORAL', 'Image.jpg', '2005-10-29', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(72, 'Alvis Boyer', '6899 Lubowitz Lodge Apt. 644\nDrewport, OK 14598', '92880693', '1981-12-12', 'MASCULINO', 'bmueller@example.com', '1', 'PASTORAL', 'Image.jpg', '2018-09-05', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(73, 'Mr. Keshawn Kemmer MD', '42536 Maximilian Squares Apt. 700\nAbernathyshire, SD 98028-6712', '97400931', '2002-09-02', 'MASCULINO', 'forrest.lebsack@example.net', '1', 'PASTORAL', 'Image.jpg', '2011-08-20', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(74, 'Freeda Grimes', '7557 Jaiden Divide Suite 336\nSouth Lea, CA 76756-7800', '91563078', '1989-04-25', 'MASCULINO', 'akiehn@example.com', '1', 'PASTORAL', 'Image.jpg', '1998-08-24', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(75, 'Rhett Kulas IV', '2618 Berge Neck Suite 986\nSouth Sterlingland, OH 12386', '99113601', '2008-07-21', 'MASCULINO', 'nick18@example.com', '1', 'PASTORAL', 'Image.jpg', '2018-05-19', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(76, 'Tomasa Nicolas', '26366 Christy Springs\nNorth Krystel, MD 54925-4029', '99874971', '2011-01-12', 'MASCULINO', 'jordy.steuber@example.org', '1', 'PASTORAL', 'Image.jpg', '1991-08-30', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(77, 'Dr. Liam Cartwright I', '711 Joel Court Apt. 887\nSouth Willa, NV 63625-8878', '94589349', '2017-09-03', 'MASCULINO', 'jessika85@example.com', '1', 'PASTORAL', 'Image.jpg', '2023-10-04', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(78, 'Mr. Camryn Ratke II', '9157 Garry Fort Apt. 497\nZeldafort, TX 82623', '98307961', '1999-04-03', 'MASCULINO', 'velma.roob@example.org', '1', 'PASTORAL', 'Image.jpg', '2015-01-12', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(79, 'Ruben Mosciski', '7368 Roxanne Road\nWest Gerdamouth, VA 17824-2288', '95736409', '2018-01-04', 'MASCULINO', 'dvandervort@example.com', '1', 'PASTORAL', 'Image.jpg', '2018-06-30', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(80, 'Calista Crist V', '884 Coralie Trafficway\nLeuschkefort, NJ 59777', '99875465', '2011-08-12', 'MASCULINO', 'hills.alejandra@example.org', '1', 'PASTORAL', 'Image.jpg', '1970-09-09', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(81, 'Doyle Gusikowski', '979 Scottie Green\nDaviston, MN 07478', '94999871', '1986-03-18', 'MASCULINO', 'monroe.watsica@example.com', '1', 'PASTORAL', 'Image.jpg', '1972-03-29', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(82, 'Breanna Raynor DVM', '8356 Ines Centers\nNikolausport, AZ 92083-3659', '96001983', '2024-06-25', 'MASCULINO', 'heathcote.gordon@example.net', '1', 'PASTORAL', 'Image.jpg', '2005-02-06', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(83, 'Lucinda Roob', '38239 Schaden Isle\nChristopberg, SC 87220-5466', '93428045', '1977-08-19', 'MASCULINO', 'koby86@example.net', '1', 'PASTORAL', 'Image.jpg', '1998-08-09', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(84, 'Madelyn Kiehn', '316 Roberts Flat Suite 917\nLake Shannonberg, AK 35523-2359', '92110780', '1976-10-07', 'MASCULINO', 'vivian05@example.com', '1', 'PASTORAL', 'Image.jpg', '1988-09-01', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(85, 'Salvador Emard', '8595 Veum Stravenue\nKaciemouth, NV 83375', '98104294', '1990-02-06', 'MASCULINO', 'aurelio07@example.net', '1', 'PASTORAL', 'Image.jpg', '1992-06-08', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(86, 'Celestine Bergnaum V', '315 Lubowitz Mountain Suite 103\nVitoview, NJ 75747-4509', '93155938', '1984-02-03', 'MASCULINO', 'trudie49@example.com', '1', 'PASTORAL', 'Image.jpg', '1981-12-17', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(87, 'Gretchen Maggio', '80167 Hilpert Via\nSouth Phoebe, OR 11467', '99927476', '2015-10-12', 'MASCULINO', 'lpagac@example.net', '1', 'PASTORAL', 'Image.jpg', '1983-05-08', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(88, 'Golda Runolfsson', '94704 Pfannerstill Via\nLake Guillermo, DE 27429-7668', '90824025', '1994-10-24', 'MASCULINO', 'rowena.reinger@example.com', '1', 'PASTORAL', 'Image.jpg', '2000-08-13', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(89, 'Mrs. Eliza Bosco I', '712 Virginia Neck\nNorvalmouth, OH 51952-4179', '92502979', '1976-10-05', 'MASCULINO', 'blaze.sawayn@example.org', '1', 'PASTORAL', 'Image.jpg', '1994-05-11', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(90, 'Enrico McGlynn II', '24930 Gottlieb Creek\nMisaelfurt, IL 14347-6690', '92305200', '1975-02-15', 'MASCULINO', 'qdubuque@example.net', '1', 'PASTORAL', 'Image.jpg', '1997-07-16', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(91, 'Jeanette Turcotte', '6198 Tremblay Center Apt. 297\nElishamouth, DC 51667-8050', '90262492', '2013-04-24', 'MASCULINO', 'toby36@example.org', '1', 'PASTORAL', 'Image.jpg', '2013-03-16', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(92, 'Ms. Augusta Kemmer', '81424 Boehm Junction Apt. 734\nNorth Emmetstad, MN 62580', '97115748', '1995-08-14', 'MASCULINO', 'garrison.green@example.org', '1', 'PASTORAL', 'Image.jpg', '1999-07-23', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(93, 'Maximilian Pacocha', '7439 Denesik Cliffs\nDickinsonbury, WV 05099', '97400300', '1997-02-10', 'MASCULINO', 'bailey.darby@example.org', '1', 'PASTORAL', 'Image.jpg', '2011-10-25', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(94, 'Billy Bins', '3114 Dickinson Drive Suite 738\nSouth Lorena, MN 41846-7569', '92529884', '1971-06-11', 'MASCULINO', 'lavonne.dibbert@example.net', '1', 'PASTORAL', 'Image.jpg', '1976-03-23', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(95, 'Aaron Fritsch', '5624 Baumbach Island Suite 819\nBreannebury, AZ 07602-0211', '99982158', '1989-12-20', 'MASCULINO', 'liam.predovic@example.org', '1', 'PASTORAL', 'Image.jpg', '1993-06-22', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(96, 'Dr. Alvah Barton MD', '59543 Elise Forge\nSipestown, IA 05149', '93736781', '1989-10-13', 'MASCULINO', 'wolf.myrtie@example.net', '1', 'PASTORAL', 'Image.jpg', '2012-10-16', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(97, 'Kyler Herzog I', '14616 Thompson Green\nEmardmouth, NY 65409', '98822651', '2017-12-15', 'MASCULINO', 'steuber.annabell@example.org', '1', 'PASTORAL', 'Image.jpg', '2006-05-01', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(98, 'Alanis Nicolas PhD', '36036 Norris Lights Apt. 377\nWilliamsonland, AZ 72175-3278', '97075399', '2017-09-18', 'MASCULINO', 'garrett.lindgren@example.org', '1', 'PASTORAL', 'Image.jpg', '1975-04-18', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(99, 'Dr. Eveline Ortiz Sr.', '8065 Jamaal Mountain\nNew Jacynthe, SC 92785', '93849566', '2011-05-27', 'MASCULINO', 'harvey33@example.org', '1', 'PASTORAL', 'Image.jpg', '1997-09-06', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(100, 'Jeramy Jacobs', '285 Bins Manors Suite 526\nLake Stephanyshire, DC 08741-8205', '96844673', '2006-01-29', 'MASCULINO', 'quitzon.therese@example.org', '1', 'PASTORAL', 'Image.jpg', '1998-07-14', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(101, 'Jacques Lind', '61996 Cristal Valleys\nCalliefort, AR 03567-3247', '90966459', '2012-11-06', 'MASCULINO', 'titus.hilpert@example.net', '1', 'PASTORAL', 'Image.jpg', '1992-03-26', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(102, 'Ms. Irma Borer', '28124 Gerlach Tunnel Suite 669\nClintburgh, UT 28140-2416', '91434574', '1998-11-11', 'MASCULINO', 'estefania10@example.net', '1', 'PASTORAL', 'Image.jpg', '2002-06-14', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(103, 'Mr. Baron Becker V', '857 Bradtke Park Apt. 411\nNorth Albertha, VT 60509-7976', '96258733', '1999-05-09', 'MASCULINO', 'rosella.fisher@example.com', '1', 'PASTORAL', 'Image.jpg', '2013-03-27', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(104, 'Mortimer Crona', '450 Harvey Stravenue Apt. 623\nLake Nikolasfurt, NJ 02372-0721', '96443733', '1985-11-11', 'MASCULINO', 'wmcclure@example.org', '1', 'PASTORAL', 'Image.jpg', '1996-07-07', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(105, 'Prof. Brooks Schumm', '22916 Ethyl Mall Suite 500\nNolanbury, HI 12588-0441', '94918039', '1994-08-05', 'MASCULINO', 'kreiger.gerardo@example.com', '1', 'PASTORAL', 'Image.jpg', '2004-04-18', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(106, 'Carey Hyatt', '25622 Bailey Shoal Apt. 195\nNew Shane, MD 20846-2234', '99733781', '1972-05-19', 'MASCULINO', 'tillman.laurine@example.net', '1', 'PASTORAL', 'Image.jpg', '1993-02-19', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(107, 'Miss Princess Kunze I', '3107 Alverta Stream Suite 352\nSouth Tyreseborough, WI 47467', '90964426', '2021-01-11', 'MASCULINO', 'okuneva.austyn@example.net', '1', 'PASTORAL', 'Image.jpg', '1992-06-17', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(108, 'Ophelia Hagenes', '245 Kaylee Views Suite 679\nCrystelland, MO 15078-0254', '98599686', '1991-11-01', 'MASCULINO', 'melody70@example.org', '1', 'PASTORAL', 'Image.jpg', '1989-10-05', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(109, 'Betsy Emard', '242 Stanton Plains\nSouth Neoma, NJ 22659', '94708033', '1993-01-09', 'MASCULINO', 'llabadie@example.net', '1', 'PASTORAL', 'Image.jpg', '1995-11-25', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(110, 'Antonetta Bernier', '683 Bogisich Station Suite 215\nPort Emie, NV 49908', '93625161', '1979-01-20', 'MASCULINO', 'crist.bobbie@example.net', '1', 'PASTORAL', 'Image.jpg', '2005-08-31', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(111, 'Brooks Spinka', '8728 Alivia Brook Suite 264\nUrbanbury, NE 88450-5147', '98081196', '1980-07-01', 'MASCULINO', 'rath.creola@example.net', '1', 'PASTORAL', 'Image.jpg', '1995-05-22', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(112, 'Avery Bartoletti', '44643 Boehm Rue Suite 603\nPort Alexandria, NM 30199-6005', '95500481', '2007-10-15', 'MASCULINO', 'rosina50@example.net', '1', 'PASTORAL', 'Image.jpg', '1999-06-03', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(113, 'Bret Kutch', '6998 Nicklaus Dale Apt. 108\nPort Casandra, PA 05822', '96338522', '1983-11-20', 'MASCULINO', 'hmarquardt@example.net', '1', 'PASTORAL', 'Image.jpg', '1977-02-18', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(114, 'Tiffany Wyman V', '429 Reymundo Rapid Suite 758\nPort Stantonport, ME 26050-9384', '90500598', '2020-12-07', 'MASCULINO', 'gtreutel@example.net', '1', 'PASTORAL', 'Image.jpg', '2023-03-18', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(115, 'Laurie Moen PhD', '390 Klein Shoals\nClarkview, ND 39762-3126', '92327862', '1990-12-23', 'MASCULINO', 'effertz.korey@example.net', '1', 'PASTORAL', 'Image.jpg', '2000-04-28', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(116, 'Tamara Berge', '21832 Gerhold Ramp Apt. 287\nEast Albertha, AK 84691', '93455878', '2003-06-08', 'MASCULINO', 'daisha.bashirian@example.com', '1', 'PASTORAL', 'Image.jpg', '1975-01-14', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(117, 'Kaylah Nitzsche Jr.', '2287 Anderson Heights\nDemariomouth, OH 09246-8475', '95334586', '2020-01-03', 'MASCULINO', 'lindsey.hoppe@example.net', '1', 'PASTORAL', 'Image.jpg', '1990-07-02', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(118, 'Brenden D\'Amore', '328 Reynolds Circle Suite 568\nBatzshire, OH 02282-6593', '93431993', '2004-04-17', 'MASCULINO', 'bradford.grant@example.net', '1', 'PASTORAL', 'Image.jpg', '2019-01-05', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(119, 'Berniece Rice', '142 Vandervort Lake Suite 939\nCorkerystad, NH 06075', '94748282', '1997-03-22', 'MASCULINO', 'libby.bahringer@example.net', '1', 'PASTORAL', 'Image.jpg', '1970-12-20', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(120, 'Ms. Nona Kuhic', '14952 Eileen Run Suite 422\nLebsackmouth, MN 84642-4214', '99790488', '2011-06-15', 'MASCULINO', 'prosacco.veronica@example.org', '1', 'PASTORAL', 'Image.jpg', '1984-10-04', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(121, 'Dorothy Legros', '43076 Kovacek Path\nNew Elianeland, LA 60879', '97806193', '2015-08-03', 'MASCULINO', 'kgoodwin@example.org', '1', 'PASTORAL', 'Image.jpg', '1980-11-27', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(122, 'Emanuel O\'Kon', '341 Gunner Square\nNew Sigrid, NM 36091', '93278217', '1975-01-20', 'MASCULINO', 'orie.kozey@example.org', '1', 'PASTORAL', 'Image.jpg', '2014-06-07', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(123, 'Chadd Ryan', '20731 Afton Pine\nPort Jessview, NJ 18579', '93155617', '1990-07-29', 'MASCULINO', 'zula15@example.net', '1', 'PASTORAL', 'Image.jpg', '2020-05-13', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(124, 'Lexie Hirthe', '52355 Roob Port\nLake Roscoe, TX 25231-6765', '90247904', '1976-11-26', 'MASCULINO', 'stokes.santa@example.org', '1', 'PASTORAL', 'Image.jpg', '2003-06-23', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(125, 'Aubrey Bayer', '1699 Flatley Hill\nLake Harrisonside, NJ 73478-0228', '91361138', '1988-11-01', 'MASCULINO', 'tillman.jabari@example.com', '1', 'PASTORAL', 'Image.jpg', '1990-03-30', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(126, 'Prof. Ettie Jones', '771 Bertram Knolls\nSouth Cheyanneville, OK 11756-1619', '90048782', '2005-02-12', 'MASCULINO', 'vonrueden.ethel@example.org', '1', 'PASTORAL', 'Image.jpg', '2022-11-12', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(127, 'Garland Dooley', '153 Erdman Freeway\nSouth Eulafurt, DE 39273', '92136245', '2018-12-08', 'MASCULINO', 'pfeffer.ned@example.net', '1', 'PASTORAL', 'Image.jpg', '2009-12-18', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(128, 'Wilhelm Eichmann', '312 Orn Prairie Suite 732\nSchmelerberg, CT 37983-0120', '90011305', '1997-02-15', 'MASCULINO', 'casey69@example.com', '1', 'PASTORAL', 'Image.jpg', '2005-12-25', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(129, 'Elnora Brown', '1660 Tre Station\nSusanchester, NM 92634', '98465821', '2004-08-05', 'MASCULINO', 'qward@example.net', '1', 'PASTORAL', 'Image.jpg', '2001-09-20', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(130, 'Mr. Geovanni Kozey Sr.', '7902 Lehner Garden Suite 239\nNew Budfort, VA 64983', '96454472', '1991-07-03', 'MASCULINO', 'nhomenick@example.org', '1', 'PASTORAL', 'Image.jpg', '2020-04-06', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(131, 'Stanford Thompson Jr.', '4261 Krajcik Falls Suite 270\nSouth Juvenal, TX 04045-2071', '93800547', '1985-12-13', 'MASCULINO', 'aditya65@example.org', '1', 'PASTORAL', 'Image.jpg', '1978-06-19', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(132, 'Keyshawn Hegmann', '581 Linwood Ranch Suite 746\nWest Lysanne, WY 11599', '95761501', '1978-01-05', 'MASCULINO', 'auer.jermain@example.org', '1', 'PASTORAL', 'Image.jpg', '1980-12-01', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(133, 'Winfield Hermiston', '372 Yost Gardens\nNikolausland, MA 29204-7183', '99801335', '2004-02-25', 'MASCULINO', 'mann.jovan@example.net', '1', 'PASTORAL', 'Image.jpg', '2004-05-30', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(134, 'Mrs. Chaya Reichert', '253 Medhurst View Apt. 028\nLake Darryl, MS 53511-8592', '95470718', '2000-11-28', 'MASCULINO', 'pacocha.krystal@example.net', '1', 'PASTORAL', 'Image.jpg', '1988-03-29', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(135, 'Jacky Waters', '6247 Rogelio Club Apt. 315\nJohannfort, MT 35397-4621', '91083045', '1993-05-04', 'MASCULINO', 'maurice.runte@example.net', '1', 'PASTORAL', 'Image.jpg', '1988-11-20', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(136, 'Miss Eden Becker', '487 Abner Branch Apt. 505\nNorth Harmony, DE 92387-4302', '93664584', '2006-06-13', 'MASCULINO', 'darren31@example.org', '1', 'PASTORAL', 'Image.jpg', '2002-08-16', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(137, 'Sarah Ebert', '6287 Raynor Parkways Suite 553\nJohnstonland, NJ 46193', '92468069', '1998-11-30', 'MASCULINO', 'wfahey@example.org', '1', 'PASTORAL', 'Image.jpg', '1997-07-03', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(138, 'Ms. Leonor Koch', '610 Gilda Ridge Apt. 807\nGabrielburgh, GA 26251', '97284201', '2012-04-07', 'MASCULINO', 'dakota31@example.com', '1', 'PASTORAL', 'Image.jpg', '1973-08-09', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(139, 'Tiffany Thompson', '23080 Hickle Radial\nShanieton, NC 95936-9065', '92363011', '1987-02-18', 'MASCULINO', 'jackeline.damore@example.org', '1', 'PASTORAL', 'Image.jpg', '2001-01-18', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(140, 'Marjory Mayer', '22363 VonRueden Inlet Apt. 433\nWest Dagmar, AK 73924', '96498180', '1981-01-21', 'MASCULINO', 'cummings.kenyon@example.com', '1', 'PASTORAL', 'Image.jpg', '2012-01-25', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(141, 'Marianne Roob II', '909 Walsh Rapids\nSchmittport, NY 16794-6015', '97563134', '2022-09-22', 'MASCULINO', 'austyn.mosciski@example.net', '1', 'PASTORAL', 'Image.jpg', '2018-05-02', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(142, 'Alessia Franecki', '287 Schuppe River\nMcGlynnland, IN 78571-0253', '91283662', '2001-02-11', 'MASCULINO', 'torrance.koepp@example.org', '1', 'PASTORAL', 'Image.jpg', '2015-10-09', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(143, 'Rylan Schamberger', '9005 Keebler Spurs Apt. 359\nEast Jan, WI 03051-3276', '96325348', '1988-12-16', 'MASCULINO', 'rowena32@example.org', '1', 'PASTORAL', 'Image.jpg', '2010-02-16', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(144, 'Neoma Runolfsson V', '6466 Runte Track\nErnserhaven, CT 06100-3012', '90365883', '1974-01-13', 'MASCULINO', 'blaise94@example.com', '1', 'PASTORAL', 'Image.jpg', '1998-06-04', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(145, 'Desiree Klein', '172 Cristopher Tunnel\nDooleybury, NJ 07038', '91982873', '2004-05-17', 'MASCULINO', 'toy.kris@example.net', '1', 'PASTORAL', 'Image.jpg', '2015-01-09', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(146, 'Kayley Hansen', '442 Krajcik Trafficway\nWillieside, MS 50726-8063', '93416198', '2013-08-21', 'MASCULINO', 'ethel50@example.net', '1', 'PASTORAL', 'Image.jpg', '1982-07-05', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(147, 'Dr. Rahul Streich', '898 Ewell Isle\nEast Douglaston, MN 21117', '90465306', '1991-11-29', 'MASCULINO', 'travon.morar@example.com', '1', 'PASTORAL', 'Image.jpg', '1980-05-04', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(148, 'Esteban Boehm', '413 Albina Views\nConsuelochester, VA 75034-3457', '91186573', '1995-11-21', 'MASCULINO', 'nathan04@example.com', '1', 'PASTORAL', 'Image.jpg', '2007-03-02', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(149, 'Delphine Nikolaus', '94125 Elinore Crossroad Apt. 685\nSouth Cassie, NJ 06451-9398', '92061675', '1992-08-07', 'MASCULINO', 'clement45@example.net', '1', 'PASTORAL', 'Image.jpg', '2018-08-06', '2024-07-14 04:19:29', '2024-07-14 04:19:29'),
(150, 'Rebecca Strosin', '75116 Littel Track\nDarienmouth, KS 98823', '91151749', '1972-11-20', 'MASCULINO', 'katherine17@example.org', '1', 'PASTORAL', 'Image.jpg', '1993-07-26', '2024-07-14 04:19:29', '2024-07-14 04:19:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_06_30_012432_create_miembros_table', 1),
(7, '2024_07_08_043848_create_ministerios_table', 1),
(8, '2024_07_14_101140_create_asistencias_table', 2),
(9, '2024_07_14_202534_create_permission_tables', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ministerios`
--

CREATE TABLE `ministerios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_ministerio` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `estado` varchar(5) NOT NULL,
  `fecha_ingreso` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ministerios`
--

INSERT INTO `ministerios` (`id`, `nombre_ministerio`, `descripcion`, `estado`, `fecha_ingreso`, `created_at`, `updated_at`) VALUES
(1, 'Jose pardo', '<p>dsddafdggfgfg</p>', '1', '2024-07-15', '2024-07-15 11:59:22', '2024-07-15 11:59:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_ingreso` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `fecha_ingreso`, `estado`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Marlon Salazar Garcia', 'marlonsg220@gmail.com', NULL, '$2y$10$DqEJBucY.LMaNNHBKCofiOCNuA3B7SBoIWB/LQ0M6HU5CaPZTqW3C', '2024-07-15', '1', NULL, '2024-07-14 14:45:59', '2024-07-14 14:45:59'),
(5, 'Juan Perez', 'juan@gmail.com', NULL, '$2y$10$s2XSru4uzyvnYTGaBYCBlunG1KeQGfHtllUsvuWGPJmc4zk73xp.W', '2024-07-15', '1', NULL, '2024-07-15 12:13:13', '2024-07-15 12:13:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asistencias_miembro_id_foreign` (`miembro_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `miembros`
--
ALTER TABLE `miembros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `miembros_email_unique` (`email`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ministerios`
--
ALTER TABLE `ministerios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `miembros`
--
ALTER TABLE `miembros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `ministerios`
--
ALTER TABLE `ministerios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_miembro_id_foreign` FOREIGN KEY (`miembro_id`) REFERENCES `miembros` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
