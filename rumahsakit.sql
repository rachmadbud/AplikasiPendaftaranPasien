-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2025 at 06:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('asd@asd|127.0.0.1', 'i:1;', 1737481780),
('asd@asd|127.0.0.1:timer', 'i:1737481780;', 1737481780);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_21_064738_create_pasien_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `no_ktp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `alamat`, `no_hp`, `no_ktp`, `created_at`, `updated_at`) VALUES
(2, 'Dhika asasas', 'Itaque eos voluptatem blanditiis', '081369794299', '162783748739823', '2025-01-21 06:57:53', NULL),
(6, 'Nama lorem', 'lloremloremloremlorem', '123123', '12323123', '2025-01-21 01:26:56', '2025-01-21 01:26:56'),
(8, 'Oke', 'oke', '123', '123', '2025-01-21 07:54:01', '2025-01-21 07:54:01'),
(9, 'PiVx6kkD2R', '0Yotl35tyc', '08561152894', '087141741336', '2025-01-21 09:22:07', '2025-01-21 09:22:07'),
(10, '18kUFtnRNe', 'cKc5iEJP5E', '086353115347', '081777922593', '2025-01-21 09:27:51', '2025-01-21 09:27:51'),
(11, 'Melyssa Murray', '48084 McGlynn Lakes\nNew Naomieport, TX 53656', '(765) 375-7107', '2221123493622756', '2025-01-21 09:40:11', '2025-01-21 09:40:11'),
(12, 'Cierra Gulgowski', '4884 Bode Estate\nEast Guadalupe, RI 21267-3816', '+1.732.503.6355', '4556714104955303', '2025-01-21 09:40:11', '2025-01-21 09:40:11'),
(13, 'Koby Miller', '71114 Lebsack Walk Suite 032\nEast Joesph, MO 87607', '(984) 472-2298', '2221113971845813', '2025-01-21 09:40:11', '2025-01-21 09:40:11'),
(14, 'Kennedi Pouros', '221 Legros Island\nLake Laurel, HI 17952', '334.420.7986', '5503594557247965', '2025-01-21 09:40:11', '2025-01-21 09:40:11'),
(15, 'Bobbie Herzog', '7962 Simone Centers\nLakinhaven, RI 43290-5160', '971-341-1372', '3589190956968442', '2025-01-21 09:40:11', '2025-01-21 09:40:11'),
(16, 'Prof. Cleo Gulgowski', '7765 Loy Manors Apt. 251\nFriesenland, AL 31752', '+19565454731', '2624281651335745', '2025-01-21 09:40:11', '2025-01-21 09:40:11'),
(17, 'Irving Gibson', '970 Hilpert Rapids\nSouth Jamieville, GA 51616', '234.358.8258', '4929958736114033', '2025-01-21 09:40:11', '2025-01-21 09:40:11'),
(18, 'Zelma Mohr', '64497 Treva Prairie\nAudreytown, NY 55337', '+1 (734) 568-2949', '6011111354905639', '2025-01-21 09:40:11', '2025-01-21 09:40:11'),
(19, 'Dr. Makenna Ziemann', '5725 Runte Underpass\nLake Niko, VT 92507-3969', '+14846074950', '6011259036717300', '2025-01-21 09:40:11', '2025-01-21 09:40:11'),
(20, 'Citlalli Rowe', '276 Marcelle Greens Apt. 103\nWestport, VT 89393-3181', '386.701.1441', '5275988367735977', '2025-01-21 09:40:11', '2025-01-21 09:40:11'),
(21, 'Dr. Chad O\'Conner', '2848 Elissa Orchard\nNorth Raeganfurt, SC 50188', '804-276-8301', '2720606410784416', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(22, 'Twila Dibbert', '614 Strosin Mount Apt. 449\nFramifort, VT 33447-9755', '+1 (321) 982-5160', '2432813871604260', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(23, 'Thomas Harris', '7906 Beatty Field Suite 963\nEarlenetown, TX 43267-6965', '415-655-3308', '4929970360047306', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(24, 'Larissa Beier', '645 Genoveva Ramp\nLake Leola, AK 35706', '360.870.6151', '5505730344149548', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(25, 'Ms. Delfina Hegmann Sr.', '882 Allie Fields\nSouth Loyceborough, RI 39930-0637', '+1-772-254-3353', '346501922098959', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(26, 'Ericka Lynch', '702 Cormier Parkways Apt. 269\nLarkinport, MO 89990-4992', '717-622-1435', '5559973473209726', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(27, 'Zula Kiehn II', '90526 Elna Spurs Apt. 558\nPort Shana, FL 85441-2284', '520.935.6239', '371083630792726', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(28, 'Prof. Gabrielle Tromp', '3664 Krystel Viaduct\nSouth Ryann, KY 24126-3626', '+1-315-965-0601', '4770597510423', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(29, 'Ms. Mia Kozey', '800 O\'Reilly Haven Suite 065\nJohnsport, LA 21694', '+1.251.441.3894', '4532398936746616', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(30, 'Jazlyn Tromp', '2777 Abernathy Curve Suite 862\nLake Carminefurt, IA 80486', '+1-740-295-5193', '4485889299508160', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(31, 'Frankie Senger DDS', '58442 Romaguera Common Apt. 694\nKozeyfort, MN 83761', '(269) 885-2992', '4539333037793509', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(32, 'Adelle Heller DVM', '149 Schumm Viaduct\nSantoschester, RI 73455', '660-513-0498', '6011603113195973', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(33, 'Mr. Rocio Hammes III', '1192 Casimer Court\nMoenville, VT 10273', '1-223-574-2008', '6011835472729808', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(34, 'Ocie Littel DVM', '228 Lang Expressway Apt. 403\nNew Allen, KY 21361', '+1.458.573.6457', '4485517893302850', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(35, 'Meagan Fahey I', '817 Runolfsson Via\nChristianashire, AL 17272', '1-929-473-3359', '375475068437913', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(36, 'Isabel West', '5621 Vicenta Freeway Apt. 783\nAlysashire, MS 45376-2630', '1-830-424-0488', '4929151424033299', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(37, 'Mr. Vince Hudson I', '596 Elyssa Lakes Suite 280\nJacobimouth, AL 30233', '463.439.5468', '2720602572645420', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(38, 'Jaqueline Douglas', '9085 Purdy Forges Apt. 604\nPort Naomie, ME 05447-3733', '334.332.0816', '4024007177880', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(39, 'Isabella Schultz', '381 Derrick Alley\nRyleighton, WI 46300-9479', '+1-480-771-1649', '2720882699007494', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(40, 'Kattie Reichel', '964 Hoppe Plains Apt. 435\nLake Kaseybury, GA 83038', '(678) 696-6118', '376739457615069', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(41, 'Sydney Kerluke', '25549 Neal Station Suite 047\nSouth Christopher, OR 77617-6480', '+1-209-713-4066', '6011771366407476', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(42, 'Arely Harvey Sr.', '9291 Keven Fields\nFlatleychester, WY 53479-6983', '810-399-9905', '4182429394926086', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(43, 'Lionel Rau', '26928 Eichmann Loop Suite 331\nNorth Rosalinda, NC 66170-8293', '+1-845-434-9468', '5442990718419176', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(44, 'Adelle Goldner', '9876 Uriel Points\nLake Candace, NM 75597', '1-586-784-9893', '378487624203835', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(45, 'Isadore Friesen', '673 Tomasa Stravenue\nSouth Brendahaven, OK 74438', '+1-802-997-8270', '4024007139416365', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(46, 'Everardo Quitzon', '61418 River Ridge\nSouth Nyahchester, ND 40412', '+1 (540) 634-1205', '5256622764298825', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(47, 'Retta Emmerich', '347 Petra Road\nDejashire, WA 92162-0547', '(754) 472-4006', '4916765751128722', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(48, 'Jett Klocko', '77341 Cummerata Junctions\nRodgerborough, SC 79550-7978', '408-939-0927', '4556388258387058', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(49, 'Prof. Lydia Bechtelar', '6642 Gideon Trail Apt. 073\nGaylordton, AZ 33352', '+1 (458) 396-2176', '2492036936734081', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(50, 'Lavina Hoeger', '31456 Prosacco Lane Apt. 119\nPort Gerardo, VA 89574', '1-520-691-2923', '4916491744208188', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(51, 'Marion Deckow', '9562 Schmitt Fall Suite 039\nReynoldsville, NM 76954-4114', '+1.445.458.2595', '4024007105352', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(52, 'Mr. Keanu Davis IV', '587 Kamren Shore Suite 444\nLuraview, DE 17515-3271', '+1-878-905-3055', '5532401038142176', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(53, 'Royal Kirlin', '199 Jenkins Mountain Suite 434\nEast Lesley, ME 40866', '+1-309-536-9298', '2720042487690015', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(54, 'Michaela Harvey', '8266 Stoltenberg Haven\nMaurineside, LA 24872-1063', '1-903-417-6349', '3589667080049405', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(55, 'Osborne Prohaska', '4861 Stracke Street Suite 654\nBlandamouth, NC 14317-4632', '802.229.9390', '5115438635208476', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(56, 'Prof. Emma Wolf V', '51327 Schinner Mountains\nLebsackbury, MO 60862-8506', '402-441-2192', '4485395801609546', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(57, 'Lafayette Witting', '77958 Hahn Corners Suite 916\nErnserfort, AZ 57073-1792', '520-492-4562', '4024007105715071', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(58, 'Laura Lynch', '596 Watsica Points Suite 329\nNew Nikomouth, NE 36478', '+1.978.276.2253', '6011346974204175', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(59, 'Prof. Hershel Murphy Sr.', '86554 Hoppe Greens\nHilbertside, AK 77820', '+16512691735', '4539842281375532', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(60, 'Ms. Candice McClure I', '9388 Adan Path\nRitchiehaven, NV 72473', '+1-240-367-5655', '6011627317489734', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(61, 'Lorena Konopelski DDS', '3615 Cielo Mountains\nD\'Amorefort, PA 87278', '1-414-266-9157', '4539596944781862', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(62, 'Prof. Murray Rice', '15398 Delaney Underpass\nHassanshire, VA 93581', '+1 (501) 855-8395', '4365490106095791', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(63, 'Diamond Erdman', '380 Strosin Extensions\nLake Maximillia, NY 23066', '+1-702-848-2351', '4716921210924878', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(64, 'Miller Stanton', '85492 Corbin Ridges\nLake Lora, VT 34363-5578', '929-780-1364', '2327281126206281', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(65, 'Dr. Sigmund Batz', '812 Ryann Fort Suite 737\nWest Aurelia, IL 99508', '(347) 218-2366', '4539954475232153', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(66, 'Miss Yesenia Hill II', '431 Raymond Springs\nMerlbury, MT 64782', '1-380-265-1308', '4716774638778958', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(67, 'Unique Runte IV', '78184 Milo Estates Suite 858\nFadelside, VT 65293', '+13156647261', '2606078734283880', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(68, 'Jarrell Gottlieb', '495 Gerson Ferry Apt. 758\nLudiefurt, FL 88480', '1-612-232-0550', '4957601257076893', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(69, 'Salvatore Stroman', '53801 Bogisich Harbor\nSouth Kali, NY 74116-3983', '+17268897413', '4929176968119', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(70, 'Mrs. Candice Collier', '789 Matteo Streets\nMosciskibury, KS 66270', '+1-352-319-4409', '2720096141287758', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(71, 'Kendrick Weimann', '45102 Zion Run Apt. 325\nOrnville, CO 39695-6091', '1-843-404-0571', '4581017519886769', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(72, 'Mr. Clement Beahan', '59316 Jazmyn Drive Apt. 297\nEast Adolphus, ME 26391', '+15594801994', '4532208331360311', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(73, 'Woodrow Murazik III', '7750 Tate Brooks\nSouth Casandra, WA 60113-5818', '+12403058003', '4539157516330040', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(74, 'Wallace Crona', '9673 Rahsaan Land Suite 615\nLarsonhaven, IA 89622-2959', '551-771-2073', '4485632071971937', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(75, 'Maye Ledner', '637 Kris Ridges\nTristianhaven, OH 48896-2036', '(718) 666-3565', '340438505008129', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(76, 'Mayra Marvin IV', '91915 Hagenes Ford Apt. 376\nEast Esperanzamouth, OR 06914', '+1-551-750-5965', '5131343801502845', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(77, 'Raul Smitham IV', '1250 Dietrich Views\nJennieton, CT 35670-4279', '(262) 509-1466', '2501787807385580', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(78, 'Lois Pfeffer I', '4242 Doyle Lakes\nPort Henriton, OK 34530', '419.829.4323', '348303824538911', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(79, 'Prof. Percy Boyer', '90069 Vida View\nNorth Theresia, NM 88662', '628.516.7799', '3589018273058896', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(80, 'Llewellyn Russel', '1834 Mayer Islands Apt. 036\nNew Judahshire, TX 75667', '1-609-872-8317', '4916606968083716', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(81, 'Chet Leannon', '803 Jess Underpass\nRoxanneport, TX 23920', '+1-630-491-2131', '4024007148147', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(82, 'Mrs. Josephine Mertz', '8571 Mayert Turnpike\nMacejkovicside, TX 99231', '+1-754-679-3409', '4716029062268079', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(83, 'Tate Rippin', '733 Braun Squares\nMooretown, NM 64631-7891', '260-538-9605', '4485103549299046', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(84, 'Gayle Streich', '496 Earline Corners Apt. 732\nEast Larry, PA 72572-8298', '+1.848.200.7659', '3528381772913969', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(85, 'Prof. Abdul Jerde', '2380 Yvette Alley\nBodechester, SC 34408', '(720) 779-0915', '4929551095673770', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(86, 'Prof. Benedict Rau', '4995 Konopelski Knolls Apt. 344\nTurnerstad, MS 16866-1619', '+1-760-972-2503', '4916842373824846', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(87, 'Hailey Greenfelder', '21171 Hackett Extension\nGlennastad, SC 23899-1804', '573.535.7301', '2221821327072078', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(88, 'Marta Von', '7346 Hickle Green\nWest Donnieville, WI 23029', '979.416.6405', '4556047369195442', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(89, 'Dr. Orlo Greenfelder', '12747 Ebert Inlet Suite 007\nEast Darron, GA 06039-8038', '(320) 240-7996', '5523423678090839', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(90, 'Dr. Lew Jenkins', '24644 Alda Route Suite 604\nWest Marianoville, CT 96245', '+1-726-828-6926', '2221445630721732', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(91, 'Mrs. Golda Considine Sr.', '9364 Alan Rue\nNayeliville, HI 67740', '1-828-212-1131', '2221430493766875', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(92, 'Nadia Ferry', '480 Jayme Parkways\nFeestborough, GA 63297-8052', '270-237-5720', '2221109056959644', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(93, 'Golden Heathcote III', '997 Mueller Summit Apt. 610\nSouth Casandra, IN 17242', '+1-385-777-7365', '4556101996661266', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(94, 'Dixie Gerhold', '959 Batz Burg\nWest Jordyport, HI 28057-3241', '864.240.1173', '3589347159381100', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(95, 'Brielle Kautzer', '279 Verner Wall Suite 378\nNew Geovannyberg, DE 35828', '1-801-427-8859', '4532992545764034', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(96, 'Gabrielle Ruecker Jr.', '446 Earlene Path\nKodyview, WI 98928', '1-606-816-0620', '4024007172193558', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(97, 'Dr. Humberto Gerlach', '574 Spencer Forge Suite 188\nEast Ward, NM 17387-2246', '+1 (407) 749-0060', '5461350819630849', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(98, 'Prof. Jane Macejkovic', '42730 Schumm Summit\nEast Owenstad, TN 78424-7239', '628-415-6352', '4024007196484', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(99, 'Dr. Dan Baumbach', '28587 Dianna Highway Apt. 572\nGeovannibury, NJ 15166-9919', '1-507-328-1962', '6011536522751954', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(100, 'Malinda Collins', '72596 Littel Ranch\nCasperstad, NH 44230', '+1 (678) 751-1165', '4532785953782674', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(101, 'Merle Nikolaus', '828 Rusty Branch\nCristopherborough, NM 51825', '1-856-323-6136', '5393418625358583', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(102, 'Serena Bins', '1284 Elinor Centers\nWiegandside, NE 44516-2811', '+1-808-770-7203', '5446020895850369', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(103, 'Abbey West', '883 Schuster Isle\nNormaborough, CO 01216', '801.763.0646', '2616488308395002', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(104, 'Dr. Crystel Roob', '5521 Shane Islands Apt. 527\nTerryport, GA 55515-9112', '(682) 603-5955', '4485065989093546', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(105, 'Maxine Donnelly', '91149 Dion Port\nLake Ransomhaven, RI 53791', '272-773-4954', '2645766460572517', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(106, 'Miss Maeve Waters', '5643 Hermiston Divide Suite 352\nLednerview, MO 28904-6067', '(743) 726-7077', '4716499438063076', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(107, 'Mrs. Birdie Hand', '150 Jabari Rapid\nValerieburgh, NH 52653', '747-702-1872', '3589248037103676', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(108, 'Rebekah Miller', '3893 Neal Ridges\nEast Eudora, CA 54858', '+1 (757) 760-1845', '4836597029943419', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(109, 'Stacy Hayes', '78339 Elda Meadows\nNorth Lionel, AK 02120-6265', '276.995.4858', '2312271143373005', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(110, 'Oral Krajcik', '441 Bauch Loaf Apt. 127\nEast Amanda, NV 39797', '+1.484.473.9496', '6011773002228373', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(111, 'Neva Casper', '90816 Ocie Trail Suite 042\nEast Faustobury, WA 14915', '+1-614-482-7300', '5224766938604639', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(112, 'Izabella Yundt III', '819 Kuvalis Isle\nWest Maryjane, LA 06645', '1-858-644-5452', '4024007123327271', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(113, 'Mrs. Maddison Corwin PhD', '79256 Brooklyn Springs Apt. 413\nHarberbury, AZ 42048', '+1 (743) 839-3485', '6011214898405387', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(114, 'Dr. Eliseo Kovacek', '6615 Russel Mills\nWestland, MI 41071-9069', '+1-385-582-8293', '3589567575123956', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(115, 'Emelia Schoen', '34606 Abelardo Trail Suite 034\nCrooksside, IA 10440-1071', '254-805-4056', '4716421733479393', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(116, 'Ethelyn Kris', '1688 Sincere Groves Apt. 569\nEast Alexandrialand, UT 18523', '(808) 518-0349', '5424251784992048', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(117, 'Kale Weimann', '35520 Rolando Mission Apt. 252\nEffertzfort, LA 92679', '+1-303-240-8622', '4556570563653619', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(118, 'Bud Pfeffer', '8244 Norberto Cliff Suite 324\nHassiefurt, MA 50401', '878.817.4772', '5482994006963680', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(119, 'Jeffery Rath', '90760 Clement View Suite 058\nLake Carmen, ND 32773-0392', '(785) 806-7179', '5174742871379026', '2025-01-21 09:41:22', '2025-01-21 09:41:22'),
(120, 'Prof. Arvel Hahn Jr.', '6462 Klein Spur\nJeniferton, SC 16819', '+1-317-468-8887', '4916461442392030', '2025-01-21 09:41:22', '2025-01-21 09:41:22');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('JNNwXpTvFZCH2YkKVP4kpZFU6oENB8DCyGl6RXY6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFh2SWlLQmNPenJ2YjBGeFJDeHVUY0ZLN3JUckJ6cERZaG5TZUVzQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1737481720);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dino kuning', 'dino@mail.com', NULL, '$2y$12$6R/xA5dwOGoySU.2U0avHuD8Mi.gS7eLKzlOMmb2CjLQ7DJuQRUiu', NULL, '2025-01-21 07:16:52', '2025-01-21 07:16:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
