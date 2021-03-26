-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2021 at 08:43 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `area` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `area`, `city`, `zip`, `created_at`, `updated_at`) VALUES
(1, '131, Dhanmondi', 'Dhaka', 1229, NULL, NULL),
(2, 'Mirpur 10', 'Dhaka', 1772, NULL, NULL),
(3, 'Mirpur 2', 'Dhaka', 1223, NULL, NULL),
(4, 'Uttora', 'Dhaka', 1233, NULL, NULL),
(5, 'Shyampur', 'Rangpur', 1200, '2021-03-05 22:25:51', '2021-03-05 22:25:51'),
(6, '603/B shamem saroni, mirpur', 'Canada', 1216, '2021-03-12 13:23:15', '2021-03-12 13:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '12345', 'Ramzan', '2018-08-27 18:00:00', '2018-08-27 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Computer', 'PC, Laptop', '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(2, 'Smart Phone', 'All smartphones', '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(3, 'Headphone', 'All headphones', '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(4, 'Camera', 'All cameras', '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(5, 'Powerbank', 'All powerbanks', '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(6, 'Gaming', 'All gaming accessories', '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(7, 'Tab', 'All tabs', '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(8, 'Smartwatch', 'All smartwatches', '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(9, 'Speaker', 'All speakers', '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(10, 'Accessory', 'All accessories', '2019-02-08 18:00:00', '2019-02-09 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_04_19_173215_create_admins_table', 1),
(2, '2020_04_19_175655_create_addresses_table', 1),
(3, '2020_04_19_175938_create_categories_table', 1),
(4, '2020_04_20_141633_create_products_table', 1),
(5, '2020_04_20_142309_create_users_table', 1),
(6, '2020_04_20_142632_create_sales_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `tag` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image_name`, `description`, `colors`, `price`, `discount`, `tag`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Apple MacBook Pro (2018)', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Processor - Six Core Intel Core i7<br />Processor Clock Speed - 2.2-4.1GHz<br />Display Size - 15.4\"<br />RAM - 16GB<br />RAM Type - DDR4 2400MHz (Onboard)<br />Storage - 256GB SSD</p>\r\n</div>', '#c0c0c0,#000000,#ef0b0b', 214200, 205000, 'New', 1, '2019-02-08 18:00:00', '2021-03-08 12:23:11'),
(3, 'HP Probook X360 440 G1', '1.jpg', '<div class=\"ng-scope\">\n<p>Generation - 8th Gen<br />Processor - Intel Core i7 8550U<br />Processor Clock Speed - 1.80-4.0GHz<br />Display Size - 14\"<br />RAM - 8GB<br />RAM Type - DDR4<br />Storage - 512GB SSD<br />Operating System - Free Dos</p>\n</div>', '#000000', 94920, 91000, 'New', 1, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(4, 'Apple iPad Pro', '1.jpg', '<div class=\"ng-scope\">\n<p>Model - Apple iPad Pro 11 Inch WiFi+Cellular<br />Processor Type - A12X Bionic chip<br />Internal Memory - 256GB<br />Display Type - Liquid Retina display<br />Display Size - 11\"<br />Screen Resolution - 2388 x 1668<br />Connectivity - Wi-Fi, Bluetooth 5.0, USB, GPS</p>\n</div>', '#c0c0c0', 115500, 111000, 'Hot', 7, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(5, 'Google Pixel 3 (64 GB)', '1.jpg', '<div class=\"ng-scope\">\n<ul class=\"i8Z77e\">\n<li class=\"TrT0Xe\">Processor: Qualcomm Snapdragon 845 2.5 GHz quad-core.</li>\n<li class=\"TrT0Xe\">Display: 5.5 inch, 2160x1080-pixel</li>\n<li class=\"TrT0Xe\">Operating system: Android 9 Pie.</li>\n<li class=\"TrT0Xe\">RAM: 4GB LPDDR4.</li>\n<li class=\"TrT0Xe\">Storage: 64GB internal.</li>\n<li class=\"TrT0Xe\">Cameras: 12.2-megapixel rear f/1.8 dual-pixel</li>\n</ul>\n</div>', '#ff80ff,#c0c0c0,#000000', 71900, 71000, 'New', 2, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(6, 'Samsung Galaxy Note 9', '1.jpg', '<div class=\"ng-scope\">\n<ul class=\"i8Z77e\">\n<li class=\"TrT0Xe\">CPU: Qualcomm Snapdragon 845.</li>\n<li class=\"TrT0Xe\">Memory: 6/8GB.</li>\n<li class=\"TrT0Xe\">Storage: 128.</li>\n<li class=\"TrT0Xe\">MicroSD storage: Up to 512GB.</li>\n<li class=\"TrT0Xe\">Screen size: 6.4 inches.</li>\n<li class=\"TrT0Xe\">Resolution: 2960 x 1440.</li>\n<li class=\"TrT0Xe\">Connectivity: Bluetooth 5, NFC.</li>\n<li class=\"TrT0Xe\">Battery: 4,000mAh</li>\n</ul>\n</div>', '#0080c0,#000000,#804040', 95000, 94000, 'Hot', 2, '2019-02-08 18:00:00', '2019-02-09 18:00:00'),
(8, 'A4tech Bloody G437', '1.jpg', '<ul class=\"i8Z77e\">\n<li>Driver Unit: 40 mm Neodymium Magnet</li>\n<li>Frequency Response: 20-20000 Hz</li>\n<li>Sensitivity: 100 dB</li>\n<li>Impedance: 32 ohm</li>\n</ul>', '#000000', 3000, 2290, 'Hot', 3, '2019-02-08 18:00:00', '2019-02-11 18:00:00'),
(11, 'Canon EOS 6D Mark II', '1.jpg', '<p>Model - Canon 6D Mark II<br />Mega Pixels - 26.2 Megapixels<br />Lens Mount - Canon EF Lens<br />Processor - DIGIC 7<br />Sensor Type - CMOS Senso</p>', '#000000', 105530, 101000, 'Hot', 4, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(12, 'Nikon D7200 Camera', '1.jpg', '<p>Model - Nikon D7200<br />Effective Pixels - 24.2 Megapixels<br />Lens Mount - AF-S 18-140mm<br />Processor - Expeed 4<br />Sensor Type - CMOS Sensor<br />Screen Type - TFT LCD<br />Screen Size - 3.2\"</p>', '#000000', 78850, 75000, 'New', 4, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(15, 'Canon PowerShot SX730', '1.jpg', '<p>Model - Canon PowerShot SX730 HS<br />Resolution (MP) - 20.3 Mega pixels<br />Display (Inch) - 3\" TFT Color LCD Display<br />Optical Zoom (X) - 40x<br />Battery - NB-13L Battery</p>', '#000000', 31500, 30000, 'New', 4, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(16, 'Microsoft Xbox One', '1.jpg', '<ul>\n<li>Seamless profile and controller pairing</li>\n<li>Responsive thumbsticks</li>\n<li>Triggers and bumpers are designed for quick access</li>\n<li>Menu and View buttons quick for easy navigation</li>\n<li>Remap buttons through the Xbox Accessories App</li>\n</ul>', '#000000', 5100, 4300, 'Gaming', 6, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(17, 'Logitech Wireless F710', '1.jpg', '<p>Model - Logitech F710<br />Type - Gamepad</p>', '#004080,#c0c0c0', 5000, 4500, 'New', 6, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(18, 'ADATA 20100 mAh', '1.jpg', '<ul>\n<li>Battery type: Rechargeable Lithium-ion battery</li>\n<li>Special features: Dual USB ports</li>\n<li>Other features: 20100 mAh. LED Flashlight</li>\n<li>Input: DC 5V/2A</li>\n<li>Output: DC 5V/2.1A max</li>\n</ul>', '#000000', 2500, 1999, 'Hot', 5, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(19, 'Joyroom ZHI 10000 mAh', '1.jpg', '<ul>\n<li>Input：5V 2A</li>\n<li>Output：5V 2.1A</li>\n<li>Power: 10000 mAh</li>\n<li>Digital Display</li>\n<li>LED Lighting</li>\n</ul>', '#0000ff,#000000', 3300, 2999, 'Hot', 5, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(20, 'Astrum 10000mAh', '1.jpg', '<ul>\n<li>Battery: 10000mAh capacity li-polymer</li>\n<li>Connectors: 2 x USB Port</li>\n<li>Ouput: 1 - 5V 1A / 2 - 5V 2.1A</li>\n<li>Input: 5V 2A</li>\n</ul>', '#000000', 1500, 1500, 'New', 5, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(21, 'Mi 10000 mAh v2', '1.jpg', '<ul>\n<li><span class=\"a-list-item\">10000mAH lithium-polymer battery</span></li>\n<li><span class=\"a-list-item\">Dual USB Output, Two- way Quick Charge</span></li>\n<li><span class=\"a-list-item\">Material: Aluminium Alloy + CNC Edge</span></li>\n<li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.4bd16c33R4IjnQ\">Temperature Resistance</li>\n<li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.4bd16c33R4IjnQ\">Protection from Short Circuit</li>\n<li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.4bd16c33R4IjnQ\">Reset Mechanism</li>\n</ul>', '#000000,#808080', 1300, 1199, 'Hot', 5, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(22, 'Apple Watch Series 4', '1.jpg', '<p>Model - Apple Watch Series 4<br />Watch Dimension - 40 x 34 x 10.7mm<br />Display Size - 1.57\"<br />Connectivity - WiFi, Bluetooth, GPS</p>', '#000000', 44300, 43999, 'Hot', 8, '2019-02-08 18:00:00', '2019-02-11 18:00:00'),
(23, 'Mi Amazfit Bip', '1.jpg', '<div class=\"short-description\">\n<div class=\"std\">Model - Mi Amazfit Bip<br />Display Size - 1.28\"<br />Connectivity - WiFi, Bluetooth, GPS</div>\n</div>', '#000000', 6100, 5999, 'New', 8, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(24, 'Garmin fenix 5 Sapphire', '1.jpg', '<ul>\n<li>Display: 1.2&rdquo; (240 x 240)</li>\n<li>Display type: Sunlight-visible, transflective memory-in-pixel (MIP)</li>\n<li>Memory: 64MB</li>\n<li>Lens Material: chemically strengthened glass or sapphire crystal</li>\n<li>Bezel Material: Stainless steel</li>\n<li>Strap material: silicone</li>\n</ul>', '#000000', 45000, 43000, 'Smartwatch', 8, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(25, 'Beats PILL Plus', '1.jpg', 'SKU: RAMBPSHSP\n\nBrand: Beats\n\nActive 2-way crossove', '#000000,#ff0000,#c0c0c0', 21000, 20000, 'Speaker', 9, '2019-02-08 18:00:00', '2019-02-11 18:00:00'),
(26, 'JBL Omni 50+', '1.jpg', '<p>&lt;h2&gt;Model - JBL by Harman/Kardon Omni 50+&lt;br /&gt;Type - Wireless HD Indoor/Outdoor Speaker with Rechargeable Battery&lt;/h2&gt;</p>', '#000000', 46730, 45000, 'Speaker', 9, '2019-02-09 18:00:00', '2019-02-11 18:00:00'),
(27, 'Edifier S350DB 2.1', '1.jpg', '<p>Model - Edifier S350DB<br />Type - Modern Powered Bluetooth Bookshelf Speaker<br />Channel - 2.1<br />RMS/Channel (Watt) - 15Watt x 2 (Treble) + 25Watt x 2 (midrange and bass)<br />RMS/Subwoofer (Watt) - 70Watt</p>', '#000000', 31500, 30000, 'Speaker', 9, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(28, 'JBL Xtreme 2 Portable', '1.jpg', '<p>Model - JBL Xtreme 2<br />Type - Portable Bluetooth Speaker<br />Lithium-ion Polymer 36Wh (Equivalent to 3.7V 10000mAh)<br />Wirelessly connect<br />2 smartphones or tablets<br />charges device via an USB port</p>', '#400080', 25400, 24000, 'Hot', 9, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(30, 'APPLE Magic Mouse 2', '1.jpg', '<p>Model - APPLE Magic Mouse 2<br />Type - Magic Mouse<br />Connectivity - Wireless<br />Rechargable</p>', '#000000', 11050, 11000, 'Mouse', 10, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(31, 'Rapoo 3600 Silent', '1.jpg', '<ul>\n<li>Connection: 2.4GHz Wireless</li>\n<li>Tracking method: Optical</li>\n<li>Keys amount: 3&nbsp;</li>\n<li>Keys travel: 0.8mm</li>\n<li>Acceleration: 20G</li>\n<li>Resolution: 1000DPI</li>\n<li>Voltage: 1.5V</li>\n</ul>', '#000000', 1050, 999, 'Mouse', 10, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(34, 'Corsair STRAFE Mechanical', '1.jpg', '<p>Model - Corsair STRAFE Mechanical<br />Type - RED LED Backlight Gaming Keyboard<br />Interface - USB</p>', '#ff0000', 11000, 10500, 'Keyboard', 10, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(35, 'APPLE MAGIC KEYBOARD', '1.jpg', 'APPLE MAGIC KEYBOARD (MLA22ZA/A, MLA22LL/A)', '#c0c0c0', 9700, 9500, 'Keyboard', 10, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(36, 'MSI GT75VR 7RE TITAN', '1.jpg', '<p>Generation - 7th Gen<br />Processor - Intel Core i7 7820HK<br />Processor Clock Speed - 2.90-3.90GHz<br />Display Size - 17.3\"<br />RAM - 32GB<br />RAM Type - DDR4 2400MHz<br />Storage - 1TB HDD + 256GB NVMe SSD</p>', '#808080', 254630, 245000, 'Laptop', 1, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(37, 'Asus ROG G752VS(KBL)', '1.jpg', '<p>Generation - 7th Gen<br />Processor - Intel Core i7 7700HQ<br />Processor Clock Speed - 2.80GHz<br />Display Size - 17.3\"<br />RAM - 32GB<br />RAM Type - DDR4<br />HDD - 2TBHDD+512GB SSD<br />Operating System - Endless</p>', '#808080', 231420, 224000, 'Hot', 1, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(38, 'Microsoft Surface Pro', '1.jpg', '<p>Generation - 8th Gen<br />Processor - Intel Core i7 8650U<br />Processor Clock Speed - 1.90-4.20GHz<br />Display Size - 12.3\"<br />RAM - 16GB<br />Storage - 512GB SSD<br />Operating System - Windows 10 Home</p>', '#c0c0c0,#8080ff', 202650, 195000, 'Tab', 7, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(39, 'HP Spectre 13-V113TU', '1.jpg', '<p>Model - HP Spectre 13-V113TU<br />Processor - Intel Core i5 7200U<br />Generation - 7th Gen<br />Processor Clock Speed - 2.50-3.10GHz<br />Display Size - 13.3\"<br />RAM - 8GB<br />RAM Type - LPDDR3 1866 On-Board</p>', '#000000', 126300, 123000, 'New', 1, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(40, 'Asus GL503VM Core i7', '1.jpg', '<p>Generation - 7th Gen<br />Processor - Intel Core i7 7700HQ<br />Processor Clock Speed - 2.80GHz<br />Display Size - 15.6\"<br />RAM - 16GB<br />RAM Type - DDR4</p>', '#000000', 157920, 154500, 'Laptop', 1, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(41, 'asus zenfone 5z', '1.jpg', '<p>Dimensions 153 x 75.7 x 7.9 mm</p>\n<p>Weight 155 g (5.47 oz)</p>\n<p>Hybrid Dual SIM</p>\n<p>DISPLAY Type IPS LCD</p>\n<p>Resolution 1080 x 2246 pixels,</p>\n<p>18.7:9 ratio (~402 ppi density) OS Android 8.0 (Oreo)</p>\n<p>Chipset Qualcomm SDM845 Snapdragon 845</p>\n<p>GPU Adreno 630</p>', '#000000,#c0c0c0', 49000, 48000, 'Hot', 2, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(42, 'Skullcandy Over-Ear', '1.jpg', '<ul>\n<li>Type: Over-Ear</li>\n<li>Connection Type: Bluetooth&reg; or Wired</li>\n<li>Battery Life: Up to 40 Hours</li>\n<li>Rapid Charge: 10 Min = 3 Hours of Play</li>\n<li>Noise Isolation: Passive</li>\n<li>Driver Size: 40mm</li>\n</ul>', '#000000', 14000, 13900, 'Hot', 3, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(43, 'Microlab Outlander', '1.jpg', '<ul>\n<li>Bluetooth Profiles: HSP, HFP, A2DP, AVRCP</li>\n<li>Frequency Response: 20 Hz - 20 kHz&nbsp;&nbsp;</li>\n<li>Sound pressure level: 115 &plusmn; 3 dB</li>\n<li>Impedance: 32 &Omega;</li>\n<li>Wireless Range: 10m</li>\n<li>Talk Time: 22H</li>\n<li>Standby Time: 900 hours</li>\n<li>Music Play Time: 20 hours</li>\n</ul>', '#000000', 9200, 9100, 'Speaker', 3, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(44, 'DualShock 4 Wireless', '1.jpg', 'SKU HRDDASCPLU\n\nWeight 0.2100\n\nBrand Sony', '#ff0000', 3699, 3500, 'Gaming', 6, '2019-02-09 18:00:00', '2019-02-09 18:00:00'),
(45, 'Huawei MediaPad T3', '1.jpg', '<p>Model - Huawei MediaPad T3 10<br />Processor Type - Qualcomm MSM8917 Quad Core A53<br />RAM - 2GB<br />Processor Speed - 1.4GHz<br />Internal Memory - 16GB ROM<br />Display Type - IPS display<br />Display Size - 9.6\"<br />Screen Resolution - 1280 x 800</p>', '#000000', 19900, 18900, 'New', 7, '2019-02-09 18:00:00', '2019-02-09 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `product_id`, `order_status`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, '3:1:#000000:1', 'Delivered', 91000, '2019-02-02 01:32:33', '2021-03-15 23:49:09'),
(2, 2, '5:1:#c0c0c0:1,30:2:#000000:2', 'Delivered', 93000, '2019-02-11 08:12:27', '2019-02-10 18:00:00'),
(3, 2, '22:1:#000000:1', 'Delivered', 43999, '2019-02-07 10:29:16', '2019-02-10 18:00:00'),
(4, 3, '18:2:#000000:1,38:1:#8080ff:2,30:1:#000000:3', 'On Process', 209998, '2019-02-06 06:05:30', '2019-02-10 18:00:00'),
(5, 4, '12:1:#000000:2,17:1:#c0c0c0:3', 'On Process', 79500, '2019-02-11 10:56:54', '2019-02-10 18:00:00'),
(6, 4, '5:1:#c0c0c0:1', 'Cancel', 71000, '2019-02-11 11:07:40', '2019-02-10 18:00:00'),
(7, 4, '1:1:#c0c0c0:1', 'Placed', 205000, '2019-02-05 06:24:53', '2019-02-10 18:00:00'),
(8, 2, '20:1:#000000:1,25:1:#000000:2', 'Delivered', 21500, '2019-02-13 03:51:07', '2019-02-10 18:00:00'),
(9, 2, '27:1:#000000:1', 'On Process', 30000, '2019-02-10 01:33:46', '2021-03-14 00:06:11'),
(10, 2, '44:1:#ff0000:1', 'Cancel', 3500, '2019-02-11 11:09:12', '2019-02-10 18:00:00'),
(11, 2, '28:1:#400080:1', 'On Process', 24000, '2019-02-11 11:09:49', '2019-02-10 18:00:00'),
(12, 2, '34:1:#ff0000:1', 'Delivered', 10500, '2019-02-04 22:55:26', '2019-02-10 18:00:00'),
(13, 1, '4:1:#c0c0c0:1', 'On Process', 111000, '2019-02-14 14:54:08', '2019-02-13 18:00:00'),
(14, 5, '17:1:#004080:1', 'Placed', 4500, '2021-03-05 22:26:47', '2021-03-05 22:26:47'),
(15, 5, '3:1:#000000:1', 'Placed', 91000, '2021-03-05 23:11:11', '2021-03-05 23:11:11'),
(16, 5, '5:1:#ff80ff:1', 'Delivered', 71000, '2021-03-11 10:34:43', '2021-03-11 10:35:44'),
(17, 5, '3:1:#000000:1', 'Placed', 91000, '2021-03-15 23:47:59', '2021-03-15 23:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prev_password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `prev_password`, `address_id`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@examle.com', '12345', '01711001133', NULL, 1, '2019-02-08 18:00:00', '2019-02-08 18:00:00'),
(2, 'Shakib Mostahid', 'b@gmail.com', '12345', '01922991100', NULL, 2, '2019-02-10 18:00:00', '2019-02-10 18:00:00'),
(3, 'Nishat Ashraf', 'c@gmail.com', '12345', '01899001144', NULL, 3, '2019-02-10 18:00:00', '2019-02-10 18:00:00'),
(4, 'Ayomi Hridy', 'd@gmail.com', '12345', '0111111111', NULL, 4, '2019-02-10 18:00:00', '2019-02-10 18:00:00'),
(5, 'Ramzan Ali', 'roni@gmail.com', 'ramzan1298', '01777550506', NULL, 5, '2021-03-05 22:25:51', '2021-03-05 22:25:51'),
(6, 'Nafi', 'nafisayasmin17@gmail.com', 'ramzan1298', '01516158298', NULL, 6, '2021-03-12 13:23:15', '2021-03-12 13:23:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_address_id_foreign` (`address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
