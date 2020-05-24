-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 23, 2020 at 07:18 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id12764483_shopforme`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `docRef` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `imageUrl` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`docRef`, `imageUrl`) VALUES
('5o6raQdgcGwFO6HMP6Vc', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fde26e7c9-5edd-4e84-a02d-995037c60b99.jpg?alt=media&token=ce932859-443c-4158-9cf6-81849bdbe1cf'),
('6dqpM3yKLiWxx2GRvpGr', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fb7d94eaf-8419-43f1-83db-5085fcb428cc.jpg?alt=media&token=cd7417c1-1bb5-4e6c-a0c5-72c880329077'),
('e2GJJSrHOCf2q3do0Zlx', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F38de74a9-eb16-491f-8de4-5f1929309c1b.jpg?alt=media&token=960aec9c-ae93-421a-bd78-020bc5e130b6'),
('KFO1jueKFMNXYziYoP3r', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F7abf168a-001f-41a9-a95e-3d776d93412e.jpg?alt=media&token=33c35917-be9e-4f66-90ca-ee81a9ecaf79'),
('MRqPYGobbCrvjc6EqikN', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fec50aea1-b603-4021-91d9-130c89232ae0.jpg?alt=media&token=33a2d20a-0812-4280-a94a-9e8f63965e46'),
('OnerXfGkK4a4R0MXBP69', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F273c673b-6020-4b6c-8036-a4db8fd63bb2.jpg?alt=media&token=1ed56c48-7004-445f-a640-1453325ed969');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `cat` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `imageUrl` varchar(800) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat`, `imageUrl`) VALUES
(2, 'Grocery', 'https://laxcoinc.000webhostapp.com/laxco/ShopForMeDb/Pics/cats/grocery.png'),
(3, 'Drinks', 'https://laxcoinc.000webhostapp.com/laxco/ShopForMeDb/Pics/cats/drinks.png'),
(4, 'Utensils', 'https://laxcoinc.000webhostapp.com/laxco/ShopForMeDb/Pics/cats/kitchenwares.png'),
(5, 'Stationery', 'https://laxcoinc.000webhostapp.com/laxco/ShopForMeDb/Pics/cats/stationery.png'),
(6, 'Beauty Products', 'https://laxcoinc.000webhostapp.com/laxco/ShopForMeDb/Pics/cats/beauty.png'),
(7, 'Others', 'https://laxcoinc.000webhostapp.com/laxco/ShopForMeDb/Pics/cats/category.png');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `driver_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_type` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `plate` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `date_joined` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `approved` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`driver_id`, `full_name`, `id`, `phone`, `vehicle_type`, `plate`, `date_joined`, `location`, `approved`) VALUES
('dSxpwFsBYNXGtL1p029E6IrOAqZ2', 'Clement', '37735325', '0705146547', 'Car', 'KCQ123K', 'Saturday, April 18, 2020 14:01', 'Eland', 'approved'),
('r1WuRAblAZUFkNeZsYwidgdRCiA3', 'Mwarabu John', '32672496', '0716698513', 'Motorbike', 'KMDF758K', 'Saturday, April 18, 2020 13:02', 'Eland', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `menu_cats`
--

CREATE TABLE `menu_cats` (
  `id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `cat` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_cats`
--

INSERT INTO `menu_cats` (`id`, `cat`, `type`) VALUES
('0g7RrDA4XRDdKZSTtf1w', 'Gin', 'club'),
('3uWSlydUyTTGJwG49F2a', 'Hard Cider', 'club'),
('4grKToeWbSiBbMX1ahmQ', 'Champagne', 'club'),
('78fCKRXvFDjYDnZgCDFU', 'Slides', 'hotel'),
('b3EeSBgu0YKauGVENGbF', 'Beverages', 'hotel'),
('CqVlcSGffadFStLQ4NKM', 'Entrées', 'hotel'),
('CXKJUUcpaU3WjPlSjI7k', 'Liqueur', 'club'),
('cXuyo4DbYGg8Or3VHTcj', 'Desserts', 'hotel'),
('DEVNMUcDm9h94YoolsHE', 'Appetizers', 'hotel'),
('dK9ricv8JuLiso2rRlbh', 'Cognac', 'club'),
('Dnj60Afw2uBphpBrxLEr', 'Aperitif', 'club'),
('Gwj7vDa25T5gYTTetkNZ', 'Mixer', 'club'),
('HRgo0TmCL3z46IUeyLof', 'Vodka', 'club'),
('I0w8QEUqq8oLtBJNrUAR', 'Static', 'hotel'),
('k2iJW4OfCMjbZHcYAqy1', 'Wine', 'club'),
('kTggAjMElEGp09TgFHmM', 'Beer', 'club'),
('NvObfvGhfl48ZAd2TXTX', 'Brandy', 'club'),
('pGdpshxmSo2IuBoHoX1V', 'Energy Drink', 'club'),
('rrXy3kdxjXsuLjrv0elJ', 'Whiskey', 'club'),
('uotjueW9vOu9tKzOnDch', 'Rum', 'club'),
('vPuMNvc6ZX6Y2UoDzyEI', 'Tequila', 'club'),
('xAux64zFYE1o9ihkL49U', 'RTD', 'club');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `menuitem` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `shop_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `food_cat` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `image`, `menuitem`, `shop_id`, `price`, `food_cat`, `dateCreated`, `type`) VALUES
('05g0n5FRCbUOVdhtcDGp', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fc75e8f07-7b83-47e4-b2b7-684fe222d032.jpg?alt=media&token=047dd99e-8ea3-4ff2-8a9d-cc6f1a2412b9', 'Southern Cream Corn', 'BrryKGY7wlw8aT9zjLVN', '160', 'Entrées', 'Saturday, May 9, 2020 22:22', ''),
('0PtA1nGI8Y5figT7ZfGi', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F7299ad19-b838-4885-976d-8d364e6574da.jpg?alt=media&token=f87ea652-1ecf-4c42-97bb-78dfe73119c6', 'Moët & Chandon  Rose Imperial 750ml', '6KEgNbAF3rfilYaGTix6', '8980', 'Champagne', 'Sunday, May 17, 2020 17:15', 'club'),
('0yDe2NKtKbugZaXxSO1q', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F889b723f-2ce7-4b5f-a845-777c61e31dff.jpg?alt=media&token=bd7dc1c1-7ad4-4e42-8b16-22d51185dbc1', 'Snapp 330ml', '6KEgNbAF3rfilYaGTix6', '210', 'RTD', 'Sunday, May 17, 2020 00:04', 'club'),
('11MIp64jfDVlxl6JdP2z', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fd286567c-6d6b-48fa-a10d-bf890741770b.jpg?alt=media&token=96614c17-286b-48d1-baff-e36c89c08e58', 'Chocolate cake', 'BrryKGY7wlw8aT9zjLVN', '220', 'Desserts', 'Saturday, May 9, 2020 21:21', ''),
('1h09IMLOAXAiNKIEyMDm', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F6fbfcd4c-a4a3-4754-9b2b-16c58549a79b.jpg?alt=media&token=264fd001-8d87-4582-ac5a-c31aa01f3adf', 'Del Monte Mixed Berry 100ml', '6KEgNbAF3rfilYaGTix6', '240', 'Mixer', 'Saturday, May 16, 2020 23:41', 'club'),
('1YzSWon7QcYN5rKAeSNb', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F8e3eeb8f-d66e-4429-8f04-4a9c22eabe0e.jpg?alt=media&token=86280ee3-9fc6-4042-89a8-dce472af3550', 'Pizza', 'BrryKGY7wlw8aT9zjLVN', '950', 'Entrées', 'Saturday, May 9, 2020 22:23', ''),
('27k5Ili4jJIzvIhuMAfm', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F161d7963-9f4f-400d-8278-08db3610b97f.jpg?alt=media&token=4af9efea-88b6-4dbf-b3bb-27b55e478b4b', 'Hunters Dry 330ml 6 pack', '6KEgNbAF3rfilYaGTix6', '1310', 'RTD', 'Sunday, May 17, 2020 16:32', 'club'),
('2Bg9yOlKWEZnwiuJdIvL', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F82a2d222-99d8-4de0-9da4-43cef88329e3.jpg?alt=media&token=f96f02b4-2264-430d-934c-7569cf31d8d0', 'Stella Artols', '9javcc1bd3axm4YApSSq', '750', 'Beer', 'Monday, May 11, 2020 16:52', 'club'),
('3Kpt1JhFP3Pxddo5oSzo', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fdb270d4e-0652-47d9-8d90-f74e91e4645b.jpg?alt=media&token=fa44a728-cbb0-4c4b-9c40-d5ee7a2355b4', 'Moët & chandon  imperial  Brut 750ml', '6KEgNbAF3rfilYaGTix6', '7350', 'Champagne', 'Sunday, May 17, 2020 17:19', 'club'),
('49cZjMC0l62ezznQO7ZS', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F45f1aef1-6bef-43ba-b663-a968ae585945.jpg?alt=media&token=0254cb86-0472-41bc-9e66-e9416f6efbca', 'Desperados 330ml 6 pack', '6KEgNbAF3rfilYaGTix6', '1430', 'Beer', 'Monday, May 18, 2020 13:41', 'club'),
('50uE7yIWyC6KrvVf91Y2', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F736e7dc2-a29a-437b-8170-c7ce669f0f8f.jpg?alt=media&token=176604e6-19e7-4a45-91d8-31f4174a8125', 'Red Velvet Cookies', 'BrryKGY7wlw8aT9zjLVN', '99', 'Desserts', 'Saturday, May 9, 2020 21:28', ''),
('5dljPtPHV075LfiWYRa6', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fceef3a0d-a13a-4fa6-91d3-28a75ec1baa2.jpg?alt=media&token=234de688-cdd2-40b4-abc0-7704912c42ea', 'Cellar Johannisberger White 5L', '6KEgNbAF3rfilYaGTix6', '3290', 'Wine', 'Tuesday, May 19, 2020 10:56', 'club'),
('5eQcZGZdi9EU40ZahGOL', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F398e2b51-0ef0-48fb-9834-58bce81bec0e.jpg?alt=media&token=1de920e6-66ac-4a2e-aa40-6f772dfc77ce', 'Veuve Clicquot  rose 750ml', '6KEgNbAF3rfilYaGTix6', '8500', 'Champagne', 'Sunday, May 17, 2020 17:11', 'club'),
('5k0Fyzr4XOcOYDGHZs96', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F950eef27-3b6c-4be4-b9a1-2dc4c0c39a63.jpg?alt=media&token=1f0d7b03-5879-4947-849e-ffcd3918a207', 'Faxe 10% 509ml', '6KEgNbAF3rfilYaGTix6', '220', 'Beer', 'Monday, May 18, 2020 13:50', 'club'),
('5tInrwFwHhfildIrpqAb', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F789e0af9-9d03-4404-a2d3-6d971f21cd5a.jpg?alt=media&token=ab5a7ea3-a729-4e70-b568-08ea7d4d1ade', 'Mashed potato casserole', 'BrryKGY7wlw8aT9zjLVN', '180', 'Entrées', 'Saturday, May 9, 2020 22:16', ''),
('5wvlsNoNeD87SbjOY5pC', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F111963f3-db11-496e-8c44-a2c341641999.jpg?alt=media&token=f0eb248d-46fd-4bdd-a0e1-60267f82721a', 'Tusker Cider 500ml 6 pack', '6KEgNbAF3rfilYaGTix6', '1250', 'RTD', 'Sunday, May 17, 2020 00:06', 'club'),
('6f1QgHRF8bO581jBQJxJ', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F75a16f8b-240a-4e30-9551-f7c133dd0d0b.jpg?alt=media&token=595713cc-e76e-4800-bb20-29b62ce99ad4', 'Douglas Green Chardonnay 750ml', '6KEgNbAF3rfilYaGTix6', '1400', 'Wine', 'Tuesday, May 19, 2020 21:13', 'club'),
('6ss6FdWQ878nVoUh48P0', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fa6c9343b-83ed-430b-a2fc-ec28aa3368a9.jpg?alt=media&token=5c1465dc-9ed0-4ef3-a4e2-bbfccfc913e1', 'Kahlua 700ml', '6KEgNbAF3rfilYaGTix6', '2040', 'Liqueur', 'Monday, May 18, 2020 22:35', 'club'),
('74kRKaujkQ4IxCeZD7Xb', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ff2736f14-2570-4dfb-b618-3f0f37e9455b.jpg?alt=media&token=f6a1e4dc-a9fd-4b60-920f-bdc496889ca3', 'Mayai Fried', 'BrryKGY7wlw8aT9zjLVN', '120', 'Appetizers', 'Wednesday, May 6, 2020 16:45', ''),
('7cM8W8eQvZbZ1pOn85lI', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fb14ba5a5-4352-4463-b9ce-28f472097d72.jpg?alt=media&token=889d4889-3ba0-455e-b8b3-f26947691889', 'Drostdy Hof Claret Select 5000ml', '6KEgNbAF3rfilYaGTix6', '3280', 'Wine', 'Tuesday, May 19, 2020 10:52', 'club'),
('7dxZ0DXudYDyvGIaIqUM', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F6d30df77-ffef-4da6-ab62-adb884ce7cdf.jpg?alt=media&token=5c32d1ca-a963-4226-ac31-e0418137b528', 'Tusker Malt 500ml 6 pack', '6KEgNbAF3rfilYaGTix6', '1250', 'Beer', 'Monday, May 18, 2020 13:43', 'club'),
('7IZ6Yd1c7bQKwKsnesmu', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F35cd5013-f5e7-4f61-99be-02618964ef29.jpg?alt=media&token=51e40824-a4bb-4281-ac75-974c32f4e620', 'Del Monte Mango', '6KEgNbAF3rfilYaGTix6', '240', 'Mixer', 'Saturday, May 16, 2020 23:43', 'club'),
('86QGmF9I9aeHTfBIEu58', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F23914ce1-97c5-40ca-84d4-1a3f2066dd2f.jpg?alt=media&token=d6b2b95b-d292-472f-a48a-b69d1d802b5a', 'Tusker Malt 500ml', '6KEgNbAF3rfilYaGTix6', '220', 'Beer', 'Monday, May 18, 2020 13:49', 'club'),
('8bFEiqPwL9xSdvK2wDiQ', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F09b665ac-1d30-452e-947d-98581622fcca.jpg?alt=media&token=ad869354-931b-464c-ac22-fefec62e390f', 'Viceroy 10 750ml', '6KEgNbAF3rfilYaGTix6', '2780', 'Brandy', 'Sunday, May 17, 2020 17:32', 'club'),
('8gb9EbqiUEBTzNKe1hMt', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F045ec83b-b14b-45cd-a84a-712a0c584b61.jpg?alt=media&token=804c143a-2095-47d4-af1f-a233309346ea', 'Cellar Cask Johannisberger White 750ml', '6KEgNbAF3rfilYaGTix6', '900', 'Wine', 'Tuesday, May 19, 2020 14:29', 'club'),
('8kxrmS687nFwUXLvOP1T', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F24c09219-5676-4a42-aead-2198b05f11ef.jpg?alt=media&token=6c9b6249-bd80-4192-9b19-824e2cf8deb4', 'Pineapple Juice', 'BrryKGY7wlw8aT9zjLVN', '120', 'Beverages', 'Saturday, May 9, 2020 10:10', ''),
('8uFrvktPZGe860OyeYIW', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F03e1b0ca-79fe-4061-b61f-678647108c9d.jpg?alt=media&token=bb9f4215-88e7-407e-9896-76e5297aef6a', 'Tusker 750 ml', '9javcc1bd3axm4YApSSq', '300', 'Beer', 'Monday, May 11, 2020 16:48', 'club'),
('8vUDbvcAxQrWfWxCPWZq', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ffe1790f2-6b89-4034-80ff-3e3f8930845e.jpg?alt=media&token=1be85da9-d938-46ae-bf23-2378811b4313', '4th Street Sweet White  5L', '6KEgNbAF3rfilYaGTix6', '3290', 'Wine', 'Tuesday, May 19, 2020 14:04', 'club'),
('974nMJrYQPU90pTxUxGZ', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fe402290b-52a7-48ba-b462-6493543fc978.jpg?alt=media&token=26495da3-c3f3-47a6-bca1-9a94736da997', 'Ozone', '6KEgNbAF3rfilYaGTix6', '200', 'Energy Drink', 'Saturday, May 16, 2020 23:48', 'club'),
('a5NCp64mJpStxbFNZDBa', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F7dd0a6c2-5c08-496d-aab4-fef1a86a46d6.jpg?alt=media&token=1ecc14bd-60b7-4f0b-bbf7-c7c0d1d43519', 'Martini Bianco 750ml', '6KEgNbAF3rfilYaGTix6', '1780', 'Aperitif', 'Sunday, May 17, 2020 16:45', 'club'),
('akdcDgJdhNGHkOuvfjee', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F5b158f09-409c-4181-b1d7-4978aa302f32.jpg?alt=media&token=3ac5a74a-8f27-43f9-861f-780d81bc97a9', 'Red Bull 6 pack 250ml', '6KEgNbAF3rfilYaGTix6', '1190', 'Energy Drink', 'Saturday, May 16, 2020 23:50', 'club'),
('AY0EskesnCn1g5e7Gq27', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fcaa5f6c5-9267-4bcd-bd3e-368f5a480886.jpg?alt=media&token=558586a0-dcec-4251-8fa8-416b6418ad72', 'Del Monte Orange', '6KEgNbAF3rfilYaGTix6', '240', 'Mixer', 'Saturday, May 16, 2020 23:41', 'club'),
('AZWww7lKaZ6EH6YclmKP', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F31c01ef5-02a2-46b8-aec9-8068b8e9d70e.jpg?alt=media&token=a9560000-4aa1-493c-b466-a2dfc26e08c3', 'Mango  juice', 'BrryKGY7wlw8aT9zjLVN', '80', 'Beverages', 'Saturday, May 9, 2020 10:04', ''),
('bCGU1Zh8RFpaAkarGNW0', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fe901a257-efee-42a2-b759-3d08e10c6ffe.jpg?alt=media&token=cae8ea99-5f52-46e6-a87d-11f86f8d2bdd', 'Disaronno Amaleto 1000ml', '6KEgNbAF3rfilYaGTix6', '3190', 'Liqueur', 'Tuesday, May 19, 2020 00:14', 'club'),
('bd39Cp6ASaJWUytPX8aF', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F47de364d-c973-4a4d-a677-f3f3b2bb79c9.jpg?alt=media&token=26f94297-2b8e-4acc-bc87-7ae31e680e15', 'Guiness 500ml 6 pack', '6KEgNbAF3rfilYaGTix6', '1370', 'Beer', 'Monday, May 18, 2020 13:39', 'club'),
('BkBenJIntlZf2RtH5u3N', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F7d2825ea-b0a4-4567-9888-3e374c0a15df.jpg?alt=media&token=2e2d8203-dff3-45c3-9d33-3178d37bc19b', 'Hunters Gold 330ml 6 pack', '6KEgNbAF3rfilYaGTix6', '1310', 'RTD', 'Sunday, May 17, 2020 16:31', 'club'),
('bNUDB6OVKNSKkffs9FqX', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F7fbdceab-f309-4587-aa03-17cb01587340.jpg?alt=media&token=6d893380-0f8a-4b7e-b3dd-304026e64bf0', 'Cointreau 700ml', '6KEgNbAF3rfilYaGTix6', '3340', 'Liqueur', 'Monday, May 18, 2020 22:34', 'club'),
('BQ7dXs3JP9LNzL6IYVDw', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fff8b6ab1-95fd-45fe-b0f3-8ed98d97fb10.jpg?alt=media&token=b23ddf69-4ca1-499f-b44a-2bd82700cffe', 'Douglas Green Merlot 750ml', '6KEgNbAF3rfilYaGTix6', '1400', 'Wine', 'Tuesday, May 19, 2020 21:14', 'club'),
('byV0QTvCV3rp0vs40k6S', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F78d9ab9e-2678-474b-8897-c6cdb0cf4ae3.jpg?alt=media&token=6ab999b2-b0a0-42c2-9d81-e66716131bb4', 'Drostdy Hof Claret Select 750ml', '6KEgNbAF3rfilYaGTix6', '900', 'Wine', 'Tuesday, May 19, 2020 14:27', 'club'),
('C00kbwNA3jV5nBKsjSje', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F20d6edb1-a63f-4fc8-8798-f6c224ee9f34.jpg?alt=media&token=c15aa7c8-3bb9-4b6a-a66d-96ede9f3a194', 'Captain Morgan Black 1000ml', '6KEgNbAF3rfilYaGTix6', '2480', 'Rum', 'Monday, May 18, 2020 11:58', 'club'),
('cNiBTzFNolFvkoZ9yi3T', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F3705383b-ad82-4280-95ff-4f98e45ef5f9.jpg?alt=media&token=bc9e2af4-2294-4315-a67f-1cc33ec2e760', 'Crack Chicken', 'BrryKGY7wlw8aT9zjLVN', '240', 'Entrées', 'Saturday, May 9, 2020 22:17', ''),
('D4dSPwKh9kWYBp84WZ6t', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fc4e72fcb-e360-4655-a28c-ccb29dd7b1a3.jpg?alt=media&token=ca2de8c4-cbb7-4150-87c8-2e442628edc4', '4th Street Sweet Red 5L', '6KEgNbAF3rfilYaGTix6', '3290', 'Wine', 'Tuesday, May 19, 2020 14:02', 'club'),
('D9Srs4TG3ezBcCnorMj4', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ff0b7606e-d7d1-48ab-9c3f-ee16a4650454.jpg?alt=media&token=599e2d81-8744-40b2-afab-05e16728202c', 'Martini Rosso 750ml', '6KEgNbAF3rfilYaGTix6', '1980', 'Aperitif', 'Sunday, May 17, 2020 16:43', 'club'),
('de3KM97NAKDESLBXfwFK', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F33255ab5-9384-452f-9bd3-3edb844f1854.jpg?alt=media&token=894f51cf-30fe-4e2e-a29d-b03977f845d1', 'Smirnoff Guarana 330ml', '6KEgNbAF3rfilYaGTix6', '180', 'RTD', 'Sunday, May 17, 2020 00:03', 'club'),
('dG3ihjqhddz9W7M5zq06', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F0d1feb02-4861-4af4-aa1e-ac2e5a68fdea.jpg?alt=media&token=a967c621-056f-4ff1-8396-0f9870f8bed8', 'Richot 750ml', '6KEgNbAF3rfilYaGTix6', '1450', 'Brandy', 'Sunday, May 17, 2020 17:29', 'club'),
('DKpvtFegHItWn8JDJT0d', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F1a9f96fe-3dc3-493e-b7ec-d94aca6a7921.jpg?alt=media&token=f2b7efec-0ec9-4219-b729-1c1f3d4260a1', 'Nederburg Chardonnay 750ml', '6KEgNbAF3rfilYaGTix6', '1590', 'Wine', 'Tuesday, May 19, 2020 21:00', 'club'),
('dkVve0Iwar3P1nFeuq53', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fe2a85c83-acfb-4a8a-b92c-a279b18fc009.jpg?alt=media&token=76379e86-cfe9-4c48-904a-5efdaa99c64f', 'Heineken 500ml 6 pack', '6KEgNbAF3rfilYaGTix6', '1250', 'Beer', 'Monday, May 18, 2020 14:01', 'club'),
('dN6HSXw1C8AMHpxWRsUW', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F7f1aea0b-8d36-4216-a14c-42ec5aef2f0a.jpg?alt=media&token=3ab5476f-00e6-4e1c-a3fe-feb2a121b4e3', 'Chocolate Chips Cookies', 'BrryKGY7wlw8aT9zjLVN', '75', 'Desserts', 'Saturday, May 9, 2020 21:26', ''),
('dUzssBPFjsRPws2YqQfx', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F1953143f-f5bd-41b6-9b33-26d743adbd2b.jpg?alt=media&token=42f928ac-b5bb-42aa-ad39-443aed94fd0a', 'Savanna Dry 330ml', '6KEgNbAF3rfilYaGTix6', '1310', 'RTD', 'Sunday, May 17, 2020 16:37', 'club'),
('dzssPzsFhPwY0lmtBIFt', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F2a039868-72bd-49d6-a2cb-8b7962f4d86f.jpg?alt=media&token=4a3039e4-5b11-45f7-a7ef-f1a80167656f', 'Kingfisher Strawberry 300ml', '6KEgNbAF3rfilYaGTix6', '160', 'RTD', 'Sunday, May 17, 2020 00:02', 'club'),
('e0iEZDiU36Jdh61ftd4O', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F65ff3f5d-ccb8-4fbd-9dca-5da03e4bb0de.jpg?alt=media&token=0a25a589-4e8a-4899-9bff-39ab1fd7159c', 'Cellar Johannisberger Red 5L', '6KEgNbAF3rfilYaGTix6', '3280', 'Wine', 'Tuesday, May 19, 2020 10:53', 'club'),
('E1ZAFjXFvm309VmIoO58', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F45e0d5d1-d76a-45fb-8d78-eb8945cc4883.jpg?alt=media&token=5c3f4d0b-52c7-48eb-a9ef-2a3231ee2da9', 'Atlas Mega Strong 16 500ml', '6KEgNbAF3rfilYaGTix6', '210', 'Beer', 'Monday, May 18, 2020 13:45', 'club'),
('e6LGdouQlPvNvjBbQheD', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ffe210d73-0549-4407-b628-2184a6787fa4.jpg?alt=media&token=b969eff1-ccbe-4136-b2d6-911002d36a48', 'Best Cream 750ml', '6KEgNbAF3rfilYaGTix6', '1100', 'Liqueur', 'Tuesday, May 19, 2020 00:17', 'club'),
('E8sD0CiTLZP6ifdLe1ir', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F0c0aa11c-af55-4444-866d-c082a9c7e832.jpg?alt=media&token=3f62947f-2662-4c36-a10d-767307d154f9', 'French juice', 'BrryKGY7wlw8aT9zjLVN', '120', 'Beverages', 'Saturday, May 9, 2020 21:16', ''),
('EsjInyQ0lUkW58LwMT4h', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fe27ba287-8174-4a52-a7a9-9cb7e9998b9a.jpg?alt=media&token=47fc0b97-e355-4bb7-a164-1daedc0d1351', 'Douglas Green Sauvignon Blanc 750ml', '6KEgNbAF3rfilYaGTix6', '1400', 'Wine', 'Tuesday, May 19, 2020 21:29', 'club'),
('F48KmMZUXMmMeacIZydX', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F42356310-3dd0-47fb-94dc-bb51a8ac9ffe.jpg?alt=media&token=7ac1af32-ddc5-4aa4-b5c4-b372ff4c9642', 'Flirt Lemon Vodka 750ml', '6KEgNbAF3rfilYaGTix6', '1200', 'Vodka', 'Saturday, May 23, 2020 21:47', 'club'),
('F5JdwWEGSg9j4IMA0WB1', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F10d3ae22-2fe1-479c-94f6-8dbe8f28954b.jpg?alt=media&token=2ba4819e-394f-4159-90f6-45bf5d427eb5', 'Martini Bianco 1000ml', '6KEgNbAF3rfilYaGTix6', '2180', 'Aperitif', 'Sunday, May 17, 2020 16:48', 'club'),
('FlDWBqfd1yEMhZ6YrFNI', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F678f50d6-8dcc-4d61-b2e8-053e94d0ddd0.jpg?alt=media&token=d7502286-c904-45aa-bb31-bea78fe40c7d', 'Drostdy Hof Grand Cru 5L', '6KEgNbAF3rfilYaGTix6', '3490', 'Wine', 'Tuesday, May 19, 2020 14:05', 'club'),
('fMfWrTHumgxzyqSFi5GD', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ff7e06b48-0c0c-4bf3-80db-9901ac0ff739.jpg?alt=media&token=b21836fb-4430-4656-8fd6-8aeb3b273dc9', 'jams', 'BrryKGY7wlw8aT9zjLVN', '130', 'Appetizers', 'Wednesday, May 6, 2020 18:27', ''),
('FozzWQk6zrVHW5IUKKlm', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fa8aa095c-1d91-4557-b697-00a2fd1f47e3.jpg?alt=media&token=7829f62b-53a8-453f-b3c5-a6e7f5fe713f', 'Dom Perigne 750ml', '6KEgNbAF3rfilYaGTix6', '21700', 'Champagne', 'Sunday, May 17, 2020 17:17', 'club'),
('fpX7FpYqOhjFrmGb3vOA', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F8c4e142d-eba8-4b2d-8ab8-e133e69781fd.jpg?alt=media&token=eba370a3-6a71-4e36-91e8-9ce416a9998f', 'Caprice Dry Red Table Wine 1L', '6KEgNbAF3rfilYaGTix6', '750', 'Wine', 'Tuesday, May 19, 2020 13:59', 'club'),
('g7bIGfpweW4VVdqx2Ijn', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fec8abfe4-6e4c-4e5a-9d22-a9dca58c71a1.jpg?alt=media&token=f813044d-2db5-4a26-bcdd-98e791692d23', 'Mushroom Risotto', 'BrryKGY7wlw8aT9zjLVN', '530', 'Entrées', 'Saturday, May 9, 2020 22:19', ''),
('GmBqetllxQV5wU1aDuWq', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ff36b930a-2662-40c5-b78d-04577bb4cf51.jpg?alt=media&token=798eddac-a13c-4217-a2b7-765f935ccf46', 'Captain Morgan Spiced Gold 1000ml', '6KEgNbAF3rfilYaGTix6', '1990', 'Rum', 'Monday, May 18, 2020 11:54', 'club'),
('gRJaA68cAEemIXUEyWiM', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fdff2f329-3d66-46b8-85fd-80dd51c2df96.jpg?alt=media&token=d840852f-8e2f-46c6-b277-d7b3d68c4e9f', 'Mumm Cordon Rouge 750ml', '6KEgNbAF3rfilYaGTix6', '5980', 'Champagne', 'Sunday, May 17, 2020 17:13', 'club'),
('hyNuQ1qd6xhgqsYZVDWR', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F90920cc5-326c-4f44-80ca-c4cfc2ef6761.jpg?alt=media&token=e4c88100-b543-4126-8b55-e40ffe540f9e', 'Southern Confort 750ml', '6KEgNbAF3rfilYaGTix6', '1990', 'Liqueur', 'Monday, May 18, 2020 22:36', 'club'),
('IjxFcUxiZyMHKduFgkKy', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F8ab9ec98-4847-4eb6-a002-764d2760ba03.jpg?alt=media&token=bf41360e-c281-4c08-be83-52f4115392bd', 'Caprice Sweet Red Table Wine 1L', '6KEgNbAF3rfilYaGTix6', '750', 'Wine', 'Tuesday, May 19, 2020 10:58', 'club'),
('JCN8zUra16iQQqb3MrQs', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F7a1cc3a7-82e6-457c-ad91-0c63543bfc9e.jpg?alt=media&token=9700b8cc-b166-4006-9c05-35e434412985', 'Myers Original Dark Rum 1L', '6KEgNbAF3rfilYaGTix6', '2490', 'Rum', 'Monday, May 18, 2020 12:02', 'club'),
('JqlPaGKx5QwOez5ebrYw', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fb0aa2673-88fb-4454-b06d-ee9323dad4b4.jpg?alt=media&token=a0f6046a-5822-40d0-bd9f-dd247d1d62c5', 'Pilsner Lager 500ml', '6KEgNbAF3rfilYaGTix6', '200', 'Beer', 'Monday, May 18, 2020 13:51', 'club'),
('K5ZeNLXk6D2Xg6trFeQs', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F4cefdbef-8576-41e0-9c8b-acad07382549.jpg?alt=media&token=ee9ee0e1-1b57-4f27-bd98-a607e762c375', 'Nederburg Cuvee Brut 750ml', '6KEgNbAF3rfilYaGTix6', '1590', 'Wine', 'Tuesday, May 19, 2020 21:05', 'club'),
('KCnn7JnS7CaGxrRvP2sW', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fec773eae-c9cf-40b9-a3ac-d18618358754.jpg?alt=media&token=a9675d32-dbc8-491f-ae30-793e6d08f2a0', 'Ice Drink', '9javcc1bd3axm4YApSSq', '500', 'Beer', 'Monday, May 11, 2020 16:56', 'club'),
('KM9efTmKJGscCei0DMKA', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F8b8afdcf-a0f9-4f05-acfe-2716b2bb0fa6.jpg?alt=media&token=e79980f6-801d-47e5-b658-bc1ed7aeb847', 'Oreo Dirt Pie', 'BrryKGY7wlw8aT9zjLVN', '150', 'Desserts', 'Saturday, May 9, 2020 21:23', ''),
('l3OLUsUGt9bUVuq0JmZR', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ffd76030e-3da0-4ba9-af1a-6df472664130.jpg?alt=media&token=08a6e47e-c939-481d-884d-da4cf02f5f27', 'Baileys 750ml', '6KEgNbAF3rfilYaGTix6', '2190', 'Liqueur', 'Tuesday, May 19, 2020 00:16', 'club'),
('LeKgmNmhnVdJnEGN7ldJ', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fc67a2018-dca6-4cce-a900-9eaf06d4f1d5.jpg?alt=media&token=608153dd-321a-4a05-8ac5-0f1dd8daa967', 'Mango juice', 'BrryKGY7wlw8aT9zjLVN', '80', 'Appetizers', 'Saturday, May 9, 2020 10:03', ''),
('lnByGA3ES3ROA6wqTK9N', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F60d94c00-2aa8-4d4e-8dc9-f543b08f76af.jpg?alt=media&token=7133784b-311d-404f-b9ee-b7e65c2aab29', '4th Street Sweet White 750ml', '6KEgNbAF3rfilYaGTix6', '850', 'Wine', 'Tuesday, May 19, 2020 14:16', 'club'),
('LvYSBU4yY0xliJCyODBg', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F6b4143e7-3baa-42ce-bcc5-79a6434ef0f3.jpg?alt=media&token=711b9c8d-caea-42c6-911d-3da19aa38d1f', 'Strawberry Brownies', 'BrryKGY7wlw8aT9zjLVN', '130', 'Desserts', 'Saturday, May 9, 2020 21:27', ''),
('lzqvoK4i9oYJhacHbROe', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ff86d1d12-70a1-45ea-973a-23d1e26231d7.jpg?alt=media&token=b3d2c008-7575-435d-b922-9a86ae51702e', 'Old Monk 1000ml', '6KEgNbAF3rfilYaGTix6', '2480', 'Rum', 'Monday, May 18, 2020 11:56', 'club'),
('mcyEZ30aKvNsrnaKMRaD', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F24c24a3c-8add-4c2e-abf0-8acbea23b195.jpg?alt=media&token=2cce641e-d326-4c6e-85d6-e1e127422f69', 'Baileys 1000ml', '6KEgNbAF3rfilYaGTix6', '2490', 'Liqueur', 'Tuesday, May 19, 2020 00:18', 'club'),
('MgbrujgijoPoPvyUZSBG', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ff919521e-2577-4b39-b832-7bd8b565ddb4.jpg?alt=media&token=926786c8-bb33-447a-a269-864fd46954b6', 'BlackBerry juice', 'BrryKGY7wlw8aT9zjLVN', '130', 'Beverages', 'Saturday, May 9, 2020 21:17', ''),
('mH0jwkNXH216G6lRckKl', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F06b58ab5-bb42-42fd-8a03-6fb5687a9060.jpg?alt=media&token=e58b4b4d-425a-4654-8074-541dca08d632', 'Malibu 750ml', '6KEgNbAF3rfilYaGTix6', '1590', 'Rum', 'Monday, May 18, 2020 11:55', 'club'),
('mQ86GEmcTZiEGRq1SM3S', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F8aa1f2a1-3deb-4972-95a0-3aeaba582e98.jpg?alt=media&token=8ccd6ad1-e703-4aff-a08d-5405667ced10', 'pawpaw juice', 'BrryKGY7wlw8aT9zjLVN', '60', 'Beverages', 'Saturday, May 9, 2020 21:15', ''),
('nalMWyPh3Pzin3CuhvZR', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F3581d9a4-16b0-4dbb-922f-e98a9bc03e56.jpg?alt=media&token=9a8cad17-9942-48fa-8e27-f3edc340ca41', 'Guinness', '9javcc1bd3axm4YApSSq', '140', 'Beer', 'Monday, May 11, 2020 16:55', 'club'),
('NIipkos1IhvNlMtRtrNf', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F525d0f3a-fd6e-4f0f-979a-fa83ad634c2e.jpg?alt=media&token=0b8b5fb0-390a-4668-b0af-bff731394dc3', 'Belvedere 750ml', '6KEgNbAF3rfilYaGTix6', '5180', 'Vodka', 'Saturday, May 23, 2020 21:53', 'club'),
('NT3TCwIgiUMRo2z3cFQK', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F7a7d9a69-304e-4733-934d-e84427cbbc05.jpg?alt=media&token=872ca30e-7edc-4fae-89bc-4f11ee47b208', 'Nederburg Pinotage 750ml', '6KEgNbAF3rfilYaGTix6', '1590', 'Wine', 'Tuesday, May 19, 2020 21:03', 'club'),
('o77MJLrnEeVMlpNWmN89', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F30b48b47-3d44-439a-88a5-3da2b4deedd0.jpg?alt=media&token=cec6a839-6e0d-45d4-a547-a20fea1a6211', 'Savanna Dry 330ml', '6KEgNbAF3rfilYaGTix6', '210', 'RTD', 'Sunday, May 17, 2020 16:36', 'club'),
('ObuWv3eUzI4cqvaOK6ms', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F6c9d0f79-4bb4-49cc-a700-e43680c00523.jpg?alt=media&token=c0e61fff-57a9-44d7-a2e4-47d44908194b', 'Heineken Bottle 500ml 6 pack', '6KEgNbAF3rfilYaGTix6', '1190', 'Beer', 'Monday, May 18, 2020 13:37', 'club'),
('OcCcpIsI9azpZ7ZusQ2D', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F46a196db-cd9d-46b3-818d-cdc9a41b2e32.jpg?alt=media&token=f63ae42c-ed99-4417-b3da-b2539a0d8fe2', 'Cellar Johannisberger Red 5L', '6KEgNbAF3rfilYaGTix6', '3290', 'Wine', 'Tuesday, May 19, 2020 10:55', 'club'),
('Oi93ISpbiweF9heYqF6H', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F14f79627-6aee-4d51-9a1b-c0f6969949b7.jpg?alt=media&token=308197f6-94a7-4351-9fe4-a6776eaf6144', 'Del Monte Pineaple', '6KEgNbAF3rfilYaGTix6', '240', 'Mixer', 'Saturday, May 16, 2020 23:42', 'club'),
('ol3jeT6JQUvgH0QfzvG5', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F074fb0c6-effb-40ce-b6bf-44ac470bb2f8.jpg?alt=media&token=329181ec-3fb3-4e1c-973e-e13ef8724f13', 'Fried Meat', 'BrryKGY7wlw8aT9zjLVN', '450', 'Appetizers', 'Wednesday, May 6, 2020 17:38', ''),
('ooRt2qpQAZdayfVWWMhU', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F523cacd9-8188-4b0e-b52f-0ce724ca137c.jpg?alt=media&token=f3067417-2e48-40ea-bb0e-1500a33a5b2a', 'Nederburg Shiraz 750ml', '6KEgNbAF3rfilYaGTix6', '1590', 'Wine', 'Tuesday, May 19, 2020 21:04', 'club'),
('OSwuNrrEkhhEMq1Plfsw', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ffe476a3c-a230-4ec0-87cc-a91f97021a5c.jpg?alt=media&token=ad400464-f5bc-4289-9da8-6ace33657dd5', 'Havana Club Añejo 3 Años 700ml', '6KEgNbAF3rfilYaGTix6', '1590', 'Rum', 'Monday, May 18, 2020 12:00', 'club'),
('p241AgjbcR7BwvgSAkLY', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F533a01fa-e40f-43f9-b102-625b496c7340.jpg?alt=media&token=2a9d0ffa-0adc-4201-b178-a0aacd65113f', 'Asian Chicken Salad', 'BrryKGY7wlw8aT9zjLVN', '300', 'Entrées', 'Saturday, May 9, 2020 22:18', ''),
('PbZeYt3nUrEDHRKbvM1C', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fa251d0f3-074b-4c81-bae7-55f815aa8214.jpg?alt=media&token=81910ec3-a6e5-4b56-a7ca-92fc9e6efdf6', 'Zappa Clear 750ml', '6KEgNbAF3rfilYaGTix6', '1490', 'Liqueur', 'Monday, May 18, 2020 22:29', 'club'),
('PhOrIvtgPrgKcN9fcjw6', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F0cb22256-5e4e-43a9-a987-ba0eb7d4808d.jpg?alt=media&token=ef8c87c4-a1ae-46e7-b2a5-c718cae6b5cd', 'Absolute Vanilia 1L', '6KEgNbAF3rfilYaGTix6', '2020', 'Vodka', 'Saturday, May 23, 2020 21:58', 'club'),
('Prz4gx7tQbTpURSlzSuo', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F28adcca1-dcd2-4897-9443-1662e9fe22a6.jpg?alt=media&token=ce5ddee0-ff81-4e77-afc1-792ea4579af6', 'smirnoff Guarana 330ml 6 pack', '6KEgNbAF3rfilYaGTix6', '1070', 'RTD', 'Sunday, May 17, 2020 00:07', 'club'),
('pSTuySYXH9HW8v2toskr', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fa60b6b1a-2a1b-4a6d-9296-cd28e2740fa8.jpg?alt=media&token=e92d00b4-ecc6-4134-8cd7-dc3112ada85c', 'Del Monte Passion Fruit 100ml', '6KEgNbAF3rfilYaGTix6', '240', 'Mixer', 'Saturday, May 16, 2020 23:44', 'club'),
('Q4iO7SsoZNfpnmzrgUdv', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F230fec17-9618-480b-b19a-2919ef5c3ea3.jpg?alt=media&token=2865a956-d195-4a37-8e52-f17a0cb28e6e', 'Amarula Cream 750ml', '6KEgNbAF3rfilYaGTix6', '1990', 'Liqueur', 'Tuesday, May 19, 2020 00:15', 'club'),
('QgD6FibP29eSIR7j6n2n', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fd7827635-5594-474e-87c3-f16c841096f7.jpg?alt=media&token=f37616f2-b3b7-4f2f-b213-8a2a7df4ed98', 'Martini Rosso 1000ml', '6KEgNbAF3rfilYaGTix6', '2180', 'Aperitif', 'Sunday, May 17, 2020 16:46', 'club'),
('qGlHwEsIOdCzEpdqqVsm', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F3887e512-7649-4201-87bf-6da8150cb45b.jpg?alt=media&token=d1e64771-c5de-4fb3-8ba7-cea899af7f84', 'Pilsner 500ml pack', '6KEgNbAF3rfilYaGTix6', '1250', 'Beer', 'Monday, May 18, 2020 13:44', 'club'),
('QI5BS4EBvE2UVRaMxdjs', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F2d60abb4-2a58-4ea9-8df5-a9ea8acd050f.jpg?alt=media&token=6f16f5b7-a3ee-446e-9893-a4977a297ae7', 'Tribu Cabernet Sauvignon 750ml', '6KEgNbAF3rfilYaGTix6', '1000', 'Wine', 'Tuesday, May 19, 2020 21:10', 'club'),
('qvPXKn8rfQ7mLxcKsyqd', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fdf57143b-df78-429d-94b8-b8086492c611.jpg?alt=media&token=6c95c966-4b05-4113-a750-f4ed8efdac4c', 'Mini Chese Cakes', 'BrryKGY7wlw8aT9zjLVN', '80', 'Desserts', 'Saturday, May 9, 2020 21:24', ''),
('R311oKUgoMcP4zVB8BRf', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F8a07d16b-68dc-401b-b51b-3182dc00094c.jpg?alt=media&token=b3a4c00a-4401-4398-8676-be8558cbdd60', 'Luxardo Cranberry 1000ml', '6KEgNbAF3rfilYaGTix6', '1490', 'Liqueur', 'Monday, May 18, 2020 22:32', 'club'),
('R3FvKEqPVKhetTJITQNS', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fd7fae06e-f2a4-4c08-9e73-f8d0ecb9d805.jpg?alt=media&token=d71da8bc-08a1-4574-a53e-0db7b1415036', 'Caprice Dry White Table Wine 1L', '6KEgNbAF3rfilYaGTix6', '750', 'Wine', 'Tuesday, May 19, 2020 14:01', 'club'),
('R5lc6BKDWmavUClBzHjf', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F5f941af2-b162-4547-9a97-697e70b34e88.jpg?alt=media&token=89d259ae-aae5-4c41-a590-0708fad064f6', 'Tequila Rose 750ml', '6KEgNbAF3rfilYaGTix6', '2290', 'Liqueur', 'Monday, May 18, 2020 22:36', 'club'),
('RcrlhNYdWWfyagsolCzK', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F06c6690f-f177-47bd-89cb-f4f4bdeeaaab.jpg?alt=media&token=a7dcfbed-96ba-43d8-ac09-ba4fcdc7dd06', 'Hunters Dry 330ml', '6KEgNbAF3rfilYaGTix6', '230', 'RTD', 'Sunday, May 17, 2020 16:34', 'club'),
('rUb1T7AbAADjCZsVTZqi', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fef7e8dd3-b346-4580-8f46-0e0716a7dc75.jpg?alt=media&token=8453218e-1f7b-4520-adea-32af501032d0', '4th Street Sweet Red 750ml', '6KEgNbAF3rfilYaGTix6', '850', 'Wine', 'Tuesday, May 19, 2020 14:15', 'club'),
('ryxztRH8Y90lGd3Tr3bx', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F4442cf76-e7f2-4335-a317-648a6464ec69.jpg?alt=media&token=0288e7bb-4277-4507-b55f-f68598540ccc', 'Tia Maria 700ml', '6KEgNbAF3rfilYaGTix6', '2980', 'Liqueur', 'Monday, May 18, 2020 22:26', 'club'),
('s31nr7vlaDNaq4PjnBLR', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F2b7d7248-ea37-421c-b3cf-06e88f88f10e.jpg?alt=media&token=0a78bd01-fec2-4cad-a8bf-edb92f9ca471', 'Kibao Vodka 750ml', '6KEgNbAF3rfilYaGTix6', '850', 'Vodka', 'Saturday, May 23, 2020 21:45', 'club'),
('s3hYdU5SQHe8TlymzjZi', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ffb936a43-b94b-4f0a-9a76-412c71c1c024.jpg?alt=media&token=9d0f93bb-51aa-4e8d-8874-d6bab9898f82', 'Sheridans 1000ml', '6KEgNbAF3rfilYaGTix6', '5600', 'Liqueur', 'Monday, May 18, 2020 22:30', 'club'),
('SDISAr6ZEjFafDG7c4Yy', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fe901f549-d9cd-471c-8b2a-e651cab4894e.jpg?alt=media&token=18baed65-86cf-47eb-8df2-982f00439bf5', 'Zappa Green 750ml', '6KEgNbAF3rfilYaGTix6', '1490', 'Liqueur', 'Monday, May 18, 2020 22:28', 'club'),
('Snvt9ZygDs56MqrfrWlI', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fe67a77f3-cbe7-41d2-973a-2bdaf4d0968a.jpg?alt=media&token=350c0155-17f3-4b85-80ac-5402501a80f0', 'Viceroy 750ml', '6KEgNbAF3rfilYaGTix6', '1290', 'Brandy', 'Sunday, May 17, 2020 17:31', 'club'),
('T4HgI45cvDGfEaJmWw4v', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F9b7bea91-94c9-4839-be76-3f1db044d169.jpg?alt=media&token=a33942ca-08f8-4692-b07c-29e1df702c10', 'Tusker Cider', '6KEgNbAF3rfilYaGTix6', '210', 'RTD', 'Sunday, May 17, 2020 00:04', 'club'),
('tH9kIwou6eQbNLt5lfmh', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F4e4f87f7-400f-4d5c-b820-62f55f5b6cab.jpg?alt=media&token=357de0c7-6fb2-47c0-b55f-a06245214fb7', 'Kwv Cape Tanny 750ml', '6KEgNbAF3rfilYaGTix6', '1600', 'Wine', 'Tuesday, May 19, 2020 21:07', 'club'),
('tLCQZ0F9bN84MHgDHZWF', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F637dda90-fb61-429e-9533-07226fcb36f3.jpg?alt=media&token=348c8b37-20a2-406d-bb35-42c1c82c6f6d', 'Namaqua Sweet White 5L', '6KEgNbAF3rfilYaGTix6', '2790', 'Wine', 'Tuesday, May 19, 2020 21:08', 'club'),
('U0VoZBIgZiGa3ApRjZmL', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F8ed99acf-9fcd-4186-ae2a-ba5e0cfdc398.jpg?alt=media&token=32f01d4a-03aa-451e-b4c8-f4d9f063a828', 'Nederburg Rose 750ml', '6KEgNbAF3rfilYaGTix6', '1200', 'Wine', 'Tuesday, May 19, 2020 21:09', 'club'),
('UoHH0GmU9NfNoQfmMIEz', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F98ff7b78-508b-4e98-a6eb-245e0b34498b.jpg?alt=media&token=84cb25fb-e957-446e-ad39-8413a939d683', 'Mumm Rose 750ml', '6KEgNbAF3rfilYaGTix6', '6750', 'Champagne', 'Sunday, May 17, 2020 17:12', 'club'),
('uSRcLa6Zbq0MS7YWHSyo', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F8aa37f00-c680-4b4d-910f-8ebc8c623539.jpg?alt=media&token=2d3624bd-2bae-4505-89b5-929c0a0c298f', 'Heineken 330ml', '6KEgNbAF3rfilYaGTix6', '210', 'Beer', 'Monday, May 18, 2020 13:47', 'club'),
('UTypaUVtGY6BACunGFcl', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F1211221b-8aa4-49a0-b6b7-e0ed757e6c48.jpg?alt=media&token=0b3cfa09-4453-420e-a971-e0a55598252f', 'Belvedere 1L', '6KEgNbAF3rfilYaGTix6', '5450', 'Vodka', 'Saturday, May 23, 2020 21:50', 'club'),
('V4C9BYtuj5ZutTxqbU3G', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F7cf9ebda-c71a-47a0-b19e-1718de28757e.jpg?alt=media&token=70cd3339-6644-4e27-9c7e-c15f75e9dc05', 'Drostdy Hof Premier Grand Cru', '6KEgNbAF3rfilYaGTix6', '900', 'Wine', 'Tuesday, May 19, 2020 14:33', 'club'),
('v81ab37ObRxyHWsSriMU', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F09dd8702-a6e8-4a43-873f-7471f86afd1f.jpg?alt=media&token=0b0ec72f-f719-422c-accf-890b757f6f4c', 'Myres Original Dark Rum 750ml', '6KEgNbAF3rfilYaGTix6', '2090', 'Rum', 'Monday, May 18, 2020 12:01', 'club'),
('VeOfJCEnFs2V2ZTUyUhf', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F9fbe274e-1e97-49f3-80af-75070e6ef377.jpg?alt=media&token=3f030855-9a08-4b71-9641-f2ce91de3fce', 'Cream cheese bars', 'BrryKGY7wlw8aT9zjLVN', '340', 'Desserts', 'Saturday, May 9, 2020 21:22', ''),
('VpEtd0lAT9YqEvRN9zrk', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F12cb5625-9a21-4c15-9a42-457858a886b0.jpg?alt=media&token=188bbcb2-5fe6-4a66-bb80-c925ca2380e4', 'Desperados 330ml', '6KEgNbAF3rfilYaGTix6', '240', 'Beer', 'Monday, May 18, 2020 13:46', 'club'),
('vs7E7XVINVDVdcW7FzPn', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ffd4eacf0-ec80-43cc-94ac-a36ca7ade3d8.jpg?alt=media&token=de891dec-5773-4152-866b-4bc5c2c1f2d1', 'County Brandy 750ml', '6KEgNbAF3rfilYaGTix6', '790', 'Brandy', 'Sunday, May 17, 2020 17:30', 'club'),
('VzOV3GRnmKgQo9xkOB41', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F0b4fcc8e-5fbf-4266-9b00-3d3a3763403a.jpg?alt=media&token=b93d91c0-9a5d-4a80-83b4-23bb0a9fea01', 'Liquid Gold', '6KEgNbAF3rfilYaGTix6', '5000', 'Vodka', 'Saturday, May 23, 2020 21:45', 'club'),
('W74Bo19ComMb72g9dIjh', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F87dab719-f461-4082-88a1-71c6203bfe1a.jpg?alt=media&token=565d1114-cec7-4865-80b4-098c79fc6876', 'Moët & chandon Nectar Imperial 750ml', '6KEgNbAF3rfilYaGTix6', '8450', 'Champagne', 'Sunday, May 17, 2020 17:21', 'club'),
('W7UVaCuADQhXnY6djCtz', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F700c534f-ced2-410f-ba41-b5ea310d000c.jpg?alt=media&token=26b1a4a3-1a6c-469c-a46e-d1281ed8e372', 'Strawberry juice', 'BrryKGY7wlw8aT9zjLVN', '90', 'Beverages', 'Saturday, May 9, 2020 21:14', ''),
('waegnmEKpRpEu5E8zM50', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fab615f7f-a171-40b0-a4ac-92a8101e95c6.jpg?alt=media&token=5fe80c42-9df1-4cc2-8468-71d3b60ebf65', 'Biscuits', 'BrryKGY7wlw8aT9zjLVN', '60', 'Appetizers', 'Wednesday, May 6, 2020 18:28', ''),
('Wme8WxJtgs2DyIh6dz5F', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fb15da3f2-38ec-49e2-9573-1ab42c8fc0b3.jpg?alt=media&token=a25125f4-1040-4465-ab0d-0ab9584d97f5', 'Chrome Vodka 750ml', '6KEgNbAF3rfilYaGTix6', '1100', 'Vodka', 'Saturday, May 23, 2020 21:49', 'club'),
('wmWpUSW8ufZstFfQTyyA', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F8ac11b71-a5fa-4a5e-86b3-68da4b7f4792.jpg?alt=media&token=ea593a79-c0d1-455b-940f-5c45006dc89d', 'Snapp 330ml 6 pack', '6KEgNbAF3rfilYaGTix6', '1250', 'RTD', 'Sunday, May 17, 2020 00:05', 'club'),
('WShWWN3bsMIqYptqU6Uq', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fe684116e-a9ff-4fc9-a75e-5b76a5c3fb57.jpg?alt=media&token=53ca5921-54e7-4a37-b643-0f30e846493e', 'Captain Morgan Spiced Gold 750ml', '6KEgNbAF3rfilYaGTix6', '1690', 'Rum', 'Monday, May 18, 2020 11:57', 'club'),
('wvp9hOBhpZoJDG63bD7G', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fc24308db-3366-416b-86e6-35d12fba7a1b.jpg?alt=media&token=cb6e0d5f-37ab-437c-bef6-0ffa72d1a85d', 'Juice 500ml', 'BrryKGY7wlw8aT9zjLVN', '85', 'Appetizers', 'Wednesday, May 6, 2020 18:30', ''),
('wwrRloMkGWJoKkHO0F6b', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fe1222938-6d01-4c02-9289-06b9b56fa4d8.jpg?alt=media&token=e891c609-7e00-4608-8cc7-8dca0cc26eff', 'Pimms No 1 750ml', '6KEgNbAF3rfilYaGTix6', '1990', 'Liqueur', 'Monday, May 18, 2020 22:27', 'club'),
('X6j2jEOe9pIIQr8MhEqS', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F42d18449-931c-435f-beeb-9f16073e7478.jpg?alt=media&token=5d548ac2-7061-4e9d-97bc-ea56580d7145', 'Brownies', 'BrryKGY7wlw8aT9zjLVN', '50', 'Desserts', 'Saturday, May 9, 2020 21:25', ''),
('xmD0VOG1MvKBT6vCR6TE', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F39a149fd-b003-49f0-849c-e1b8793167a0.jpg?alt=media&token=281aee66-ac9b-4170-9720-f0b8ba9c66b1', 'Patron XO Cafe 750ml', '6KEgNbAF3rfilYaGTix6', '3990', 'Liqueur', 'Monday, May 18, 2020 22:31', 'club'),
('XRqGqQXghPsz5Ta4lFVB', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fe3d1a845-173e-4eb1-81ab-5fec39404ae2.jpg?alt=media&token=84053497-7c2b-49cb-bcda-7e256aa4d149', 'Jagermeister 1000ml', '6KEgNbAF3rfilYaGTix6', '2790', 'Liqueur', 'Monday, May 18, 2020 22:37', 'club'),
('xvkgwJTw3nlF4qXzuhHj', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F0814285c-fbd3-49ef-a675-f35bd3836337.jpg?alt=media&token=cebd6084-2c27-499c-b7b8-d697084a21ef', 'Red Bull 330ml', '6KEgNbAF3rfilYaGTix6', '190', 'Energy Drink', 'Saturday, May 16, 2020 23:51', 'club'),
('Xy2frTrQSyZgTsyXOFle', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F3873360a-eac7-40c3-a7a5-8a3ad9c7a507.jpg?alt=media&token=0fe9ec39-2228-46e7-8cb4-adbfabfa7ff6', 'Cellar Cask Johannisberger Red 750ml', '6KEgNbAF3rfilYaGTix6', '900', 'Wine', 'Tuesday, May 19, 2020 14:26', 'club'),
('y2KL3o3ZSKPIThU8U1fO', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F2138b7c3-3341-4348-905e-39ceb1a136bc.jpg?alt=media&token=2c901ec3-b6e2-4c83-aef4-5d5f1f4b469b', 'Tako Afredo', 'BrryKGY7wlw8aT9zjLVN', '500', 'Entrées', 'Saturday, May 9, 2020 22:24', ''),
('Yd7K0chOgkB3wwOpyd7N', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fbfbef516-8cfc-4df5-a196-68fa3fcfb389.jpg?alt=media&token=7d3cbe16-2707-499f-b9cc-ac9ac749180a', 'Douglas Green Cabernet Sauvignon 750ml', '6KEgNbAF3rfilYaGTix6', '1400', 'Wine', 'Tuesday, May 19, 2020 21:12', 'club'),
('YzGfKmk6ln4hShuYznd0', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fae205274-a482-4483-a1ea-fae69190dea8.jpg?alt=media&token=c76e00ea-f677-4ba7-9af5-e2eb78639bff', 'Zappa Blue 750ml', '6KEgNbAF3rfilYaGTix6', '1490', 'Liqueur', 'Monday, May 18, 2020 22:25', 'club'),
('ZKkIWuH4rWcVMLE9Tzct', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F46fdc314-5252-42b3-bb36-ef71441d2474.jpg?alt=media&token=dcff2452-b0ae-4e99-993e-1dfd1214822d', 'Nederburg Cabernet Sauvignon 750ml', '6KEgNbAF3rfilYaGTix6', '1590', 'Wine', 'Tuesday, May 19, 2020 14:37', 'club'),
('zv9VpA0rOQ89nWd5uAi5', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fac5d829d-07ba-42e1-8d4b-5fa858005eb9.jpg?alt=media&token=1d960b9b-76a5-40da-b0db-c33690920983', 'Jagermeister 750ml', '6KEgNbAF3rfilYaGTix6', '1790', 'Liqueur', 'Tuesday, May 19, 2020 00:13', 'club');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `docref` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `order_no` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_fee` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `driver_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `shipped_status` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_details` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `shop_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `mpesa_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`docref`, `user_id`, `order_no`, `date`, `amount`, `delivery_fee`, `driver_id`, `shipped_status`, `delivery_details`, `shop_id`, `mpesa_code`, `deleted`) VALUES
('1Gkq2CWvuc84HxlrpW2f', '0ypNFf4MZuVJzifhM7Che3LiMyz2', '18005169', 'Friday, May 15, 2020 10:05', '90', 'KES 80', 'pending', 'pending', 'DevMwarabu, Kericho County, within Kericho at Catholic strt. Contacts Phone +254716698513 and Email clemdevs@gmail.com', 'xMcWvmd3O6K8Dmbg2ykp', 'AFGFGDERFD', 'yes'),
('1w3kpXRybSh4OP2c1kSq', 'SFY6URcKHmcBxwYoWXZ5E5QQZ9D2', '85119474', 'Wednesday, April 29, 2020 15:26', '700', 'KES 100', 'pending', 'pending', 'Clem Mwa, Kericho County, within Cheplolon at Cheplolon strt. Contacts Phone 254716698513 and Email clemwaapps@gmail.com', 'QJgRu4IeQHQfgRjTPzKX', 'SFFVJNHUYH', 'no'),
('2UG6uhCoxCApE2Cz4XLT', '0ypNFf4MZuVJzifhM7Che3LiMyz2', '38741710', 'Friday, May 15, 2020 10:06', '11090', 'KES 80', 'pending', 'pending', 'DevMwarabu, Kericho County, within Kericho at Catholic strt. Contacts Phone +254716698513 and Email clemdevs@gmail.com', 'xMcWvmd3O6K8Dmbg2ykp', 'FGHYHJHBNB', 'yes'),
('38gRDbKFVtJvLSf9PIb2', 'XrbcaUyKfiXR6S9KQYYGDHi4Htn1', '11248412', 'Sunday, May 10, 2020 10:52', '140', 'KES 80', 'pending', 'pending', 'Chone Mwarabu, Kericho County, within Chebaon at Cereals strt. Contacts Phone +254716698513 and Email rchmwarabu@gmail.com', 'QJgRu4IeQHQfgRjTPzKX', 'AJFYTSGJJH', 'no'),
('5uTh5lA9jmkfrOuygBzy', 'VByX6OSY8OQ6sqBZ9dnGtjXnZgj1', '72597659', 'Thursday, May 14, 2020 10:26', '130', 'KES 80', 'pending', 'on packaging', 'weldon kipkorir, Kericho County, within saptet at Catholic strt. Contacts Phone +254795724425 and Email weldonkip829@gmail.com', 'sRW5mrjgVSPSWeB5C6dH', 'sdfgyttghh', 'no'),
('5ybNG2KJAN43reyqSi4U', 'vy3apoiHnkSaGQKXteFKDM9adQp2', '96414511', 'Monday, April 27, 2020 20:56', '120', 'KES 100', 'pending', 'pending', 'Parveen Wesonga, Kericho County, within Kap at Central strt. Contacts Phone 254791747959 and Email parveenwesonga@gmail.com', 'j51KAH8OUsCiN9B4nMLU', 'GDDWFGSGSG', 'yes'),
('8Gl25tBDy4i3FKH1Ekhk', 'iipYs7VjXwQjZY4ak8FnKzwFM2j2', '53581477', 'Monday, April 27, 2020 22:01', '250', '', 'pending', 'pending', '', 'j51KAH8OUsCiN9B4nMLU', '34tyy7u7', 'no'),
('96DNOkP3ow4sqHg2U8rW', 'KxUKGdIoC5eyvldm7haRpbfcsXC3', '86973925', 'Monday, May 11, 2020 10:16', '90', 'KES 80', 'pending', 'pending', 'Alex Kimutai, Kericho County, within cereals  at Cereals strt. Contacts Phone +254721437425 and Email brkimutaiparallel@googlemail.com', 'xMcWvmd3O6K8Dmbg2ykp', 'OEB544TH3X', 'no'),
('b9faOGAohhHymFuclF8o', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '69803855', 'Saturday, May 2, 2020 21:45', '120', 'KES 80', 'pending', 'pending', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone 254705146547 and Email clemokoech@gmail.com', 'sRW5mrjgVSPSWeB5C6dH', 'dhjfritw', 'no'),
('CdmajkZJca9gqRUQvhIX', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '06672149', 'Saturday, May 2, 2020 12:39', '240', 'KES 80', 'pending', 'pending', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone 254705146547 and Email clemokoech@gmail.com', 'j51KAH8OUsCiN9B4nMLU', 'FFGFFGJJHJ', 'no'),
('DKev6teNvbdgYXMSxApS', 'fSA3SGGIzpQiIpEn3w433E8zUKH3', '69123228', 'Sunday, May 3, 2020 12:42', '480', 'KES 250', 'pending', 'on packaging', 'Laxco In, Kericho County, within Kap at TEA ESTATES strt. Contacts Phone 254716698513 and Email laxcoinctech@gmail.com', 'sRW5mrjgVSPSWeB5C6dH', 'AGSGECVGRR', 'yes'),
('eAhUxf4keliX9eF7BWYx', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '55821431', 'Thursday, May 14, 2020 10:24', '130', 'KES 80', 'pending', 'on packaging', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone +254705146547 and Email clemokoech@gmail.com', 'sRW5mrjgVSPSWeB5C6dH', 'TETTGFVFHT', 'no'),
('F0A7J9sFFmEthoBcqeIc', 'nBatP2wKy8b6fZzDLDWsioqqz052', '76638659', 'Wednesday, April 22, 2020 12:45', '120', 'KES 100', 'pending', 'pending', 'Dev Developer, Kericho County, within CBD at Kwa Solo strt. Contacts Phone 254716698513 and Email devdeveloperapps@gmail.com', 'j51KAH8OUsCiN9B4nMLU', 'BVJDNJFFJJ', 'no'),
('GTgnMdoF56Fty1Qpzb62', 'fSA3SGGIzpQiIpEn3w433E8zUKH3', '68778824', 'Tuesday, May 19, 2020 13:47', '1430', 'KES 250', 'pending', 'pending', 'Laxco Inc, Kericho County, within Kap at TEA ESTATES strt. Contacts Phone +254716698513 and Email laxcoinctech@gmail.com', '6KEgNbAF3rfilYaGTix6', 'GSCVRDVGRF', 'no'),
('Hx82IaS0UfV5n6yuvPzq', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '30855618', 'Wednesday, April 29, 2020 16:03', '700', 'KES 80', 'pending', 'pending', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone 254705146547 and Email clemokoech@gmail.com', 'QJgRu4IeQHQfgRjTPzKX', 'Asfcgghhuh', 'no'),
('IXWmeUzKJmdmqC3XlN5D', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '76624656', 'Wednesday, May 13, 2020 12:42', '90', 'KES 80', 'pending', 'pending', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone +254705146547 and Email clemokoech@gmail.com', 'xMcWvmd3O6K8Dmbg2ykp', 'FTFTGMBYHJ', 'no'),
('jLCzIGqQOgCl0xClUM3b', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '21241769', 'Tuesday, April 21, 2020 18:51', '120', 'KES 80', 'r1WuRAblAZUFkNeZsYwidgdRCiA3', 'complete', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone 254705146547 and Email clemokoech@gmail.com', 'j51KAH8OUsCiN9B4nMLU', 'bbhhjndkos', 'no'),
('jOQufFJauIpA1ySvvBDn', 'KxUKGdIoC5eyvldm7haRpbfcsXC3', '59408824', 'Sunday, April 26, 2020 16:19', '140', 'KES 80', 'pending', 'pending', 'Alex Kimutai, Kericho County, within cereals  at Cereals strt. Contacts Phone 254721437425 and Email brkimutaiparallel@googlemail.com', 'QJgRu4IeQHQfgRjTPzKX', 'OFSHFGCYGD', 'no'),
('kIZ3SKqDWiDhP6UYPwOZ', 'SFY6URcKHmcBxwYoWXZ5E5QQZ9D2', '10040999', 'Wednesday, April 29, 2020 15:22', '700', 'KES 100', 'pending', 'pending', 'Clem Mwa, Kericho County, within Cheplolon at Cheplolon strt. Contacts Phone 254716698513 and Email clemwaapps@gmail.com', 'QJgRu4IeQHQfgRjTPzKX', 'AHDBXUDNXU', 'no'),
('kM3yQDygj9d2pY9VQphn', 'jOsuxsN3jlQq68VOcS0zKwb2yI93', '45578984', 'Thursday, May 7, 2020 04:55', '52000', 'KES 100', 'pending', 'pending', 'kili, Kericho County, within kabianga at Eland strt. Contacts Phone +254799092727 and Email emmanukiptoo98@gmail.com', 'j51KAH8OUsCiN9B4nMLU', 'DOPERENRMN', 'no'),
('kz5sMgM0uIE4VEouIFYa', 'KxUKGdIoC5eyvldm7haRpbfcsXC3', '90535482', 'Thursday, April 30, 2020 17:34', '120', 'KES 80', 'pending', 'pending', 'Alex Kimutai, Kericho County, within cereals  at Cereals strt. Contacts Phone 254721437425 and Email brkimutaiparallel@googlemail.com', 'j51KAH8OUsCiN9B4nMLU', 'fgghhjjj', 'no'),
('m4VwwkhfH3D4dLYBOVBR', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '79496293', 'Friday, May 15, 2020 10:17', '5680', 'KES 80', 'pending', 'on packaging', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone +254705146547 and Email clemokoech@gmail.com', 'xMcWvmd3O6K8Dmbg2ykp', 'SDGFBVCVCV', 'no'),
('mmnoYk1RtUkpQfZmTvTt', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '44162364', 'Friday, May 15, 2020 10:15', '180', 'KES 80', 'pending', 'pending', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone +254705146547 and Email clemokoech@gmail.com', 'xMcWvmd3O6K8Dmbg2ykp', 'DFDGDFGDFD', 'no'),
('OlBMMVFeiEQPhDDGYcDi', 'vy3apoiHnkSaGQKXteFKDM9adQp2', '57430231', 'Monday, May 18, 2020 20:01', '130', 'KES 100', 'pending', 'pending', 'Parveen Wesonga, Kericho County, within Kap at Central strt. Contacts Phone +254791747959 and Email parveenwesonga@gmail.com', 'sRW5mrjgVSPSWeB5C6dH', 'Tyyyuuuuii', 'yes'),
('PSf7KL0X8e3JtB4GRBWh', 'vy3apoiHnkSaGQKXteFKDM9adQp2', '67284356', 'Saturday, May 16, 2020 22:39', '2250', 'KES 100', 'pending', 'pending', 'Parveen Wesonga, Kericho County, within Kap at Central strt. Contacts Phone +254791747959 and Email parveenwesonga@gmail.com', '9javcc1bd3axm4YApSSq', 'FGJIHKJKJL', 'yes'),
('Pueqa6YBaEUrc0VrIDkf', 'vy3apoiHnkSaGQKXteFKDM9adQp2', '26144698', 'Tuesday, April 21, 2020 18:54', '20', 'KES 80', 'dSxpwFsBYNXGtL1p029E6IrOAqZ2', 'on packaging', 'Parveen Wesonga, Kericho County, within Kap at Catholic strt. Contacts Phone 254791747959 and Email parveenwesonga@gmail.com', 'sRW5mrjgVSPSWeB5C6dH', 'DBBJNMINGI', 'yes'),
('PWrkh1ZwH4Dg4RlUvYHO', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '23266104', 'Tuesday, May 12, 2020 14:03', '180', 'KES 80', 'pending', 'pending', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone +254705146547 and Email clemokoech@gmail.com', 'xMcWvmd3O6K8Dmbg2ykp', 'aghajoakkn', 'no'),
('qB3jbJI9yEvxtUAdZdTI', 'SFY6URcKHmcBxwYoWXZ5E5QQZ9D2', '14819774', 'Saturday, May 2, 2020 13:06', '140', 'KES 100', 'pending', 'pending', 'Clem Mwa, Kericho County, within Cheplolon at Cheplolon strt. Contacts Phone 254716698513 and Email clemwaapps@gmail.com', 'QJgRu4IeQHQfgRjTPzKX', 'ystsy', 'no'),
('rISZ7Ga4mD5BKmVP8pwL', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '20648329', 'Tuesday, May 19, 2020 11:17', '5340', 'KES 80', 'dSxpwFsBYNXGtL1p029E6IrOAqZ2', 'on delivery', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone +254705146547 and Email clemokoech@gmail.com', '6KEgNbAF3rfilYaGTix6', 'DRDRSCRSES', 'no'),
('rMmCXIX6LrDefu9Yr81N', 'vy3apoiHnkSaGQKXteFKDM9adQp2', '44788324', 'Monday, April 27, 2020 21:00', '37000', 'KES 100', 'pending', 'pending', 'Parveen Wesonga, Kericho County, within Kap at Central strt. Contacts Phone 254791747959 and Email parveenwesonga@gmail.com', 'j51KAH8OUsCiN9B4nMLU', 'FEGEGDDGRH', 'yes'),
('s7VVu5FR5iiyu8NNdD8n', 'KxUKGdIoC5eyvldm7haRpbfcsXC3', '64585119', 'Wednesday, April 22, 2020 14:55', '60', 'KES 80', 'dSxpwFsBYNXGtL1p029E6IrOAqZ2', 'complete', 'Alex Kimutai, Kericho County, within cereals  at Cereals strt. Contacts Phone 254721437425 and Email brkimutaiparallel@googlemail.com', 'sRW5mrjgVSPSWeB5C6dH', 'HHVSHGSHZV', 'no'),
('SU4f01YKDndGN7SAIPJ4', 'vy3apoiHnkSaGQKXteFKDM9adQp2', '38139378', 'Saturday, May 16, 2020 22:43', '330', 'KES 100', 'pending', 'pending', 'Parveen Wesonga, Kericho County, within Kap at Central strt. Contacts Phone +254791747959 and Email parveenwesonga@gmail.com', 'BrryKGY7wlw8aT9zjLVN', 'FVHHKJJJJ+', 'yes'),
('TEk78KYThR9NQiskf2xN', 'vy3apoiHnkSaGQKXteFKDM9adQp2', '40076831', 'Tuesday, April 21, 2020 21:59', '75', 'KES 80', 'dSxpwFsBYNXGtL1p029E6IrOAqZ2', 'on delivery', 'Parveen Wesonga, Kericho County, within Kap at Catholic strt. Contacts Phone 254791747959 and Email parveenwesonga@gmail.com', 'sRW5mrjgVSPSWeB5C6dH', 'FDTCHGUHHJ', 'yes'),
('TL1UmL0S1dHnQ7gevtbA', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '24851988', 'Wednesday, May 13, 2020 13:21', '5500', 'KES 80', 'dBDmyrJxUvcnE7Df3sA4PQpl5G52', 'on packaging', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone +254705146547 and Email clemokoech@gmail.com', 'xMcWvmd3O6K8Dmbg2ykp', 'DGJIHUKKKL', 'no'),
('VwFU4K09i5tXcyvKPBEB', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '69213524', 'Thursday, May 14, 2020 10:20', '90', 'KES 80', 'pending', 'pending', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone +254705146547 and Email clemokoech@gmail.com', 'xMcWvmd3O6K8Dmbg2ykp', 'ASDRGFGFGF', 'no'),
('WI5U8U9uHcEO0x7mn6Pm', 'vy3apoiHnkSaGQKXteFKDM9adQp2', '35134816', 'Sunday, May 3, 2020 09:12', '20000', 'KES 100', 'pending', 'pending', 'Parveen Wesonga, Kericho County, within Kap at Central strt. Contacts Phone 254791747959 and Email parveenwesonga@gmail.com', 'j51KAH8OUsCiN9B4nMLU', 'Fcfgjiuhjj', 'yes'),
('wyZ1fRAlW2KVVHkyorSS', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '09472832', 'Wednesday, April 29, 2020 16:57', '42000', 'KES 80', 'pending', 'pending', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone 254705146547 and Email clemokoech@gmail.com', 'j51KAH8OUsCiN9B4nMLU', 'gdsffhfghg', 'no'),
('xMEShOWSnLc6pnWjwmcH', 'vy3apoiHnkSaGQKXteFKDM9adQp2', '23163410', 'Monday, May 18, 2020 20:38', '200', 'KES 100', 'pending', 'on packaging', 'Parveen Wesonga, Kericho County, within Kap at Central strt. Contacts Phone +254791747959 and Email parveenwesonga@gmail.com', 'r74tIMlSR01CWTCIrwB4', 'FHIHKHUJJJ', 'yes'),
('xMx2xChFlSZRTIj0EpWw', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '49126424', 'Monday, May 18, 2020 17:32', '4350', 'KES 80', 'pending', 'pending', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone +254705146547 and Email clemokoech@gmail.com', '6KEgNbAF3rfilYaGTix6', 'HDXCSCDVRG', 'no'),
('yBQfxszhfT2eKyIS70tX', 'fSA3SGGIzpQiIpEn3w433E8zUKH3', '77581483', 'Monday, May 18, 2020 14:26', '400', 'KES 250', 'pending', 'pending', 'Laxco Inc, Kericho County, within Kap at TEA ESTATES strt. Contacts Phone +254716698513 and Email laxcoinctech@gmail.com', '6KEgNbAF3rfilYaGTix6', 'D3DCDRRF D', 'yes'),
('ZBX0T2AewLhJyXxzy9G2', '0ypNFf4MZuVJzifhM7Che3LiMyz2', '43973676', 'Sunday, May 3, 2020 19:21', '360', 'KES 80', 'pending', 'pending', 'DevMwarabu, Kericho County, within Kericho at Catholic strt. Contacts Phone +254716698513 and Email clemdevs@gmail.com', 'j51KAH8OUsCiN9B4nMLU', 'GYHYUTJIIJ', 'yes'),
('zzJtcN0QXLjxq3xlMYp1', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '80117313', 'Friday, May 15, 2020 10:16', '5500', 'KES 80', 'pending', 'on packaging', 'Clement Koech, Kericho County, within Kericho at Majengo/Mabuyu strt. Contacts Phone +254705146547 and Email clemokoech@gmail.com', 'xMcWvmd3O6K8Dmbg2ykp', 'GHGHFGFGFY', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `image` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `image`) VALUES
(9, 'https://laxcoinc.000webhostapp.com/laxco/ShopForMeDb/Pics/uploads/0.png');

-- --------------------------------------------------------

--
-- Table structure for table `pickup_locations`
--

CREATE TABLE `pickup_locations` (
  `id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `rate` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `service_rate` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pickup_locations`
--

INSERT INTO `pickup_locations` (`id`, `name`, `rate`, `service_rate`) VALUES
('28kPUKEMunf3lXV9H98h', 'Township', '50', '50'),
('2Y3a63niFoelMT4QK8PR', 'Eland', '50', '50'),
('3DFpuB43PnAt3tkICbML', 'Cereals', '30', '50'),
('4VjPXT8Ix0TvuYeIZMDa', 'MidWest', '30', '50'),
('6qDQG9BsUR9cpkm3hb9D', 'NSPSI', '20', '50'),
('8xbJH00eQijzfIhIhG6C', 'Tengecha', '20', '50'),
('A3UyJVxrlsTY6CiRkkxd', 'KCC', '20', '50'),
('A9RCDva2GH80mUdHRrvk', 'Prison', '50', '50'),
('bWW1yoN3ll38ngj2X6Nn', 'Sunshine', '30', '50'),
('c9UZZuscpdwZQ1gglpiS', 'Taidys', '20', '50'),
('Cj7WU0JUyDYaNFaPsNpB', 'Sptet', '50', '50'),
('CMeG5GZPBEt5hH1npC6h', 'Kwa Solo', '50', '50'),
('cuSEru8Melgjptq4bsSQ', 'Fisheries', '50', '50'),
('E8lJ4wFITugaHC8124UN', 'Kwa Michael', '50', '50'),
('Ew8h7PwFm1FAIC6r6tba', 'Cheplolon', '50', '50'),
('f0ad05eDijNNAXd3nsra', 'Kericho High', '50', '50'),
('fHQHueWhzikiLbdikFc4', 'Baraka', '50', '50'),
('fJmJ0ZGws952j5N5mFXx', 'Mjini', '30', '50'),
('fuB5saynGbYWKOE7BbUK', 'Jua Kali', '30', '50'),
('FY9fAltKbT5lkohR3r8v', 'Nyakacho', '50', '50'),
('gbB5QsEdRvmOVOBTjLmc', 'Kitumbe', '70', '50'),
('GFYVLWC7IMiGJ3cOu8MT', 'Kipchimchim', '80', '50'),
('gVHwIyKZgryOMAVIZaKQ', 'Kericho Primary', '50', '50'),
('hei7lcSJUXz1zAQhRUhP', 'Saramek', '50', '50'),
('hr7kM8ci6oT6c568n46C', 'Site and Service', '50', '50'),
('hXdKvW31GC6MtIceFC7F', 'Harsh', '30', '50'),
('JAKiFXd4hZL5u2qnfbl2', 'Workshop JFK', '50', '50'),
('JNl5eAv8564PEUTSryrT', 'Brooke', '100', '50'),
('JuKdUA49BLAkUMGFCszh', 'Kwa Abdul', '50', '50'),
('KInHMEsiLBL0eI2sUXGd', 'Cherote', '100', '50'),
('lj7eKBQNO9rBhr7mafOB', 'Duk Moja', '50', '50'),
('lUYNEEzEJ9Qz1VtZ0kCZ', 'Brooke Ketepa', '50', '50'),
('m82Gwh60TOOAgnya1zLF', 'Kisumu road', '50', '50'),
('mbxU2KmaXvcKNkVoGwSR', 'Crystal palace', '20', '50'),
('MIwxkFY0PkQ9nq2Gd1i3', 'K-rep', '30', '50'),
('nclzGjDFvwmptZfMt9Tg', 'TEA ESTATES', '200', '50'),
('O2gLrIN3wGKZ2kl1Kk8J', 'Central', '50', '50'),
('Oc3QyGLZRj3bwTw1W8Mo', 'Kapketienya', '70', '50'),
('OP2tRdS1m9NAwlxMiLxC', 'Kericho Tea', '30', '50'),
('oUpaaZXZMRLTaLawAtVd', 'Kipsigis girls', '60', '50'),
('oVBI50tqH8lE433gEtst', 'Jericho', '100', '50'),
('QlcJp2HWD6UmIN4w8omH', 'Mulembe', '20', '50'),
('SOaOofTgaajRy0Du4U8t', 'KEVOKO', '50', '50'),
('UqXrIognOmqDkCHsDjSD', 'Chepkutung', '120', '50'),
('UTdMP9YGbtUJLExMR8dG', 'Kericho Primary', '50', '50'),
('v2Ip4iLzAS45i3ad6Usm', 'Tas', '50', '50'),
('vg0ItEaExVcLTZ6py6VV', 'Matobo', '50', '50'),
('W4lkDC60xGCJSjlrmkXo', 'Toyota', '30', '50'),
('WakCfcYBZRR5amDHaQBx', 'Siloam', '30', '50'),
('wArZcBQTsYT8uqzLj81V', 'Emmanuel Church', '30', '50'),
('wUvp9j09bpqQQRo0NNPz', 'Kericho District', '50', '50'),
('WWfRYZhgFSwiDwr0ZzUu', 'Kwa Kimutai', '50', '50'),
('x3Gdw0FqJ8YuLOk0cwth', 'Majengo/Mabuyu', '30', '50'),
('XN8eM8h6ZbObO8vc2fes', 'Tea research', '100', '50'),
('Xy0oQENE3niCIPdNmq8d', 'Valey Academy', '50', '50'),
('ydbGUTCaGp1UnPWL00fX', 'Kerego', '50', '50'),
('yLIfmJkl6VwiF2ZV4Eow', 'Catholic', '30', '50'),
('ZDT2cWLRQi1CGLku69Hf', 'Oryx', '30', '50'),
('zJUMB5NTbPJkgd1sK1UQ', 'Corna C', '50', '50'),
('zqXb0EmzSzzKHH6XAA2J', 'CBD', '30', '50');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(122) COLLATE utf8_unicode_ci NOT NULL,
  `descr` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `imageUrl` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `documentId` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `prev_price` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `shop_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `qty` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`title`, `price`, `descr`, `dateCreated`, `imageUrl`, `documentId`, `category`, `size`, `brand`, `prev_price`, `user_id`, `shop_id`, `qty`) VALUES
('Denim', '4500', 'test description', 'Tuesday, April 7, 2020 13:25', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F03f7ea3e-7bf7-4227-b134-0cc9be6f0542.jpg?alt=media&token=ddf983b8-5676-4315-bb38-f93459484f8b', '0g3oBoarQxpTj5nKelvk', 'Others', '1 jacket', 'Timberland', '5000', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', ''),
('General utensils', '4600', 'test description....', 'Tuesday, April 7, 2020 12:43', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F8a8217b7-6f47-42e2-8f65-f42cb3436ab3.jpg?alt=media&token=0b322d74-5604-49e6-bf81-ba6575b9e65f', '2Ol4ZtEwl0B43PHE7Gw2', 'Utensils', '5.2kgs', 'Utensils', '4850', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', ''),
('Angle Bar 1 1/2X1 1/2X1/4 (40X40X6mm)', '220', 'Angle Bar 1 1/2X1 1/2X1/4 (40X40X6mm)', 'Monday, May 18, 2020 23:30', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fa7a36138-38ec-482d-92da-b3c21ce06795.jpg?alt=media&token=dde64112-2ec4-4b93-a85e-706efa9f31dd', '71xyVG2Xw6LXgtNYQ37w', 'Flash Deals', 'Angle Bar 1 1/2X1 1/2X1/4 (40X40X6mm)', 'Angle Bar 1 1/2X1 1/2X1/4 (40X40X6mm)', '0', 'KxUKGdIoC5eyvldm7haRpbfcsXC3', 'Qi9wUMLCqNMICSGd6FqE', '1'),
('Ventilation  Squared', '40', 'Best ever', 'Tuesday, May 19, 2020 00:39', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F414af5be-8b41-4041-9629-32efef91beb4.jpg?alt=media&token=11004891-fdc3-49fd-b19c-fb46e5937f05', 'a1aFaW6TnFbf28qqlNET', 'Hardware', '1', 'Ventilation', '50', 'KxUKGdIoC5eyvldm7haRpbfcsXC3', 'Qi9wUMLCqNMICSGd6FqE', '50'),
('Meter Box', '550', 'Best', 'Tuesday, May 19, 2020 00:36', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fea26b97f-9382-4d66-86fb-d89b40de02b4.jpg?alt=media&token=b4a154ac-a423-4e29-8383-67a4c7787964', 'a9F0x7edNK3aBSPtmLfN', 'Hardware', '1', 'Box', '600', 'KxUKGdIoC5eyvldm7haRpbfcsXC3', 'Qi9wUMLCqNMICSGd6FqE', '20'),
('Cauliflower', '75', 'description..', 'Tuesday, April 7, 2020 12:29', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F7a65877d-72af-47fc-94ae-25be9fa1140f.jpg?alt=media&token=ea0b607f-cd6a-4e98-88c4-5ff91edbffc5', 'AaAc2enn1YDSiduCNzmr', 'Grocery', '1/2kg', 'Grocery', '80', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', ''),
('Nylon Rope 9mm×10m', '280', 'Stronger', 'Tuesday, May 19, 2020 00:40', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F43868a52-725a-4d55-87c6-b9a18a25daf8.jpg?alt=media&token=f7e25b03-efa3-4ca1-9bba-eefcceab586e', 'AHJnVE8jWHSricFZgTfx', 'Hardware', '9mm×10m', 'Rope', '300', 'KxUKGdIoC5eyvldm7haRpbfcsXC3', 'Qi9wUMLCqNMICSGd6FqE', '100'),
('Angle Boots', '1300', 'best shoes for ladies', 'Saturday, May 16, 2020 15:38', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Feda24a1b-eaf1-4e3b-905e-0a5e743dd06e.jpg?alt=media&token=2e862fb4-7649-465e-ba17-ce5b0a7e1de6', 'aTwv4l11LkcDu8LZ63lE', 'Flash Deals', 'size 38', 'Boots', '1500', 'JZd3cI8abXVw11VXruVhhyWktII2', 'EVNOTysbykQ0ZfkdCBYs', '2'),
('Tomatoes', '120', 'test description...', 'Tuesday, April 7, 2020 12:31', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F0e9369e5-7f96-48ee-b85f-1c2062e21839.jpg?alt=media&token=87260817-351d-41e1-82d4-774b754b1c28', 'D3VDsiDYq9ahRJRw5L9g', 'Grocery', '1kg', 'Grocery', '135', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', ''),
('Cooking Oil', '480', 'Top Fry, Pure Vegetable Cooking OiL is 100% pure and refined corn oil, Purified through unique winterization processes and Produced to the highest international standards. Vegetable oils, or vegetable fats, are oils extracted from seeds, or less often, from other parts of fruits. Like animal fats, vegetable fats are mixtures of triglycerides. Soybean oil, rapeseed oil, and cocoa butter are examples of fats', 'Tuesday, April 7, 2020 21:12', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F7186fd97-4c23-4904-bdb4-6bdaa3b30eff.jpg?alt=media&token=d76378f6-3d53-4cd5-88d9-08ce4886eb20', 'dGxZ9Jp5UwBZ6sXQIx8i', 'Grocery', '3 liters', 'Top Fry', '506', 'vy3apoiHnkSaGQKXteFKDM9adQp2', 'j51KAH8OUsCiN9B4nMLU', ''),
('relcer gel', '380', 'antiacid', 'Thursday, May 14, 2020 11:40', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F71a218b0-851d-4c22-96f6-3a7132982435.jpg?alt=media&token=b5e03855-5b12-4fa7-8973-6cdb7d2524c8', 'e22u4yF5FKj9018ICF7B', 'Flash Deals', '180ml', 'glenmark', '390', 'By3fhKos9rO5xc5Tt9vUSYhA4x82', 'agpzI0uJy8rBFanfaaGI', '30'),
('Open shoes', '1200', 'Best open shoes', 'Saturday, May 16, 2020 15:42', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fee7c7b24-c068-49ca-be79-dcdf1c6a8a09.jpg?alt=media&token=be82854b-4a35-4d37-bb92-9e3aa3d2b863', 'e9gcRnd5BgfWVldDfD7x', 'Flash Deals', '39', 'Open', '1400', 'JZd3cI8abXVw11VXruVhhyWktII2', 'EVNOTysbykQ0ZfkdCBYs', '2'),
('Angle Boot', '1300', 'Best boots size 40', 'Saturday, May 16, 2020 15:35', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fea61dd08-7fc6-4869-9a68-d7956eac48e1.jpg?alt=media&token=d309f725-3a22-4257-9ab7-dabd74c8b5a4', 'eekz2xcoZ8Hg0amIUOLP', 'Flash Deals', 'size 40', 'Boots', '1500', 'JZd3cI8abXVw11VXruVhhyWktII2', 'EVNOTysbykQ0ZfkdCBYs', '2'),
('Fruits', '120', 'Fruits', 'Wednesday, April 29, 2020 15:49', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F355a9d83-66e5-4d55-a7ee-af5f5b57e541.jpg?alt=media&token=99985b91-246e-49e3-8648-4782bc729783', 'en2cWJlaiyeAuShqKLRM', 'Grocery', '3 each', 'Apples', '0', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', '10'),
('Hoop Iron', '100', 'Best', 'Tuesday, May 19, 2020 00:41', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F1a24b0ba-c987-4e3a-8bdc-c23a2b33a10f.jpg?alt=media&token=387f129c-2368-407a-953a-45c7c9143e55', 'ex1kVANgd6i4kI3BqzeK', 'Hardware', '1kg', 'Iron', '150', 'KxUKGdIoC5eyvldm7haRpbfcsXC3', 'Qi9wUMLCqNMICSGd6FqE', '50'),
('Binding Wire 16G', '170', 'Strong', 'Tuesday, May 19, 2020 00:42', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ff06dd78a-e3b8-4331-8520-66dd4c9b3201.jpg?alt=media&token=51203a99-7ea0-4276-8a14-c3f9624d268d', 'F0AmeRPkCHcFQgiIPyJP', 'Hardware', '1kg', 'wire', '200', 'KxUKGdIoC5eyvldm7haRpbfcsXC3', 'Qi9wUMLCqNMICSGd6FqE', '50'),
('Hacksaw Frame', '400', 'new', 'Tuesday, May 19, 2020 00:35', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fd016e506-7dd8-497a-bd8a-ad3a8fcd884c.jpg?alt=media&token=72eb287e-9304-41c0-8f04-72d363ff180d', 'HRaXQgxFpFATvnAtazRv', 'Hardware', '1', 'Frame', '500', 'KxUKGdIoC5eyvldm7haRpbfcsXC3', 'Qi9wUMLCqNMICSGd6FqE', '20'),
('Exe Baking Flour', '130', 'description', 'Sunday, May 10, 2020 11:56', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F3f19cae3-51eb-4315-8d9f-7568166564fc.jpg?alt=media&token=a1acf618-e491-4378-90ef-86f746c8fb00', 'IsqszePmvfsdy6Zh2sRX', 'Flash Deals', '2kg', 'Exe', '140', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', '9'),
('Mens suits outfit', '7500', 'test description', 'Tuesday, April 7, 2020 13:31', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ff219106f-d77e-4faf-973b-44ec89224841.jpg?alt=media&token=bcb48464-24d0-4145-b6b6-b80aa300294e', 'JlhHov1U3KIA09s633Dd', 'Others', 'A compete suit', 'Gucci', '7850', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', ''),
('Hoodie & fitting', '2400', 'test description', 'Tuesday, April 7, 2020 13:00', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F21452a2a-807c-4f65-9e2b-eb39b94a6e27.jpg?alt=media&token=dde5fd3c-b2a8-4981-a1a2-798752d5e1e7', 'kt9IHVAHTyK1t27eUqL5', 'Others', '1 pear', 'Fashions', '2600', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', ''),
('Fresh peas', '260', 'test description', 'Tuesday, April 7, 2020 13:11', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fc866ca35-0254-4268-b229-9f7530f7d681.jpg?alt=media&token=c8202209-2b94-48c4-9826-c5bb6612a233', 'mJbPGIfytc2i0hDzPbjI', 'Grocery', '1kg', 'Grocery', '300', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', ''),
('Drink Yogurt', '90', 'description..', 'Sunday, May 10, 2020 11:08', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fd85b24ed-afdf-42ff-89e7-0445026f6568.jpg?alt=media&token=deaa58c4-bcf6-4ca0-9f82-6d61fc963c95', 'nrBmH4ZbezWwSi0f5UVk', 'Flash Deals', '500ml', 'Drink', '95', '0ypNFf4MZuVJzifhM7Che3LiMyz2', 'xMcWvmd3O6K8Dmbg2ykp', '2'),
('Best selection Drinks', '6200', 'test description...', 'Tuesday, April 7, 2020 12:47', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F2feef1af-4435-4c78-b52e-84dacf587000.jpg?alt=media&token=d08fd7b6-5780-411e-9e38-eae06e88e6c9', 'NuURmbfZtGWpBpSLKyG8', 'Drinks', '4.6litres', 'Drinks', '7250', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', ''),
('Angle boots', '1500', 'Best fitting', 'Saturday, May 16, 2020 15:45', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F3e02eb01-1277-4ad3-aed7-5820aec40446.jpg?alt=media&token=96a58a07-3322-437c-9e18-82321570b01f', 'OmERFv08AA9WRVHTKKJV', 'Flash Deals', '2', 'Boots', '1600', 'JZd3cI8abXVw11VXruVhhyWktII2', 'EVNOTysbykQ0ZfkdCBYs', '2'),
('Insulating  Tape', '40', 'Sticky', 'Tuesday, May 19, 2020 00:37', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Feb503ad4-8289-4b28-bbf0-5fe81cf9b655.jpg?alt=media&token=adac3158-28f1-41af-a54b-0611ddd374e0', 'pL82H8b4jbE4KN9zAtZV', 'Hardware', '1', 'Tape', '60', 'KxUKGdIoC5eyvldm7haRpbfcsXC3', 'Qi9wUMLCqNMICSGd6FqE', '50'),
('Mask', '250', 'Waterproof Polyester Fiber Protective Mask With Breathing Valve\n\nFeatures: 1.Made from sponge material, keep pollutants out while offering comfort thanks to built-in exhalation valves and soft and stretchy elastic loops. lightweight material, soft texture, comfortable to wear. Comes with filter valves, smooth breathing. 2. Built-in exhalation valve lets air in and keeps moisture out, allowing you to breathe more easily while keeping dust and other pollutants out. comfy elastic and wide ear loop allows you to wear these masks for long periods of time without irritation. 3. It is suitable for cycling, running, cycling, hiking, skiing, woodworking and other outdoor activities. The dustproof mask can be used for anti-dust, anti-vehicle exhaust, anti-pollen allergy, anti PM2.5 and haze day protection.\n\nDescription: 1. Easy to wear and they offer a superior level of protection over the paper masks, and Very comfortable for long periods oftime. washable, can be used repeatedly. Collapsible, you can carry it in your pocket and anywhere. 2. Can be cleaned several times, cleaning will not reduce the effect of dust blocking.\n\nSpecifications: Color:black Glasses structure: frame Whether polarized: no Lens material: PC Style: personality Frame material: plastic Anti-UV grade: UV400 Style: General Visible light transmittance: 90 (%) Model: valve mask Intensity: strong', 'Wednesday, April 8, 2020 11:11', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F02b600d5-9cf3-4458-b8a7-6a571fd1a121.jpg?alt=media&token=b1ddd447-d68a-4612-ba04-6148ca55b639', 'PvFyQtcSVsrCEVW5ci1d', 'Others', 'Small', 'Gucci', '0', 'vy3apoiHnkSaGQKXteFKDM9adQp2', 'j51KAH8OUsCiN9B4nMLU', ''),
('Soko Maize Meal', '120', 'Description', 'Monday, April 6, 2020 16:51', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F65580ad2-13f4-48fc-a518-a0bd345dc661.jpg?alt=media&token=e90fad3e-b9b4-438e-a7ad-5f373b0f0d2c', 'qQUA6vTwEBpvjvXlyrYk', 'Grocery', '2kg', 'Soko', '135', 'vy3apoiHnkSaGQKXteFKDM9adQp2', 'j51KAH8OUsCiN9B4nMLU', ''),
('Files +Pens', '750', 'test description', 'Tuesday, April 7, 2020 12:56', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fd091d643-596d-4a9d-b3eb-3d5126d36383.jpg?alt=media&token=6756d7c7-8f13-46ac-8516-c67a8ff801fc', 'qz6qml4mmjYKj8Dijbwm', 'Stationery', '0.95kgs', 'Stationary', '820', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', ''),
('Angle boots black', '1200', 'best boots', 'Saturday, May 16, 2020 15:43', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F63f41ba6-67ed-40db-8497-92ec5a66e5d0.jpg?alt=media&token=12b69a2f-6afd-4cbb-a07a-98f8ea8fd247', 'rKBKlhZNv0IL3q8jCWYi', 'Flash Deals', '38', 'Boots', '1300', 'JZd3cI8abXVw11VXruVhhyWktII2', 'EVNOTysbykQ0ZfkdCBYs', '2'),
('bralete', '200', 'pink yarn bralete', 'Monday, May 18, 2020 19:10', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fea506876-73e2-4b2f-b139-9890d11601a9.jpg?alt=media&token=19e39250-13ca-4dc1-a805-fc4facade9ca', 'tePUGqNzA8EGeUVtlvJH', 'Flash Deals', 'medium', 'robin', '0', 'vy3apoiHnkSaGQKXteFKDM9adQp2', 'r74tIMlSR01CWTCIrwB4', '1'),
('Timberland boots', '5500', 'test description', 'Tuesday, April 7, 2020 13:26', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F018ce173-5dca-4757-8e96-37a02dd4ca25.jpg?alt=media&token=a91e4287-554e-4246-a5f1-b3055dfd91a2', 'twPkm5xSqOPrJwn9wYoE', 'Others', '1 pear', 'Timberland', '6500', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', ''),
('General Grocery', '4000', 'Best selection of grocery in  today market', 'Tuesday, April 7, 2020 12:16', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fd0c5d7e6-75a2-412d-9e21-320bd83a4688.jpg?alt=media&token=a4724707-21bb-4cbd-ac96-83863a904f66', 'ULx7QGMmT6cWCqXhPxt9', 'Grocery', '10', 'Grocery', '4600', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', ''),
('High Density mattress', '5500', 'description', 'Sunday, May 10, 2020 11:10', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F627ac118-86aa-45dd-a5c3-a90cea16f079.jpg?alt=media&token=900896bd-c723-4c8d-8ad5-14dcac6e3d6f', 'uu9VL731kzlX0us9tB1G', 'Mattress', '6\"', 'HD', '6000', '0ypNFf4MZuVJzifhM7Che3LiMyz2', 'xMcWvmd3O6K8Dmbg2ykp', '5'),
('Poncho', '1500', 'best quality', 'Saturday, May 16, 2020 15:21', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F33143d1e-1ca1-47ec-9692-13e0704f2ef1.jpg?alt=media&token=a28379f1-515b-47eb-9075-e469ce75930e', 'v12TIRDfoibcq8lbOr7E', 'Flash Deals', 'medium', 'crochet', '0', 'JZd3cI8abXVw11VXruVhhyWktII2', 'EVNOTysbykQ0ZfkdCBYs', '2'),
('CAVA', '750', 'test description', 'Tuesday, April 7, 2020 13:33', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F67cdb03b-c7ed-4a5a-9ec7-730f4d3cd277.jpg?alt=media&token=a11a3604-79d1-4f2f-926a-87273159b156', 'vyXmM6xBT95L9FvmNLy2', 'Drinks', '750ml', 'CAVA', '1000', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', ''),
('Polo jeans', '1500', 'test description', 'Tuesday, April 7, 2020 13:28', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fd6ab8ed6-22de-4f84-bcae-05e08497ab69.jpg?alt=media&token=13bf954b-4b91-4cd6-9713-9024de66a0a6', 'yJ4CCxCv8hRX8lhHFBHA', 'Others', '1trouser', 'Polo', '2200', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', ''),
('Fresh kales', '20', 'test description', 'Tuesday, April 7, 2020 13:14', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F01088539-b34b-4b9a-b4b9-baa1291f85bd.jpg?alt=media&token=4b050d25-e2cc-431d-8fc6-7ef0dc4b3b99', 'YXHBYkEhLHTbEva7OYf3', 'Grocery', '50gms', 'Grocery', '26', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'sRW5mrjgVSPSWeB5C6dH', ''),
('scotts emulsion', '350', 'supplement', 'Thursday, May 14, 2020 11:37', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F07ed335c-a302-42d7-b375-90db956251d3.jpg?alt=media&token=e4f8089d-a8e6-4162-ac9f-8f4f0d31d9f0', 'ZMmOuEYUnfmwBQLNkVJG', 'Flash Deals', '100ml', 'gsk', '380', 'By3fhKos9rO5xc5Tt9vUSYhA4x82', 'agpzI0uJy8rBFanfaaGI', '20');

-- --------------------------------------------------------

--
-- Table structure for table `product_cats`
--

CREATE TABLE `product_cats` (
  `id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_cats`
--

INSERT INTO `product_cats` (`id`, `image`, `category`, `dateCreated`) VALUES
('2Pb6FEDg9y9rK6mGAgw8', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ff87de0de-87d3-4cb0-b1af-81ec87b70581.jpg?alt=media&token=02ac2056-291b-465a-84c0-dd68e4868466', 'Scrubbers & Sponges', 'Thursday, May 7, 2020 11:17'),
('3WSQeGedqhevxWuXeIsO', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F8689c1cd-fc60-40f2-b8f0-393e0b6ccca7.jpg?alt=media&token=1bbd2c9d-9754-44fe-9e85-c5913a1c9b5f', 'Electronics', 'Saturday, May 9, 2020 09:58'),
('5h9PLmkK3M77PjMyRAQz', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fe928309e-c6b6-416d-8eda-f8918aabbc68.jpg?alt=media&token=578e9f59-22d2-42b8-afda-dd7d922a902a', 'Gas refills', 'Friday, May 8, 2020 20:28'),
('5IGkJxL9TfDEHyA4Ue7i', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F256916c2-44ec-4a3d-b08b-f096ea194c39.jpg?alt=media&token=c53f0f62-e6e5-4b0f-80a3-668b35915b6d', 'Yoghurts', 'Saturday, May 9, 2020 09:57'),
('6p6lyFeSwKM3OVfwxWyX', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F3c2d5576-ed2b-42fa-811d-acbb63d76fe8.jpg?alt=media&token=0a2edfb7-6869-4e0d-921b-fbf8e15810c2', 'Yeast', 'Thursday, May 7, 2020 11:24'),
('6wyFtFEEiQaFmL6QT7xZ', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fc3b7c8d3-75bb-42b1-87b2-8247f9f37b67.jpg?alt=media&token=05131a94-0fcc-44cd-b445-552cb5f75782', 'Flash Deals', 'Tuesday, April 14, 2020 16:56'),
('7cVptSCAIFIHfw8zTECD', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fa5d371a7-139d-4606-ae28-a6dbbd204038.jpg?alt=media&token=c72cbe5d-3d20-4026-9bb3-9d8976119103', 'Grocery', 'Friday, May 8, 2020 01:52'),
('9P8vD8NefjloDZqjCZQi', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F4e9013e5-462b-4c5e-bd69-72c4e6032393.jpg?alt=media&token=0aa07ed5-633c-4ce8-b245-d5d983e691f0', 'Cards', 'Thursday, May 7, 2020 11:14'),
('AmiGmeqaDQ1Kvp9xoVzH', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F38ebe8bd-1fe3-4795-bf15-09e5b0c70b4b.jpg?alt=media&token=5c5ab32f-c659-4f29-a925-9339e1f78c19', 'Plastics', 'Saturday, May 9, 2020 09:49'),
('aS4NZPPVqJcJL0Fa4JcH', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ff916ea7c-e650-4b13-9f3a-aa8c0b4b3a58.jpg?alt=media&token=3eb50166-5d5a-484e-bb70-4c784d537033', 'Brushes', 'Friday, May 8, 2020 01:51'),
('BApcsAmacNjZC9tiWFrY', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F4b576325-2a30-40d5-8901-8d587ee6a43b.jpg?alt=media&token=0c99b362-ff21-46b2-9a71-716eabecb9b7', 'Eggs', 'Saturday, May 9, 2020 09:36'),
('bYvizEhMd9csaipVIPXD', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F5496e1f4-4b8f-4254-84ab-96dd74cac988.jpg?alt=media&token=17f2df24-24be-4316-b64c-d5897cd3ca13', 'Soft Drinks', 'Saturday, May 9, 2020 09:34'),
('camJDSB0cWI1LKc3SHIx', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ffaa66c52-1503-4ca2-b4e0-646ee319f9bd.jpg?alt=media&token=1c29aa19-708a-42e1-958e-f5b9d40474b4', 'Flasks', 'Saturday, May 9, 2020 09:38'),
('cBSIIPS8JQy8DUbhyT1Q', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fffe15007-30c8-4463-af88-9c558c1ad9ca.jpg?alt=media&token=65e48250-26e5-4e4d-8897-00245a5b6456', 'Furniture', 'Thursday, May 7, 2020 11:18'),
('ccyVlbeBDec8T1ALtcyK', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ffddc10dd-fa3b-431e-a97e-6a48eecaefd4.jpg?alt=media&token=b456cbaa-358c-404b-8fc7-d4ee9d3f77f4', 'Cereals', 'Friday, May 8, 2020 20:51'),
('CvhoTLKnBlRu1iqcAnrR', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fa5adadc4-4564-4ca4-b5a9-bd6faf445930.jpg?alt=media&token=1dc24996-6d25-4ce6-8226-960ae9945961', 'Bread', 'Friday, May 8, 2020 20:45'),
('Dg8Vl2FNmgafDoU6t0L0', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fc471350c-2828-4fd3-9e8e-9c3cb3ad776d.jpg?alt=media&token=fa4525c2-2ce8-4193-9835-49918d6d00ba', 'Medicine', 'Saturday, May 9, 2020 09:50'),
('DWFGURkwTEK8RHL8wcWM', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F5d077094-9c7c-4aa6-95be-e7253f11efb8.jpg?alt=media&token=295d76c7-0e52-4728-87d9-6ca1c853f0ca', 'Spreads & jams', 'Saturday, May 9, 2020 09:48'),
('ELu3DsuxIJ7CyRls8kKL', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fee23ef71-31ff-4511-ab92-b9b416b84520.jpg?alt=media&token=e940a601-c37e-471f-8454-da186e8ece88', 'Candles', 'Friday, May 8, 2020 20:49'),
('gCCtI8lINPLpkUh3zDXh', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F86a47983-d118-44a5-9559-d11426167f2d.jpg?alt=media&token=7c51f7b8-07d0-4eb3-8eb4-aefd32048d17', 'Mattress', 'Saturday, May 9, 2020 09:39'),
('hLzDVqi97sBwn18s8MbX', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F8a2c4ce5-d91a-4b1b-9c38-da74319239e2.jpg?alt=media&token=75c7407a-bcfb-4838-8df2-5ace2f15603c', 'Baking Flour', 'Saturday, May 9, 2020 09:22'),
('iWk8a0klJSpZgBVIJIlr', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fd5087855-09f3-4a6f-a590-eadc21ab81eb.jpg?alt=media&token=2a99a1a8-3d34-4387-a2fd-eb26f1536e44', 'Weave', 'Friday, May 8, 2020 20:34'),
('jKjz2U5sNkVSXAICgFWD', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fc45c1ef3-e62a-42a3-9470-733901dfe782.jpg?alt=media&token=4ed73a03-dd75-4c2b-9a93-d12653616eed', 'Butchery', 'Thursday, May 7, 2020 11:20'),
('k9YizEoixLaxPs8E8kBA', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ff7580673-d082-41e0-a5ea-c29ca3af3b3d.jpg?alt=media&token=c4315cc6-09ab-4cb8-b17e-cf2f2e022837', 'Flowers', 'Thursday, May 7, 2020 11:19'),
('ly3dleBmRq68tWv74VA8', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F265c9300-757f-4185-8c8e-cf30e741cf6d.jpg?alt=media&token=3f906137-cf87-449a-8df3-0890f0476310', 'Baby care', 'Friday, May 8, 2020 20:39'),
('MEPyqtdk2W3lB2GXiCcR', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fef856467-86f6-4016-b45d-30f1e6c8141a.jpg?alt=media&token=eea56529-e8dd-40ef-bf4c-1ee828872eef', 'Blankets & Duvets', 'Friday, May 8, 2020 20:41'),
('MVX56olLWT0PJEsh2VsW', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F5f8360d6-2a72-4e5d-bb70-8ded2e3669be.jpg?alt=media&token=860c4c09-786b-497d-a1d8-80cd0ad49dd9', 'Detergents', 'Saturday, May 9, 2020 09:23'),
('nS56ZxXMubQ2Hmz6Jh7k', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fe25398c4-1311-4206-8fbf-7e5f43cda66a.jpg?alt=media&token=0a644834-20b4-4829-bf15-b3c19e50b0a6', 'Diapers', 'Saturday, May 9, 2020 09:35'),
('NTmpBQBqXmNIZllpbWt3', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fac84fa6d-ea4a-43a4-9691-d53b0346b7fb.jpg?alt=media&token=f91dc4e2-3a7b-43c4-abe5-956f5d06335c', 'Chocolate Bar', 'Friday, May 8, 2020 21:15'),
('O9IYACUBXP8MRu2kPrq3', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Ff7fcb7f1-8b7d-4176-9184-248c9665c25a.jpg?alt=media&token=fabc7857-876c-460a-aecb-12d5c1cb9c57', 'Hardware', 'Tuesday, May 19, 2020 00:34'),
('PKAsVtkrKw58lZ8dIdyN', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F9f3bcc92-7c9c-430e-a8cd-6c1285082d54.jpg?alt=media&token=1e8cbaa6-e4b6-4bd3-901d-ba018bdc68d4', 'Cosmetics', 'Saturday, May 9, 2020 09:30'),
('QlcdlTmGDUAGsGgUMsbO', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F5147c945-a9eb-4006-b440-79e7f5411c2b.jpg?alt=media&token=6a8047b2-2b05-478f-bbbd-a0d294c7c8de', 'Dry cells', 'Friday, May 8, 2020 20:31'),
('qmSR3Aivy5OeLsEwmxR2', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fc0490a67-4816-462b-be12-5748dd520632.jpg?alt=media&token=8e889c29-790e-4f8d-a8eb-67056149914e', 'Softeners & Bleaches', 'Friday, May 8, 2020 01:53'),
('r6IAJsykNifbBcMeLU1m', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F3f590232-3410-461d-bcb9-23f6575c169e.jpg?alt=media&token=7ead4a70-0846-436c-84a6-c086bfdca82b', 'Shoes', 'Saturday, May 16, 2020 17:08'),
('rI6H34qiLRHZ5KXUrbCK', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fb381bca7-43f9-47ad-af5c-bfa98922a93c.jpg?alt=media&token=1f95141f-e07e-44ac-9634-cb17097312bf', 'Baking  Powder', 'Saturday, May 9, 2020 09:49'),
('SvXd164M25sAgc4IxyE9', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fd7668f6a-ec57-4eff-a93f-b6b441d4a091.jpg?alt=media&token=c7e1b09a-b35a-458c-94f2-c3af0216cf1a', 'Crips', 'Friday, May 8, 2020 19:24'),
('vEpeioj3svJ3gcq80ZeD', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fc42ac344-6d89-4a9d-bf8b-b077b5ec4d2f.jpg?alt=media&token=b022a9f4-87bc-4719-a014-808819618e89', 'Sauces & chillies', 'Saturday, May 9, 2020 09:51'),
('VgyIORy86kDuuEcZoAp3', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fa441a638-a6d4-4ffc-95e2-44735d017432.jpg?alt=media&token=68a67d04-1ee2-4728-bddf-52e17dd1cbb0', 'Biscuits', 'Saturday, May 9, 2020 09:48'),
('VtjW1XCLdZB0kpDmBEED', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F1fa2a21e-04d7-41f5-9621-83c8d3b4ab02.jpg?alt=media&token=e57d6dee-51b8-4950-a8a6-5ae75c57d05b', 'Cotton  Wool', 'Friday, May 8, 2020 11:09'),
('w80Y2KHpOmjv0BHVgDmY', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Faa1d9c93-465c-48d8-9e09-e9e2eb77a388.jpg?alt=media&token=aa1bffa0-0403-4ffa-86f7-aa7ae5b20194', 'Cooking oils & fats', 'Saturday, May 9, 2020 09:32'),
('xaLIG1g1NK1JLy1HFXHo', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F78ea5b33-56c1-47ac-8fb3-09719404f2a0.jpg?alt=media&token=2f3ab54d-28ca-4ad9-8a12-1b7011da0c40', 'Tea & Coffee', 'Saturday, May 9, 2020 09:21'),
('xaSpTSFCMISqqHXsrwKV', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F4fdf627d-c469-4acf-bdec-bbcde359baf1.jpg?alt=media&token=08dc3224-c1dc-41f1-b3bc-53bd9ff45a8f', 'Wipes', 'Thursday, May 7, 2020 11:23'),
('xn18pa49hnsz898gvOsd', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fc4e1b5f8-1605-4436-bc47-0e719bbe8b27.jpg?alt=media&token=78122a26-b06b-4c79-81fc-4def43a5529a', 'Utensils', 'Thursday, May 7, 2020 11:16'),
('xZziB9eaUcLftuDZnSqH', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F2cb28784-e11d-494d-86ea-434c1cfe6ec6.jpg?alt=media&token=5d1ec0dc-eea4-4d31-87f1-649d20591a35', 'Maize Flour', 'Thursday, May 7, 2020 11:15'),
('Y2dghkiit2JZHwA3km4F', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F1f19e8b4-a406-4a61-8c23-f0a01bf07632.jpg?alt=media&token=16455cb0-00ea-4ef9-a0a8-46eaf6c7e0e7', 'Bicycles', 'Thursday, May 7, 2020 11:19'),
('YVhMhV9lUjsVxwuuNdja', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fe4354a96-37cd-4ceb-9817-126441079677.jpg?alt=media&token=1454c72c-e53b-46b1-bc1c-030bf03ea744', 'Lotions', 'Friday, May 8, 2020 01:51'),
('Zc22JHMQxIeSbIXc7z6c', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F224efff9-b106-486f-babd-0fbff5a6fa7a.jpg?alt=media&token=10e3553a-5f96-4b2e-8601-9fb53ccfafbb', 'Phones', 'Friday, May 8, 2020 20:36'),
('ZY1Ogl3Qlvp9SRbok0RT', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F40a109de-dcc0-494d-b5b6-e01fea36a0b8.jpg?alt=media&token=e345b144-dd42-43ac-9ea9-cb030eb94b84', 'Toothbrushes', 'Saturday, May 9, 2020 09:20');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `till` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(122) COLLATE utf8_unicode_ci NOT NULL,
  `open` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `image`, `dateCreated`, `location`, `category`, `email`, `phone`, `city`, `user_id`, `till`, `status`, `open`) VALUES
('xMcWvmd3O6K8Dmbg2ykp', 'Shop4Me supermarket', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/images%2Ffada7fb9-888f-4f58-90af-76422b0e6199.jpg?alt=media&token=2137d163-4281-4e94-a78b-560ca517df27', 'Saturday, April 11, 2020 13:13', 'Kericho Town', 'SUPERMARKET', 'laxcoinctech@gmail.com', '0716698513', 'Kericho', '0ypNFf4MZuVJzifhM7Che3LiMyz2', '5131545', 'active', 'yes'),
('sRW5mrjgVSPSWeB5C6dH', 'ShopToMe Supermarket', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/images%2Feb413773-2c3a-46e3-b4bd-48de14b215bd.jpg?alt=media&token=f0c3b1a1-e9a0-4b6f-8a5a-58b6f6be0955', 'Tuesday, April 7, 2020 12:13', 'Kericho Town', 'SUPERMARKET', 'shoptomekericho@gmail.com', '0207854158', 'Kericho', '8EEGAnKIPeZLOUMcEs0Dhq4dMU93', '5131545', 'active', 'yes'),
('agpzI0uJy8rBFanfaaGI', 'Kericho central chemist', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/images%2Fe6b2ce2f-cf6f-4ac3-8fe7-ded0a5906a5d.jpg?alt=media&token=a859560a-c4a6-4214-b996-dc7a049541f7', 'Thursday, May 14, 2020 11:28', 'Along garage Road opposite Vishnu Hardware', 'CHEMIST', 'kerichocentral@gmail.com', '0720900686', 'Kericho', 'By3fhKos9rO5xc5Tt9vUSYhA4x82', '706914', 'active', 'yes'),
('6KEgNbAF3rfilYaGTix6', 'Mobi Club', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/images%2F3d2ae95f-2abc-4249-8c26-860323c8fa10.jpg?alt=media&token=a6dfe30d-174b-44db-b1b0-7b9773e373c3', 'Saturday, May 16, 2020 23:28', 'CBD', 'MOBI CLUB', 'shop4me@gmail.com', '0207854158', 'Kericho', 'fSA3SGGIzpQiIpEn3w433E8zUKH3', '5131545', 'active', 'yes'),
('EVNOTysbykQ0ZfkdCBYs', 'Reds', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/images%2F6d6be179-3ee9-496d-9629-66e6540d81a9.jpg?alt=media&token=1be36ffa-ec1e-4751-88c3-c015d0ebedb8', 'Saturday, May 16, 2020 15:10', 'Opposite police station', 'BOUTIQUE', 'redsshop@gmail.com', '0703659092', 'Kericho', 'JZd3cI8abXVw11VXruVhhyWktII2', '0703659092', 'active', 'yes'),
('Qi9wUMLCqNMICSGd6FqE', 'Jacana Hardware', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/images%2Fdbc15ae9-80ec-4efb-a17f-444032a9284a.jpg?alt=media&token=ab6002bb-e3e7-464c-b232-c4dcf8a25be5', 'Monday, May 18, 2020 22:22', 'Kericho CBD', 'HARDWARE', 'jacanahomes@gmail.com', '0207854158', 'Kericho', 'KxUKGdIoC5eyvldm7haRpbfcsXC3', '5131545', 'active ', 'yes'),
('oxEk5TeqHf6qL9GBXb35', 'Wessyde Lounge', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/images%2F8c15099c-85c3-46aa-8fb9-ce911c17a13e.jpg?alt=media&token=9fe8f39a-b74a-4a53-b4c3-801aa5d2dfbb', 'Tuesday, May 19, 2020 13:27', 'Green Mall', 'MOBI CLUB', 'info@wessydelounge.com', '0703100555', 'Kericho', 'pnWSOVuizKSSTZb3H6795vSI1R02', '262245', 'active', 'yes'),
('SDfzukbrRO5byHMz4Lwl', 'Shop4Me Hotel', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/images%2Fcf3b1696-fbcd-45a6-9f67-35455d111691.jpg?alt=media&token=567a702f-df17-45a5-adcb-09bc41f1c78c', 'Thursday, April 16, 2020 13:42', 'Cheplolon', 'HOTELS', 'shop4me@gmail.com', '0716698513', 'Kericho', 'SFY6URcKHmcBxwYoWXZ5E5QQZ9D2', '5131545', 'active', 'yes'),
('r74tIMlSR01CWTCIrwB4', 'Veen Closet', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F3d33fed1-0b21-4532-92f9-b17d4c6d1e97.jpg?alt=media&token=e5019ad8-9662-4680-b4bc-b7d021d074ff', 'Monday, May 18, 2020 18:59', 'CBD', 'BOUTIQUE', 'parveenwesonga@gmail.com', '0791747959', 'Kericho', 'vy3apoiHnkSaGQKXteFKDM9adQp2', '0791747959', 'active', 'yes'),
('BrryKGY7wlw8aT9zjLVN', 'ShopToMe Cafe', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/images%2F9ce3e138-28db-4263-b2c9-3326a48e7bce.jpg?alt=media&token=4063c11e-019b-4977-8a7f-a3bac2040984', 'Wednesday, May 6, 2020 16:02', 'Chebaon', 'HOTELS', 'rchmwarabu@gmail.com', '0716698513', 'Kericho', 'XrbcaUyKfiXR6S9KQYYGDHi4Htn1', '5131545', 'active', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `shop_types`
--

CREATE TABLE `shop_types` (
  `id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_types`
--

INSERT INTO `shop_types` (`id`, `image`, `category`, `dateCreated`) VALUES
('6aURyJtmyYyhhMRF5vrl', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F865c19a6-55b5-4880-ac1f-8336577f12cb.jpg?alt=media&token=f65215ec-f66b-45af-9dca-a9f082e3ecc5', 'WHOLESALE', 'Wednesday, May 13, 2020 16:42'),
('dVkUM2R6gl8RgGO1K6it', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F41fd7727-ca26-4f6a-9b59-91b9c29bb1a0.jpg?alt=media&token=d61426c9-c32b-4eb8-8695-a7ae7384159f', 'GAS REFILLS & SALES', 'Thursday, May 14, 2020 10:50'),
('HpxJK59BFGFBJ2H2X8Rj', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F1a580fc4-eb3b-47ac-9fe6-450ec13b2acb.jpg?alt=media&token=dab86fee-7f46-4f32-b001-7d8161e4f033', 'SUPERMARKET', 'Monday, April 13, 2020 17:18'),
('JNRp9jtmxLuSCUl86dla', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F54479f14-6947-4582-ac12-08dc3d61881b.jpg?alt=media&token=f97c12a0-e26c-4520-b280-d40ea318cb0a', 'BOUTIQUE', 'Sunday, April 26, 2020 14:50'),
('m3jLvDMm1W2Z6wtcvFQk', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F9f3d8856-d955-4084-8c54-399dfcf0b975.jpg?alt=media&token=562a1537-143c-4e67-81db-a0b5dfe3ef5a', 'SHOE STORE', 'Tuesday, May 12, 2020 13:53'),
('McjEpBIM8k5O1KLIFjiD', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F4de668c6-af29-44aa-aae4-7b68987b0bec.jpg?alt=media&token=39b4fcfc-7328-4787-9461-a7dc7f5985ab', 'CHEMIST', 'Friday, May 1, 2020 17:26'),
('NC6cROTlCsZKdFktRmzc', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fe693596f-5bd5-4c1e-8045-88d4dcbc80d8.jpg?alt=media&token=1e04f21f-ad62-4bed-87c8-4ad28c4bb153', 'MOBI CLUB', 'Saturday, May 2, 2020 14:09'),
('NPZzU7IdQm6Ya0InoUoA', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F19e96bcc-eb46-44a7-a414-ab2d4d59f465.jpg?alt=media&token=7b03770b-1d49-4e03-aa21-218c8fc5e73d', 'HOTELS', 'Monday, April 13, 2020 17:21'),
('nWSqDrXMIgLfmDJ1U96T', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F9863ed9f-4489-49eb-8c6e-613187c3f06e.jpg?alt=media&token=f35f855c-4257-40fb-8f93-1eb0f0dc5dc2', 'HARDWARE', 'Wednesday, May 13, 2020 16:39'),
('qQYBWxAKuqiIqUTNMRKP', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fb34a4063-96bb-4cfa-a925-add1a7b09490.jpg?alt=media&token=7b2928a6-12c1-4385-9af9-a5ab49b828c3', 'AGROVETS', 'Wednesday, May 13, 2020 16:40'),
('t1AEsNqrSTdzmtxHY23l', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fa67b0fbf-b46e-49d6-a76f-a7503d30b2fa.jpg?alt=media&token=a1046120-db03-4bd6-aa34-a7a0f7c472dd', 'AUTOMOTORS', 'Wednesday, May 13, 2020 16:41'),
('x4CuJfWlvBS5ujgx8uwW', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F27d32e6e-1d9d-4a4a-a2b5-429b2639f52e.jpg?alt=media&token=97b5f453-72d1-4e99-804b-134ab222c890', 'MINI SHOPS', 'Sunday, April 26, 2020 16:06'),
('xFzm5pLfvs3eKoU1oxNg', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2F631053ed-2455-49ed-bc07-3c68fbb46d35.jpg?alt=media&token=8eadc08a-768c-41ab-a127-2f030dd05b89', 'STATIONARY', 'Thursday, May 14, 2020 21:11'),
('YFdp206eISFr3pToaniu', 'https://firebasestorage.googleapis.com/v0/b/mobi-cakes.appspot.com/o/Images%2Fb4c47d5b-7dc7-4837-9382-45950b489e0d.jpg?alt=media&token=8a41b625-bb11-4bc1-a188-6e525b0e2f48', 'ELECTRONICS STORE', 'Tuesday, May 12, 2020 13:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `strUserId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `strUsername` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `strEmail` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `strPhone` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `strCounty` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `strLocation` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `strCity` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `strImageUrl` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`strUserId`, `strUsername`, `strEmail`, `strPhone`, `strCounty`, `strLocation`, `strCity`, `strImageUrl`) VALUES
('0ypNFf4MZuVJzifhM7Che3LiMyz2', 'DevMwarabu', 'clemdevs@gmail.com', '254716698513', 'Kericho', 'Catholic', 'Kericho', 'file:///data/user/0/com.veen.mobicakes/cache/cropped280302856784799790.jpg'),
('4HezAovobHZu8CKPRE2K2ScGWtr1', 'Tom Omondi32', 'tomomondi32@gmail.com', '254722798569', 'Kericho', 'Eland', 'embakasi', 'https://lh3.googleusercontent.com/a-/AOh14GgJpx_s0_G0cIau0zs-RLBOt9BzoBJEpUVCcL6Y=s96-c'),
('4tpsrtgHobYXn5dL6CLRbnRtF4h1', 'Avnish Sodha', 'avnish568@gmail.com', '254703100555', 'Kericho', 'CBD', 'Green Mall', 'https://lh3.googleusercontent.com/a-/AOh14GgqvYva0Cq81ZOAVWz6ZEbgmIuaY8KP0WptJUX4wF0=s96-c'),
('7OtMw8tPTuVwKj3kF5polYYjs583', 'ALFRED ROTICH', 'roticht270c@gmail.com', '25407679833', 'Kericho', 'Brooke', 'kapsuser ', 'https://lh6.googleusercontent.com/-PzAyAXjaSJ4/AAAAAAAAAAI/AAAAAAAAAH4/AMZuucmbsdKx70R4iDi0hXRo46oWj32lfA/s96-c/photo.jpg'),
('7XDOomeHToXoIaa2qh9stwcg8Ty2', 'Dairus Kipruto', 'kiprutodairus@yahoo.com', '254710607272', 'Kericho', 'Eland', 'baraka', 'https://graph.facebook.com/3152349161496609/picture'),
('8EEGAnKIPeZLOUMcEs0Dhq4dMU93', 'Clement Koech', 'clemokoech@gmail.com', '254705146547', 'Kericho', 'Majengo/Mabuyu', 'Kericho', 'https://lh3.googleusercontent.com/-7KKF5OZZV-A/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJPW9ZDCqyd8HyrZUw2pYj8NK9RqQQ/s96-c/photo.jpg'),
('ALv5ERfbvieDIeMB2pbA8vE6Vs22', 'CARRIS CHELANGAT', 'carris1984@gmail.com', '254292665939', 'Kericho', 'Eland', 'hhhu', 'https://lh6.googleusercontent.com/-rCI-DwpgYaI/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJOE6umv0FNOIaO6YNFxvoVaFH_bMg/s96-c/photo.jpg'),
('By3fhKos9rO5xc5Tt9vUSYhA4x82', 'Kericho Central', 'kerichocentral@gmail.com', '254715711775', 'Kericho', 'CBD', 'kericho town', 'https://lh5.googleusercontent.com/-H33JNIHBIjo/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckSEHOnrXMxPFmQHQxB92WppOfZKg/s96-c/photo.jpg'),
('cIZYDiQ219OHiiFJp1gh0v7Wu7E2', 'PATOW 254', 'pkipkirui0@gmail.com', '254702484144', 'Kericho', 'Toyota', 'cbd', 'https://lh3.googleusercontent.com/a-/AOh14GhTg1njgrBFOfee6t4867HUjx2I6_xH9cXn0g_SKw=s96-c'),
('dMj3psT6rqfRdykas0VDN069Z5l2', 'Laxco Inc', 'laxcoinctech@gmail.com', '254791747959', 'Kericho', 'Majengo/Mabuyu', 'Kapmaso', 'file:///data/user/0/com.veen.mobicakes/cache/cropped5869336446074958852.jpg'),
('erQ49tms2PevjJ3UFEPaPhkpOiX2', 'hussein kipuu', 'husseinkipuu923@gmail.com', '254727636879', 'Kericho', 'Jericho', 'Kapsuser', 'https://lh3.googleusercontent.com/a-/AOh14GiC11YdOY3WPsUYN8TqYOaPrv8B2JYM_JpCz1u8=s96-c'),
('FlwjjadeqGNH1lB0Q8iY5mUKxzI3', 'Chelaa faith', '0727436379chelaafaith@gmail.com', '254072743637', 'Kericho', 'Eland', 'chelaafaith', 'https://lh4.googleusercontent.com/-cwJDNBZR0bU/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJOTMbrCTSY-2nGa_K1YLZAX7WRvVA/s96-c/photo.jpg'),
('fSA3SGGIzpQiIpEn3w433E8zUKH3', 'Laxco In', 'laxcoinctech@gmail.com', '254716698513', 'Kericho', 'TEA ESTATES', 'Kap', 'https://graph.facebook.com/111872953843005/picture'),
('jOsuxsN3jlQq68VOcS0zKwb2yI93', 'kili', 'emmanukiptoo987@gmail.com', '254799092727', 'Kericho', 'Eland', 'kabianga', 'https://lh4.googleusercontent.com/-9eaVLk-lGcg/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJOFFzlsNK61wSL2wDMwEvM074R-xQ/s96-c/photo.jpg'),
('JZd3cI8abXVw11VXruVhhyWktII2', 'Red', 'redisha123.pensive@gmail.com', '254703659092', 'Kericho', 'Baraka', 'kericho', 'https://lh5.googleusercontent.com/-jgRnsdB76YY/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucljs3fHOk9DcnGuoWbWImqdD3qD7g/s96-c/photo.jpg'),
('k5gNPziX2OUqPz0pgjDN5gvxNkx2', 'Bett Collins', 'bettcollins44@gmail.com', '254740123717', 'Kericho', 'Cherote', 'kapsuser', 'https://lh3.googleusercontent.com/a-/AOh14GjgYTZvbmXNAIbVVjundmSlCgaHWm6MycUeyVu1=s96-c'),
('kDQm0gydvhQ3tq8w9RddmnOFrp13', 'narcar koskey', 'narcarkoskey90@gmail.com', '254714332940', 'Kericho', 'Kwa Kimutai', 'kericho ', 'https://lh4.googleusercontent.com/-i_jCNlj0Ysw/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJMl1ARHzZihBcOBp23dCbwcTvK_YA/s96-c/photo.jpg'),
('KxUKGdIoC5eyvldm7haRpbfcsXC3', 'Alex Kimutai', 'brkimutaiparallel@googlemail.com', '254721437425', 'Kericho', 'Cereals', 'cereals ', 'https://lh3.googleusercontent.com/a-/AOh14Gh8S3vo8S7gh8RrQMDd1QoBu35JuccnJiu8thYv=s96-c'),
('lCH1nUze7JZe9FmIGV2FgZ5xlDo2', 'embassy cyber', 'embassycyber12@gmail.com', '254724099208', 'Kericho', 'Kwa Michael', 'KERICHO', 'https://lh5.googleusercontent.com/-mq9fYkAS0fY/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJN8gpUaxGE_BOPAzHibiPPu0kNbtQ/s96-c/photo.jpg'),
('nBatP2wKy8b6fZzDLDWsioqqz052', 'Dev Developer', 'devdeveloperapps@gmail.com', '254716698513', 'Kericho', 'Kwa Solo', 'CBD', 'https://lh3.googleusercontent.com/a-/AOh14GhuXSQmImXbmQAhg0tRpoRxiCgLhQrgwcTA1In6=s96-c'),
('NCzCqzzyLefGYuGpCNTKZPmtay92', 'DOMINIC Y', 'yegonnnnn@gmail.com', '254706123456', 'Kericho', 'Kapketienya', 'kapt', 'https://lh5.googleusercontent.com/-Jbdsi5aJbIA/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckDot8d4-zHEVGB84Y7J-lHuLCbsw/s96-c/photo.jpg'),
('OSrEhdeIx5R0OxH72pCaFX4uljV2', 'Noel Trianah', 'trianahnoel@gmail.com', '254701374290', 'Kericho', 'CBD', 'TENGECHA NEAR DTB BANK', 'https://lh3.googleusercontent.com/-AqqwD8OgDP0/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJPgloor3GccDV6CLx9V6NUPNfNKpg/s96-c/photo.jpg'),
('P1gDL03gREQbv08q2MDah1BsFgx2', 'Philiph Isaiah', 'philiphisaiah@gmail.com', '254713704808', 'Kericho', 'Eland', 'A', 'https://lh3.googleusercontent.com/a-/AOh14GjSJ2-mk46lk3IWJRRGtnURLEbb0LiQ4IZsixsftQ=s96-c'),
('pnWSOVuizKSSTZb3H6795vSI1R02', 'Avnish sodha', 'info@wessydelounge.com', '254703100555', 'Kericho', 'CBD', 'Green Mall', 'https://lh6.googleusercontent.com/-S2YaFZK4DAA/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckTi_b2pTVzTaBAOOycBY5eeE8tUA/s96-c/photo.jpg'),
('q29FrWbtTFPUCuNngyXEbj354KF2', 'Kipyegon Mutai', 'froza009@gmail.com', '254724846340', 'Kericho', 'Toyota', 'Toyota', 'https://lh4.googleusercontent.com/-E6wPu9Je-Go/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJPOwZNOsZi5TZo9iKid6b-6p4WtgA/s96-c/photo.jpg'),
('rn5eyO4kaKVMoQB2yTYTXxFkRHN2', 'NICLAUS KEMBOI', 'kemboiniclaus22@gmail.com', '254072120399', 'Kericho', 'CBD', 'CBD', 'https://lh6.googleusercontent.com/-QUGYl4c1TLk/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuck9yYAPeRjxaSGC1xRLHbsaZac4aA/s96-c/photo.jpg'),
('SFY6URcKHmcBxwYoWXZ5E5QQZ9D2', 'Clem Mwa', 'clemwaapps@gmail.com', '254716698513', 'Kericho', 'Cheplolon', 'Cheplolon', 'file:///data/user/0/com.veen.mobicakes/cache/cropped6304783463383416224.jpg'),
('sSxX7KBiwJSJ9wnVuXT8gGENVK52', 'Victor Brunoh', 'victorbrunoh784@gmail.com', '254714703421', 'Kericho', 'Eland', 'nairobi', 'https://lh5.googleusercontent.com/-F3IdPGbTUEk/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclzfVKLB3P1qMZcRczkxxF1wLC1LQ/s96-c/photo.jpg'),
('UHsZFY5XfBbu6QgMiQslrCr9snH3', 'Nabila Barakat', 'nabilabarakat9@gmail.com', '254727718370', 'Kericho', 'Baraka', 'mombasa ', 'https://lh3.googleusercontent.com/-H3JyfE2oIpM/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclJ4I6ZjNuxdkRfuzSfniRRLwUAFA/s96-c/photo.jpg'),
('VByX6OSY8OQ6sqBZ9dnGtjXnZgj1', 'weldon kipkorir', 'weldonkip829@gmail.com', '254795724425', 'Kericho', 'Catholic', 'saptet', 'https://lh4.googleusercontent.com/-bNFEvZMCBMQ/AAAAAAAAAAI/AAAAAAAAABc/AMZuucmqrJ2UrVyAo5oKSBr_w0L1h2VssQ/s96-c/photo.jpg'),
('vy3apoiHnkSaGQKXteFKDM9adQp2', 'Parveen Wesonga', 'parveenwesonga@gmail.com', '254791747959', 'Kericho', 'Central', 'Kap', 'file:///data/user/0/com.veen.mobicakes/cache/cropped3957086085077620374.jpg'),
('XrbcaUyKfiXR6S9KQYYGDHi4Htn1', 'Chone Mwarabu', 'rchmwarabu@gmail.com', '254716698513', 'Kericho', 'Cereals', 'Chebaon', 'https://lh3.googleusercontent.com/a-/AOh14GhXq2FP-71iSZv2brenL8xSkSs7M9eaFsR3mR_oig=s96-c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`docRef`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `menu_cats`
--
ALTER TABLE `menu_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`docref`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_locations`
--
ALTER TABLE `pickup_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`documentId`);

--
-- Indexes for table `product_cats`
--
ALTER TABLE `product_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `shop_types`
--
ALTER TABLE `shop_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`strUserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
