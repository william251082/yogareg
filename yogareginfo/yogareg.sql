-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2018 at 04:27 PM
-- Server version: 5.6.38-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `yogaregdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unavailable',
  `participants` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `status`, `participants`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'est', 'Laboriosam consequatur est fuga nulla aut. Enim aspernatur est ea necessitatibus et.', 'unavailable', 9, '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(2, 'saepe', 'Blanditiis saepe repellat sunt blanditiis.', 'available', 10, '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(3, 'modi', 'Labore voluptatibus sit quo pariatur rerum nulla.', 'available', 1, '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(4, 'explicabo', 'Quam numquam et voluptates et modi reiciendis et.', 'unavailable', 4, '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(5, 'id', 'Ut veniam aut sint voluptate consequuntur eius esse.', 'available', 1, '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(6, 'placeat', 'Exercitationem sed deleniti repudiandae perspiciatis repellat repellendus. Ut reprehenderit non quod eos et inventore maxime incidunt.', 'available', 5, '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(7, 'iure', 'Fugiat quo eveniet tenetur nostrum quidem.', 'unavailable', 6, '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(8, 'qui', 'Accusamus sed aut cumque eos corrupti sit in. Rerum consequuntur vitae exercitationem enim itaque ullam.', 'available', 5, '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(9, 'voluptate', 'Odit possimus eos odio quia aspernatur in aspernatur.', 'unavailable', 8, '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(10, 'optio', 'Dicta mollitia facilis dignissimos corrupti itaque laborum.', 'unavailable', 4, '2018-06-12 12:11:34', '2018-06-12 12:11:34', NULL),
(11, 'necessitatibus', 'Voluptatem maiores dolores voluptate nobis repudiandae. Et labore ducimus labore ut fugit magni magnam.', 'unavailable', 4, '2018-06-12 12:11:34', '2018-06-12 12:11:34', NULL),
(12, 'est', 'Rem aut fugit est nemo aut sint.', 'unavailable', 6, '2018-06-12 12:11:34', '2018-06-12 12:11:34', NULL),
(13, 'tempore', 'Distinctio dignissimos ipsam est ut.', 'available', 1, '2018-06-12 12:11:34', '2018-06-12 12:11:34', NULL),
(14, 'reprehenderit', 'Nam et voluptas aliquam rerum praesentium porro. Impedit illo et accusantium quia hic qui.', 'unavailable', 8, '2018-06-12 12:11:34', '2018-06-12 12:11:34', NULL),
(15, 'accusamus', 'Occaecati fuga doloremque qui dolore doloremque laudantium.', 'available', 7, '2018-06-12 12:11:34', '2018-06-12 12:11:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_product`
--

CREATE TABLE `group_product` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_product`
--

INSERT INTO `group_product` (`group_id`, `product_id`) VALUES
(2, 1),
(11, 1),
(3, 2),
(6, 2),
(10, 2),
(5, 3),
(7, 3),
(12, 3),
(4, 4),
(9, 4),
(14, 4),
(4, 5),
(9, 5),
(15, 5),
(1, 6),
(3, 7),
(15, 7),
(4, 8),
(10, 8),
(10, 9),
(13, 9),
(5, 10),
(6, 11),
(9, 11),
(3, 12),
(8, 12),
(9, 12),
(15, 12),
(14, 13),
(3, 14),
(6, 14),
(8, 14),
(12, 14),
(14, 14),
(2, 15),
(8, 15),
(4, 16),
(5, 16),
(6, 16),
(9, 16),
(4, 17),
(8, 17),
(9, 17),
(13, 17),
(14, 17),
(5, 18),
(7, 18),
(1, 19),
(2, 19),
(15, 20),
(9, 21),
(5, 22),
(7, 22),
(10, 22),
(12, 22),
(15, 22),
(1, 23),
(3, 23),
(6, 23),
(5, 24),
(3, 25),
(7, 25),
(9, 25),
(6, 26),
(7, 26),
(1, 27),
(4, 27),
(9, 27),
(11, 27),
(15, 27),
(6, 28),
(7, 28),
(11, 28),
(12, 28),
(13, 28),
(5, 29),
(7, 29),
(9, 29),
(15, 29),
(3, 30),
(4, 30),
(10, 30),
(3, 31),
(6, 31),
(6, 32),
(9, 32),
(12, 32),
(2, 33),
(3, 33),
(13, 33),
(3, 34),
(4, 34),
(11, 34),
(12, 34),
(15, 34),
(2, 35),
(3, 35),
(6, 35),
(11, 35),
(15, 35),
(6, 36),
(11, 36),
(12, 36),
(13, 36),
(14, 36),
(1, 37),
(3, 37),
(9, 37),
(4, 38),
(13, 38),
(1, 39),
(10, 39),
(13, 39),
(15, 39),
(3, 40),
(2, 41),
(4, 41),
(6, 41),
(12, 41),
(6, 42),
(10, 42),
(12, 42),
(15, 42),
(11, 43),
(3, 44),
(4, 44),
(13, 44),
(9, 45),
(12, 45),
(14, 45),
(15, 45),
(5, 46),
(15, 46),
(15, 47),
(6, 48),
(10, 48),
(14, 48),
(2, 49),
(3, 49),
(4, 49),
(5, 49),
(7, 49),
(2, 50),
(10, 50),
(13, 50);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_11_223149_create_sessions_table', 1),
(4, '2018_06_12_000532_create_groups_table', 1),
(5, '2018_06_12_000548_create_products_table', 1),
(6, '2018_06_12_000608_create_transactions_table', 1),
(7, '2018_06_12_001542_group_product_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unavailable',
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `quantity`, `status`, `level`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'nihil', 'Ipsum vel asperiores repellat hic minima fuga. Laudantium et veniam iusto facilis consectetur unde.', 5, 'available', '2', 4, '2018-06-12 12:11:37', '2018-06-12 12:11:37', NULL),
(2, 'modi', 'Illo soluta suscipit optio repudiandae. Et sunt odio voluptas consequatur eos doloremque.', 2, 'unavailable', '3', 35, '2018-06-12 12:11:37', '2018-06-12 12:11:37', NULL),
(3, 'ut', 'Molestias nemo a occaecati ipsa provident eaque.', 2, 'unavailable', '2', 13, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(4, 'adipisci', 'Et necessitatibus veritatis delectus rem.', 8, 'unavailable', '4', 16, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(5, 'id', 'Quisquam explicabo reiciendis aut voluptatibus pariatur ipsa ut.', 2, 'unavailable', '1', 11, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(6, 'molestiae', 'Aut qui voluptas qui voluptatem sint deserunt et.', 6, 'available', '2', 1, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(7, 'et', 'Numquam modi quos sed optio sit explicabo in soluta.', 10, 'available', '3', 33, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(8, 'dolorem', 'Quibusdam fugit sunt est id dolores aut vitae. Modi vel illum non voluptatem aut vitae recusandae.', 8, 'unavailable', '1', 25, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(9, 'reiciendis', 'Voluptatem soluta voluptatum cum et totam ea. Aut voluptatem quis veniam sed.', 10, 'available', '2', 26, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(10, 'fuga', 'Ipsam officia tenetur quo soluta voluptatum consequatur. Accusantium sed corporis distinctio sunt et doloremque.', 7, 'available', '3', 36, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(11, 'aspernatur', 'Et quia sed reprehenderit qui.', 8, 'unavailable', '3', 11, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(12, 'inventore', 'Aut quos voluptatibus autem sapiente dolor sed aliquid. Autem sunt qui necessitatibus dolor quidem.', 4, 'available', '3', 9, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(13, 'minus', 'Autem laboriosam pariatur consequatur amet nostrum dolorem. Corporis tempora ab tempore voluptatum.', 7, 'unavailable', '1', 5, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(14, 'amet', 'Qui perspiciatis provident minima soluta magnam rerum iure. Eos sunt a quia veniam excepturi possimus.', 7, 'unavailable', '2', 33, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(15, 'in', 'Sunt asperiores non et dolorem nesciunt. Perspiciatis illo praesentium eius.', 5, 'unavailable', '1', 6, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(16, 'delectus', 'Officia reiciendis qui aut officia. Non laborum recusandae itaque odit quod qui.', 3, 'available', '2', 18, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(17, 'qui', 'Dolor et nesciunt aspernatur nihil voluptate atque quos porro. Et in voluptas quam vel nostrum.', 6, 'available', '1', 43, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(18, 'harum', 'Ut commodi placeat corporis quaerat. Eos rerum ducimus voluptatem rerum recusandae vitae velit laborum.', 2, 'available', '2', 15, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(19, 'dolorem', 'Distinctio quod eos possimus commodi quidem quia labore quam. Voluptate esse quo unde nobis repellendus.', 10, 'available', '1', 38, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(20, 'cupiditate', 'Et et ea ipsum omnis officia amet sit at.', 9, 'available', '1', 47, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(21, 'similique', 'Quasi est quibusdam exercitationem voluptatem. Amet laboriosam et nisi nesciunt.', 4, 'available', '1', 21, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(22, 'sed', 'Esse fugiat reprehenderit a vero assumenda est voluptas. Nostrum veniam vero blanditiis.', 5, 'unavailable', '4', 30, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(23, 'saepe', 'Quasi ut molestias exercitationem natus reiciendis quo quam. Repellendus officiis exercitationem omnis eius.', 6, 'available', '1', 29, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(24, 'pariatur', 'Corporis alias consequatur voluptas commodi.', 6, 'available', '3', 32, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(25, 'error', 'Non deserunt labore nulla dolore temporibus ducimus.', 4, 'unavailable', '3', 1, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(26, 'ea', 'Quae velit aliquam non atque velit exercitationem impedit.', 2, 'unavailable', '1', 13, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(27, 'voluptatibus', 'Natus id ad id velit dolores voluptatem quis. Quis est dolorem et.', 3, 'available', '2', 35, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(28, 'voluptate', 'Sed aliquam possimus et possimus autem labore quo.', 1, 'unavailable', '2', 32, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(29, 'dolore', 'Vitae vel sed earum consequuntur praesentium. Harum modi est assumenda.', 5, 'unavailable', '1', 10, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(30, 'quaerat', 'Eos ea alias illum ad recusandae est veritatis aut.', 3, 'available', '4', 16, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(31, 'eos', 'Nam unde illo sed.', 7, 'available', '2', 42, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(32, 'laboriosam', 'Natus aut eligendi sequi est. Ut quod rerum ad expedita distinctio reiciendis.', 10, 'available', '2', 37, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(33, 'velit', 'Magni id in sunt totam accusantium.', 8, 'unavailable', '4', 7, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(34, 'voluptatibus', 'Nihil et aut cumque dicta et quidem vero.', 4, 'available', '2', 49, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(35, 'consequatur', 'Enim quia sed autem aut quia nesciunt alias voluptas.', 7, 'unavailable', '2', 19, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(36, 'et', 'Quidem doloribus laboriosam sequi soluta. Nihil quia eveniet excepturi ut.', 9, 'unavailable', '1', 21, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(37, 'voluptatem', 'Dolorum perspiciatis aut quis iusto necessitatibus autem.', 7, 'available', '4', 36, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(38, 'facere', 'Dolor velit tenetur explicabo sit velit beatae. Voluptas et eius excepturi et suscipit.', 10, 'available', '3', 41, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(39, 'nam', 'Delectus exercitationem sit vel ullam pariatur nobis dolores. Distinctio et qui et ut.', 2, 'unavailable', '1', 25, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(40, 'et', 'Sed similique delectus dolor.', 2, 'available', '2', 44, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(41, 'sed', 'Sint placeat perferendis asperiores tenetur nihil. Libero placeat fugit amet nulla.', 3, 'available', '1', 5, '2018-06-12 12:11:38', '2018-06-12 12:11:38', NULL),
(42, 'molestiae', 'Maxime autem quas et tempore.', 8, 'available', '2', 28, '2018-06-12 12:11:39', '2018-06-12 12:11:39', NULL),
(43, 'fugit', 'Ea non laudantium et similique sit.', 2, 'unavailable', '1', 11, '2018-06-12 12:11:39', '2018-06-12 12:11:39', NULL),
(44, 'sed', 'Et sit magni iure dolor ut.', 5, 'available', '1', 50, '2018-06-12 12:11:39', '2018-06-12 12:11:39', NULL),
(45, 'omnis', 'Inventore asperiores necessitatibus provident repellat.', 2, 'unavailable', '4', 32, '2018-06-12 12:11:39', '2018-06-12 12:11:39', NULL),
(46, 'laboriosam', 'Laborum cupiditate eligendi aut deleniti rerum velit. Assumenda consequuntur et voluptatem delectus corporis voluptatem.', 3, 'unavailable', '4', 39, '2018-06-12 12:11:39', '2018-06-12 12:11:39', NULL),
(47, 'vel', 'At id repellat animi suscipit ipsum officiis. Ut tenetur doloremque ut totam.', 9, 'available', '4', 35, '2018-06-12 12:11:39', '2018-06-12 12:11:39', NULL),
(48, 'eum', 'Et accusantium temporibus facilis voluptas delectus beatae.', 8, 'unavailable', '1', 21, '2018-06-12 12:11:39', '2018-06-12 12:11:39', NULL),
(49, 'autem', 'Alias voluptas et adipisci ab quia fuga.', 1, 'unavailable', '4', 8, '2018-06-12 12:11:39', '2018-06-12 12:11:39', NULL),
(50, 'quibusdam', 'Odit fugit consequatur adipisci aut. Ad et non natus eveniet magnam.', 4, 'unavailable', '1', 13, '2018-06-12 12:11:39', '2018-06-12 12:11:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `attendance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'present',
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'card',
  `credits` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `attendance`, `payment_method`, `credits`, `customer_id`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'absent', 'cash', 27, 2, 20, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(2, 'present', 'cash', 59, 20, 17, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(3, 'present', 'card', 60, 45, 17, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(4, 'absent', 'cash', 36, 21, 46, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(5, 'present', 'card', 4, 4, 19, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(6, 'absent', 'card', 91, 22, 46, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(7, 'present', 'card', 15, 48, 43, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(8, 'absent', 'cash', 20, 37, 29, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(9, 'present', 'card', 5, 30, 33, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(10, 'absent', 'cash', 55, 3, 17, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(11, 'absent', 'cash', 59, 23, 16, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(12, 'absent', 'card', 55, 10, 26, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(13, 'present', 'cash', 59, 13, 9, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(14, 'absent', 'cash', 31, 50, 50, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(15, 'present', 'card', 81, 35, 18, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(16, 'present', 'cash', 79, 20, 29, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(17, 'absent', 'card', 53, 35, 48, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(18, 'absent', 'card', 32, 45, 10, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(19, 'present', 'card', 73, 39, 19, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(20, 'absent', 'cash', 97, 30, 15, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(21, 'present', 'cash', 46, 17, 43, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(22, 'absent', 'card', 74, 21, 33, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(23, 'absent', 'card', 85, 33, 40, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(24, 'present', 'cash', 86, 3, 20, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(25, 'present', 'card', 2, 27, 45, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(26, 'present', 'cash', 30, 9, 13, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(27, 'present', 'card', 47, 44, 16, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(28, 'present', 'card', 25, 27, 20, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(29, 'absent', 'cash', 62, 4, 22, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(30, 'present', 'card', 53, 32, 8, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(31, 'present', 'card', 98, 8, 16, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(32, 'absent', 'cash', 40, 3, 34, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(33, 'absent', 'card', 77, 18, 27, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(34, 'present', 'card', 47, 40, 40, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(35, 'absent', 'cash', 70, 24, 10, '2018-06-12 12:11:53', '2018-06-12 12:11:53', NULL),
(36, 'absent', 'cash', 63, 5, 49, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL),
(37, 'absent', 'card', 89, 12, 38, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL),
(38, 'present', 'cash', 89, 8, 18, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL),
(39, 'absent', 'cash', 38, 18, 19, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL),
(40, 'absent', 'cash', 50, 27, 44, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL),
(41, 'absent', 'cash', 3, 28, 32, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL),
(42, 'absent', 'card', 48, 14, 22, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL),
(43, 'absent', 'cash', 6, 5, 12, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL),
(44, 'present', 'card', 21, 47, 49, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL),
(45, 'present', 'cash', 47, 49, 41, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL),
(46, 'present', 'cash', 18, 14, 7, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL),
(47, 'absent', 'cash', 55, 17, 14, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL),
(48, 'absent', 'card', 32, 45, 4, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL),
(49, 'present', 'cash', 82, 34, 14, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL),
(50, 'present', 'cash', 90, 35, 33, '2018-06-12 12:11:54', '2018-06-12 12:11:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `verification_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `verified`, `verification_token`, `admin`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'fanny boehm', 'harley67@example.com', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'wahrlyG3A1', '1', NULL, 'true', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(2, 'zachariah spinka iv', 'cale.thiel@example.com', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', '9eG7fDb7v8', '1', NULL, 'false', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(3, 'ms. kelsi crist v', 'asa67@example.com', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', '9jD0scnxkz', '1', NULL, 'true', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(4, 'zachary predovic phd', 'sauer.ally@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', '7Hz6koejA3', '1', NULL, 'false', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(5, 'creola orn', 'schroeder.dewitt@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'Ga6lwJJcNt', '1', NULL, 'true', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(6, 'garth runte', 'nhodkiewicz@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'WVRzyQNnaO', '0', 'g75FqBhlDjXnFTh2Op1ISAlU94qc9afhYPkygoBY', 'true', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(7, 'mr. julien cummings ii', 'carolyn71@example.com', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'M9ZHjIQ4ca', '1', NULL, 'false', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(8, 'pearline herman', 'mklocko@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', '21z1hfEk4N', '1', NULL, 'false', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(9, 'jacques stokes', 'jaydon52@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', '9hvbzpT2K3', '0', 'o67UbDU5FOA81EEbn4DZyHmtmEKwborrkLHa18K4', 'true', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(10, 'alvis kovacek', 'robel.sylvester@example.com', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'EnTwT3FxsV', '0', 'VyE5hztpRDFtWg5ONsaykh1Grok5d8aq6qz0OlsR', 'false', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(11, 'mr. green klein', 'kaden.littel@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'W34becvHIU', '0', 'szEBqdogv2uLqT2eVtgdxQdn21iFxvW2LqpZHOND', 'true', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(12, 'ignatius bosco sr.', 'kristoffer29@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'yWSiL4Smno', '0', 'TlHPgohVPBaeoTqXiXo7xQLjpOD91T9KoBq6WZXr', 'false', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(13, 'zella klocko', 'gusikowski.kieran@example.com', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'AQfW4JoOKS', '1', NULL, 'true', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(14, 'gwendolyn kerluke', 'zkunze@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'pf16omX9WX', '1', NULL, 'false', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(15, 'mrs. maryjane pouros', 'ressie.jones@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'KoVeFuqPM9', '1', NULL, 'false', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(16, 'brennon cruickshank', 'pouros.kenton@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', '742WuqJ8bL', '1', NULL, 'false', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(17, 'samantha jones', 'zack.rau@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'wZZdt81Woy', '1', NULL, 'false', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(18, 'ms. verlie rosenbaum jr.', 'turcotte.shaina@example.com', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', '4SP5kW1Cdj', '0', '9WdiTL1YysqdYYJLKNAlLPuJtUlgE3byEGcPel08', 'false', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(19, 'marjory jacobson', 'wilton90@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'XYx6Fqdy7f', '0', 'W2IEOIYoXIWjPf8jnghXmVoKHrL1phTkIE7g5kGd', 'false', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(20, 'eddie nikolaus', 'donnie51@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'bPDxVWKoYZ', '0', 'ANgyBvGuGJJb7F2ERMUCY7LV7XxCPW5Lj99eZQqC', 'false', '2018-06-12 12:11:32', '2018-06-12 12:11:32', NULL),
(21, 'mustafa fay', 'harley61@example.com', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', '2Yrm9aVL9D', '0', '3hU3UYMMLS16zy8DJwor6NnRHFIyY1rbCYPUkgOe', 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(22, 'desiree quitzon', 'wilfrid03@example.com', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'HsO7xWR2Z8', '1', NULL, 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(23, 'dr. renee rosenbaum', 'lynn.ernser@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', '9PnXBkVeX5', '0', 'jpEbanqg5LRFjUzlf89zWvJfu4sFf9Dggh10MZnA', 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(24, 'emery pouros', 'von.herminio@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'AgwxxRLBrY', '1', NULL, 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(25, 'dr. kristian moen', 'antonia44@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'Q6jcYfFGXP', '0', 'kWhNdCXdOlvwBoHmAoVHQ6fTHj1UadmwZ4W9ExVk', 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(26, 'misael dubuque sr.', 'windler.weston@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', '2UKfbhRiWW', '0', 'kQbStiimvY1bcFYlk7tLN3orepXIyKjOrkkjnE3D', 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(27, 'ms. telly bashirian ii', 'dzboncak@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'w0QVkWlk2F', '1', NULL, 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(28, 'cordell kub v', 'haley.alfreda@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'eZ4MdiH7VD', '1', NULL, 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(29, 'davonte von', 'glang@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'Unr92te7DL', '0', 'Zj2eWrzDEoBa8gon5Hx7R2CJH2DFVb2KWmDWmpsy', 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(30, 'mr. colten erdman', 'giovani47@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'hD80vQItwH', '0', 'wXbSdISvzntMoNVE7X1tPzMIgcH8he6XM7bMIarM', 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(31, 'lester howell', 'peggie38@example.com', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'sqoYnzQh82', '0', 'MLXuVkFMYH3sa82sBTGVRdIRT2PuzhEbzuJ1D4O8', 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(32, 'ms. serena schuppe', 'yundt.wilmer@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'HZXvfadI3f', '1', NULL, 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(33, 'kathryne hartmann', 'samantha28@example.com', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'pMAIVCyS0X', '0', 'OLv5emtaJMAiy3gVQhCQyNg0LkImffUYDQD0axWL', 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(34, 'estella hamill', 'boris.murphy@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'BBsm3RPhsM', '1', NULL, 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(35, 'sandra borer', 'helmer36@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'TNAVcCvdH5', '1', NULL, 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(36, 'vella lowe i', 'kemmer.sigmund@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'QUebDIULRr', '1', NULL, 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(37, 'baby corkery', 'wellington.reilly@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', '7ppQmyTiGJ', '1', NULL, 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(38, 'noah runte dvm', 'jed20@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'omVd8jV1qK', '1', NULL, 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(39, 'mya wiegand md', 'zhaley@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'Mv04UBgX2V', '0', 'x3BSfNrIeLV7RbTV8yaqlZEva9gQWUb3wOrBwiSs', 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(40, 'prof. annamarie monahan', 'smitham.mireya@example.com', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'DB0bGEOMVo', '0', 'XQRlG45mSaBrU1nRXwh1yLkJ8mOwVj3igGR0q5rG', 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(41, 'dr. tobin kerluke', 'yhilpert@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', '8CbCHeiXgY', '1', NULL, 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(42, 'dr. orlo reynolds sr.', 'ywunsch@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'OvApZwGD0o', '0', 'z3B4Apml6udMLDYOvDuJru3IMwtz0XA8GmMeXCRq', 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(43, 'dr. kacey hackett', 'tmoen@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'frui1fuJy7', '1', NULL, 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(44, 'maeve rosenbaum', 'jerod.carroll@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'ljEGCCtHVb', '0', '5Ahd7lEoVtrPqxU6xRRWpLcN4JqIkDNbGSYrrQ34', 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(45, 'mrs. aniya fadel', 'jcarroll@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'zTBXOFjLWX', '0', 'BEPM8XxAZLYguAq6XuJk480WK0tn9WrZgwpwFmmU', 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(46, 'alfred stiedemann dvm', 'sierra.schimmel@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'mqf956sU56', '1', NULL, 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(47, 'nikki spencer', 'vandervort.kassandra@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'PcUSQRsPmi', '1', NULL, 'true', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(48, 'mr. leonardo pagac v', 'llindgren@example.net', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', '036I5ynuKM', '1', NULL, 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(49, 'mrs. wendy schiller ii', 'dietrich.mittie@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'xaMFINYU6O', '0', 'p5munRoQ3QjtJF0z4dlTozfrCtjycT2xHiT3UETy', 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL),
(50, 'brannon hegmann', 'west.deja@example.org', '$2y$10$dCWJ6YUe.9VJ35g476e8nO8q8IJoN6eGVkWF/YnGcOvdJKbH9CKvy', 'E969vuMjbi', '1', NULL, 'false', '2018-06-12 12:11:33', '2018-06-12 12:11:33', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_product`
--
ALTER TABLE `group_product`
  ADD KEY `group_product_group_id_foreign` (`group_id`),
  ADD KEY `group_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_company_id_foreign` (`company_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_customer_id_foreign` (`customer_id`),
  ADD KEY `transactions_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `group_product`
--
ALTER TABLE `group_product`
  ADD CONSTRAINT `group_product_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `group_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
