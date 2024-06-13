-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 10:24 AM
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
-- Database: `clothing-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `street` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `contact_name` varchar(191) DEFAULT NULL,
  `contact_no` varchar(191) DEFAULT NULL,
  `address_name` varchar(191) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_master_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `street`, `state`, `city`, `country`, `contact_name`, `contact_no`, `address_name`, `type`, `created_at`, `updated_at`, `order_id`, `order_master_id`) VALUES
(3, 2, 'Katargam', 'Gujarat', 'Surat', 'India', 'mohini', '9087654321', 'home', 1, '2024-04-22 05:35:44', '2024-04-22 05:35:44', NULL, NULL),
(4, 2, 'Katargam', 'Gujarat', 'Surat', 'India', 'mohini', '9087654321', 'home', 1, '2024-04-22 05:38:20', '2024-04-22 05:38:20', NULL, NULL),
(6, 2, 'Katargam', 'Gujarat', 'Surat', 'India', 'mohini', '9087654321', 'home', 1, '2024-04-22 05:45:41', '2024-04-22 05:45:41', NULL, NULL),
(7, 2, 'Katargam', 'Gujarat', 'Surat', 'India', 'mohini', '9087654321', 'home', 1, '2024-04-22 05:47:57', '2024-04-22 05:47:57', NULL, NULL),
(8, 2, 'Katargam', 'Gujarat', 'Surat', 'India', 'mohini', '9087654321', 'home', 1, '2024-04-22 05:55:21', '2024-04-22 05:55:21', NULL, NULL),
(9, 2, 'Katargam', 'Gujarat', 'Surat', 'India', 'mohini', '9087654321', 'home', 1, '2024-04-22 05:57:06', '2024-04-22 05:57:06', NULL, NULL),
(10, 2, 'Katargam', 'Gujarat', 'Surat', 'India', 'mohini', '9087654321', 'home', 1, '2024-04-22 05:57:13', '2024-04-22 05:57:13', NULL, NULL),
(11, 2, 'Katargam', 'Gujarat', 'Surat', 'India', 'mohini', '9087654321', 'home', 1, '2024-04-22 06:08:03', '2024-04-22 06:08:03', NULL, NULL),
(12, 2, 'Katargam', 'Gujarat', 'Surat', 'India', 'mohini', '9087654321', 'home', 1, '2024-04-22 06:18:00', '2024-04-22 06:18:00', NULL, NULL),
(13, 2, 'Katargam', 'Gujarat', 'Surat', 'India', 'mohini', '9087654321', 'home', 1, '2024-04-22 06:22:03', '2024-04-22 06:22:03', NULL, NULL),
(15, 4, 'Katargam', 'Gujarat', 'Surat', 'India', 'mohini', '9087654321', 'home', 1, '2024-05-03 11:50:37', '2024-05-03 11:50:37', NULL, 5),
(16, 4, 'Katargam', 'Gujarat', 'Surat', 'India', 'mohini', '9087654321', 'home', 1, '2024-05-03 11:51:54', '2024-05-03 11:51:54', NULL, 6),
(17, 5, 'ved road', 'Gujarat', 'surat', 'India', 'mohini', '9876543210', 'home', 1, '2024-05-04 23:49:16', '2024-05-04 23:49:16', NULL, 7),
(18, 8, 'ved road', 'Gujarat', 'surat', 'India', 'mohini', '9876543210', 'home', 2, '2024-05-07 00:41:23', '2024-05-07 00:41:23', NULL, 8),
(19, 9, 'ved road', 'Gujarat', 'surat', 'India', 'mohini', '9876543210', 'home', 1, '2024-06-11 07:09:35', '2024-06-11 07:09:35', NULL, 9),
(20, 9, 'ved road', 'Gujarat', 'surat', 'India', 'mohini', '9876543210', 'home', 2, '2024-06-11 07:22:55', '2024-06-11 07:22:55', NULL, 10),
(21, 14, 'ved road', 'Gujarat', 'surat', 'India', 'mohini', '9876543210', 'home', 2, '2024-06-11 07:54:33', '2024-06-11 07:54:33', NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `color` varchar(191) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `rate`, `color`, `price`, `quantity`, `user_id`, `created_at`, `updated_at`, `size_id`) VALUES
(9, 4, 450.00, NULL, 450.00, 1, 5, '2024-05-05 08:13:50', '2024-05-05 08:13:50', 7);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` mediumtext NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Women Tops and Tunics', 'w-t-t', 'Elevate your wardrobe with our Wrap Long Tops, an exquisite choice for women seeking a blend of elegance and casual style. This party wear top, featuring a sophisticated black and white print, seamlessly transitions from daytime outings to evening celebrations.', '1714751173.jpg', 0, '2024-05-03 10:11:47', '2024-05-03 10:25:58'),
(3, 'Women Jumpsuits', 'w-j', 'Spruce up your wardrobe with this stylish Jumpsuit from DHUNKI available on Meesho. This Top is perfect for a day out with friends or a night of get-together with family or a party.', '1714752948.jpg', 1, '2024-05-03 10:41:46', '2024-05-03 10:45:48'),
(4, 'Women Jeans', 'w-j', 'WOMENS JEANS PLAIN JEANS TRENDY JEANS STRECHABLE JEANS DENIM JEANS', '1714753596.jpg', 1, '2024-05-03 10:56:36', '2024-05-03 10:56:36'),
(5, 'Women Palazzos', 'w-p', 'Country of Origin : India', '1714754100.jpg', 1, '2024-05-03 11:05:00', '2024-05-03 11:05:00'),
(6, 'Men Tshirts', 'w-s', 'At , we understand that to look the part you have to dress the part! combines a refined design with tailor-made fabrics to create a functional yet polished look, letting any shirt, t-shirt, suit or blazer speak for you. ensures that you’re the style statement, the alpha, and the omega!', '1714754512.jpg', 1, '2024-05-03 11:11:52', '2024-05-03 11:11:52'),
(7, 'Men Shirts', 'm-s', 'Stylish half sleeve Stitched Casual printed shirts, Premium cotton and pre washed for an extremely soft finish and rich look.', '1714754985.jpg', 1, '2024-05-03 11:19:45', '2024-05-03 11:19:45'),
(8, 'Men Jeans', 'm-j', 'Introducing our high-quality Stretchable Jeans for men, designed to provide exceptional comfort and style at an unbeatable price. Crafted with precision and attention to detail, these jeans are the perfect addition to any wardrobe.', '1714755487.jpg', 1, '2024-05-03 11:28:07', '2024-05-03 11:28:07'),
(9, 'Kids Dresses', 'k-d', 'Partywear Graceful', '1714755971.jpg', 1, '2024-05-03 11:36:11', '2024-05-03 11:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_21_143643_add_columns_to_users_table', 1),
(6, '2023_09_23_092652_create_category_table', 1),
(7, '2023_09_24_102805_create_products_table', 1),
(8, '2023_09_28_154844_create_cart_table', 1),
(9, '2023_09_29_141148_add_tags_to_products', 1),
(10, '2023_10_02_040332_create_order_master_table', 1),
(11, '2023_10_02_040359_create_order_table', 1),
(12, '2023_10_11_103730_create_address_table', 1),
(13, '2023_10_12_161401_add_order_to_address_table', 1),
(14, '2023_10_21_104158_create_products_image_table', 1),
(15, '2023_10_29_141820_create_sizes_table', 1),
(16, '2023_10_30_154904_add_size_cart_table', 1),
(17, '2023_10_31_025855_create_payments_table', 1),
(18, '2023_10_31_120636_add_size_to_order_table', 1),
(19, '2023_11_01_102533_add_sizes_to_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_master_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `product_id`, `order_master_id`, `quantity`, `rate`, `amount`, `image`, `created_at`, `updated_at`, `size_id`) VALUES
(5, 4, 4, 5, 1, 450.00, 450.00, NULL, '2024-05-03 11:50:37', '2024-05-03 11:50:37', 6),
(6, 4, 9, 6, 1, 750.00, 750.00, NULL, '2024-05-03 11:51:54', '2024-05-03 11:51:54', 25),
(9, 9, 9, 9, 1, 750.00, 750.00, NULL, '2024-06-11 07:09:35', '2024-06-11 07:09:35', 25),
(10, 9, 3, 9, 1, 300.00, 300.00, NULL, '2024-06-11 07:09:35', '2024-06-11 07:09:35', 4),
(11, 9, 3, 10, 1, 300.00, 300.00, NULL, '2024-06-11 07:22:55', '2024-06-11 07:22:55', 5),
(12, 14, 3, 11, 1, 300.00, 300.00, NULL, '2024-06-11 07:54:33', '2024-06-11 07:54:33', 5);

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `purchasecode` varchar(191) DEFAULT NULL,
  `totalamount` decimal(10,2) DEFAULT NULL,
  `delivery_status` int(11) NOT NULL DEFAULT 1,
  `payment_type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`id`, `user_id`, `purchasecode`, `totalamount`, `delivery_status`, `payment_type`, `created_at`, `updated_at`) VALUES
(5, 4, 'PU-001', 450.00, 3, 1, '2024-05-03 11:50:37', '2024-05-03 11:52:15'),
(6, 4, 'PU-002', 750.00, 3, 1, '2024-05-03 11:51:54', '2024-05-03 12:11:25'),
(9, 9, 'PU-003', 1050.00, 1, 1, '2024-06-11 07:09:35', '2024-06-11 07:09:35'),
(10, 9, 'PU-004', 300.00, 2, 2, '2024-06-11 07:22:55', '2024-06-11 07:39:56'),
(11, 14, 'PU-005', 300.00, 2, 2, '2024-06-11 07:54:33', '2024-06-11 07:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('beladiyarudrali@gmail.com', '$2y$10$nzkf2v4/NOB89ogUOD184efYzGu3VGwVQ.QVl40L.fFP2U5Qpm3Bu', '2024-05-03 08:08:38'),
('leenabeladiya@gmail.com', '$2y$10$4LvZzILaS0wDd2QEFOMvR.Vd9wGhg3NIrzbzeYRe7N9pysrqIC0Fa', '2024-05-03 09:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `payer_id` varchar(191) DEFAULT NULL,
  `payer_email` varchar(191) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `payment_status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_id`, `payer_id`, `payer_email`, `amount`, `currency`, `payment_status`, `created_at`, `updated_at`) VALUES
(2, 'PAYID-MZUEQOQ1RF77651V21540325', 'NS523UTRLMVH6', 'sb-jdtpd31095416@personal.example.com', 300.00, 'USD', 'approved', '2024-06-11 07:22:55', '2024-06-11 07:22:55'),
(3, 'PAYID-MZUE7WY23444805B8147135A', 'NS523UTRLMVH6', 'sb-jdtpd31095416@personal.example.com', 300.00, 'USD', 'approved', '2024-06-11 07:54:33', '2024-06-11 07:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discounted_price` decimal(10,2) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tags` varchar(191) DEFAULT NULL,
  `small` int(11) DEFAULT NULL,
  `medium` int(11) DEFAULT NULL,
  `large` int(11) DEFAULT NULL,
  `xl` int(11) DEFAULT NULL,
  `xxl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `description`, `price`, `discounted_price`, `color`, `category_id`, `created_at`, `updated_at`, `tags`, `small`, `medium`, `large`, `xl`, `xxl`) VALUES
(2, 'HMT WOMEN COTTON TOP', 11, 'Name : HMT WOMEN COTTON TOP\r\n\r\nFabric : Cotton\r\n\r\nSleeve Length : Three-Quarter Sleeves\r\n\r\nPattern : Printed', 250.00, 240.00, 'White', 2, '2024-05-03 10:19:36', '2024-05-04 23:50:13', 'women', 5, 6, NULL, NULL, NULL),
(3, 'womens Rayon Rajasthani printed top', 0, 'Name : womens Rayon Rajasthani printed top, festival top, long top, printed top, womens top, girls top, cotton top\r\n\r\nFabric : Rayon\r\n\r\nSleeve Length : Short Sleeves\r\n\r\nPattern : Printed', 316.00, 300.00, 'black', 2, '2024-05-03 10:33:16', '2024-06-11 07:54:33', 'women', 0, 2, NULL, NULL, NULL),
(4, 'Maroon Keyhole Neck Ruffle Sleeves Georgette Tops', 11, 'Name : Maroon Keyhole Neck Ruffle Sleeves Georgette Tops and Tunic For Womens\r\n\r\nFabric : Georgette\r\n\r\nSleeve Length : Short Sleeves\r\n\r\nPattern : Solid', 500.00, 450.00, 'red', 2, '2024-05-03 10:36:00', '2024-05-07 00:41:23', 'women', 2, 4, NULL, NULL, 6),
(5, 'WOMEN\'S DESIGNER JUMPSUIT', 5, 'Name : WOMEN\'S DESIGNER JUMPSUIT\r\n\r\nFabric : Polyester\r\n\r\nSleeve Length : Short Sleeves\r\n\r\nPattern : Solid', 700.00, 690.00, 'light green', 3, '2024-05-03 10:47:20', '2024-05-03 10:47:20', 'women', 1, 3, 1, NULL, NULL),
(6, 'J Turritopsis Women\'s Rayon Foil Printed Jumpsuit', 7, 'Name : J Turritopsis Women\'s Rayon Foil Printed Jumpsuit\r\n\r\nFabric : Rayon\r\n\r\nSleeve Length : Three-Quarter Sleeves\r\n\r\nPattern : Printed', 750.00, 740.00, 'mix', 3, '2024-05-03 10:50:47', '2024-05-03 10:50:47', 'women', 4, NULL, 1, 2, NULL),
(7, 'Stylish Designe Women Top & Bottom Sets', 10, 'Name : Stylish Designe Women Top & Bottom Sets\r\n\r\nFabric : Crepe\r\n\r\nSleeve Length : Sleeveless\r\n\r\nPattern : Solid', 600.00, 500.00, 'pink', 3, '2024-05-03 10:52:46', '2024-05-03 10:52:46', 'women', 1, 3, NULL, 4, 2),
(8, 'Women denim Jeans', 20, 'Name : Women denim Jeans\r\n\r\nFabric : Denim\r\n\r\nSurface Styling : Tie-Ups', 500.00, 490.00, 'light blue', 4, '2024-05-03 10:58:39', '2024-05-03 10:58:39', 'women', 1, 4, 3, 7, 5),
(9, 'Baggy Jeans,HighWaist WideLeg Jeans', 20, 'Name : Baggy Jeans,HighWaist WideLeg Jeans\r\n\r\nFabric : Denim\r\n\r\nSurface Styling : Tie-Ups', 790.00, 750.00, 'brown', 4, '2024-05-03 11:00:10', '2024-06-11 07:09:35', 'women', 5, 6, 6, 2, 1),
(10, 'Trendy Designer Women Jeans', 95, 'Name : Trendy Designer Women Jeans\r\n\r\nFabric : Denim', 500.00, 499.00, 'black', 4, '2024-05-03 11:02:33', '2024-05-03 11:02:33', 'women', 10, 8, 3, 65, 9),
(11, 'WOMENS MODERN LACE SEQUENCE PLAZZO', 10, 'Name : WOMENS MODERN LACE SEQUENCE PLAZZO / PARTY WERE GIRLS Women Stylish Pure Cotton MODERN STYLIST PLAZZO Net (White) - Pack of 1\r\n\r\nFabric : Cotton Linen\r\n\r\nPattern : Solid', 500.00, 448.00, 'white', 5, '2024-05-03 11:06:53', '2024-05-03 11:06:53', 'women', 2, 3, NULL, 5, NULL),
(12, 'Add to Cart  Buy Now 1 Similar Products BLACK PALAZZO 2 BLACK PALAZZO', 12, 'Name : BLACK PALAZZO 2\r\n\r\nFabric : Viscose Rayon\r\n\r\nPattern : Solid', 600.00, 400.00, 'black', 5, '2024-05-03 11:08:32', '2024-05-03 11:08:32', 'women', 4, NULL, 4, 1, 3),
(13, 'Mens T-shirt ll Mens tee', 24, 'Name : Mens T-shirt ll Mens tee\r\n\r\nFabric : Cotton Blend\r\n\r\nSleeve Length : Short Sleeves\r\n\r\nPattern : Printed', 100.00, 99.00, 'black', 6, '2024-05-03 11:13:28', '2024-05-03 11:13:28', 'men', 7, 5, 3, 4, 5),
(14, 'MENS YELLOW MERCERISED COTTON T-SHIRT', 15, 'Name : MENS YELLOW MERCERISED COTTON T-SHIRT\r\n\r\nFabric : Cotton\r\n\r\nSleeve Length : Short Sleeves\r\n\r\nPattern : Printed', 400.00, 390.00, 'yellow', 6, '2024-05-03 11:14:50', '2024-05-03 11:14:50', 'men', 1, 5, NULL, 4, 5),
(15, 'Stylish Latest Men Printed Tshirts', 12, 'Name : Stylish Latest Men Printed Tshirts\r\n\r\nFabric : Polyester\r\n\r\nSleeve Length : Short Sleeves\r\n\r\nPattern : Printed', 400.00, 390.00, 'light green', 6, '2024-05-03 11:16:12', '2024-05-03 11:16:12', 'men', 6, NULL, 1, NULL, 5),
(16, 'Men\'s Brown Print T-Shirt Polyester oversize / loose fit', 11, 'Name : Men\'s Brown Print T-Shirt Polyester oversize / loose fit\r\n\r\nFabric : Cotton Blend\r\n\r\nSleeve Length : Long Sleeves\r\n\r\nPattern : Solid', 400.00, 399.00, 'brown', 6, '2024-05-03 11:17:24', '2024-05-03 11:17:24', 'men', 1, 4, 6, NULL, NULL),
(17, 'Men Cotton Plus Size Shirt', 16, 'Name : Men Cotton Plus Size Shirt\r\n\r\nFabric : Cotton\r\n\r\nSleeve Length : Long Sleeves\r\n\r\nPattern : Solid', 500.00, 499.00, 'light pink', 7, '2024-05-03 11:21:25', '2024-05-03 11:21:25', 'men', 3, NULL, 5, 6, 2),
(18, 'Mens horizontal line popcorn shirt', 14, 'Name : Mens horizontal line popcorn shirt\r\n\r\n \r\n\r\nSleeve Length : Short Sleeves\r\n\r\nPattern : Self-Design', 520.00, 400.00, 'black', 7, '2024-05-03 11:23:12', '2024-05-03 11:23:12', 'men', 1, 4, 3, NULL, 6),
(19, 'Men Regular Fit Solid Spread Collar Casual Shirt for partywear', 21, 'Name : Men Regular Fit Solid Spread Collar Casual Shirt for partywear- Nevy Blue\r\n\r\nFabric : Polycotton\r\n\r\nSleeve Length : Long Sleeves\r\n\r\nPattern : Solid', 600.00, 599.00, 'Nevy blue', 7, '2024-05-03 11:25:20', '2024-05-03 11:25:20', 'men', 5, 4, 5, NULL, 7),
(20, 'Men Denim Black Slim fit Stretchable Denim Jeans for Men', 20, 'Name : Men Denim Black Slim fit Stretchable Denim Jeans for Men\r\n\r\nFabric : Denim\r\n\r\nPattern : Solid', 500.00, 490.00, 'black', 8, '2024-05-03 11:29:26', '2024-05-03 11:29:26', 'men', 5, NULL, 5, 5, 5),
(21, 'FANG JEANS Men\'s Solid Grey Jeans', 14, 'Name : FANG JEANS Men\'s Solid Grey Jeans\r\n\r\nFabric : Denim\r\n\r\nPattern : Solid', 700.00, 699.00, 'grey', 8, '2024-05-03 11:31:01', '2024-05-03 11:31:01', 'men', 5, NULL, 5, 4, NULL),
(22, 'Stylish Fabulous Men Blue Jeans', 17, 'Name : Stylish Fabulous Men Blue Jeans\r\n\r\nFabric : Cotton Blend\r\n\r\nPattern : Solid', 500.00, 499.00, 'dark blue', 8, '2024-05-03 11:33:36', '2024-05-03 11:33:36', 'men', 4, 5, 6, 2, NULL),
(24, 'Girls Angle Pari Frock Dress', 5, 'Name : Girls Angle Pari Frock Dress\r\n\r\nFabric : Net\r\n\r\nSleeve Length : Three-Quarter Sleeves\r\n\r\nPattern : Embellished', 600.00, 599.00, 'white', 9, '2024-05-03 11:40:09', '2024-05-03 11:40:09', 'kid', 5, NULL, NULL, NULL, NULL),
(25, 'Pari Frock & Dress', 3, 'Name : Pari Frock & Dress\r\n\r\nFabric : Net\r\n\r\nSleeve Length : Three-Quarter Sleeves\r\n\r\nPattern : Embellished', 700.00, 700.00, 'light pink', 9, '2024-05-03 11:41:18', '2024-05-03 11:41:18', 'kid', 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_image`
--

CREATE TABLE `products_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_image`
--

INSERT INTO `products_image` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 'uploads/products/17147513761.jpg', 2, '2024-05-03 10:19:36', '2024-05-03 10:19:36'),
(3, 'uploads/products/17147521961.jpg', 3, '2024-05-03 10:33:16', '2024-05-03 10:33:16'),
(4, 'uploads/products/17147523601.jpg', 4, '2024-05-03 10:36:00', '2024-05-03 10:36:00'),
(5, 'uploads/products/17147530401.jpg', 5, '2024-05-03 10:47:20', '2024-05-03 10:47:20'),
(6, 'uploads/products/17147532471.jpg', 6, '2024-05-03 10:50:47', '2024-05-03 10:50:47'),
(7, 'uploads/products/17147533661.jpg', 7, '2024-05-03 10:52:46', '2024-05-03 10:52:46'),
(8, 'uploads/products/17147537191.jpg', 8, '2024-05-03 10:58:39', '2024-05-03 10:58:39'),
(9, 'uploads/products/17147538101.jpg', 9, '2024-05-03 11:00:10', '2024-05-03 11:00:10'),
(10, 'uploads/products/17147539531.jpg', 10, '2024-05-03 11:02:33', '2024-05-03 11:02:33'),
(11, 'uploads/products/17147542131.jpg', 11, '2024-05-03 11:06:53', '2024-05-03 11:06:53'),
(12, 'uploads/products/17147543121.jpg', 12, '2024-05-03 11:08:32', '2024-05-03 11:08:32'),
(13, 'uploads/products/17147546081.jpg', 13, '2024-05-03 11:13:28', '2024-05-03 11:13:28'),
(14, 'uploads/products/17147547721.jpg', 15, '2024-05-03 11:16:12', '2024-05-03 11:16:12'),
(15, 'uploads/products/17147548441.jpg', 16, '2024-05-03 11:17:24', '2024-05-03 11:17:24'),
(16, 'uploads/products/17147550851.jpg', 17, '2024-05-03 11:21:25', '2024-05-03 11:21:25'),
(17, 'uploads/products/17147551921.jpg', 18, '2024-05-03 11:23:12', '2024-05-03 11:23:12'),
(18, 'uploads/products/17147553201.jpg', 19, '2024-05-03 11:25:20', '2024-05-03 11:25:20'),
(19, 'uploads/products/17147553551.jpg', 14, '2024-05-03 11:25:55', '2024-05-03 11:25:55'),
(20, 'uploads/products/17147555671.jpg', 20, '2024-05-03 11:29:27', '2024-05-03 11:29:27'),
(21, 'uploads/products/17147556611.jpg', 21, '2024-05-03 11:31:01', '2024-05-03 11:31:01'),
(22, 'uploads/products/17147558161.jpg', 22, '2024-05-03 11:33:36', '2024-05-03 11:33:36'),
(24, 'uploads/products/17147562091.jpg', 24, '2024-05-03 11:40:09', '2024-05-03 11:40:09'),
(25, 'uploads/products/17147562781.jpg', 25, '2024-05-03 11:41:18', '2024-05-03 11:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(191) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 'small', 2, '2024-05-03 10:19:36', '2024-05-03 10:19:36'),
(3, 'medium', 2, '2024-05-03 10:19:36', '2024-05-03 10:19:36'),
(4, 'small', 3, '2024-05-03 10:33:16', '2024-05-03 10:33:16'),
(5, 'medium', 3, '2024-05-03 10:33:16', '2024-05-03 10:33:16'),
(6, 'small', 4, '2024-05-03 10:36:00', '2024-05-03 10:36:00'),
(7, 'medium', 4, '2024-05-03 10:36:00', '2024-05-03 10:36:00'),
(8, 'xxl', 4, '2024-05-03 10:36:00', '2024-05-03 10:36:00'),
(9, 'small', 5, '2024-05-03 10:47:20', '2024-05-03 10:47:20'),
(10, 'medium', 5, '2024-05-03 10:47:20', '2024-05-03 10:47:20'),
(11, 'large', 5, '2024-05-03 10:47:20', '2024-05-03 10:47:20'),
(12, 'small', 6, '2024-05-03 10:50:47', '2024-05-03 10:50:47'),
(13, 'large', 6, '2024-05-03 10:50:47', '2024-05-03 10:50:47'),
(14, 'xl', 6, '2024-05-03 10:50:47', '2024-05-03 10:50:47'),
(15, 'small', 7, '2024-05-03 10:52:46', '2024-05-03 10:52:46'),
(16, 'medium', 7, '2024-05-03 10:52:46', '2024-05-03 10:52:46'),
(17, 'xl', 7, '2024-05-03 10:52:46', '2024-05-03 10:52:46'),
(18, 'xxl', 7, '2024-05-03 10:52:46', '2024-05-03 10:52:46'),
(19, 'small', 8, '2024-05-03 10:58:39', '2024-05-03 10:58:39'),
(20, 'medium', 8, '2024-05-03 10:58:39', '2024-05-03 10:58:39'),
(21, 'large', 8, '2024-05-03 10:58:39', '2024-05-03 10:58:39'),
(22, 'xl', 8, '2024-05-03 10:58:39', '2024-05-03 10:58:39'),
(23, 'xxl', 8, '2024-05-03 10:58:39', '2024-05-03 10:58:39'),
(24, 'small', 9, '2024-05-03 11:00:10', '2024-05-03 11:00:10'),
(25, 'medium', 9, '2024-05-03 11:00:10', '2024-05-03 11:00:10'),
(26, 'large', 9, '2024-05-03 11:00:10', '2024-05-03 11:00:10'),
(27, 'xl', 9, '2024-05-03 11:00:10', '2024-05-03 11:00:10'),
(28, 'xxl', 9, '2024-05-03 11:00:10', '2024-05-03 11:00:10'),
(29, 'small', 10, '2024-05-03 11:02:33', '2024-05-03 11:02:33'),
(30, 'medium', 10, '2024-05-03 11:02:33', '2024-05-03 11:02:33'),
(31, 'large', 10, '2024-05-03 11:02:33', '2024-05-03 11:02:33'),
(32, 'xl', 10, '2024-05-03 11:02:33', '2024-05-03 11:02:33'),
(33, 'xxl', 10, '2024-05-03 11:02:33', '2024-05-03 11:02:33'),
(34, 'small', 11, '2024-05-03 11:06:53', '2024-05-03 11:06:53'),
(35, 'medium', 11, '2024-05-03 11:06:53', '2024-05-03 11:06:53'),
(36, 'xl', 11, '2024-05-03 11:06:53', '2024-05-03 11:06:53'),
(37, 'small', 12, '2024-05-03 11:08:32', '2024-05-03 11:08:32'),
(38, 'large', 12, '2024-05-03 11:08:32', '2024-05-03 11:08:32'),
(39, 'xl', 12, '2024-05-03 11:08:32', '2024-05-03 11:08:32'),
(40, 'xxl', 12, '2024-05-03 11:08:32', '2024-05-03 11:08:32'),
(41, 'small', 13, '2024-05-03 11:13:28', '2024-05-03 11:13:28'),
(42, 'medium', 13, '2024-05-03 11:13:28', '2024-05-03 11:13:28'),
(43, 'large', 13, '2024-05-03 11:13:28', '2024-05-03 11:13:28'),
(44, 'xl', 13, '2024-05-03 11:13:28', '2024-05-03 11:13:28'),
(45, 'xxl', 13, '2024-05-03 11:13:28', '2024-05-03 11:13:28'),
(46, 'small', 14, '2024-05-03 11:14:50', '2024-05-03 11:14:50'),
(47, 'medium', 14, '2024-05-03 11:14:50', '2024-05-03 11:14:50'),
(48, 'xl', 14, '2024-05-03 11:14:50', '2024-05-03 11:14:50'),
(49, 'xxl', 14, '2024-05-03 11:14:50', '2024-05-03 11:14:50'),
(50, 'small', 15, '2024-05-03 11:16:12', '2024-05-03 11:16:12'),
(51, 'large', 15, '2024-05-03 11:16:12', '2024-05-03 11:16:12'),
(52, 'xxl', 15, '2024-05-03 11:16:12', '2024-05-03 11:16:12'),
(53, 'small', 16, '2024-05-03 11:17:24', '2024-05-03 11:17:24'),
(54, 'medium', 16, '2024-05-03 11:17:24', '2024-05-03 11:17:24'),
(55, 'large', 16, '2024-05-03 11:17:24', '2024-05-03 11:17:24'),
(56, 'small', 17, '2024-05-03 11:21:25', '2024-05-03 11:21:25'),
(57, 'large', 17, '2024-05-03 11:21:25', '2024-05-03 11:21:25'),
(58, 'xl', 17, '2024-05-03 11:21:25', '2024-05-03 11:21:25'),
(59, 'xxl', 17, '2024-05-03 11:21:25', '2024-05-03 11:21:25'),
(60, 'small', 18, '2024-05-03 11:23:12', '2024-05-03 11:23:12'),
(61, 'medium', 18, '2024-05-03 11:23:12', '2024-05-03 11:23:12'),
(62, 'large', 18, '2024-05-03 11:23:12', '2024-05-03 11:23:12'),
(63, 'xxl', 18, '2024-05-03 11:23:12', '2024-05-03 11:23:12'),
(64, 'small', 19, '2024-05-03 11:25:20', '2024-05-03 11:25:20'),
(65, 'medium', 19, '2024-05-03 11:25:20', '2024-05-03 11:25:20'),
(66, 'large', 19, '2024-05-03 11:25:20', '2024-05-03 11:25:20'),
(67, 'xxl', 19, '2024-05-03 11:25:20', '2024-05-03 11:25:20'),
(68, 'small', 20, '2024-05-03 11:29:26', '2024-05-03 11:29:26'),
(69, 'large', 20, '2024-05-03 11:29:27', '2024-05-03 11:29:27'),
(70, 'xl', 20, '2024-05-03 11:29:27', '2024-05-03 11:29:27'),
(71, 'xxl', 20, '2024-05-03 11:29:27', '2024-05-03 11:29:27'),
(72, 'small', 21, '2024-05-03 11:31:01', '2024-05-03 11:31:01'),
(73, 'large', 21, '2024-05-03 11:31:01', '2024-05-03 11:31:01'),
(74, 'xl', 21, '2024-05-03 11:31:01', '2024-05-03 11:31:01'),
(75, 'small', 22, '2024-05-03 11:33:36', '2024-05-03 11:33:36'),
(76, 'medium', 22, '2024-05-03 11:33:36', '2024-05-03 11:33:36'),
(77, 'large', 22, '2024-05-03 11:33:36', '2024-05-03 11:33:36'),
(78, 'xl', 22, '2024-05-03 11:33:36', '2024-05-03 11:33:36'),
(80, 'small', 24, '2024-05-03 11:40:09', '2024-05-03 11:40:09'),
(81, 'small', 25, '2024-05-03 11:41:18', '2024-05-03 11:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `contact` varchar(191) DEFAULT NULL,
  `usertype` varchar(191) NOT NULL DEFAULT '0' COMMENT '0=user,1=admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `address`, `contact`, `usertype`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$jttmjQOMUkmLhOIbcloSSOXQTW6j6S.3L1GiKSY5EHSK3aYVUyBNm', 'EkoXmVBrBQN6IDm0pMUDSBVmxkZrRitRNnZFIlRWZIVVjRjjkT0Mv5Pp9mfN', '2024-04-22 05:25:03', '2024-05-03 09:27:20', 'Surat', '9664570537', '1'),
(2, 'mohini', 'mohini@gmail.com', NULL, '$2y$10$6f6Ef2U9w2GYvokQcxfTLeWddXH7S5gSki8.ydezlvHbf4vsvnDLy', NULL, '2024-04-22 05:26:01', '2024-04-22 05:26:01', 'Katargam', '9087654321', '0'),
(4, 'Leena', 'leenabeladiya@gmail.com', NULL, '$2y$10$zmSDoC6yOuUH8OKsbodknemRexRr6i5W1T2f3QbOBOwVfWEmttJ1S', NULL, '2024-05-03 07:39:43', '2024-05-03 07:39:43', 'Varcahha', '9664570537', '0'),
(9, 'tmtbca', 'sem3b.04.tmtbca@gmail.com', '2024-05-07 02:19:32', '$2y$10$jttmjQOMUkmLhOIbcloSSOXQTW6j6S.3L1GiKSY5EHSK3aYVUyBNm', NULL, '2024-05-07 02:16:25', '2024-05-07 02:19:32', 'surat', '9876543210', '0'),
(14, 'Mohini', 'mohinichaudhari2304@gmail.com', '2024-06-11 07:52:29', '$2y$10$ZDeJUOY7D3GaC4Y9MF3Fz.MLj8j127SYKCCC2TWzGmTWTKfiM7Sv2', NULL, '2024-06-11 07:51:17', '2024-06-11 07:52:29', 'ved road', '9876543210', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_user_id_foreign` (`user_id`),
  ADD KEY `address_order_id_foreign` (`order_id`),
  ADD KEY `address_order_master_id_foreign` (`order_master_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_product_id_foreign` (`product_id`),
  ADD KEY `cart_user_id_foreign` (`user_id`),
  ADD KEY `cart_size_id_foreign` (`size_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_user_id_foreign` (`user_id`),
  ADD KEY `order_product_id_foreign` (`product_id`),
  ADD KEY `order_order_master_id_foreign` (`order_master_id`),
  ADD KEY `order_size_id_foreign` (`size_id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_master_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `products_image`
--
ALTER TABLE `products_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_image_product_id_foreign` (`product_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sizes_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products_image`
--
ALTER TABLE `products_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `address_order_master_id_foreign` FOREIGN KEY (`order_master_id`) REFERENCES `order_master` (`id`),
  ADD CONSTRAINT `address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `cart_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`),
  ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_order_master_id_foreign` FOREIGN KEY (`order_master_id`) REFERENCES `order_master` (`id`),
  ADD CONSTRAINT `order_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`),
  ADD CONSTRAINT `order_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_master`
--
ALTER TABLE `order_master`
  ADD CONSTRAINT `order_master_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `products_image`
--
ALTER TABLE `products_image`
  ADD CONSTRAINT `products_image_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sizes`
--
ALTER TABLE `sizes`
  ADD CONSTRAINT `sizes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
