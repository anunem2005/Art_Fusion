-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2025 at 09:17 AM
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
-- Database: `artfusion`
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
('15d8671e881778a1c15d7a56c24870f3', 'i:1;', 1738569481),
('15d8671e881778a1c15d7a56c24870f3:timer', 'i:1738569481;', 1738569481),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1738569893),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1738569893;', 1738569893);

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
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(7, 4, 4, 2, '2025-02-02 03:31:12', '2025-02-02 03:31:12'),
(20, 2, 2, 1, '2025-02-03 00:43:13', '2025-02-03 00:43:13');

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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"5302fa42-8175-4f06-b230-7c7624b74b4d\",\"displayName\":\"App\\\\Listeners\\\\SavePurchaseDataToFirebase\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:40:\\\"App\\\\Listeners\\\\SavePurchaseDataToFirebase\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:27:\\\"App\\\\Events\\\\ProductPurchased\\\":1:{s:5:\\\"order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1738540201, 1738540201),
(2, 'default', '{\"uuid\":\"057e12bf-439d-4a12-a5f4-f4a0797a6993\",\"displayName\":\"App\\\\Listeners\\\\SavePurchaseDataToFirebase\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:40:\\\"App\\\\Listeners\\\\SavePurchaseDataToFirebase\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:27:\\\"App\\\\Events\\\\ProductPurchased\\\":1:{s:5:\\\"order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1738552799, 1738552799),
(3, 'default', '{\"uuid\":\"b0c2258e-f4aa-4c98-a627-3249b0c3f43e\",\"displayName\":\"App\\\\Listeners\\\\SavePurchaseDataToFirebase\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:40:\\\"App\\\\Listeners\\\\SavePurchaseDataToFirebase\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:27:\\\"App\\\\Events\\\\ProductPurchased\\\":1:{s:5:\\\"order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:22;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1738552809, 1738552809),
(4, 'default', '{\"uuid\":\"422ded03-8212-4000-ab95-ea24cac2973f\",\"displayName\":\"App\\\\Listeners\\\\SavePurchaseDataToFirebase\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:40:\\\"App\\\\Listeners\\\\SavePurchaseDataToFirebase\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:27:\\\"App\\\\Events\\\\ProductPurchased\\\":1:{s:5:\\\"order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1738552837, 1738552837),
(5, 'default', '{\"uuid\":\"feb9be6e-fe88-4202-a585-57bb1bc4c866\",\"displayName\":\"App\\\\Listeners\\\\SavePurchaseDataToFirebase\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:40:\\\"App\\\\Listeners\\\\SavePurchaseDataToFirebase\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:27:\\\"App\\\\Events\\\\ProductPurchased\\\":1:{s:5:\\\"order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1738555225, 1738555225),
(6, 'default', '{\"uuid\":\"0e5358ca-6329-45db-bccd-8c17fe2cf7d7\",\"displayName\":\"App\\\\Listeners\\\\SavePurchaseDataToFirebase\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:40:\\\"App\\\\Listeners\\\\SavePurchaseDataToFirebase\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:27:\\\"App\\\\Events\\\\ProductPurchased\\\":1:{s:5:\\\"order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1738556431, 1738556431),
(7, 'default', '{\"uuid\":\"d7f54106-1d72-4c44-9c8b-bd81bbdc8322\",\"displayName\":\"App\\\\Listeners\\\\SavePurchaseDataToFirebase\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:40:\\\"App\\\\Listeners\\\\SavePurchaseDataToFirebase\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:27:\\\"App\\\\Events\\\\ProductPurchased\\\":1:{s:5:\\\"order\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:16:\\\"App\\\\Models\\\\Order\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1738557318, 1738557318);

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
(4, '2025_01_31_052900_add_two_factor_columns_to_users_table', 1),
(5, '2025_01_31_052932_create_personal_access_tokens_table', 1),
(6, '2025_01_31_073300_create_products_table', 1),
(7, '2025_01_31_100010_create_carts_table', 1),
(8, '2025_01_31_100315_create_orders_table', 1),
(9, '2025_01_31_100445_create_order_items_table', 1),
(10, '2025_01_31_100626_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `grandtotal` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `grandtotal`, `payment_method`, `currency`, `created_at`, `updated_at`) VALUES
(5, 5, 12000.00, 'cash_on_delivery', 'LKR', '2025-02-02 07:34:50', '2025-02-02 07:34:50'),
(6, 5, 0.00, 'cash_on_delivery', 'LKR', '2025-02-02 07:34:51', '2025-02-02 07:34:51'),
(7, 5, 12000.00, 'credit_card', 'LKR', '2025-02-02 07:36:39', '2025-02-02 07:36:39'),
(8, 5, 22500.00, 'credit_card', 'LKR', '2025-02-02 07:38:27', '2025-02-02 07:38:27'),
(9, 5, 7500.00, 'credit_card', 'LKR', '2025-02-02 07:39:36', '2025-02-02 07:39:36'),
(10, 5, 30000.00, 'credit_card', 'LKR', '2025-02-02 17:19:48', '2025-02-02 17:19:48'),
(11, 5, 30000.00, 'credit_card', 'LKR', '2025-02-02 17:31:41', '2025-02-02 17:31:41'),
(12, 5, 30000.00, 'credit_card', 'LKR', '2025-02-02 17:31:59', '2025-02-02 17:31:59'),
(13, 5, 30000.00, 'credit_card', 'LKR', '2025-02-02 17:32:09', '2025-02-02 17:32:09'),
(14, 5, 30000.00, 'credit_card', 'LKR', '2025-02-02 17:38:26', '2025-02-02 17:38:26'),
(15, 5, 30000.00, 'credit_card', 'LKR', '2025-02-02 17:46:37', '2025-02-02 17:46:37'),
(16, 5, 30000.00, 'credit_card', 'LKR', '2025-02-02 17:48:14', '2025-02-02 17:48:14'),
(17, 5, 30000.00, 'credit_card', 'LKR', '2025-02-02 17:48:28', '2025-02-02 17:48:28'),
(18, 5, 30000.00, 'credit_card', 'LKR', '2025-02-02 17:49:11', '2025-02-02 17:49:11'),
(19, 5, 22500.00, 'paypal', 'LKR', '2025-02-02 17:49:58', '2025-02-02 17:49:58'),
(20, 5, 22500.00, 'paypal', 'LKR', '2025-02-02 18:20:01', '2025-02-02 18:20:01'),
(21, 5, 25500.00, 'credit_card', 'LKR', '2025-02-02 21:49:56', '2025-02-02 21:49:56'),
(22, 5, 0.00, 'paypal', 'LKR', '2025-02-02 21:50:09', '2025-02-02 21:50:09'),
(23, 5, 7500.00, 'paypal', 'LKR', '2025-02-02 21:50:37', '2025-02-02 21:50:37'),
(24, 2, 7500.00, 'credit_card', 'LKR', '2025-02-02 22:30:25', '2025-02-02 22:30:25'),
(25, 2, 7500.00, 'credit_card', 'LKR', '2025-02-02 22:50:30', '2025-02-02 22:50:30'),
(26, 2, 7500.00, 'paypal', 'LKR', '2025-02-02 23:05:18', '2025-02-02 23:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `shipping_address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `fullname`, `email`, `phone`, `shipping_address`, `created_at`, `updated_at`) VALUES
(2, 5, 'Test', 'test@gmail.com', '0756335870', 'Kandy, Sri Lanka', '2025-02-02 07:34:50', '2025-02-02 07:34:50'),
(3, 6, 'Test', 'test@gmail.com', '0756335870', 'Kandy, Sri Lanka', '2025-02-02 07:34:51', '2025-02-02 07:34:51'),
(4, 7, 'Test', 'test@gmail.com', '0756335870', 'kandy', '2025-02-02 07:36:39', '2025-02-02 07:36:39'),
(5, 8, 'anuj', 'kfnkws@gmail.com', '358672498u0`', 'kandy', '2025-02-02 07:38:27', '2025-02-02 07:38:27'),
(6, 9, 'Test', 'nemsith13@gmail.com', '0756335870', 'kandy', '2025-02-02 07:39:36', '2025-02-02 07:39:36'),
(7, 20, 'anuja', 'test@gmail.com', '358672498', 'Kandy', '2025-02-02 18:20:01', '2025-02-02 18:20:01'),
(8, 21, 'anuja', 'nemsith13@gmail.com', '35867249', 'kandy', '2025-02-02 21:49:59', '2025-02-02 21:49:59'),
(9, 22, 'anuja', 'nemsith13@gmail.com', '35867249', 'kandy', '2025-02-02 21:50:09', '2025-02-02 21:50:09'),
(10, 23, 'anuja', 'test@gmail.com', '35867249', 'Kandy', '2025-02-02 21:50:37', '2025-02-02 21:50:37'),
(11, 24, 'anuja', 'test@gmail.com', '35867249', 'kandy', '2025-02-02 22:30:25', '2025-02-02 22:30:25'),
(12, 25, 'anuja', 'test@gmail.com', '35867249', 'Kandy', '2025-02-02 22:50:31', '2025-02-02 22:50:31'),
(13, 26, 'anuja', 'test@gmail.com', '35867249', 'kandy', '2025-02-02 23:05:18', '2025-02-02 23:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `unit_amount` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `unit_amount`, `total_amount`, `created_at`, `updated_at`) VALUES
(2, 5, 1, 1, 12000.00, 12000.00, '2025-02-02 07:34:50', '2025-02-02 07:34:50'),
(3, 7, 1, 1, 12000.00, 12000.00, '2025-02-02 07:36:39', '2025-02-02 07:36:39'),
(4, 8, 2, 3, 7500.00, 22500.00, '2025-02-02 07:38:27', '2025-02-02 07:38:27'),
(5, 9, 2, 1, 7500.00, 7500.00, '2025-02-02 07:39:36', '2025-02-02 07:39:36'),
(6, 20, 2, 1, 7500.00, 7500.00, '2025-02-02 18:20:01', '2025-02-02 18:20:01'),
(7, 20, 3, 2, 7500.00, 15000.00, '2025-02-02 18:20:01', '2025-02-02 18:20:01'),
(8, 21, 5, 2, 9000.00, 18000.00, '2025-02-02 21:49:59', '2025-02-02 21:49:59'),
(9, 21, 2, 1, 7500.00, 7500.00, '2025-02-02 21:49:59', '2025-02-02 21:49:59'),
(10, 23, 2, 1, 7500.00, 7500.00, '2025-02-02 21:50:37', '2025-02-02 21:50:37'),
(11, 24, 2, 1, 7500.00, 7500.00, '2025-02-02 22:30:25', '2025-02-02 22:30:25'),
(12, 25, 2, 1, 7500.00, 7500.00, '2025-02-02 22:50:31', '2025-02-02 22:50:31'),
(13, 26, 2, 1, 7500.00, 7500.00, '2025-02-02 23:05:18', '2025-02-02 23:05:18');

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
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`images`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `images`, `created_at`, `updated_at`) VALUES
(1, 'Metropolis Dreams', 'A modern, urban-inspired piece featuring abstract geometric shapes and bold colors. It captures the energy and dynamism of a busy city, representing the dreams, aspirations, and complexities of life in a fast-paced world.', 12000.00, '\"products\\/01JJXNZSENNM0N9YFJT8BM6F4J.png\"', '2025-01-31 02:30:11', '2025-01-31 11:42:40'),
(2, 'Van gogh on dark water', 'some description ', 7500.00, '\"products\\/01JJYHGY2A2GZ9Z3953EX4B7TX.jpg\"', '2025-01-31 10:31:25', '2025-01-31 10:31:25'),
(3, 'Soul’s Reflection', 'A deep and introspective portrait, this piece portrays the human soul through the use of light and shadow. The abstract representation of a face made from fluid lines invites viewers to reflect on their own inner thoughts and emotions.', 7500.00, '\"products\\/01JJYNNP2DD1H9CPHSERCWJP0Q.jpg\"', '2025-01-31 11:43:55', '2025-01-31 11:43:55'),
(4, 'Sea Waves', 'This captivating piece captures the ever-changing rhythm of the ocean. The crashing waves are painted with dynamic brush strokes, reflecting the powerful energy of the sea. Shades of deep blue, turquoise, and white swirl together, symbolizing the constant movement and ebb of the tides. The piece invites the viewer to feel the calming yet forceful nature of the ocean, as the waves roll endlessly toward the shore, carrying with them a sense of both tranquility and awe.', 9000.00, '\"products\\/01JJYNS8EZSH50N04NFXRHJ3AD.jpg\"', '2025-01-31 11:45:52', '2025-01-31 11:45:52'),
(5, 'Eternal Horizon', 'This abstract piece represents the vastness of the universe, where the horizon stretches into infinity. The vibrant colors symbolize the endless potential and beauty of the cosmos, with shades of deep blue, gold, and purple capturing the mystery of the unknown.', 9000.00, '\"products\\/01JJYNV065TWC6A8NJWAMBKHWZ.jpg\"', '2025-01-31 11:46:49', '2025-01-31 11:46:49'),
(6, 'Golden Fields', 'A serene landscape that captures the simple beauty of rural life. The golden fields stretch under a vast sky, with soft sunlight casting long shadows across the rolling hills. The painting evokes feelings of warmth, hard work, and connection to the earth.', 8900.00, '\"products\\/01JJYP03V3PPVV7HN0MC1KZMD7.jpg\"', '2025-01-31 11:49:36', '2025-01-31 11:49:36'),
(7, 'Whispers of the Woods', 'A tranquil yet mysterious scene from a dense forest, where ancient trees stand tall and the underbrush teems with life. Light filters through the leaves, casting dappled shadows on the forest floor. The painting beckons the viewer to immerse themselves in the calm yet untamed spirit of nature.', 5400.00, '\"products\\/01JJYP3XCAEA622JSWDAYK5YK9.jpg\"', '2025-01-31 11:51:41', '2025-01-31 11:51:41'),
(8, 'Endless Horizons', 'The vast, open sea stretches to the horizon, where the sky and water blend into a seamless expanse. Soft waves ripple across the surface, with seagulls soaring high above. This piece captures the infinite possibilities that the sea represents—freedom, adventure, and the beauty of the unknown.', 15000.00, '\"products\\/01JJYP57WNJ4BHZ7YBPE6K4H56.jpg\"', '2025-01-31 11:52:24', '2025-01-31 11:52:24'),
(9, 'Silent Reflections', 'A serene lake, perfectly still, mirrors the sky above. The soft colors of dawn or dusk bathe the water in a peaceful glow. The painting captures the essence of solitude and the profound stillness that nature can provide, making the viewer feel as though they are floating in a world of calm.\n\n', 7650.00, '\"products\\/01JJYP6FXKG6FND0ZSS3AWQZ52.jpg\"', '2025-01-31 11:53:05', '2025-01-31 11:53:05'),
(10, 'Flowing Grace', 'A winding river carves its way through a lush landscape, its water glistening in the sun. The gentle flow of the river symbolizes the passage of time, while the surrounding nature teems with life. The piece evokes a sense of continuous movement, renewal, and connection with nature.', 9800.00, '\"products\\/01JJYP8AH4A282MFRA10RY19RK.jpg\"', '2025-01-31 11:54:05', '2025-01-31 11:54:05'),
(11, 'Never ending bonds', 'Figures engage in a quiet but intense conversation, their body language expressing the depth of their connection. The background is blurred, allowing the viewer to focus on the emotional exchange. This piece captures the nuances of human interaction, illustrating that sometimes words are less important than the feelings conveyed.', 7500.00, '\"products\\/01JJYPA3GQ29M1CM9TPTTWSJW6.jpg\"', '2025-01-31 11:55:04', '2025-01-31 11:55:04'),
(12, 'Enduring Love', 'A heartfelt portrayal of a family walking, their love and unity shining through despite the struggles of poverty. The simple details—worn clothes, a humble table, and children’s smiles—tell the story of resilience and the strength of familial bonds in the face of hardship. The piece is both poignant and uplifting, showing that love transcends material wealth.', 9800.00, '\"products\\/01JJYPC6MMBZ8JW1GV6AJP5MCV.jpg\"', '2025-01-31 11:56:12', '2025-01-31 11:56:12');

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
('l2QJkFm92UZOeaA2IjUAmKVfDItEN9h2kpTn4mdS', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 OPR/115.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidGdxSlVnRzRpY05tcW05VEd0ZjhPWUxUNXA2cjROa1BWdmd3WmRieCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkNTdpLmcyMnE5bU9NRlV4dVJWSm9GZXJHTWdZOTFrV280R1FFUE9zS2dlTlFJeXpreUJqTEMiO30=', 1738570323),
('q3SdNJf2dB8p6sdGz5UcFkuL2qtN414Y0VOW2lZm', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGNKUXhqOGNDazdMTlJxMkw5eXNETXBIYVhvYXlRSDdtWmdTYlJkVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1738569427);

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
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Anuja', 'anuja@gmail.com', NULL, '$2y$12$MzWTtVtrOjaD4wBBT4AfR.QrkRi2WHFFcv/E31J5gJroilcVLuIvO', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-31 00:33:58', '2025-01-31 00:33:58'),
(2, 'admin', 'admin@artfusion.com', NULL, '$2y$12$57i.g22q9mOMFUxuRVJoFerGMgY91kWo4GQEPOsKgeNQIyzkyBjLC', NULL, NULL, NULL, '7qVQjen3UZCMUXCFDj3JQvKrHPC4P8Ob2Xw2Rb5nVCNHCMzv25P1T6Xxd3aa', NULL, NULL, '2025-01-31 01:27:34', '2025-01-31 01:27:34'),
(3, 'Test User', 'test@example.com', '2025-02-02 01:59:04', '$2y$12$IdIa2rkaOSVQaSzA559bu./RDSqbk3EFVOCA7UmYtdvw3iJrhBbS6', NULL, NULL, NULL, '11S5qtKKOY', NULL, NULL, '2025-02-02 01:59:04', '2025-02-02 01:59:04'),
(4, 'Anuja', 'nemsith13@gmail.com', NULL, '$2y$12$jhCIV7Uh5e.BWtmo2BlUaePUONIPcEg9.gNAQs/y7izOJx29z2UOS', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-02 03:31:00', '2025-02-02 03:31:00'),
(5, 'test', 'test@gmail.com', NULL, '$2y$12$DA2SdmXTE1AyUiB8wqHjve3UZPcIL9PsSkLYj82eQfR12KemgPpsa', NULL, NULL, NULL, 'SPhL4Hppjn3Qj9aRcbWyE0kJ2UilNufXKEk94QFMa4h6YTNFo1k6ZddmADZc', NULL, NULL, '2025-02-02 07:33:54', '2025-02-02 07:33:54');

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
