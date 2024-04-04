-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 09:14 PM
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
-- Database: `m_transport_agency`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE IF NOT EXISTS `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'upload/aboutUs/1778534052515827.jpg', 'Welcome to Carbook', 'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.\r\n<br><br>\r\nOn her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word \"and\" and the Little Blind Text should turn around and return to its own, safe country. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', NULL, '2023-10-01 01:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `background_images`
--

CREATE TABLE IF NOT EXISTS `background_images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `background_image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `background_images`
--

INSERT INTO `background_images` (`id`, `background_image`, `title`, `created_at`, `updated_at`) VALUES
(1, 'upload/backgroundImage/1778530248419982.jpg', 'About Us', NULL, NULL),
(2, 'upload/backgroundImage/1778530786153000.jpg', 'Our Commitment', NULL, '2023-09-30 23:45:32'),
(3, 'upload/backgroundImage/1778530448030510.jpg', 'Our Services', NULL, '2023-09-30 23:40:09'),
(4, 'upload/backgroundImage/1778530463939291.jpg', 'Vehicle Rental', NULL, '2023-10-02 23:33:01'),
(5, 'upload/backgroundImage/1778530587674852.jpg', 'Choose Your Car', NULL, NULL),
(6, 'upload/backgroundImage/1778530740640750.jpg', 'Contact Us', NULL, NULL),
(7, 'upload/backgroundImage/1778729410133802.jpg', 'Buy/Sell Details', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `banner_title` varchar(255) NOT NULL,
  `banner_url` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_title`, `banner_url`, `banner_image`, `created_at`, `updated_at`) VALUES
(1, 'Everyday Fresh & Clean with Our Products', 'https://www.facebook.com/', 'upload/banner/1760169014404797.png', NULL, NULL),
(2, 'Make your Breakfast Healthy and Easy', 'https://www.youtube.com/', 'upload/banner/1760169040457901.png', NULL, NULL),
(3, 'The best Organic Products Online', 'https://www.youtube.com/', 'upload/banner/1760169066354601.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_category_name` varchar(255) NOT NULL,
  `blog_category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `blog_category_name`, `blog_category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Clothing', 'clothing', '2023-03-16 02:21:01', NULL),
(2, 'Pet Foods', 'pet-foods', '2023-03-16 02:21:15', NULL),
(3, 'Fresh Fruit', 'fresh-fruit', '2023-03-16 02:21:30', NULL),
(4, 'Baking Material', 'baking-material', '2023-03-16 02:21:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE IF NOT EXISTS `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `post_short_description` text NOT NULL,
  `post_long_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `post_title`, `post_slug`, `post_image`, `post_short_description`, `post_long_description`, `created_at`, `updated_at`) VALUES
(1, 2, '9 Tasty Ideas That Will Inspire You to Grow', '9-tasty-ideas-that-will-inspire-you-to-grow', 'upload/blog/1760512883695254.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', '2023-03-16 02:38:41', NULL),
(2, 2, 'You to Grow a Home Herb Garden Today', 'you-to-grow-a-home-herb-garden-today', 'upload/blog/1760513063541596.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '<p class=\"single-excerpt\">Helping everyone live happier, healthier lives at home through their kitchen. Kitchn is a daily food magazine on the Web celebrating life in the kitchen through home cooking and kitchen intelligence.</p>\r\n<p>We\'ve reviewed and ranked all of the best smartwatches on the market right now, and we\'ve made a definitive list of the top 10 devices you can buy today. One of the 10 picks below may just be your perfect next smartwatch.</p>\r\n<p>Those top-end wearables span from the Apple Watch to Fitbits, Garmin watches to Tizen-sporting Samsung watches. There\'s also Wear OS which is Google\'s own wearable operating system in the vein of Apple\'s watchOS - you&rsquo;ll see it show up in a lot of these devices.</p>\r\n<h5 class=\"mt-50\">Lorem ipsum dolor sit amet cons</h5>\r\n<p>Throughout our review process, we look at the design, features, battery life, spec, price and more for each smartwatch, rank it against the competition and enter it into the list you\'ll find below.</p>\r\n<p><img class=\"mb-30\" src=\"file:///C:/Users/USER/Videos/2.1%20Multi%20Vendor%20Ecommerce%20Excise_File/Excise_File/Frontend%20Theme/assets/imgs/blog/blog-21.png\" alt=\"\" /></p>\r\n<p>Tortor, lobortis semper viverra ac, molestie tortor laoreet amet euismod et diam quis aliquam consequat porttitor integer a nisl, in faucibus nunc et aenean turpis dui dignissim nec scelerisque ullamcorper eu neque, augue quam quis lacus pretium eros est amet turpis nunc in turpis massa et eget facilisis ante molestie penatibus dolor volutpat, porta pellentesque scelerisque at ornare dui tincidunt cras feugiat tempor lectus</p>\r\n<blockquote>\r\n<p>Integer eu faucibus <a>dolor</a><sup><a>[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\r\n</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet id enim, libero sit. Est donec lobortis cursus amet, cras elementum libero convallis feugiat. Nulla faucibus facilisi tincidunt a arcu, sem donec sed sed. Tincidunt morbi scelerisque lectus non. At leo mauris, vel augue. Facilisi diam consequat amet, commodo lorem nisl, odio malesuada cras. Tempus lectus sed libero viverra ut. Facilisi rhoncus elit sit sit.</p>\r\n<p>&nbsp;</p>', '2023-03-16 02:41:32', NULL),
(3, 3, '1Easy Italian Chicken Dinner I Make Over and Over Again', '1easy-italian-chicken-dinner-i-make-over-and-over-again', 'upload/blog/1760513585859704.jpg', '1Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu', '<p>1Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu</p>', '2023-03-16 02:42:41', '2023-03-16 02:49:50'),
(4, 1, '1Easy Italian Chicken Dinner I Make Over and Over Again', '1easy-italian-chicken-dinner-i-make-over-and-over-again', 'upload/blog/1760513707796948.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '<p class=\"single-excerpt\">Helping everyone live happier, healthier lives at home through their kitchen. Kitchn is a daily food magazine on the Web celebrating life in the kitchen through home cooking and kitchen intelligence.</p>\r\n<p>We\'ve reviewed and ranked all of the best smartwatches on the market right now, and we\'ve made a definitive list of the top 10 devices you can buy today. One of the 10 picks below may just be your perfect next smartwatch.</p>\r\n<p>Those top-end wearables span from the Apple Watch to Fitbits, Garmin watches to Tizen-sporting Samsung watches. There\'s also Wear OS which is Google\'s own wearable operating system in the vein of Apple\'s watchOS - you&rsquo;ll see it show up in a lot of these devices.</p>\r\n<h5 class=\"mt-50\">Lorem ipsum dolor sit amet cons</h5>\r\n<p>Throughout our review process, we look at the design, features, battery life, spec, price and more for each smartwatch, rank it against the competition and enter it into the list you\'ll find below.</p>\r\n<p><img class=\"mb-30\" src=\"file:///C:/Users/USER/Videos/2.1%20Multi%20Vendor%20Ecommerce%20Excise_File/Excise_File/Frontend%20Theme/assets/imgs/blog/blog-21.png\" alt=\"\" /></p>\r\n<p>Tortor, lobortis semper viverra ac, molestie tortor laoreet amet euismod et diam quis aliquam consequat porttitor integer a nisl, in faucibus nunc et aenean turpis dui dignissim nec scelerisque ullamcorper eu neque, augue quam quis lacus pretium eros est amet turpis nunc in turpis massa et eget facilisis ante molestie penatibus dolor volutpat, porta pellentesque scelerisque at ornare dui tincidunt cras feugiat tempor lectus</p>\r\n<blockquote>\r\n<p>Integer eu faucibus <a>dolor</a><sup><a>[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\r\n</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet id enim, libero sit. Est donec lobortis cursus amet, cras elementum libero convallis feugiat. Nulla faucibus facilisi tincidunt a arcu, sem donec sed sed. Tincidunt morbi scelerisque lectus non. At leo mauris, vel augue. Facilisi diam consequat amet, commodo lorem nisl, odio malesuada cras. Tempus lectus sed libero viverra ut. Facilisi rhoncus elit sit sit.</p>\r\n<p>&nbsp;</p>', '2023-03-16 02:51:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_nows`
--

CREATE TABLE IF NOT EXISTS `book_nows` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `car_id` varchar(255) NOT NULL,
  `car_name` varchar(255) NOT NULL,
  `car_model` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_nows`
--

INSERT INTO `book_nows` (`id`, `car_id`, `car_name`, `car_model`, `user_name`, `user_email`, `user_phone`, `user_address`, `created_at`, `updated_at`) VALUES
(1, '1', 'Mazda MX-5', '54fgr575', 'Test', 'test@test.com', '654949549+84', 'dfsdfsdfklsdfjasdfhaois', '2023-10-04 06:09:49', NULL),
(2, '1', 'Mazda MX-5', '54fgr575', 'dkhfdashfo', 'fdfdsh@idofih.com', '6548877', 'jdfoadfpdfpdo9df9hpgdgpsghg', '2023-10-04 06:21:21', NULL),
(3, '1', 'Mazda MX-5', '54fgr575', 'dfsdfewwe', 'dfdsfafd@fdhgig.com', '01654651654', 'fsdfas', '2023-10-04 06:23:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) NOT NULL,
  `brand_slug` varchar(255) NOT NULL,
  `brand_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_image`, `created_at`, `updated_at`) VALUES
(2, 'Oppo', 'oppo', 'upload/brand/1760095455946745.png', NULL, NULL),
(3, 'Waltan', 'waltan', 'upload/brand/1760096032587500.png', NULL, '2023-03-11 12:27:25'),
(4, 'Bata', 'bata', 'upload/brand/1760095488909967.png', NULL, NULL),
(5, 'Xiaomi', 'xiaomi', 'upload/brand/1760176007461826.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `buy_sells`
--

CREATE TABLE IF NOT EXISTS `buy_sells` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `model_no` varchar(255) NOT NULL,
  `engine_no` varchar(255) NOT NULL,
  `chassis_no` varchar(255) NOT NULL,
  `horsepower` varchar(255) NOT NULL,
  `mileage` varchar(255) NOT NULL,
  `seating_capacity` varchar(255) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buy_sells`
--

INSERT INTO `buy_sells` (`id`, `slug`, `image`, `name`, `price`, `model_no`, `engine_no`, `chassis_no`, `horsepower`, `mileage`, `seating_capacity`, `owner_name`, `created_at`, `updated_at`) VALUES
(1, 'mazda-mx-5', 'upload/buySell/1778728073726797.jpg', 'Mazda MX-5', '850000', '54fgr575', '37577gh', 'dfgr6497', '3000', '58', '2', 'John Devid', '2023-10-03 04:01:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE IF NOT EXISTS `compares` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'test@test.com', '01717171717', 'About Rent Car', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', '2023-10-03 01:12:22', NULL),
(2, 'rtreter', 'faisal@gmail.com', 'fdgdfgrs', 'fgfdg', 'fdgdfsg', '2023-10-04 01:49:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE IF NOT EXISTS `counters` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `number`, `title`, `created_at`, `updated_at`) VALUES
(1, 8, 'Year Experienced', NULL, NULL),
(2, 15, 'Total Cars', NULL, NULL),
(3, 3000, 'Happy Customers', NULL, NULL),
(4, 2, 'Total Branches', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(2, 'EASYLEARNING', 30, '2023-04-28', 1, '2023-03-13 05:14:24', NULL),
(3, 'HAPPYLEARNING', 20, '2023-03-31', 1, '2023-03-13 05:15:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE IF NOT EXISTS `home_banners` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `background_image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `paragraph` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_banners`
--

INSERT INTO `home_banners` (`id`, `background_image`, `title`, `paragraph`, `created_at`, `updated_at`) VALUES
(1, 'upload/homeBanner/1778466389978364.jpg', 'Fast & Easy Way To Rent A Car', 'A small river named Duden flows by their place and supplies it with the necessary reg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_11_165619_create_brands_table', 2),
(6, '2023_03_11_183930_create_categories_table', 3),
(7, '2023_03_11_193217_create_sub_categories_table', 4),
(8, '2023_03_12_065110_create_products_table', 5),
(9, '2023_03_12_065207_create_multi_imgs_table', 5),
(10, '2023_03_12_125307_create_sliders_table', 6),
(11, '2023_03_12_131901_create_banners_table', 7),
(12, '2023_03_13_093520_create_wishlists_table', 8),
(13, '2023_03_13_100536_create_compares_table', 9),
(14, '2023_03_13_105625_create_coupons_table', 10),
(15, '2023_03_13_133204_create_ship_divisions_table', 11),
(16, '2023_03_13_133338_create_ship_districts_table', 11),
(17, '2023_03_13_133432_create_ship_states_table', 11),
(18, '2023_03_14_093851_create_orders_table', 12),
(19, '2023_03_14_094002_create_order_items_table', 12),
(20, '2023_03_16_071811_create_blog_categories_table', 13),
(21, '2023_03_16_072029_create_blog_posts_table', 13),
(22, '2023_03_16_094854_create_reviews_table', 14),
(23, '2023_03_16_122555_create_site_settings_table', 15),
(24, '2023_03_16_124742_create_seos_table', 16),
(25, '2023_03_17_165719_create_permission_tables', 17),
(26, '2023_03_18_144206_create_notifications_table', 18),
(27, '2023_09_30_114943_create_home_banners_table', 19),
(28, '2023_10_01_044125_create_background_images_table', 20),
(29, '2023_10_01_054922_create_about_us_table', 21),
(30, '2023_10_01_072546_create_testimonials_table', 22),
(31, '2023_10_01_104119_create_counters_table', 23),
(32, '2023_10_01_115653_create_services_table', 24),
(33, '2023_10_02_095303_create_our_commitments_table', 25),
(34, '2023_10_03_042405_create_contacts_table', 26),
(35, '2023_10_03_050542_create_vehicle_rentals_table', 27),
(36, '2023_10_03_080041_create_buy_sells_table', 28),
(37, '2023_10_04_110506_create_book_nows_table', 29);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 16);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE IF NOT EXISTS `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/products/multi-image/1760151253520502.webp', '2023-03-12 02:50:43', NULL),
(3, 1, 'upload/products/multi-image/1760151254405181.webp', '2023-03-12 02:50:44', NULL),
(4, 1, 'upload/products/multi-image/1760151255015709.webp', '2023-03-12 02:50:45', NULL),
(5, 2, 'upload/products/multi-image/1760151835618721.webp', '2023-03-12 02:59:59', NULL),
(6, 2, 'upload/products/multi-image/1760151836077830.webp', '2023-03-12 02:59:59', NULL),
(7, 2, 'upload/products/multi-image/1760151836510942.webp', '2023-03-12 02:59:59', NULL),
(17, 5, 'upload/products/multi-image/1760164198294755.webp', '2023-03-12 06:16:31', NULL),
(18, 5, 'upload/products/multi-image/1760164201816320.webp', '2023-03-12 06:16:32', NULL),
(19, 6, 'upload/products/multi-image/1760176432958444.jpg', '2023-03-12 09:30:56', NULL),
(20, 6, 'upload/products/multi-image/1760176433369203.jpg', '2023-03-12 09:30:57', NULL),
(21, 7, 'upload/products/multi-image/1760176656114281.jpg', '2023-03-12 09:34:29', NULL),
(22, 7, 'upload/products/multi-image/1760176656367274.jpg', '2023-03-12 09:34:29', NULL),
(23, 7, 'upload/products/multi-image/1760176656768937.jpg', '2023-03-12 09:34:30', NULL),
(24, 7, 'upload/products/multi-image/1760176657114256.jpg', '2023-03-12 09:34:30', NULL),
(25, 7, 'upload/products/multi-image/1760176657416984.jpg', '2023-03-12 09:34:30', NULL),
(26, 8, 'upload/products/multi-image/1760177207770617.jpg', '2023-03-12 09:43:15', NULL),
(27, 8, 'upload/products/multi-image/1760177208227163.jpg', '2023-03-12 09:43:16', NULL),
(28, 8, 'upload/products/multi-image/1760177208580695.jpg', '2023-03-12 09:43:16', NULL),
(29, 9, 'upload/products/multi-image/1760177481839183.jpg', '2023-03-12 09:47:37', NULL),
(30, 9, 'upload/products/multi-image/1760177482409043.jpg', '2023-03-12 09:47:37', NULL),
(31, 9, 'upload/products/multi-image/1760177482762546.jpg', '2023-03-12 09:47:37', NULL),
(32, 10, 'upload/products/multi-image/1760186334319780.jpg', '2023-03-12 12:08:19', NULL),
(33, 10, 'upload/products/multi-image/1760186334732345.jpg', '2023-03-12 12:08:19', NULL),
(34, 10, 'upload/products/multi-image/1760186335126403.jpg', '2023-03-12 12:08:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `currency` varchar(255) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_month` varchar(255) NOT NULL,
  `order_year` varchar(255) NOT NULL,
  `confirmed_date` varchar(255) DEFAULT NULL,
  `processing_date` varchar(255) DEFAULT NULL,
  `picked_date` varchar(255) DEFAULT NULL,
  `shipped_date` varchar(255) DEFAULT NULL,
  `delivered_date` varchar(255) DEFAULT NULL,
  `cancel_date` varchar(255) DEFAULT NULL,
  `return_date` varchar(255) DEFAULT NULL,
  `return_reason` varchar(255) DEFAULT NULL,
  `return_order` varchar(255) DEFAULT '0',
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `adress`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_reason`, `return_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 3, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '1111', NULL, 'card_1MlUlKI9052CIRJPhMryBVZu', 'Stripe', 'txn_3MlUlMI9052CIRJP0NUXlP5s', 'usd', 1145.00, '6410475b15993', 'EOS86781290', '14 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'confirm', '2023-03-14 04:07:25', '2023-03-15 10:39:30'),
(2, 3, 1, 2, 4, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '1029', 'hi, dfhsdfidshfoae dshfoidashf hoi dihfiasod', 'card_1MlX5KI9052CIRJPxFr2PK9Y', 'Stripe', 'txn_3MlX5MI9052CIRJP1jQc4Aih', 'usd', 631.00, '64106a3a84ee5', 'EOS94705542', '14 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-03-14 06:36:13', NULL),
(3, 3, 1, 2, 4, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '1029', 'hi, dfhsdfidshfoae dshfoidashf hoi dihfiasod', 'card_1MlX6xI9052CIRJPsu4vbmYF', 'Stripe', 'txn_3MlX6zI9052CIRJP0qLEEZbL', 'usd', 631.00, '64106a9f9e9f0', 'EOS32391342', '14 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-03-14 06:37:53', NULL),
(4, 3, 1, 2, 4, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '12345', 'dsfsdfeasf', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 18000.00, NULL, 'EOS85278118', '14 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-03-14 06:53:11', NULL),
(5, 3, 1, 2, 4, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '12345', 'dsfsdfeasf', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 18000.00, NULL, 'EOS29811150', '14 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-03-14 06:53:42', NULL),
(6, 3, 1, 2, 4, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '12345', 'dsfsdfeasf', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 18000.00, NULL, 'EOS10470531', '14 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-03-14 06:54:34', NULL),
(7, 3, 1, 2, 4, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '12345', 'dsfsdfeasf', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 18000.00, NULL, 'EOS76784577', '14 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'processing', '2023-03-14 06:56:10', '2023-03-15 10:47:00'),
(8, 3, 1, 2, 4, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '12345', 'dsfsdfeasf', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 18000.00, NULL, 'EOS20401357', '14 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-03-14 06:56:22', NULL),
(9, 3, 1, 2, 4, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '12345', 'dsfsdfeasf', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 18000.00, NULL, 'EOS19248719', '14 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-03-14 06:58:03', NULL),
(10, 3, 1, 2, 4, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '12345', 'dsfsdfeasf', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 18000.00, NULL, 'EOS66018609', '14 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, '15 March 2023', 'Broken Product', '2', 'deliverd', '2023-03-14 07:00:24', '2023-03-15 11:53:15'),
(11, 3, 1, 2, 4, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '3242', NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 79999.00, NULL, 'EOS31951204', '14 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'deliverd', '2023-03-14 07:03:15', '2023-03-15 10:27:30'),
(12, 3, 1, 2, 4, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '3242', NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 0.00, NULL, 'EOS11756579', '14 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-03-14 07:05:29', NULL),
(13, 3, 1, 2, 4, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '1223', 'fdgdafgdfdasf dsfdsfdsfsd', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 630.00, NULL, 'EOS13954370', '14 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'deliverd', '2023-03-14 07:09:09', '2023-03-15 10:28:34'),
(14, 3, 1, 1, 2, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '11111', 'test', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 201.00, NULL, 'EOS99172942', '15 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, '15 March 2023', 'Bad Product', '1', 'deliverd', '2023-03-15 08:29:19', '2023-03-15 11:17:59'),
(15, 3, 1, 1, 2, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '1028', 'Hi, I\'m buying this wonderful product of yours. I hope, it will be awesome.', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 370.00, NULL, 'EOS63692104', '15 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, '15 March 2023', 'Very Bad Product.', '2', 'deliverd', '2023-03-15 12:04:05', '2023-03-15 12:21:48'),
(16, 3, 1, 2, 5, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '36546', 'gsfghgh', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 500.00, NULL, 'EOS81878844', '15 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, '15 March 2023', 'Not Happy', '1', 'deliverd', '2023-03-15 12:17:25', '2023-03-15 12:19:38'),
(17, 3, 1, 2, 4, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '1029', NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 559993.00, NULL, 'EOS49823553', '16 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'deliverd', '2023-03-16 07:47:31', '2023-03-16 07:49:11'),
(18, 3, 1, 2, 4, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '1029', 'dsfdsf', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 201.00, NULL, 'EOS74531231', '18 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-03-18 09:02:23', NULL),
(19, 3, 1, 1, 1, 'User', 'user@user.com', '540-025-124553', 'Dhaka, Bangladesh', '1111', NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 350.00, NULL, 'EOS44109414', '18 March 2023', 'March', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-03-18 09:12:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `qty` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `vendor_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'Red', 'Small', '1', 500.00, '2023-03-14 04:07:25', NULL),
(2, 1, 6, NULL, 'Black', '6.55 inches', '1', 529.00, '2023-03-14 04:07:25', NULL),
(3, 1, 5, '12', 'Red', 'Midium', '2', 201.00, '2023-03-14 04:07:25', NULL),
(4, 3, 1, '2', 'Red', 'Small', '1', 500.00, '2023-03-14 06:37:59', NULL),
(5, 3, 2, NULL, 'Red', 'Small', '1', 201.00, '2023-03-14 06:37:59', NULL),
(6, 3, 5, '12', 'Red', 'Small', '1', 201.00, '2023-03-14 06:37:59', NULL),
(7, 10, 10, '13', 'Antique', 'L-800 x W-760 x H-695MM ( 300MM= 1Feet)', '1', 18000.00, '2023-03-14 07:00:30', NULL),
(8, 11, 8, NULL, 'Ceramic White', '6.73 inches', '1', 79999.00, '2023-03-14 07:03:23', NULL),
(9, 13, 7, '12', 'White', '6.36 inches', '1', 900.00, '2023-03-14 07:09:14', NULL),
(10, 14, 2, NULL, 'Red', 'Small', '1', 201.00, '2023-03-15 08:29:24', NULL),
(11, 15, 6, '2', 'Black', '6.55 inches', '1', 529.00, '2023-03-15 12:04:10', NULL),
(12, 16, 1, '2', 'Red', 'Small', '1', 500.00, '2023-03-15 12:17:30', NULL),
(13, 17, 8, NULL, 'Ceramic Black', '6.73 Inches', '10', 79999.00, '2023-03-16 07:47:36', NULL),
(14, 18, 5, '12', 'Black', 'Small', '1', 201.00, '2023-03-18 09:02:28', NULL),
(15, 19, 1, '2', '11', 'Small', '1', 500.00, '2023-03-18 09:12:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `our_commitments`
--

CREATE TABLE IF NOT EXISTS `our_commitments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_commitments`
--

INSERT INTO `our_commitments` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'upload/ourCommitment/1778638178532884.jpg', 'Welcome to Carbook', 'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.\r\n<br><br>\r\nOn her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word \"and\" and the Little Blind Text should turn around and return to its own, safe country. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'brand.menu', 'web', 'brand', '2023-03-17 11:43:11', '2023-03-17 11:43:11'),
(2, 'brand.list', 'web', 'brand', '2023-03-17 11:48:19', '2023-03-17 11:48:19'),
(3, 'brand.add', 'web', 'brand', '2023-03-17 11:58:11', '2023-03-17 11:58:11'),
(4, 'brand.edit', 'web', 'brand', '2023-03-17 12:01:22', '2023-03-17 12:01:22'),
(5, 'brand.delete', 'web', 'brand', '2023-03-17 12:01:36', '2023-03-17 12:01:36'),
(6, 'cat.menu', 'web', 'category', '2023-03-17 12:03:33', '2023-03-17 12:03:33'),
(7, 'category.list', 'web', 'category', '2023-03-17 12:03:49', '2023-03-17 12:03:49'),
(8, 'category.add', 'web', 'category', '2023-03-17 12:04:04', '2023-03-17 12:04:04'),
(9, 'category.edit', 'web', 'category', '2023-03-17 12:04:18', '2023-03-17 12:04:18'),
(10, 'category.delete', 'web', 'category', '2023-03-17 12:04:33', '2023-03-17 12:04:33'),
(11, 'subcategory.menu', 'web', 'subcategory', '2023-03-17 12:05:55', '2023-03-17 12:05:55'),
(12, 'subcategory.list', 'web', 'subcategory', '2023-03-17 12:06:56', '2023-03-17 12:06:56'),
(13, 'subcategory.add', 'web', 'subcategory', '2023-03-17 12:07:17', '2023-03-17 12:07:17'),
(14, 'subcategory.edit', 'web', 'subcategory', '2023-03-17 12:07:31', '2023-03-17 12:07:31'),
(15, 'subcategory.delete', 'web', 'subcategory', '2023-03-17 12:07:47', '2023-03-17 12:07:47'),
(16, 'product.menu', 'web', 'product', '2023-03-17 12:08:13', '2023-03-17 12:08:13'),
(17, 'product.list', 'web', 'product', '2023-03-17 12:08:31', '2023-03-17 12:08:31'),
(18, 'product.add', 'web', 'product', '2023-03-17 12:08:47', '2023-03-17 12:08:47'),
(19, 'product.edit', 'web', 'product', '2023-03-17 12:09:05', '2023-03-17 12:09:05'),
(20, 'product.delete', 'web', 'product', '2023-03-17 12:09:21', '2023-03-17 12:09:21'),
(21, 'slider.menu', 'web', 'slider', '2023-03-17 12:09:39', '2023-03-17 12:09:39'),
(22, 'slider.list', 'web', 'slider', '2023-03-17 12:10:00', '2023-03-17 12:10:00'),
(23, 'slider.add', 'web', 'slider', '2023-03-17 12:10:19', '2023-03-17 12:10:19'),
(24, 'slider.edit', 'web', 'slider', '2023-03-17 12:10:41', '2023-03-17 12:10:41'),
(25, 'slider.delete', 'web', 'slider', '2023-03-17 12:11:48', '2023-03-17 12:11:48'),
(26, 'ads.menu', 'web', 'ads', '2023-03-17 12:12:04', '2023-03-17 12:12:04'),
(27, 'ads.list', 'web', 'ads', '2023-03-17 12:12:21', '2023-03-17 12:12:21'),
(28, 'ads.add', 'web', 'ads', '2023-03-17 12:12:36', '2023-03-17 12:12:36'),
(29, 'ads.edit', 'web', 'ads', '2023-03-17 12:12:52', '2023-03-17 12:12:52'),
(30, 'ads.delete', 'web', 'ads', '2023-03-17 12:13:09', '2023-03-17 12:13:09'),
(31, 'coupon.menu', 'web', 'coupon', '2023-03-17 12:14:12', '2023-03-17 12:14:12'),
(32, 'coupon.list', 'web', 'coupon', '2023-03-17 12:15:29', '2023-03-17 12:15:29'),
(33, 'coupon.add', 'web', 'coupon', '2023-03-17 12:15:52', '2023-03-17 12:15:52'),
(34, 'coupon.edit', 'web', 'coupon', '2023-03-17 12:16:07', '2023-03-17 12:16:07'),
(35, 'coupon.delete', 'web', 'coupon', '2023-03-17 12:16:32', '2023-03-17 12:16:32'),
(36, 'area.menu', 'web', 'area', '2023-03-17 12:18:46', '2023-03-17 12:18:46'),
(37, 'vendor.menu', 'web', 'vendor', '2023-03-17 12:19:03', '2023-03-17 12:19:03'),
(38, 'order.menu', 'web', 'order', '2023-03-17 12:19:20', '2023-03-17 12:19:20'),
(39, 'order.list', 'web', 'order', '2023-03-17 12:19:35', '2023-03-17 12:19:35'),
(40, 'order.edit', 'web', 'order', '2023-03-17 12:20:40', '2023-03-17 12:20:40'),
(41, 'order.delete', 'web', 'order', '2023-03-17 12:21:01', '2023-03-17 12:21:01'),
(42, 'return.order.menu', 'web', 'return', '2023-03-17 12:21:28', '2023-03-17 12:21:28'),
(43, 'user.management.menu', 'web', 'user', '2023-03-17 12:21:48', '2023-03-17 12:21:48'),
(44, 'review.menu', 'web', 'review', '2023-03-17 12:22:06', '2023-03-17 12:22:06'),
(45, 'blog.menu', 'web', 'blog', '2023-03-17 12:22:29', '2023-03-17 12:22:29'),
(46, 'site.menu', 'web', 'setting', '2023-03-17 12:22:59', '2023-03-17 12:22:59'),
(47, 'role.permission.menu', 'web', 'role', '2023-03-17 12:23:16', '2023-03-17 12:23:16'),
(48, 'admin.user.menu', 'web', 'admin', '2023-03-17 12:23:35', '2023-03-17 12:23:35'),
(49, 'stock.menu', 'web', 'stock', '2023-03-17 12:23:52', '2023-03-17 12:23:52'),
(51, 'report.menu', 'web', 'report', '2023-03-17 15:00:02', '2023-03-17 15:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_slug` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `product_tags` varchar(255) DEFAULT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `selling_price` varchar(255) NOT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `short_descp` text NOT NULL,
  `long_descp` text NOT NULL,
  `product_thambnail` varchar(255) NOT NULL,
  `vendor_id` varchar(255) DEFAULT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `product_name`, `product_slug`, `product_code`, `product_qty`, `product_tags`, `product_size`, `product_color`, `selling_price`, `discount_price`, `short_descp`, `long_descp`, `product_thambnail`, `vendor_id`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 4, '1Seeds of Change Organic', '1seeds-of-change-organic', '434444', '200', 'new product,top product,test,11', 'Small,Midium ,11', 'Red,Black,11', '600', '500', '11 Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi.', '<p>11Uninhibited carnally hired played in whimpered dear gorilla koala depending and much yikes off far quetzal goodness and from for grimaced goodness unaccountably and meadowlark near unblushingly crucial scallop tightly neurotic hungrily some and dear furiously this apart.</p>\r\n<p>Spluttered narrowly yikes left moth in yikes bowed this that grizzly much hello on spoon-fed that alas rethought much decently richly and wow against the frequent fluidly at formidable acceptably flapped besides and much circa far over the bucolically hey precarious goldfinch mastodon goodness gnashed a jellyfish and one however because.</p>\r\n<ul class=\"product-more-infor mt-30\">\r\n<li>Type Of Packing Bottle</li>\r\n<li>Color Green, Pink, Powder Blue, Purple</li>\r\n<li>Quantity Per Case 100ml</li>\r\n<li>Ethyl Alcohol 70%</li>\r\n<li>Piece In One Carton</li>\r\n</ul>', 'upload/products/thambnail/1760151252304523.webp', '2', 1, 1, 1, 1, 1, '2023-03-12 05:49:19', '2023-03-12 05:49:19'),
(2, 3, 1, 6, 'Change Organic Quinoa, Brown', 'change-organic-quinoa,-brown', '234234', '200', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '300', '201', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi.', '<p>Uninhibited carnally hired played in whimpered dear gorilla koala depending and much yikes off far quetzal goodness and from for grimaced goodness unaccountably and meadowlark near unblushingly crucial scallop tightly neurotic hungrily some and dear furiously this apart.</p>\r\n<p>Spluttered narrowly yikes left moth in yikes bowed this that grizzly much hello on spoon-fed that alas rethought much decently richly and wow against the frequent fluidly at formidable acceptably flapped besides and much circa far over the bucolically hey precarious goldfinch mastodon goodness gnashed a jellyfish and one however because.</p>\r\n<ul class=\"product-more-infor mt-30\">\r\n<li>Type Of Packing Bottle</li>\r\n<li>Color Green, Pink, Powder Blue, Purple</li>\r\n<li>Quantity Per Case 100ml</li>\r\n<li>Ethyl Alcohol 70%</li>\r\n<li>Piece In One Carton</li>\r\n</ul>\r\n<hr class=\"wp-block-separator is-style-dots\" />\r\n<p>Laconic overheard dear woodchuck wow this outrageously taut beaver hey hello far meadowlark imitatively egregiously hugged that yikes minimally unanimous pouted flirtatiously as beaver beheld above forward energetic across this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much wow callously irrespective limpet.</p>\r\n<h4 class=\"mt-30\">Packaging &amp; Delivery</h4>\r\n<hr class=\"wp-block-separator is-style-wide\" />\r\n<p>Less lion goodness that euphemistically robin expeditiously bluebird smugly scratched far while thus cackled sheepishly rigid after due one assenting regarding censorious while occasional or this more crane went more as this less much amid overhung anathematic because much held one exuberantly sheep goodness so where rat wry well concomitantly.</p>\r\n<p>Scallop or far crud plain remarkably far by thus far iguana lewd precociously and and less rattlesnake contrary caustic wow this near alas and next and pled the yikes articulate about as less cackled dalmatian in much less well jeering for the thanks blindly sentimental whimpered less across objectively fanciful grimaced wildly some wow and rose jeepers outgrew lugubrious luridly irrationally attractively dachshund.</p>', 'upload/products/thambnail/1760151835194615.webp', NULL, 1, 1, 1, 1, 1, '2023-03-12 02:59:58', NULL),
(5, 2, 1, 2, 'Solid Men Round Neck', 'solid-men-round-neck', '434444', '200', 'new product,top product', 'Small,Midium', 'Red,Blue,Black', '300', '201', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/products/thambnail/1760164197696766.webp', '12', 1, NULL, 1, NULL, 1, '2023-03-12 06:16:28', NULL),
(6, 5, 9, 13, 'Xiaomi 13 Lite', 'xiaomi-13-lite', 'kljsdhr3', '13', 'Xiaomi , Xiaomi 13, Xiaomi 13 Lite', '6.55 inches', 'Black, Lite Blue, Lite Pink', '559', '529', 'Released 2023, March 08\r\n171g, 7.2mm thickness\r\nAndroid 12, MIUI 14\r\n128GB/256GB storage, no card slot', '<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"2\" scope=\"row\">Launch</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Announced</a></td>\r\n<td class=\"nfo\" data-spec=\"year\">2023, February 26</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Status</a></td>\r\n<td class=\"nfo\" data-spec=\"status\">Available. Released 2023, March 08</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"6\" scope=\"row\">Body</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_13_lite-12072.php\">Dimensions</a></td>\r\n<td class=\"nfo\" data-spec=\"dimensions\">159.2 x 72.7 x 7.2 mm (6.27 x 2.86 x 0.28 in)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_13_lite-12072.php\">Weight</a></td>\r\n<td class=\"nfo\" data-spec=\"weight\">171 g (6.03 oz)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Build</a></td>\r\n<td class=\"nfo\" data-spec=\"build\">Glass front (Gorilla Glass 5), glass back, plastic frame</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\">SIM</a></td>\r\n<td class=\"nfo\" data-spec=\"sim\">Dual SIM (Nano-SIM, dual stand-by)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"bodyother\">IP53, dust and splash resistant</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"5\" scope=\"row\">Display</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"displaytype\">AMOLED, 68B colors, Dolby Vision, HDR10+, 120Hz, 500 nits (typ), 1000 nits (peak)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_13_lite-12072.php\">Size</a></td>\r\n<td class=\"nfo\" data-spec=\"displaysize\">6.55 inches, 103.6 cm<sup>2</sup> (~89.5% screen-to-body ratio)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\">Resolution</a></td>\r\n<td class=\"nfo\" data-spec=\"displayresolution\">1080 x 2400 pixels, 20:9 ratio (~402 ppi density)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=screen-protection\">Protection</a></td>\r\n<td class=\"nfo\" data-spec=\"displayprotection\">Corning Gorilla Glass 5</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"4\" scope=\"row\">Platform</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=os\">OS</a></td>\r\n<td class=\"nfo\" data-spec=\"os\">Android 12, MIUI 14</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=chipset\">Chipset</a></td>\r\n<td class=\"nfo\" data-spec=\"chipset\">Qualcomm SM7450-AB Snapdragon 7 Gen 1 (4 nm)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\">CPU</a></td>\r\n<td class=\"nfo\" data-spec=\"cpu\">Octa-core (1x2.4 GHz Cortex-A710 &amp; 3x2.36 GHz Cortex-A710 &amp; 4x1.8 GHz Cortex-A510)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gpu\">GPU</a></td>\r\n<td class=\"nfo\" data-spec=\"gpu\">Adreno 644</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"5\" scope=\"row\">Memory</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\">Card slot</a></td>\r\n<td class=\"nfo\" data-spec=\"memoryslot\">No</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\">Internal</a></td>\r\n<td class=\"nfo\" data-spec=\"internalmemory\">128GB 8GB RAM, 256GB 8GB RAM</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"memoryother\">UFS 2.2</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th class=\"small-line-height\" rowspan=\"4\" scope=\"row\">Main Camera</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Triple</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1modules\">50 MP, f/1.8, 23mm (wide), 1/1.56\", 1.0&micro;m, PDAF<br />8 MP, f/2.2, 119˚ (ultrawide), 1/4.0\", 1.12&micro;m<br />2 MP, f/2.4, (macro)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Features</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1features\">Dual-LED dual-tone flash, HDR, panorama</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Video</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1video\">4K@30fps, 1080p@30/60/120fps, 720p@960fps</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th class=\"small-line-height\" rowspan=\"4\" scope=\"row\">Selfie camera</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Dual</a></td>\r\n<td class=\"nfo\" data-spec=\"cam2modules\">32 MP, f/2.4, 100˚ (ultrawide), 1/2.74\", 0.8&micro;m<br />8 MP, f/2.3, (depth)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Features</a></td>\r\n<td class=\"nfo\" data-spec=\"cam2features\">Dual-LED flash, HDR</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Video</a></td>\r\n<td class=\"nfo\" data-spec=\"cam2video\">1080p@30/60fps</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"3\" scope=\"row\">Sound</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=loudspeaker\">Loudspeaker</a></td>\r\n<td class=\"nfo\">Yes</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=audio-jack\">3.5mm jack</a></td>\r\n<td class=\"nfo\">No</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"optionalother\">24-bit/192kHz audio</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"9\" scope=\"row\">Comms</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=wi-fi\">WLAN</a></td>\r\n<td class=\"nfo\" data-spec=\"wlan\">Wi-Fi 802.11 a/b/g/n/ac/6, dual-band</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=bluetooth\">Bluetooth</a></td>\r\n<td class=\"nfo\" data-spec=\"bluetooth\">5.2, A2DP, LE</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gnss\">Positioning</a></td>\r\n<td class=\"nfo\" data-spec=\"gps\">GPS (L1), GLONASS (G1), BDS (B1I+B1c), GALILEO (E1), QZSS (L1)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=nfc\">NFC</a></td>\r\n<td class=\"nfo\" data-spec=\"nfc\">Yes (market/region dependent)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=irda\">Infrared port</a></td>\r\n<td class=\"nfo\">Yes</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=fm-radio\">Radio</a></td>\r\n<td class=\"nfo\" data-spec=\"radio\">No</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=usb\">USB</a></td>\r\n<td class=\"nfo\" data-spec=\"usb\">USB Type-C 2.0, OTG</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"9\" scope=\"row\">Features</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sensors\">Sensors</a></td>\r\n<td class=\"nfo\" data-spec=\"sensors\">Fingerprint (under display, optical), accelerometer, gyro, proximity, compass</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"7\" scope=\"row\">Battery</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"batdescription1\">Li-Po 4500 mAh, non-removable</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=battery-charging\">Charging</a></td>\r\n<td class=\"nfo\">67W wired, 100% in 40 min (advertised)</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"6\" scope=\"row\">Misc</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Colors</a></td>\r\n<td class=\"nfo\" data-spec=\"colors\">Black, Lite Blue, Lite Pink</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=price\">Price</a></td>\r\n<td class=\"nfo\" data-spec=\"price\"><a href=\"https://www.gsmarena.com/xiaomi_13_lite-price-12072.php\">&euro;&thinsp;499.90</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"5\" scope=\"row\">Tests</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=benchmarking\">Performance</a></td>\r\n<td class=\"nfo\" data-spec=\"tbench\">AnTuTu: 534143 (v9)<br />GeekBench: 2936 (v5.1), 2434 (v6)<br />GFXBench: 33fps (ES 3.1 onscreen)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p2.php\">Display</a></td>\r\n<td class=\"nfo\"><a class=\"noUnd\" href=\"https://www.gsmarena.com/xiaomi_13_lite-review-2532p3.php\">Contrast ratio: Infinite (nominal)</a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p5.php\">Camera</a></td>\r\n<td class=\"nfo\"><a class=\"noUnd\" href=\"https://www.gsmarena.com/piccmp.php3?idType=1&amp;idPhone1=12072&amp;nSuggest=1\">Photo</a> / <a class=\"noUnd\" href=\"https://www.gsmarena.com/vidcmp.php3?idType=3&amp;idPhone1=12072&amp;nSuggest=1\">Video</a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p7.php\">Loudspeaker</a></td>\r\n<td class=\"nfo\"><a class=\"noUnd\" href=\"https://www.gsmarena.com/xiaomi_13_lite-review-2532p3.php#lt\">-28.5 LUFS (Average)</a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p6.php\">Battery life</a></td>\r\n<td class=\"nfo\" data-spec=\"batlife\">\r\n<div style=\"position: relative;\"><a href=\"https://www.gsmarena.com/xiaomi_13_lite-12072.php\">Endurance rating 93h</a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"max-height: 30px;\" cellspacing=\"0\">\r\n<tbody>\r\n<tr class=\"tr-hover\">\r\n<th rowspan=\"15\" scope=\"row\">Network</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/network-bands.php3\">Technology</a></td>\r\n<td class=\"nfo\"><a class=\"link-network-detail collapse\" href=\"https://www.gsmarena.com/xiaomi_13_lite-12072.php\" data-spec=\"nettech\">GSM / HSPA / LTE / 5G</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'upload/products/thambnail/1760176432615690.jpg', '2', 1, 1, 1, 1, 1, '2023-03-12 09:30:56', NULL),
(7, 5, 9, 13, 'Xiaomi 13', 'xiaomi-13', 'asfe3', '13', 'Xiaomi, Xiaomi 13', '6.36 inches', 'White, Black, Flora Green, Mountain Blue, Red, Blue, Yellow, Green, Gray', '999', '900', 'Xiaomi 13 MORE PICTURES\r\n\r\n    Released 2022, December 14\r\n    185g or 189g, 8mm thickness\r\n    Android 13, MIUI 14\r\n    128GB/256GB/512GB storage, no card slot', '<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"2\" scope=\"row\">Launch</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Announced</a></td>\r\n<td class=\"nfo\" data-spec=\"year\">2022, December 11</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Status</a></td>\r\n<td class=\"nfo\" data-spec=\"status\">Available. Released 2022, December 14</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"6\" scope=\"row\">Body</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_13-12013.php\">Dimensions</a></td>\r\n<td class=\"nfo\" data-spec=\"dimensions\">152.8 x 71.5 x 8.0 mm or 8.1 mm</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_13-12013.php\">Weight</a></td>\r\n<td class=\"nfo\" data-spec=\"weight\">185 g or 189 g (6.53 oz)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Build</a></td>\r\n<td class=\"nfo\" data-spec=\"build\">Glass front (Gorilla Glass 5), glass back or silicone polymer back, aluminum frame</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\">SIM</a></td>\r\n<td class=\"nfo\" data-spec=\"sim\">Dual SIM (Nano-SIM, dual stand-by)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"bodyother\">IP68 dust/water resistant (up to 1.5m for 30 min)</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"5\" scope=\"row\">Display</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"displaytype\">AMOLED, 120Hz, Dolby Vision, HDR10+, 1200 nits (HBM), 1900 nits (peak)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_13-12013.php\">Size</a></td>\r\n<td class=\"nfo\" data-spec=\"displaysize\">6.36 inches, 97.7 cm<sup>2</sup> (~89.4% screen-to-body ratio)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\">Resolution</a></td>\r\n<td class=\"nfo\" data-spec=\"displayresolution\">1080 x 2400 pixels, 20:9 ratio (~414 ppi density)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=screen-protection\">Protection</a></td>\r\n<td class=\"nfo\" data-spec=\"displayprotection\">Corning Gorilla Glass 5</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"4\" scope=\"row\">Platform</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=os\">OS</a></td>\r\n<td class=\"nfo\" data-spec=\"os\">Android 13, MIUI 14</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=chipset\">Chipset</a></td>\r\n<td class=\"nfo\" data-spec=\"chipset\">Qualcomm SM8550-AB Snapdragon 8 Gen 2 (4 nm)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\">CPU</a></td>\r\n<td class=\"nfo\" data-spec=\"cpu\">Octa-core (1x3.2 GHz Cortex-X3 &amp; 2x2.8 GHz Cortex-A715 &amp; 2x2.8 GHz Cortex-A710 &amp; 3x2.0 GHz Cortex-A510)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gpu\">GPU</a></td>\r\n<td class=\"nfo\" data-spec=\"gpu\">Adreno 740</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"5\" scope=\"row\">Memory</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\">Card slot</a></td>\r\n<td class=\"nfo\" data-spec=\"memoryslot\">No</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\">Internal</a></td>\r\n<td class=\"nfo\" data-spec=\"internalmemory\">128GB 8GB RAM, 256GB 8GB RAM, 256GB 12GB RAM, 512GB 12GB RAM</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"memoryother\">UFS 3.1 - 128GB<br />UFS 4.0 - 256/512GB</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th class=\"small-line-height\" rowspan=\"4\" scope=\"row\">Main Camera</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Triple</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1modules\">50 MP, f/1.8, 23mm (wide), 1/1.49\", 1.0&micro;m, PDAF, OIS<br />10 MP, f/2.0, 75mm (telephoto), 1/3.75\", 1.0&micro;m, PDAF, OIS, 3.2x optical zoom<br />12 MP, f/2.2, 15mm, 120˚ (ultrawide), 1/3.06\", 1.12&micro;m</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Features</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1features\">Leica lens, Dual-LED dual-tone flash, HDR, panorama</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Video</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1video\">8K@24fps (HDR), 4K@24/30/60fps (HDR10+, 10-bit Dolby Vision HDR, 10-bit LOG), 1080p@30/120/240/960fps, 1080p@1920fps, gyro-EIS</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th class=\"small-line-height\" rowspan=\"4\" scope=\"row\">Selfie camera</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Single</a></td>\r\n<td class=\"nfo\" data-spec=\"cam2modules\">32 MP,&nbsp;f/2.0, 22mm (wide), 0.7&micro;m</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Features</a></td>\r\n<td class=\"nfo\" data-spec=\"cam2features\">HDR, panorama</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Video</a></td>\r\n<td class=\"nfo\" data-spec=\"cam2video\">1080p@30fps</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"3\" scope=\"row\">Sound</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=loudspeaker\">Loudspeaker</a></td>\r\n<td class=\"nfo\">Yes, with stereo speakers</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=audio-jack\">3.5mm jack</a></td>\r\n<td class=\"nfo\">No</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"optionalother\">24-bit/192kHz audio</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"9\" scope=\"row\">Comms</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=wi-fi\">WLAN</a></td>\r\n<td class=\"nfo\" data-spec=\"wlan\">Wi-Fi 802.11 a/b/g/n/ac/6e, dual-band, Wi-Fi Direct</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=bluetooth\">Bluetooth</a></td>\r\n<td class=\"nfo\" data-spec=\"bluetooth\">5.3, A2DP, LE</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gnss\">Positioning</a></td>\r\n<td class=\"nfo\" data-spec=\"gps\">GPS (L1+L5), GLONASS (G1), BDS (B1I+B1c+B2a), GALILEO (E1+E5a), QZSS (L1+L5), NavIC (L5)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=nfc\">NFC</a></td>\r\n<td class=\"nfo\" data-spec=\"nfc\">Yes</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=irda\">Infrared port</a></td>\r\n<td class=\"nfo\">Yes</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=fm-radio\">Radio</a></td>\r\n<td class=\"nfo\" data-spec=\"radio\">No</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=usb\">USB</a></td>\r\n<td class=\"nfo\" data-spec=\"usb\">USB Type-C 2.0, OTG</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"9\" scope=\"row\">Features</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sensors\">Sensors</a></td>\r\n<td class=\"nfo\" data-spec=\"sensors\">Fingerprint (under display, optical), accelerometer, proximity, gyro, compass, color spectrum</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"7\" scope=\"row\">Battery</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"batdescription1\">Li-Po 4500 mAh, non-removable</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=battery-charging\">Charging</a></td>\r\n<td class=\"nfo\">67W wired, PD3.0, QC4, 100% in 38 min (advertised)<br />50W wireless, 100% in 48 min (advertised)<br />10W reverse wireless</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"6\" scope=\"row\">Misc</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Colors</a></td>\r\n<td class=\"nfo\" data-spec=\"colors\">White, Black, Flora Green, Mountain Blue, Red, Blue, Yellow, Green, Gray</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=models\">Models</a></td>\r\n<td class=\"nfo\" data-spec=\"models\">2211133C</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=price\">Price</a></td>\r\n<td class=\"nfo\" data-spec=\"price\"><a href=\"https://www.gsmarena.com/xiaomi_13-price-12013.php\">&euro;&thinsp;999.90</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"5\" scope=\"row\">Tests</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=benchmarking\">Performance</a></td>\r\n<td class=\"nfo\" data-spec=\"tbench\">AnTuTu: 1248260 (v9)<br />GeekBench: 5129 (v5.1)<br />GFXBench: 109fps (ES 3.1 onscreen)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p2.php\">Display</a></td>\r\n<td class=\"nfo\"><a class=\"noUnd\" href=\"https://www.gsmarena.com/xiaomi_13-review-2531p3.php#dt\">Contrast ratio: Infinite (nominal)</a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p5.php\">Camera</a></td>\r\n<td class=\"nfo\"><a class=\"noUnd\" href=\"https://www.gsmarena.com/piccmp.php3?idType=1&amp;idPhone1=12013&amp;nSuggest=1\">Photo</a> / <a class=\"noUnd\" href=\"https://www.gsmarena.com/vidcmp.php3?idType=3&amp;idPhone1=12013&amp;nSuggest=1\">Video</a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p7.php\">Loudspeaker</a></td>\r\n<td class=\"nfo\"><a class=\"noUnd\" href=\"https://www.gsmarena.com/xiaomi_13-review-2531p3.php#lt\">-25.8 LUFS (Very good)</a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p6.php\">Battery life</a></td>\r\n<td class=\"nfo\" data-spec=\"batlife\">\r\n<div style=\"position: relative;\"><a href=\"https://www.gsmarena.com/xiaomi_13-12013.php\">Endurance rating 108h</a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"max-height: 30px;\" cellspacing=\"0\">\r\n<tbody>\r\n<tr class=\"tr-hover\">\r\n<th rowspan=\"15\" scope=\"row\">Network</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/network-bands.php3\">Technology</a></td>\r\n<td class=\"nfo\"><a class=\"link-network-detail collapse\" href=\"https://www.gsmarena.com/xiaomi_13-12013.php\" data-spec=\"nettech\">GSM / CDMA / HSPA / CDMA2000 / LTE / 5G</a></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'upload/products/thambnail/1760176655871445.jpg', '12', 1, 1, 1, 1, 1, '2023-03-12 10:38:38', '2023-03-12 10:38:38'),
(8, 5, 9, 13, 'Xiaomi 13 Pro', 'xiaomi-13-pro', 'faesr3', '3', 'Xiaomi,Xiaomi 13,Xiaomi 13 Pro', '6.73 inches', 'Ceramic White, Ceramic Black, Ceramic Flora Green, Mountain Blue', '79999', NULL, 'Released 2022, December 14\r\n210g or 229g, 8.4mm thickness\r\nAndroid 13, MIUI 14\r\n128GB/256GB/512GB storage, no card slot', '<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"2\" scope=\"row\">Launch</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Announced</a></td>\r\n<td class=\"nfo\" data-spec=\"year\">2022, December 11</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Status</a></td>\r\n<td class=\"nfo\" data-spec=\"status\">Available. Released 2022, December 14</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"6\" scope=\"row\">Body</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_13_pro-11962.php\">Dimensions</a></td>\r\n<td class=\"nfo\" data-spec=\"dimensions\">162.9 x 74.6 x 8.4 mm or 8.7 mm</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_13_pro-11962.php\">Weight</a></td>\r\n<td class=\"nfo\" data-spec=\"weight\">210 g or 229 g (7.41 oz)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Build</a></td>\r\n<td class=\"nfo\" data-spec=\"build\">Glass front (Gorilla Glass Victus), ceramic back or silicone polymer back, aluminum frame</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\">SIM</a></td>\r\n<td class=\"nfo\" data-spec=\"sim\">Dual SIM (Nano-SIM, dual stand-by)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"bodyother\">IP68 dust/water resistant (up to 1.5m for 30 min)</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"5\" scope=\"row\">Display</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"displaytype\">LTPO AMOLED, 1B colors, 120Hz, Dolby Vision, HDR10+, 1200 nits (HBM), 1900 nits (peak)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_13_pro-11962.php\">Size</a></td>\r\n<td class=\"nfo\" data-spec=\"displaysize\">6.73 inches, 108.9 cm<sup>2</sup> (~89.6% screen-to-body ratio)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\">Resolution</a></td>\r\n<td class=\"nfo\" data-spec=\"displayresolution\">1440 x 3200 pixels, 20:9 ratio (~522 ppi density)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=screen-protection\">Protection</a></td>\r\n<td class=\"nfo\" data-spec=\"displayprotection\">Corning Gorilla Glass Victus</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"4\" scope=\"row\">Platform</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=os\">OS</a></td>\r\n<td class=\"nfo\" data-spec=\"os\">Android 13, MIUI 14</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=chipset\">Chipset</a></td>\r\n<td class=\"nfo\" data-spec=\"chipset\">Qualcomm SM8550-AB Snapdragon 8 Gen 2 (4 nm)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\">CPU</a></td>\r\n<td class=\"nfo\" data-spec=\"cpu\">Octa-core (1x3.2 GHz Cortex-X3 &amp; 2x2.8 GHz Cortex-A715 &amp; 2x2.8 GHz Cortex-A710 &amp; 3x2.0 GHz Cortex-A510)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gpu\">GPU</a></td>\r\n<td class=\"nfo\" data-spec=\"gpu\">Adreno 740</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"5\" scope=\"row\">Memory</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\">Card slot</a></td>\r\n<td class=\"nfo\" data-spec=\"memoryslot\">No</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\">Internal</a></td>\r\n<td class=\"nfo\" data-spec=\"internalmemory\">128GB 8GB RAM, 256GB 8GB RAM, 256GB 12GB RAM, 512GB 12GB RAM</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"memoryother\">UFS 3.1 - 128GB<br />UFS 4.0 - 256/512GB</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th class=\"small-line-height\" rowspan=\"4\" scope=\"row\">Main Camera</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Triple</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1modules\">50.3 MP, f/1.9, 23mm (wide), 1.0\"-type, 1.6&micro;m, Dual Pixel PDAF, Laser AF, OIS<br />50 MP, f/2.0, 75mm (telephoto), PDAF (10cm - &infin;), 3.2x optical zoom<br />50 MP, f/2.2, 14mm, 115˚ (ultrawide), AF</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Features</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1features\">Leica lens, Dual-LED dual-tone flash, HDR, panorama</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Video</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1video\">8K@24fps (HDR), 4K@24/30/60fps (HDR10+, 10-bit Dolby Vision HDR, 10-bit LOG), 1080p@30/120/240/960fps, 1080p@1920fps, gyro-EIS</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th class=\"small-line-height\" rowspan=\"4\" scope=\"row\">Selfie camera</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Single</a></td>\r\n<td class=\"nfo\" data-spec=\"cam2modules\">32 MP, (wide)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Features</a></td>\r\n<td class=\"nfo\" data-spec=\"cam2features\">HDR, panorama</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Video</a></td>\r\n<td class=\"nfo\" data-spec=\"cam2video\">1080p@30fps</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"3\" scope=\"row\">Sound</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=loudspeaker\">Loudspeaker</a></td>\r\n<td class=\"nfo\">Yes, with stereo speakers</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=audio-jack\">3.5mm jack</a></td>\r\n<td class=\"nfo\">No</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"optionalother\">24-bit/192kHz audio</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"9\" scope=\"row\">Comms</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=wi-fi\">WLAN</a></td>\r\n<td class=\"nfo\" data-spec=\"wlan\">Wi-Fi 802.11 a/b/g/n/ac/6e, dual-band, Wi-Fi Direct</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=bluetooth\">Bluetooth</a></td>\r\n<td class=\"nfo\" data-spec=\"bluetooth\">5.3, A2DP, LE</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gnss\">Positioning</a></td>\r\n<td class=\"nfo\" data-spec=\"gps\">GPS (L1+L5), GLONASS (G1), BDS (B1I+B1c+B2a), GALILEO (E1+E5a), QZSS (L1+L5), NavIC (L5)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=nfc\">NFC</a></td>\r\n<td class=\"nfo\" data-spec=\"nfc\">Yes</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=irda\">Infrared port</a></td>\r\n<td class=\"nfo\">Yes</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=fm-radio\">Radio</a></td>\r\n<td class=\"nfo\" data-spec=\"radio\">No</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=usb\">USB</a></td>\r\n<td class=\"nfo\" data-spec=\"usb\">USB Type-C 2.0, OTG</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"9\" scope=\"row\">Features</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sensors\">Sensors</a></td>\r\n<td class=\"nfo\" data-spec=\"sensors\">Fingerprint (under display, optical), accelerometer, proximity, gyro, compass, barometer, color spectrum</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"7\" scope=\"row\">Battery</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"batdescription1\">Li-Po 4820 mAh, non-removable</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=battery-charging\">Charging</a></td>\r\n<td class=\"nfo\">120W wired, PD3.0, QC4, 100% in 19 min (advertised)<br />50W wireless, 100% in 36 min (advertised)<br />10W reverse wireless</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"6\" scope=\"row\">Misc</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Colors</a></td>\r\n<td class=\"nfo\" data-spec=\"colors\">Ceramic White, Ceramic Black, Ceramic Flora Green, Mountain Blue</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=price\">Price</a></td>\r\n<td class=\"nfo\" data-spec=\"price\"><a href=\"https://www.gsmarena.com/xiaomi_13_pro-price-11962.php\">₹&thinsp;79,999</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"5\" scope=\"row\">Tests</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=benchmarking\">Performance</a></td>\r\n<td class=\"nfo\" data-spec=\"tbench\">AnTuTu: 1281666 (v9)<br />GeekBench: 5087 (v5.1), 5323 (v6)<br />GFXBench: 64fps (ES 3.1 onscreen)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p2.php\">Display</a></td>\r\n<td class=\"nfo\"><a class=\"noUnd\" href=\"https://www.gsmarena.com/xiaomi_13_pro-review-2535p3.php#dt\">Contrast ratio: Infinite (nominal)</a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p5.php\">Camera</a></td>\r\n<td class=\"nfo\"><a class=\"noUnd\" href=\"https://www.gsmarena.com/piccmp.php3?idType=1&amp;idPhone1=11962&amp;nSuggest=1\">Photo</a> / <a class=\"noUnd\" href=\"https://www.gsmarena.com/vidcmp.php3?idType=3&amp;idPhone1=11962&amp;nSuggest=1\">Video</a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p7.php\">Loudspeaker</a></td>\r\n<td class=\"nfo\"><a class=\"noUnd\" href=\"https://www.gsmarena.com/xiaomi_13_pro-review-2535p3.php#lt\">-25.6 LUFS (Very good)</a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/gsmarena_lab_tests-review-751p6.php\">Battery life</a></td>\r\n<td class=\"nfo\" data-spec=\"batlife\">\r\n<div style=\"position: relative;\"><a href=\"https://www.gsmarena.com/xiaomi_13_pro-11962.php\">Endurance rating 115h</a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"max-height: 28px;\" cellspacing=\"0\">\r\n<tbody>\r\n<tr class=\"tr-hover\">\r\n<th rowspan=\"15\" scope=\"row\">Network</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/network-bands.php3\">Technology</a></td>\r\n<td class=\"nfo\"><a class=\"link-network-detail collapse\" href=\"https://www.gsmarena.com/xiaomi_13_pro-11962.php\" data-spec=\"nettech\">GSM / CDMA / HSPA / CDMA2000 / LTE / 5G</a></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'upload/products/thambnail/1760177207509385.jpg', NULL, 1, 1, 1, 1, 1, '2023-03-12 09:43:15', '2023-03-16 07:49:11');
INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `product_name`, `product_slug`, `product_code`, `product_qty`, `product_tags`, `product_size`, `product_color`, `selling_price`, `discount_price`, `short_descp`, `long_descp`, `product_thambnail`, `vendor_id`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(9, 5, 9, 13, 'Xiaomi Redmi Note 12 Pro', 'xiaomi-redmi-note-12-pro', 'fgsdft', '12', 'Xiaomi,Redmi ,Note ,Xiaomi 12, Xiaomi Redmi Note 12 Pro, Xiaomi 12 Pro', '6.67 inches', 'Stardust Purple, Frosted Blue, Onyx Black, White', '429', '375', 'Released 2022, November 01\r\n187g, 8mm thickness\r\nAndroid 12, MIUI 13\r\n128GB/256GB storage, no card slot', '<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"2\" scope=\"row\">Launch</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Announced</a></td>\r\n<td class=\"nfo\" data-spec=\"year\">2022, October 27</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Status</a></td>\r\n<td class=\"nfo\" data-spec=\"status\">Available. Released 2022, November 01</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"6\" scope=\"row\">Body</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_redmi_note_12_pro-11955.php\">Dimensions</a></td>\r\n<td class=\"nfo\" data-spec=\"dimensions\">163 x 76 x 8 mm (6.42 x 2.99 x 0.31 in)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_redmi_note_12_pro-11955.php\">Weight</a></td>\r\n<td class=\"nfo\" data-spec=\"weight\">187 g (6.60 oz)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\">SIM</a></td>\r\n<td class=\"nfo\" data-spec=\"sim\">Dual SIM (Nano-SIM, dual stand-by)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"bodyother\">IP53, dust and splash resistant</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"5\" scope=\"row\">Display</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"displaytype\">OLED, 1B colors, 120Hz, Dolby Vision, HDR10+, 500 nits (typ), 900 nits (HBM)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/xiaomi_redmi_note_12_pro-11955.php\">Size</a></td>\r\n<td class=\"nfo\" data-spec=\"displaysize\">6.67 inches, 107.4 cm<sup>2</sup> (~86.7% screen-to-body ratio)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\">Resolution</a></td>\r\n<td class=\"nfo\" data-spec=\"displayresolution\">1080 x 2400 pixels, 20:9 ratio (~395 ppi density)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=screen-protection\">Protection</a></td>\r\n<td class=\"nfo\" data-spec=\"displayprotection\">Corning Gorilla Glass 5</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"4\" scope=\"row\">Platform</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=os\">OS</a></td>\r\n<td class=\"nfo\" data-spec=\"os\">Android 12, MIUI 13</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=chipset\">Chipset</a></td>\r\n<td class=\"nfo\" data-spec=\"chipset\">Mediatek MT6877V Dimensity 1080 (6 nm)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\">CPU</a></td>\r\n<td class=\"nfo\" data-spec=\"cpu\">Octa-core (2x2.6 GHz Cortex-A78 &amp; 6x2.0 GHz Cortex-A55)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gpu\">GPU</a></td>\r\n<td class=\"nfo\" data-spec=\"gpu\">Mali-G68 MC4</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"5\" scope=\"row\">Memory</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\">Card slot</a></td>\r\n<td class=\"nfo\" data-spec=\"memoryslot\">No</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\">Internal</a></td>\r\n<td class=\"nfo\" data-spec=\"internalmemory\">128GB 6GB RAM, 128GB 8GB RAM, 256GB 8GB RAM, 256GB 12GB RAM</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"memoryother\">UFS 2.2</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th class=\"small-line-height\" rowspan=\"4\" scope=\"row\">Main Camera</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Triple</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1modules\">50 MP, f/1.9, 24mm (wide), 1/1.56\", 1.0&micro;m, PDAF, OIS<br />8 MP, f/2.2, 120˚ (ultrawide), 1/4\", 1.12&micro;m<br />2 MP, f/2.4, (macro)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Features</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1features\">Dual-LED dual-tone flash, HDR, panorama</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Video</a></td>\r\n<td class=\"nfo\" data-spec=\"cam1video\">4K@30fps, 1080p@30/60/120fps, 720p@960fps</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th class=\"small-line-height\" rowspan=\"4\" scope=\"row\">Selfie camera</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Single</a></td>\r\n<td class=\"nfo\" data-spec=\"cam2modules\">16 MP, f/2.5, (wide), 1/3.06\", 1.0&micro;m</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Features</a></td>\r\n<td class=\"nfo\" data-spec=\"cam2features\">HDR</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Video</a></td>\r\n<td class=\"nfo\" data-spec=\"cam2video\">1080p@30/60fps</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"3\" scope=\"row\">Sound</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=loudspeaker\">Loudspeaker</a></td>\r\n<td class=\"nfo\">Yes, with stereo speakers</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=audio-jack\">3.5mm jack</a></td>\r\n<td class=\"nfo\">Yes</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\">&nbsp;</td>\r\n<td class=\"nfo\" data-spec=\"optionalother\">24-bit/192kHz audio</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"9\" scope=\"row\">Comms</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=wi-fi\">WLAN</a></td>\r\n<td class=\"nfo\" data-spec=\"wlan\">Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=bluetooth\">Bluetooth</a></td>\r\n<td class=\"nfo\" data-spec=\"bluetooth\">5.2, A2DP, LE</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gnss\">Positioning</a></td>\r\n<td class=\"nfo\" data-spec=\"gps\">GPS (L1), GLONASS (G1), BDS (B1I+B1c), GALILEO (E1), QZSS (L1)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=nfc\">NFC</a></td>\r\n<td class=\"nfo\" data-spec=\"nfc\">Yes (market/region dependent)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=irda\">Infrared port</a></td>\r\n<td class=\"nfo\">Yes</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=fm-radio\">Radio</a></td>\r\n<td class=\"nfo\" data-spec=\"radio\">Unspecified</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=usb\">USB</a></td>\r\n<td class=\"nfo\" data-spec=\"usb\">USB Type-C 2.0, OTG</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"9\" scope=\"row\">Features</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sensors\">Sensors</a></td>\r\n<td class=\"nfo\" data-spec=\"sensors\">Fingerprint (side-mounted), accelerometer, gyro, proximity, compass</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"7\" scope=\"row\">Battery</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"batdescription1\">Li-Po 5000 mAh, non-removable</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=battery-charging\">Charging</a></td>\r\n<td class=\"nfo\">67W wired, PD3.0, 50% in 15 min, 100% in 46 min (advertised)</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table cellspacing=\"0\">\r\n<tbody>\r\n<tr>\r\n<th rowspan=\"6\" scope=\"row\">Misc</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Colors</a></td>\r\n<td class=\"nfo\" data-spec=\"colors\">Stardust Purple, Frosted Blue, Onyx Black, White</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=models\">Models</a></td>\r\n<td class=\"nfo\" data-spec=\"models\">22101316C, 22101316I</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=price\">Price</a></td>\r\n<td class=\"nfo\" data-spec=\"price\"><a href=\"https://www.gsmarena.com/xiaomi_redmi_note_12_pro-price-11955.php\">$&thinsp;368.99 / &euro;&thinsp;398.47 / &pound;&thinsp;401.20 / ₹&thinsp;25,280</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"max-height: 30px;\" cellspacing=\"0\">\r\n<tbody>\r\n<tr class=\"tr-hover\">\r\n<th rowspan=\"15\" scope=\"row\">Network</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/network-bands.php3\">Technology</a></td>\r\n<td class=\"nfo\"><a class=\"link-network-detail collapse\" href=\"https://www.gsmarena.com/xiaomi_redmi_note_12_pro-11955.php\" data-spec=\"nettech\">GSM / CDMA / HSPA / EVDO / LTE / 5G</a></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'upload/products/thambnail/1760177481517628.jpg', NULL, 1, 1, 1, 1, 1, '2023-03-12 09:47:36', NULL),
(10, 4, 3, 8, 'VIENNA', 'vienna', '991119', '10', 'new product,top product,new', 'L-800 x W-760 x H-695MM ( 300MM= 1Feet)', 'Antique', '18750', '18000', 'The Sofa is made of comfortable and best quality Fabrics/Artificial leather. Best quality Super Soft Foam. Frame & Floor Touch Material: Solid Mahogany Wood and Best quality Plywood. Lacquer: High-quality environment-friendly Italian Ultra Violet (UV), Durable and Anti-Fungal lacquer finish', '<div class=\"right-side-content\">\r\n<div class=\"right-sideNav-menu\" style=\"width: 40%;\">\r\n<div class=\"right-side-content-wrap\">\r\n<h1>Product Details</h1>\r\n<div>\r\n<ul>\r\n<li>The Sofa is made of comfortable and best quality Fabrics/Artificial leather. Best quality Super Soft Foam.</li>\r\n<li>Frame &amp; Floor Touch Material: Solid Mahogany Wood and Best quality Plywood.</li>\r\n<li>Lacquer: High-quality environment-friendly Italian Ultra Violet (UV), Durable and Anti-Fungal lacquer finish</li>\r\n<li>Any assembly or installation required will be done by the Regal team.</li>\r\n<li>Imported high-quality hardware fittings</li>\r\n<li>Indoor use only</li>\r\n<li>Most of our furniture is made of natural components, which will have natural differences in grain construction and occasional minor blemish</li>\r\n<li>All pictures shown are for illustration purposes only. Actual product/ product color may vary due to product enhancement, light shadow effect, deviation of lighting sources, photography, or particular device settings.</li>\r\n<li>Fabrics/ Texture of products may change due to the availability of raw materials or product extension. Please confirm the availability of your desired fabrics/ texture before making an order. You can get confirmation talking over our toll-free number 0800 7777 777( no charge required) or 0961 3737777 (subject to charge applicable by your mobile service operator).</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/products/thambnail/1760186333825951.jpg', '13', 1, 1, 1, 1, 1, '2023-03-12 12:08:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `vendor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_product_id_foreign` (`product_id`),
  KEY `reviews_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `rating`, `status`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 8, 3, 'Very Good Product. I love it..', '5', '1', NULL, '2023-03-16 05:08:39', '2023-03-16 05:14:17'),
(2, 5, 3, 'very very bad product.....blah blaha blaha blhahfohf dshfhf sdhfidhfpoidf sdh', '1', '1', 12, '2023-03-16 05:10:50', '2023-03-16 05:14:28'),
(3, 6, 3, 'good product', '4', '1', 2, '2023-03-16 05:27:59', '2023-03-16 05:45:44'),
(4, 6, 3, 'dflkjdljflsakdmf o fodjfojsofjofjosa osadjfosdj fosdjfoajsodjpo dfodfjod', '3', '1', 2, '2023-03-16 05:29:15', '2023-03-16 05:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', '2023-03-17 14:43:50', '2023-03-17 14:43:50'),
(2, 'Admin', 'web', '2023-03-17 14:44:07', '2023-03-17 14:44:07'),
(3, 'CEO', 'web', '2023-03-17 14:44:22', '2023-03-17 14:44:22'),
(4, 'Account', 'web', '2023-03-17 14:44:41', '2023-03-17 14:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(2, 4),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(16, 3),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(19, 3),
(20, 1),
(20, 2),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(42, 3),
(43, 1),
(44, 1),
(44, 3),
(45, 1),
(45, 4),
(46, 1),
(46, 3),
(47, 1),
(48, 1),
(49, 1),
(49, 4),
(51, 1),
(51, 3),
(51, 4);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE IF NOT EXISTS `seos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_author` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'M Transport Agency', 'M Transport Agency', 'car, travelocity, trip, travel agency, destination, package, travel channel, budget travel, travel sites', 'Bangladesh\'s best online travel agency at resounding discounts in dhaka, ctg & All across Bangladesh', NULL, '2023-10-02 04:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `paragraph` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `paragraph`, `created_at`, `updated_at`) VALUES
(1, '<i class=\"fa-solid fa-car\"></i>', 'xyz', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', NULL, NULL),
(2, '<i class=\"fa-solid fa-car-on\"></i>', 'City Transfer', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', NULL, '2023-10-01 06:32:11'),
(3, '<i class=\"fa-solid fa-car-side\"></i>', 'Airport Transfer', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', NULL, NULL),
(4, '<i class=\"fa-solid fa-car-burst\"></i>', 'Whole City Tour', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', NULL, NULL),
(5, '<i class=\"fa-solid fa-star\"></i>', 'Test', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE IF NOT EXISTS `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Faridpur', NULL, NULL),
(2, 1, 'Gazipur', NULL, NULL),
(3, 1, 'Gopalganj', NULL, NULL),
(4, 2, 'Comilla', NULL, NULL),
(5, 2, 'Cox\'s Bazar', NULL, NULL),
(6, 2, 'Lakshmipur', NULL, NULL),
(7, 2, 'Noakhali', NULL, NULL),
(8, 3, 'Kushtia', NULL, NULL),
(9, 3, 'Magura', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE IF NOT EXISTS `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `division_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', NULL, NULL),
(2, 'Chittagong', NULL, NULL),
(3, 'Khulna', NULL, NULL),
(4, 'Mymensingh', NULL, NULL),
(5, 'Rajshahi', NULL, NULL),
(6, 'Rangpur', NULL, NULL),
(7, 'Sylhet', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE IF NOT EXISTS `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Charbhadrasan Upazila', NULL, NULL),
(2, 1, 1, 'Faridpur Sadar Upazila', NULL, NULL),
(3, 1, 1, 'Madhukhali Upazila', NULL, NULL),
(4, 1, 2, 'Gazipur Sadar upazila', NULL, NULL),
(5, 1, 2, 'Kaliakair Upazila', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `logo_name` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `imo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo_name`, `address`, `phone`, `whatsapp`, `imo`, `email`, `created_at`, `updated_at`) VALUES
(1, 'M Transport Agency', 'Sahajibazar,Madhobpur,Habigonj', '+8801675788112', '+8801675788112', '+8801675788112', 'mahbub908809@gmail.com', NULL, '2023-10-02 05:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slider_title` varchar(255) NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `short_title`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, '11this is our slider one title', '11this is our slider one Short title', 'upload/slider/1760179239613758.png', NULL, '2023-03-12 10:15:34'),
(2, 'nice some tiing test in there', 'Course Name One', 'upload/slider/1760179259598551.png', NULL, '2023-03-12 10:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `paragraph` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `name`, `paragraph`, `created_at`, `updated_at`) VALUES
(1, 'upload/testimonial/1778538427251131.jpg', 'Keanu Reeves', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', NULL, NULL),
(2, 'upload/testimonial/1778538507151957.jpg', 'Jennifer Lawrence', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', NULL, NULL),
(3, 'upload/testimonial/1778539073513131.jpg', 'Robin Williams', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', NULL, NULL),
(4, 'upload/testimonial/1778539105324239.jpg', 'Julia Roberts', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `vendor_join` varchar(255) DEFAULT NULL,
  `vendor_short_info` text DEFAULT NULL,
  `role` enum('admin','vendor','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `last_seen` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `vendor_join`, `vendor_short_info`, `role`, `status`, `last_seen`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@admin.com', NULL, '$2y$10$322BWXQ739HLMpgEB6cj5.4P7UhKeMlyqyszzBXck/wVO4kUuslHO', '202303091956202207202021download.jpg', '01624823163', 'Dhaka, Bangladesh', NULL, NULL, 'admin', 'active', '2023-12-29 19:52:17', NULL, NULL, '2023-12-29 13:52:17'),
(2, 'Nest Food.,Ltd', 'vendor', 'vendor@vendor.com', NULL, '$2y$10$iecuzCBo8/B1g4ELGk0ybufHLrRHLFXiuwsvsjTAeDjGejz4Ki/n2', '202303101612202207212102vendor-16 (1).png', '540-025-124553', 'Campbell Ave undefined', '2023', 'Got a smooth, buttery spread in your fridge? Chances are good that it\'s Good Chef. This brand made Lionto\'s list of the most popular grocery brands across the country.', 'vendor', 'active', '2023-03-16 11:47:08', NULL, NULL, '2023-03-16 05:47:08'),
(3, 'User', 'user', 'user@user.com', NULL, '$2y$10$Of2jNvyjQsC1N7cF0jLWSeX/v/LQBikFnqvI26PL1rAmS8mtEB3gG', '2023031106262022082912100bfc3c5b20c439c4972383592e1c26bc.jpg', '540-025-124553', 'Dhaka, Bangladesh', NULL, NULL, 'user', 'active', '2023-03-18 16:08:45', NULL, NULL, '2023-03-18 10:08:45'),
(12, 'Walton', 'walton', 'walton@gmail.com', NULL, '$2y$10$OmjMRJtFqdiJvO7ftmXh1exPgf/Ec9ilTQycx6BZW82jXgs51B2TG', '202303120511202207291913121859823-male-avatar-icon-or-portrait-handsome-young-man-face-with-beard-vector-illustration-.jpg', '540-025-124553', 'India', '2023', 'dfasdfsd sdfsdf sdfsdfsdf', 'vendor', 'active', NULL, NULL, NULL, '2023-03-11 23:49:28'),
(13, 'Sony', 'sony', 'sony@gmail.com', NULL, '$2y$10$NVIPMEpBzQzW5H7R1.pNjOjkV2wbHNXQaZBol2rBn6X1VS.wonxhq', NULL, '34343434', NULL, '2023', NULL, 'vendor', 'active', NULL, NULL, NULL, '2023-03-11 23:50:56'),
(14, 'Expart Fashion', 'expart', 'expart@gmail.com', NULL, '$2y$10$.3/xnL/Pscpyrtbdx.MHr.87OsNVRuRLC3mIQS75.DlYcjcnNdc.O', NULL, '122343252', NULL, '2023', NULL, 'vendor', 'active', NULL, NULL, NULL, '2023-03-12 22:49:38'),
(16, 'Demo', 'demo', 'demo@demo.com', NULL, '$2y$10$Rm8yfSdCVMNANmGb4cwKDuO0OiQp5DACT1KRh1rcSroGjsGkFHFha', NULL, '12345', 'Dhaka, Bangladesh', NULL, NULL, 'admin', 'active', '2023-03-18 13:17:18', NULL, '2023-03-18 07:03:01', '2023-03-18 07:17:18'),
(17, 'Demo User', NULL, 'demouser@gmail.com', NULL, '$2y$10$uOMGa7lRA7WLqY4zlndef.Lfvnu69iHvsMoM.ut3HIT9Q9dmplXsW', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, NULL, '2023-03-18 09:27:12', '2023-03-18 09:27:12'),
(18, 'Demo Shop', 'Demo Vendor', 'demovendor@gmail.com', NULL, '$2y$10$PkkaQXkiDuDFPuan8Ji8uuKZTPa6fRSN3ULO5aXoaTw6ibXxnM2ry', NULL, '12345', NULL, '2023', NULL, 'vendor', 'active', '2023-03-18 16:01:58', NULL, NULL, '2023-03-18 10:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_rentals`
--

CREATE TABLE IF NOT EXISTS `vehicle_rentals` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `rate` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_rentals`
--

INSERT INTO `vehicle_rentals` (`id`, `image`, `name`, `details`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'upload/vehicleRental/1778711044551824.jpg', 'Toyota Corolla X 2006', 'Model No : S490\n<br>\nIngine No : 5wp7e73289\n<br>\nChassis No : 89789\n<br>\nDriver Number : +8801704297974\n<br>\nSeating Capacity : 17\n<br>\nOwner Name : Md Shaiful Islam', '4000', NULL, '2023-10-02 23:31:12'),
(2, 'upload/vehicleRental/1778712448449544.jpg', 'Honda Vezel 2014', 'Model No : S490\n<br>\nIngine No : 5wp7e73289\n<br>\nChassis No : 89789\n<br>\nDriver Number : +8801704297974\n<br>\nSeating Capacity : 17\n<br>\nOwner Name : Md Shaiful Islam', '2500', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
