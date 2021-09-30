-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 10:50 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mins_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add setting', 7, 'add_setting'),
(26, 'Can change setting', 7, 'change_setting'),
(27, 'Can delete setting', 7, 'delete_setting'),
(28, 'Can view setting', 7, 'view_setting'),
(29, 'Can add contact message', 8, 'add_contactmessage'),
(30, 'Can change contact message', 8, 'change_contactmessage'),
(31, 'Can delete contact message', 8, 'delete_contactmessage'),
(32, 'Can view contact message', 8, 'view_contactmessage'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category'),
(37, 'Can add product', 10, 'add_product'),
(38, 'Can change product', 10, 'change_product'),
(39, 'Can delete product', 10, 'delete_product'),
(40, 'Can view product', 10, 'view_product'),
(41, 'Can add images', 11, 'add_images'),
(42, 'Can change images', 11, 'change_images'),
(43, 'Can delete images', 11, 'delete_images'),
(44, 'Can view images', 11, 'view_images'),
(45, 'Can add comment', 12, 'add_comment'),
(46, 'Can change comment', 12, 'change_comment'),
(47, 'Can delete comment', 12, 'delete_comment'),
(48, 'Can view comment', 12, 'view_comment'),
(49, 'Can add shop cart', 13, 'add_shopcart'),
(50, 'Can change shop cart', 13, 'change_shopcart'),
(51, 'Can delete shop cart', 13, 'delete_shopcart'),
(52, 'Can view shop cart', 13, 'view_shopcart'),
(53, 'Can add order', 14, 'add_order'),
(54, 'Can change order', 14, 'change_order'),
(55, 'Can delete order', 14, 'delete_order'),
(56, 'Can view order', 14, 'view_order'),
(57, 'Can add oder product', 15, 'add_oderproduct'),
(58, 'Can change oder product', 15, 'change_oderproduct'),
(59, 'Can delete oder product', 15, 'delete_oderproduct'),
(60, 'Can view oder product', 15, 'view_oderproduct'),
(61, 'Can add user profile', 16, 'add_userprofile'),
(62, 'Can change user profile', 16, 'change_userprofile'),
(63, 'Can delete user profile', 16, 'delete_userprofile'),
(64, 'Can view user profile', 16, 'view_userprofile'),
(65, 'Can add blog', 17, 'add_blog'),
(66, 'Can change blog', 17, 'change_blog'),
(67, 'Can delete blog', 17, 'delete_blog'),
(68, 'Can view blog', 17, 'view_blog'),
(69, 'Can add likes', 18, 'add_likes'),
(70, 'Can change likes', 18, 'change_likes'),
(71, 'Can delete likes', 18, 'delete_likes'),
(72, 'Can view likes', 18, 'view_likes'),
(73, 'Can add comment', 19, 'add_comment'),
(74, 'Can change comment', 19, 'change_comment'),
(75, 'Can delete comment', 19, 'delete_comment'),
(76, 'Can view comment', 19, 'view_comment'),
(77, 'Can add billing address', 20, 'add_billingaddress'),
(78, 'Can change billing address', 20, 'change_billingaddress'),
(79, 'Can delete billing address', 20, 'delete_billingaddress'),
(80, 'Can view billing address', 20, 'view_billingaddress'),
(81, 'Can add billing address', 21, 'add_billingaddress'),
(82, 'Can change billing address', 21, 'change_billingaddress'),
(83, 'Can delete billing address', 21, 'delete_billingaddress'),
(84, 'Can view billing address', 21, 'view_billingaddress');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$O3Cm6KTbZ2hs$P1AC+zc0bC1WKGPTu/OmVoSWSvGgWOddhpYa9O1EqbM=', '2021-06-23 07:49:07.000000', 0, 'Mehedi', 'Syed Md. Mehedi', 'Hasan', 'mehedicse96@gmail.com', 0, 1, '2021-05-05 18:08:41.000000'),
(2, 'pbkdf2_sha256$216000$YMYuoRVtIN6A$tVYeTaGoR/wvWbfqZDE1UX7HfG24iyb9voZ3I8eP2CU=', '2021-06-16 14:06:41.395370', 0, 'Mithu', 'Syed Md. Mehedi', 'Hasan', 'mehedicse96@gmail.com', 0, 1, '2021-05-05 18:56:00.164762'),
(6, 'pbkdf2_sha256$216000$aYNnRXasb6uD$c57wtFgEvv4NTteh/b7FGcSKgGHSyrfcngIVJFgg+2Y=', '2021-06-23 09:17:39.046334', 0, 'MehediHasan', 'Syed Md. Mehedi', 'Hasan', 'syedmehedi3012@gmail.com', 0, 1, '2021-06-14 14:29:53.634440'),
(7, 'pbkdf2_sha256$216000$NpEIquQ20rbj$OA5J3gZ0ZIQIhcm/J8xFbjeFn/8//tyq+XHCONwsY6I=', '2021-06-16 13:46:34.942340', 0, 'Demo', 'Demo', 'David', 'demo@gmail.com', 0, 1, '2021-06-16 13:46:33.481492'),
(9, 'pbkdf2_sha256$216000$taoYSO5n8HyN$1iLm0H3jpPp3tJU5G+cjTJSgPmTMAKEKF/N7vkWLn8Q=', '2021-08-15 09:40:15.549850', 1, 'MehediMithu', '', '', 'mehedicse96@gmail.com', 1, 1, '2021-08-15 09:28:29.068516'),
(10, 'pbkdf2_sha256$216000$y4NKprXIahbc$BpjwwMbWbKq8nUSysKbJpTsRrMe2AE9ZLT3wtvoJK6k=', '2021-08-15 09:42:39.236512', 0, 'Hasan', 'Syed Md. Mehedi', 'Hasan', 'syedhasan3012@gmail.com', 0, 1, '2021-08-15 09:36:44.183411'),
(11, 'pbkdf2_sha256$260000$zKAgWE5eBRIjSlGJOKcreC$C+PNoMn9WJprsx9NahMnjuw2KjSIcLWSBfofCcyt/M4=', '2021-09-30 08:40:14.407568', 1, 'Mehedi96', '', '', 'mehedicse96@gmail.com', 1, 1, '2021-09-30 08:39:57.379816'),
(12, 'pbkdf2_sha256$260000$xeZEBktkTHqFlzdfKGKAZ6$LvuP+hXsKgtS/UtP7Rpsk/cDXQTbB5NFYQ3F7BjdwYg=', '2021-09-30 08:41:34.301332', 0, 'Mehedi12', 'Syed', 'Hasan', 'mehedicse96@gmail.com', 0, 1, '2021-09-30 08:41:32.731087');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-05-05 18:18:17.872343', '1', 'E-com', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-05-05 18:18:51.280052', '1', 'Guitar', 1, '[{\"added\": {}}]', 9, 1),
(3, '2021-05-05 18:19:03.449009', '2', 'Acoustic Guitar', 1, '[{\"added\": {}}]', 9, 1),
(4, '2021-05-05 18:26:29.184881', '1', 'GF310TBS', 1, '[{\"added\": {}}]', 10, 1),
(5, '2021-05-05 19:25:16.280208', '2', 'GF310NPA', 1, '[{\"added\": {}}]', 10, 1),
(6, '2021-05-05 20:38:24.584278', '2', 'GF310NPA', 2, '[]', 10, 1),
(7, '2021-05-05 20:38:25.159086', '2', 'GF310NPA', 2, '[]', 10, 1),
(8, '2021-05-05 20:39:55.340431', '2', 'GF310NPA', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(9, '2021-05-05 21:07:22.104510', '2', 'GF310NPA', 2, '[{\"changed\": {\"fields\": [\"Detail text\"]}}]', 10, 1),
(10, '2021-05-05 21:08:47.020472', '3', 'Yamaha FG800', 1, '[{\"added\": {}}]', 10, 1),
(11, '2021-05-05 21:36:13.642943', '3', 'Yamaha FG800', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(12, '2021-05-06 20:03:54.559897', '3', 'Piano', 1, '[{\"added\": {}}]', 9, 1),
(13, '2021-05-06 20:04:04.005605', '4', 'sdfodsafjdsof', 1, '[{\"added\": {}}]', 9, 1),
(14, '2021-05-06 20:04:26.724381', '3', 'Piano', 3, '', 9, 1),
(15, '2021-05-07 13:44:48.739714', '5', 'Digital Pianoos', 1, '[{\"added\": {}}]', 9, 1),
(16, '2021-05-07 13:45:30.653941', '6', 'AvantGrand & NU Hybrid Pianos', 1, '[{\"added\": {}}]', 9, 1),
(17, '2021-05-07 13:46:07.158860', '6', 'AvantGrand & NU Hybrid Pianos', 3, '', 9, 1),
(18, '2021-05-07 13:47:12.098012', '5', 'Digital Pianoos', 2, '[]', 9, 1),
(19, '2021-05-07 13:47:20.782030', '5', 'Digital Pianoos', 3, '', 9, 1),
(20, '2021-05-07 13:47:37.013117', '7', 'Digital Pianoos', 1, '[{\"added\": {}}]', 9, 1),
(21, '2021-05-07 13:47:43.325002', '8', 'AvantGrand & NU Hybrid Pianos', 1, '[{\"added\": {}}]', 9, 1),
(22, '2021-05-07 14:17:13.062530', '4', 'Yamaha NU1X AvantGrand Hybrid Upright Piano', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (1)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (2)\"}}]', 10, 1),
(23, '2021-05-07 14:59:56.491753', '5', 'Yamaha AvantGrand N1X Hybrid Piano', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (3)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (4)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (5)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (6)\"}}]', 10, 1),
(24, '2021-05-07 15:28:18.431754', '6', 'Yamaha AvantGrand N2 Hybrid Piano', 1, '[{\"added\": {}}]', 10, 1),
(25, '2021-05-07 15:57:13.597567', '7', 'Yamaha AvantGrand N3X Hybrid Piano', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (7)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (8)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (9)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (10)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (11)\"}}]', 10, 1),
(26, '2021-05-07 15:59:28.822446', '9', 'Keyboards', 1, '[{\"added\": {}}]', 9, 1),
(27, '2021-05-07 16:00:13.427274', '10', 'Genos', 1, '[{\"added\": {}}]', 9, 1),
(28, '2021-05-07 16:10:42.011447', '8', 'Yamaha Genos Workstation Keyboard', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (12)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (13)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (14)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (15)\"}}]', 10, 1),
(29, '2021-05-07 18:44:00.886667', '8', 'Yamaha Genos Workstation Keyboard', 3, '', 10, 1),
(30, '2021-05-07 18:46:43.787611', '9', 'Yamaha Genos Workstation Keyboard', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (16)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (17)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (18)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (19)\"}}]', 10, 1),
(31, '2021-05-07 18:49:23.048655', '10', 'Yamaha Genos Workstation Essential Pack', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (20)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (21)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (22)\"}}]', 10, 1),
(32, '2021-05-07 18:51:36.154601', '11', 'Yamaha Genos Workstation Ultimate Pack', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (23)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (24)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (25)\"}}]', 10, 1),
(33, '2021-05-07 18:52:20.221411', '11', 'Brass', 1, '[{\"added\": {}}]', 9, 1),
(34, '2021-05-07 18:53:14.790592', '12', 'Silent Brass', 1, '[{\"added\": {}}]', 9, 1),
(35, '2021-05-07 19:02:49.032099', '12', 'Yamaha SB7X Silent Brass System For Trumpet & Cornet', 1, '[{\"added\": {}}]', 10, 1),
(36, '2021-05-07 19:04:44.546543', '13', 'Yamaha PM7X SILENT Brass Pickup Mute for Trumpet & Cornet', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (26)\"}}]', 10, 1),
(37, '2021-05-07 19:06:28.203958', '14', 'Yamaha PM-2X Silent Brass Pickup Mute for Euphonium', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (27)\"}}]', 10, 1),
(38, '2021-05-07 19:08:25.771363', '15', 'Yamaha SB2X Silent Brass System For Euphonium', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (28)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (29)\"}}]', 10, 1),
(39, '2021-05-07 19:14:55.208834', '16', 'Yamaha SB1X Silent Brass System for Tuba', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (30)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (31)\"}}]', 10, 1),
(40, '2021-05-07 19:16:41.002772', '13', 'Strings', 1, '[{\"added\": {}}]', 9, 1),
(41, '2021-05-07 19:18:10.997080', '14', 'Cellos', 1, '[{\"added\": {}}]', 9, 1),
(42, '2021-05-07 19:21:29.523778', '17', 'Yamaha VC5S Full Size (4/4) Cello Outfit', 1, '[{\"added\": {}}]', 10, 1),
(43, '2021-05-07 19:24:03.468647', '18', 'Yamaha VC7SG Full Size (4/4) Cello Outfit', 1, '[{\"added\": {}}]', 10, 1),
(44, '2021-05-07 19:42:28.443668', '15', 'Violas', 1, '[{\"added\": {}}]', 9, 1),
(45, '2021-05-07 19:43:54.132082', '19', 'Yamaha VA5S 13 inch Viola Outfit', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (32)\"}}]', 10, 1),
(46, '2021-05-07 19:45:32.129134', '20', 'Yamaha VA5S 16 inch Viola Outfit', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (33)\"}}]', 10, 1),
(47, '2021-05-07 19:47:45.214010', '21', 'Yamaha VA7SG 16 inch Viola Outfit', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (34)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (35)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (36)\"}}]', 10, 1),
(48, '2021-05-07 20:10:22.571827', '16', 'Woodwind', 1, '[{\"added\": {}}]', 9, 1),
(49, '2021-05-07 20:11:04.919889', '17', 'Bassoons', 1, '[{\"added\": {}}]', 9, 1),
(50, '2021-05-07 20:13:24.656587', '22', 'Yamaha YFG-812II Bassoon', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (37)\"}}]', 10, 1),
(51, '2021-05-07 20:15:15.921769', '23', 'Yamaha YFG-821II Bassoon', 1, '[{\"added\": {}}]', 10, 1),
(52, '2021-05-07 20:17:56.488057', '18', 'Clarinet', 1, '[{\"added\": {}}]', 9, 1),
(53, '2021-05-07 20:19:05.957149', '24', 'Yamaha YCL-255S Bb Clarinet', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (38)\"}}]', 10, 1),
(54, '2021-05-08 10:31:48.889464', '25', 'Yamaha YCL-450 Mk III Bb Clarinet', 1, '[{\"added\": {}}]', 10, 1),
(55, '2021-05-08 10:33:35.244715', '26', 'Yamaha YCL-221IIS Bb Bass Clarinet', 1, '[{\"added\": {}}]', 10, 1),
(56, '2021-05-08 10:35:02.891647', '27', 'Yamaha YCL-CSVII Bb Clarinet', 1, '[{\"added\": {}}]', 10, 1),
(57, '2021-05-08 10:57:16.505688', '19', 'Drums', 1, '[{\"added\": {}}]', 9, 1),
(58, '2021-05-08 10:58:08.143373', '20', 'Acoustic Drum kits', 1, '[{\"added\": {}}]', 9, 1),
(59, '2021-05-08 10:59:24.490012', '28', 'Yamaha Rydeen Drum Shell Kit With Hardware 20\" Kick Drum', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (39)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (40)\"}}]', 10, 1),
(60, '2021-05-08 11:02:21.443768', '29', 'Yamaha Rydeen Drum Shell Kit With Hardware 22\" Kick Drum', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (41)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (42)\"}}]', 10, 1),
(61, '2021-05-08 11:03:41.993767', '30', 'Yamaha SBP0F5-HA Stage Custom Birch Shell Set', 1, '[{\"added\": {}}]', 10, 1),
(62, '2021-05-08 11:08:08.971502', '21', 'Percussion', 1, '[{\"added\": {}}]', 9, 1),
(63, '2021-05-08 11:08:44.316457', '22', 'Bass Drums', 1, '[{\"added\": {}}]', 9, 1),
(64, '2021-05-08 11:10:56.248441', '31', 'Yamaha CB-7024 24x14 inch Bass Drum', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (43)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (44)\"}}]', 10, 1),
(65, '2021-05-08 11:12:52.903877', '32', 'Yamaha CB-7028 28x14 inch Bass Drum', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (45)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (46)\"}}]', 10, 1),
(66, '2021-05-08 11:15:25.029844', '33', 'Yamaha CB-8036 36x18 inch Bass Drum', 1, '[{\"added\": {}}]', 10, 1),
(67, '2021-05-13 10:39:42.068672', '1', 'E-com', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 7, 1),
(68, '2021-05-15 16:00:02.955208', '8', 'Order object (8)', 3, '', 14, 1),
(69, '2021-05-15 16:00:03.116106', '7', 'Order object (7)', 3, '', 14, 1),
(70, '2021-05-15 16:00:03.380940', '6', 'Order object (6)', 3, '', 14, 1),
(71, '2021-05-15 16:00:03.532847', '5', 'Order object (5)', 3, '', 14, 1),
(72, '2021-05-15 16:00:03.675759', '4', 'Order object (4)', 3, '', 14, 1),
(73, '2021-05-15 16:00:03.796684', '3', 'Order object (3)', 3, '', 14, 1),
(74, '2021-05-15 16:00:04.049529', '2', 'Order object (2)', 3, '', 14, 1),
(75, '2021-05-15 16:00:04.181448', '1', 'Order object (1)', 3, '', 14, 1),
(76, '2021-05-15 16:12:34.787711', '1', 'E-com', 2, '[{\"changed\": {\"fields\": [\"Phone\"]}}]', 7, 1),
(77, '2021-05-15 17:13:10.705773', '11', 'Order object (11)', 3, '', 14, 1),
(78, '2021-05-15 17:13:10.856542', '10', 'Order object (10)', 3, '', 14, 1),
(79, '2021-05-15 17:13:11.219333', '9', 'Order object (9)', 3, '', 14, 1),
(80, '2021-05-16 05:41:45.894731', '1', 'Syed Md. Mehedi Hasan', 3, '', 8, 1),
(81, '2021-05-16 07:56:49.635674', '1', 'GF310TBS', 3, '', 10, 1),
(82, '2021-05-16 07:57:15.807056', '11', 'Brass', 2, '[{\"changed\": {\"fields\": []}}]', 9, 1),
(83, '2021-05-16 08:23:38.528565', '21', 'Yamaha VA7SG 16 inch Viola Outfit', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(84, '2021-05-16 08:23:54.699891', '20', 'Yamaha VA5S 16 inch Viola Outfit', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(85, '2021-05-16 08:24:12.701791', '19', 'Yamaha VA5S 13 inch Viola Outfit', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(86, '2021-05-16 08:24:30.038233', '18', 'Yamaha VC7SG Full Size (4/4) Cello Outfit', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(87, '2021-05-16 08:24:53.821470', '14', 'Yamaha PM-2X Silent Brass Pickup Mute for Euphonium', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(88, '2021-05-16 08:25:41.152199', '8', 'Hybrid Pianos', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(89, '2021-05-16 17:02:17.997424', '23', 'Baritone Horns', 1, '[{\"added\": {}}]', 9, 1),
(90, '2021-05-16 17:20:58.152582', '34', 'Yamaha YBH-301 Mk II Bb Baritone Horn', 1, '[{\"added\": {}}]', 10, 1),
(91, '2021-05-17 07:07:59.042581', '34', 'Yamaha YBH-301 Mk II Bb Baritone Horn', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(92, '2021-05-17 07:13:44.094193', '24', 'Cornets', 1, '[{\"added\": {}}]', 9, 1),
(93, '2021-05-17 07:13:52.116717', '12', 'Silent Brass', 2, '[{\"changed\": {\"fields\": [\"lft\", \"rght\"]}}]', 9, 1),
(94, '2021-05-17 07:17:53.756648', '35', 'Yamaha YBH-301 Mk II Bb Baritone Horn in Silver-Plated Finish', 1, '[{\"added\": {}}]', 10, 1),
(95, '2021-05-17 07:31:49.854474', '36', 'Yamaha YBH-621S 4-Valve Bb Baritone Horn', 1, '[{\"added\": {}}]', 10, 1),
(96, '2021-05-17 07:34:42.770074', '37', 'Yamaha YBH-621 4-Valve Bb Baritone Horn', 1, '[{\"added\": {}}]', 10, 1),
(97, '2021-05-17 07:37:46.265169', '38', 'Yamaha YBH-831 3-Valve Bb Baritone Horn', 1, '[{\"added\": {}}]', 10, 1),
(98, '2021-05-17 07:44:12.913853', '39', 'YCR-2330III Bb Cornet', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (47)\"}}]', 10, 1),
(99, '2021-05-17 07:47:57.352151', '40', 'YCR-2330SIII Bb Cornet', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (48)\"}}]', 10, 1),
(100, '2021-05-17 07:50:34.246123', '41', 'YCR-9435 C Cornet', 1, '[{\"added\": {}}]', 10, 1),
(101, '2021-05-17 07:52:53.825020', '42', 'YCR-2610SIII Eb Soprano Cornet', 1, '[{\"added\": {}}]', 10, 1),
(102, '2021-05-17 07:55:43.633347', '43', 'YCR-8620 Eb Soprano Cornet', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (49)\"}}]', 10, 1),
(103, '2021-05-17 08:01:41.307442', '25', 'Euphoniums', 1, '[{\"added\": {}}]', 9, 1),
(104, '2021-05-17 08:02:45.796445', '44', 'YEP-201S 3-Valve Bb Euphonium', 1, '[{\"added\": {}}]', 10, 1),
(105, '2021-05-17 08:04:28.460560', '45', 'YEP-211 3-Valve Euphonium - Bell front version', 1, '[{\"added\": {}}]', 10, 1),
(106, '2021-05-17 08:08:08.127292', '46', 'YEP-642T Neo Euphonium with Trigger System', 1, '[{\"added\": {}}]', 10, 1),
(107, '2021-05-17 08:11:57.191765', '47', 'YEP-642TS Neo Euphonium with Trigger System', 1, '[{\"added\": {}}]', 10, 1),
(108, '2021-05-17 08:13:40.095823', '48', 'YEP-842TS Custom Euphonium', 1, '[{\"added\": {}}]', 10, 1),
(109, '2021-05-17 08:14:25.536330', '25', 'Euphoniums', 2, '[{\"changed\": {\"fields\": [\"parent\", \"lft\", \"rght\", \"level\"]}}]', 9, 1),
(110, '2021-05-17 08:14:54.782464', '25', 'Euphoniums', 2, '[{\"changed\": {\"fields\": [\"parent\", \"lft\", \"rght\", \"level\"]}}]', 9, 1),
(111, '2021-05-17 08:15:04.894470', '25', 'Euphoniums', 2, '[{\"changed\": {\"fields\": [\"lft\", \"rght\"]}}]', 9, 1),
(112, '2021-05-19 13:25:22.835160', '26', 'Flugelhorns', 1, '[{\"added\": {}}]', 9, 1),
(113, '2021-05-19 13:26:39.612845', '26', 'Flugelhorns', 2, '[{\"changed\": {\"fields\": [\"lft\", \"rght\"]}}]', 9, 1),
(114, '2021-05-19 13:29:55.897983', '49', 'Bb Flugelhorn 1', 1, '[{\"added\": {}}]', 10, 1),
(115, '2021-05-19 13:32:12.862358', '50', 'Bb Flugelhorn 2', 1, '[{\"added\": {}}]', 10, 1),
(116, '2021-05-19 13:34:29.948775', '51', 'Bb Flugelhorn 3', 1, '[{\"added\": {}}]', 10, 1),
(117, '2021-05-19 13:37:34.128106', '52', 'Bb Flugelhorn 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (50)\"}}]', 10, 1),
(118, '2021-05-19 13:55:25.535263', '53', 'Bb Flugelhorn 5', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (51)\"}}]', 10, 1),
(119, '2021-05-19 14:07:48.112775', '54', 'Hybrid Pianos', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (52)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (53)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (54)\"}}]', 10, 1),
(120, '2021-05-19 14:09:26.022483', '27', 'Clavinova Digital Pianos', 1, '[{\"added\": {}}]', 9, 1),
(121, '2021-05-19 14:16:26.255626', '55', 'Deluxe Smart Piano Pack', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (55)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (56)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (57)\"}}]', 10, 1),
(122, '2021-05-19 14:20:09.346064', '56', 'Clavinova Digital Pianos 1', 1, '[{\"added\": {}}]', 10, 1),
(123, '2021-05-19 14:49:26.849843', '57', 'Clavinova Digital Pianos 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (58)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (59)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (60)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (61)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (62)\"}}]', 10, 1),
(124, '2021-05-19 14:51:05.656083', '58', 'Clavinova Digital Pianos 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (63)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (64)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (65)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (66)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (67)\"}}]', 10, 1),
(125, '2021-05-19 14:51:54.296242', '59', 'Clavinova Digital Pianos 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (68)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (69)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (70)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (71)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (72)\"}}]', 10, 1),
(126, '2021-05-19 14:58:18.416772', '28', 'Arius Digital Pianos', 1, '[{\"added\": {}}]', 9, 1),
(127, '2021-05-19 14:59:15.633633', '60', 'Arius Digital Pianos 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (73)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (74)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (75)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (76)\"}}]', 10, 1),
(128, '2021-05-19 14:59:55.581860', '61', 'Arius Digital Pianos 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (77)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (78)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (79)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (80)\"}}]', 10, 1),
(129, '2021-05-19 15:00:37.861491', '62', 'Arius Digital Pianos 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (81)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (82)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (83)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (84)\"}}]', 10, 1),
(130, '2021-05-19 15:01:16.065788', '63', 'Arius Digital Pianos 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (85)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (86)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (87)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (88)\"}}]', 10, 1),
(131, '2021-05-19 15:01:50.012812', '64', 'Arius Digital Pianos 5', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (89)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (90)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (91)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (92)\"}}]', 10, 1),
(132, '2021-05-19 15:06:24.929099', '29', 'Features -------- Innovation for effortless performance  Clavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert gran', 1, '[{\"added\": {}}]', 9, 1),
(133, '2021-05-19 15:07:07.306185', '29', 'Portable Digital Pianos', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 9, 1),
(134, '2021-05-19 15:07:56.804720', '65', 'Portable Digital Pianos 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (93)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (94)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (95)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (96)\"}}]', 10, 1),
(135, '2021-05-19 15:08:33.899469', '66', 'Portable Digital Pianos 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (97)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (98)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (99)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (100)\"}}]', 10, 1),
(136, '2021-05-19 15:09:27.542323', '67', 'Portable Digital Pianos 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (101)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (102)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (103)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (104)\"}}]', 10, 1),
(137, '2021-05-19 15:10:13.693086', '68', 'Portable Digital Pianos 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (105)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (106)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (107)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (108)\"}}]', 10, 1),
(138, '2021-05-19 15:11:01.422132', '69', 'Portable Digital Pianos 5', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (109)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (110)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (111)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (112)\"}}]', 10, 1),
(139, '2021-05-19 15:12:09.144506', '30', 'Digital Stage Pianos', 1, '[{\"added\": {}}]', 9, 1),
(140, '2021-05-19 15:17:13.123776', '70', 'Digital Stage Pianos 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (113)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (114)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (115)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (116)\"}}]', 10, 1),
(141, '2021-05-19 15:17:50.557213', '71', 'Digital Stage Pianos 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (117)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (118)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (119)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (120)\"}}]', 10, 1),
(142, '2021-05-19 15:18:28.550382', '72', 'Digital Stage Pianos 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (121)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (122)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (123)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (124)\"}}]', 10, 1),
(143, '2021-05-19 15:19:08.389128', '73', 'Digital Stage Pianos 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (125)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (126)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (127)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (128)\"}}]', 10, 1),
(144, '2021-05-19 15:19:55.448288', '74', 'Digital Stage Pianos 5', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (129)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (130)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (131)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (132)\"}}]', 10, 1),
(145, '2021-05-21 06:18:21.614861', '75', 'Stage Drums', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (133)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (134)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (135)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (136)\"}}]', 10, 1),
(146, '2021-05-21 06:21:30.104088', '76', 'Recording Drums', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (137)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (138)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (139)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (140)\"}}]', 10, 1),
(147, '2021-05-21 06:28:39.687300', '77', 'Hybrid Maple Jazz Drum', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (141)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (142)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (143)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (144)\"}}]', 10, 1),
(148, '2021-05-21 06:29:24.970613', '78', 'Hybrid Maple Jazz Drum 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (145)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (146)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (147)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (148)\"}}]', 10, 1),
(149, '2021-05-21 06:30:05.842252', '79', 'Hybrid Maple Jazz Drum 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (149)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (150)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (151)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (152)\"}}]', 10, 1),
(150, '2021-05-21 06:30:46.151102', '31', 'Electronic Drum', 1, '[{\"added\": {}}]', 9, 1),
(151, '2021-05-21 06:38:03.236341', '80', 'Electronic Drum', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (153)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (154)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (155)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (156)\"}}]', 10, 1),
(152, '2021-05-21 06:38:43.733586', '81', 'Electronic Drum 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (157)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (158)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (159)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (160)\"}}]', 10, 1),
(153, '2021-05-21 06:39:42.075998', '82', 'Electronic Drum 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (161)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (162)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (163)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (164)\"}}]', 10, 1),
(154, '2021-05-21 06:40:15.628594', '83', 'Electronic Drum 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (165)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (166)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (167)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (168)\"}}]', 10, 1),
(155, '2021-05-21 06:40:59.446503', '84', 'Electronic Drum 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (169)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (170)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (171)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (172)\"}}]', 10, 1),
(156, '2021-05-21 06:41:43.080580', '32', 'Electro-Acoustic Drum', 1, '[{\"added\": {}}]', 9, 1),
(157, '2021-05-21 06:44:00.447271', '85', 'Electro-Acoustic Drum', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (173)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (174)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (175)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (176)\"}}]', 10, 1),
(158, '2021-05-21 06:49:59.658790', '33', 'Bass Drums', 1, '[{\"added\": {}}]', 9, 1),
(159, '2021-05-21 06:56:26.748809', '86', 'Bass Drums', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (177)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (178)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (179)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (180)\"}}]', 10, 1),
(160, '2021-05-21 07:55:51.884026', '87', 'Bass Drums 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (181)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (182)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (183)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (184)\"}}]', 10, 1),
(161, '2021-05-21 07:56:39.687006', '88', 'Bass Drums 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (185)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (186)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (187)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (188)\"}}]', 10, 1),
(162, '2021-05-21 07:57:18.412663', '89', 'Bass Drums 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (189)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (190)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (191)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (192)\"}}]', 10, 1),
(163, '2021-05-21 07:58:01.360321', '90', 'Bass Drums 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (193)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (194)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (195)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (196)\"}}]', 10, 1),
(164, '2021-05-21 07:59:08.418554', '34', 'Snare Drums', 1, '[{\"added\": {}}]', 9, 1),
(165, '2021-05-21 08:05:22.380985', '91', 'Snare Drums', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (197)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (198)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (199)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (200)\"}}]', 10, 1),
(166, '2021-05-21 08:07:10.296061', '92', 'Snare Drums 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (201)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (202)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (203)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (204)\"}}]', 10, 1),
(167, '2021-05-21 08:07:56.261674', '93', 'Snare Drums 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (205)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (206)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (207)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (208)\"}}]', 10, 1),
(168, '2021-05-21 08:08:37.818411', '94', 'Snare Drums 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (209)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (210)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (211)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (212)\"}}]', 10, 1),
(169, '2021-05-21 08:09:40.485504', '95', 'Snare Drums 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (213)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (214)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (215)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (216)\"}}]', 10, 1),
(170, '2021-05-21 08:16:51.753689', '96', 'Acoustic Guiter', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (217)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (218)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (219)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (220)\"}}]', 10, 1),
(171, '2021-05-21 08:17:46.671908', '97', 'Acoustic Guitars 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (221)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (222)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (223)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (224)\"}}]', 10, 1),
(172, '2021-05-21 08:18:30.862438', '98', 'Acoustic Guitars 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (225)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (226)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (227)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (228)\"}}]', 10, 1),
(173, '2021-05-21 08:19:52.814117', '35', 'Electric Guiters', 1, '[{\"added\": {}}]', 9, 1),
(174, '2021-05-21 08:25:30.742883', '99', 'Electric Guiters', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (229)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (230)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (231)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (232)\"}}]', 10, 1),
(175, '2021-05-21 08:26:15.705811', '100', 'Electric Guiters 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (233)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (234)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (235)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (236)\"}}]', 10, 1),
(176, '2021-05-21 08:27:02.995640', '101', 'Electric Guiters 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (237)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (238)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (239)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (240)\"}}]', 10, 1),
(177, '2021-05-21 08:28:01.499659', '102', 'Electric Guiters 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (241)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (242)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (243)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (244)\"}}]', 10, 1),
(178, '2021-05-21 08:28:41.267017', '103', 'Electric Guiters 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (245)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (246)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (247)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (248)\"}}]', 10, 1),
(179, '2021-05-21 09:25:52.421889', '36', 'Electro Acoustic Guiter', 1, '[{\"added\": {}}]', 9, 1),
(180, '2021-05-21 09:26:51.779608', '104', 'Electro Acoustic Guiter', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (249)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (250)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (251)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (252)\"}}]', 10, 1),
(181, '2021-05-21 09:27:35.921361', '105', 'Electro Acoustic Guiter 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (253)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (254)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (255)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (256)\"}}]', 10, 1),
(182, '2021-05-21 09:28:27.984486', '106', 'Electro Acoustic Guiter 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (257)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (258)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (259)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (260)\"}}]', 10, 1),
(183, '2021-05-21 09:29:18.097360', '107', 'Electro Acoustic Guiter 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (261)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (262)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (263)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (264)\"}}]', 10, 1),
(184, '2021-05-21 09:30:08.181217', '108', 'Electro Acoustic Guiter 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (265)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (266)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (267)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (268)\"}}]', 10, 1),
(185, '2021-05-21 09:34:47.405378', '37', 'Bass Guiter', 1, '[{\"added\": {}}]', 9, 1),
(186, '2021-05-21 09:35:30.015445', '109', 'Bass Guiter', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (269)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (270)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (271)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (272)\"}}]', 10, 1),
(187, '2021-05-21 09:36:08.622902', '110', 'Bass Guiter 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (273)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (274)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (275)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (276)\"}}]', 10, 1),
(188, '2021-05-21 09:36:54.779086', '111', 'Bass Guiter 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (277)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (278)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (279)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (280)\"}}]', 10, 1),
(189, '2021-05-21 09:37:29.334392', '112', 'Bass Guiter 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (281)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (282)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (283)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (284)\"}}]', 10, 1),
(190, '2021-05-21 09:38:13.103388', '113', 'Bass Guiter 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (285)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (286)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (287)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (288)\"}}]', 10, 1),
(191, '2021-05-21 09:42:23.085519', '38', 'Classic Guiter', 1, '[{\"added\": {}}]', 9, 1),
(192, '2021-05-21 09:43:09.374815', '114', 'Classic Guiter', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (289)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (290)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (291)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (292)\"}}]', 10, 1),
(193, '2021-05-21 09:43:50.715435', '115', 'Classic Guiter 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (293)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (294)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (295)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (296)\"}}]', 10, 1),
(194, '2021-05-21 09:44:31.818005', '116', 'Classic Guiter 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (297)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (298)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (299)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (300)\"}}]', 10, 1),
(195, '2021-05-21 09:45:40.247273', '117', 'Classic Guiter 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (301)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (302)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (303)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (304)\"}}]', 10, 1),
(196, '2021-05-21 09:46:27.610840', '118', 'Classic Guiter 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (305)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (306)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (307)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (308)\"}}]', 10, 1),
(197, '2021-05-21 13:21:42.835232', '39', 'Sonogenic Keyboard', 1, '[{\"added\": {}}]', 9, 1),
(198, '2021-05-21 13:26:04.867910', '119', 'Sonogenic Keyboard', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (309)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (310)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (311)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (312)\"}}]', 10, 1),
(199, '2021-05-21 13:26:43.499001', '120', 'Sonogenic Keyboard 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (313)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (314)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (315)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (316)\"}}]', 10, 1),
(200, '2021-05-21 13:27:17.159846', '121', 'Sonogenic Keyboard 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (317)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (318)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (319)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (320)\"}}]', 10, 1),
(201, '2021-05-21 13:27:56.706920', '122', 'Sonogenic Keyboard 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (321)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (322)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (323)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (324)\"}}]', 10, 1),
(202, '2021-05-21 13:28:34.549330', '123', 'Sonogenic Keyboard 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (325)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (326)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (327)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (328)\"}}]', 10, 1),
(203, '2021-05-21 13:34:31.890464', '40', 'Home Keyboards', 1, '[{\"added\": {}}]', 9, 1),
(204, '2021-05-21 13:35:10.044670', '124', 'Home Keyboards', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (329)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (330)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (331)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (332)\"}}]', 10, 1),
(205, '2021-05-21 13:38:18.603028', '125', 'Home Keyboards 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (333)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (334)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (335)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (336)\"}}]', 10, 1),
(206, '2021-05-21 13:38:51.144324', '126', 'Home Keyboards 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (337)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (338)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (339)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (340)\"}}]', 10, 1),
(207, '2021-05-21 13:39:23.582308', '127', 'Home Keyboards 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (341)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (342)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (343)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (344)\"}}]', 10, 1),
(208, '2021-05-21 13:40:12.960317', '128', 'Home Keyboards 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (345)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (346)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (347)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (348)\"}}]', 10, 1),
(209, '2021-05-21 13:43:57.269786', '41', 'Workstation Keyboard', 1, '[{\"added\": {}}]', 9, 1),
(210, '2021-05-21 13:44:34.438020', '129', 'Workstation Keyboard', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (349)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (350)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (351)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (352)\"}}]', 10, 1),
(211, '2021-05-21 13:45:17.376928', '130', 'Workstation Keyboard 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (353)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (354)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (355)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (356)\"}}]', 10, 1),
(212, '2021-05-21 13:45:57.002043', '131', 'Workstation Keyboard 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (357)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (358)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (359)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (360)\"}}]', 10, 1),
(213, '2021-05-21 13:46:38.087785', '132', 'Workstation Keyboard 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (361)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (362)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (363)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (364)\"}}]', 10, 1),
(214, '2021-05-21 13:47:10.365450', '133', 'Workstation Keyboard 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (365)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (366)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (367)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (368)\"}}]', 10, 1),
(215, '2021-05-21 13:51:49.479495', '42', 'Synthesizer', 1, '[{\"added\": {}}]', 9, 1),
(216, '2021-05-21 13:52:25.041222', '134', 'Synthesizer', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (369)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (370)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (371)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (372)\"}}]', 10, 1),
(217, '2021-05-21 13:53:00.621429', '135', 'Synthesizer 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (373)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (374)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (375)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (376)\"}}]', 10, 1),
(218, '2021-05-21 13:53:32.537025', '136', 'Synthesizer 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (377)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (378)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (379)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (380)\"}}]', 10, 1),
(219, '2021-05-21 13:54:02.444379', '137', 'Synthesizer 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (381)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (382)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (383)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (384)\"}}]', 10, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(220, '2021-05-21 13:54:39.464414', '138', 'Synthesizer 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (385)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (386)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (387)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (388)\"}}]', 10, 1),
(221, '2021-05-21 13:56:57.486282', '43', 'Marimbas', 1, '[{\"added\": {}}]', 9, 1),
(222, '2021-05-21 13:58:10.247337', '139', 'Marimbas', 1, '[{\"added\": {}}]', 10, 1),
(223, '2021-05-21 14:00:58.207452', '139', 'Marimbas', 2, '[{\"added\": {\"name\": \"images\", \"object\": \"Images object (389)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (390)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (391)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (392)\"}}]', 10, 1),
(224, '2021-05-21 14:02:00.101250', '140', 'Marimbas 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (393)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (394)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (395)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (396)\"}}]', 10, 1),
(225, '2021-05-21 14:02:30.943770', '141', 'Marimbas 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (397)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (398)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (399)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (400)\"}}]', 10, 1),
(226, '2021-05-21 14:03:06.870008', '142', 'Marimbas 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (401)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (402)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (403)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (404)\"}}]', 10, 1),
(227, '2021-05-21 14:03:41.785835', '143', 'Marimbas 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (405)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (406)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (407)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (408)\"}}]', 10, 1),
(228, '2021-05-21 14:04:18.771877', '44', 'Orchestral Bells', 1, '[{\"added\": {}}]', 9, 1),
(229, '2021-05-21 14:06:25.530766', '144', 'Orchestral Bells', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (409)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (410)\"}}]', 10, 1),
(230, '2021-05-21 14:06:54.775395', '145', 'Orchestral Bells 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (411)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (412)\"}}]', 10, 1),
(231, '2021-05-21 14:07:24.821962', '146', 'Orchestral Bells 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (413)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (414)\"}}]', 10, 1),
(232, '2021-05-21 14:08:04.170764', '45', 'Timpani', 1, '[{\"added\": {}}]', 9, 1),
(233, '2021-05-21 14:15:57.450961', '147', 'Timpani', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (415)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (416)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (417)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (418)\"}}]', 10, 1),
(234, '2021-05-21 14:16:30.956235', '148', 'Timpani 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (419)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (420)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (421)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (422)\"}}]', 10, 1),
(235, '2021-05-21 14:17:01.449484', '149', 'Timpani 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (423)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (424)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (425)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (426)\"}}]', 10, 1),
(236, '2021-05-21 14:21:57.366377', '150', 'Timpani 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (427)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (428)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (429)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (430)\"}}]', 10, 1),
(237, '2021-05-21 14:22:32.735158', '151', 'Timpani 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (431)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (432)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (433)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (434)\"}}]', 10, 1),
(238, '2021-05-21 14:23:35.025786', '46', 'Vibraphones', 1, '[{\"added\": {}}]', 9, 1),
(239, '2021-05-21 14:27:29.838643', '152', 'Vibraphones', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (435)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (436)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (437)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (438)\"}}]', 10, 1),
(240, '2021-05-21 14:28:23.506303', '153', 'Vibraphones 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (439)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (440)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (441)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (442)\"}}]', 10, 1),
(241, '2021-05-21 14:29:03.612015', '154', 'Vibraphones 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (443)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (444)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (445)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (446)\"}}]', 10, 1),
(242, '2021-05-21 14:29:34.289329', '155', 'Vibraphones 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (447)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (448)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (449)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (450)\"}}]', 10, 1),
(243, '2021-05-21 14:30:35.031288', '156', 'Vibraphones 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (451)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (452)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (453)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (454)\"}}]', 10, 1),
(244, '2021-05-21 14:35:42.162710', '157', 'Cellos', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (455)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (456)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (457)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (458)\"}}]', 10, 1),
(245, '2021-05-21 14:36:13.191266', '158', 'Cellos 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (459)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (460)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (461)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (462)\"}}]', 10, 1),
(246, '2021-05-21 14:36:55.011162', '159', 'Cellos 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (463)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (464)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (465)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (466)\"}}]', 10, 1),
(247, '2021-05-21 14:41:39.391427', '160', 'Violas', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (467)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (468)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (469)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (470)\"}}]', 10, 1),
(248, '2021-05-21 14:42:11.979839', '161', 'Violas 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (471)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (472)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (473)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (474)\"}}]', 10, 1),
(249, '2021-05-21 14:42:44.787264', '160', 'Violas', 2, '[{\"changed\": {\"fields\": [\"New price\"]}}]', 10, 1),
(250, '2021-05-21 14:43:34.305061', '47', 'Violins', 1, '[{\"added\": {}}]', 9, 1),
(251, '2021-05-21 14:48:19.921149', '162', 'Violins', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (475)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (476)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (477)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (478)\"}}]', 10, 1),
(252, '2021-05-21 14:49:03.577995', '163', 'Violins 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (479)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (480)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (481)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (482)\"}}]', 10, 1),
(253, '2021-05-21 14:49:38.730487', '164', 'Violins 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (483)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (484)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (485)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (486)\"}}]', 10, 1),
(254, '2021-05-21 14:50:20.433326', '165', 'Violins 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (487)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (488)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (489)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (490)\"}}]', 10, 1),
(255, '2021-05-21 14:50:58.126511', '166', 'Violins 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (491)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (492)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (493)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (494)\"}}]', 10, 1),
(256, '2021-05-21 14:56:07.335323', '48', 'Electric Violin', 1, '[{\"added\": {}}]', 9, 1),
(257, '2021-05-21 14:58:14.600444', '167', 'Electric Violin', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (495)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (496)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (497)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (498)\"}}]', 10, 1),
(258, '2021-05-21 14:59:07.605613', '168', 'Electric Violin 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (499)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (500)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (501)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (502)\"}}]', 10, 1),
(259, '2021-05-21 14:59:39.936187', '169', 'Electric Violin 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (503)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (504)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (505)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (506)\"}}]', 10, 1),
(260, '2021-05-21 15:00:20.699189', '170', 'Electric Violin 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (507)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (508)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (509)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (510)\"}}]', 10, 1),
(261, '2021-05-21 15:01:01.041257', '171', 'Electric Violin 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (511)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (512)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (513)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (514)\"}}]', 10, 1),
(262, '2021-05-21 15:27:10.536999', '49', 'Silent Violin', 1, '[{\"added\": {}}]', 9, 1),
(263, '2021-05-21 15:29:11.723834', '172', 'Silent Violin', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (515)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (516)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (517)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (518)\"}}]', 10, 1),
(264, '2021-05-21 15:29:53.042296', '173', 'Silent Violin 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (519)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (520)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (521)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (522)\"}}]', 10, 1),
(265, '2021-05-21 15:30:47.151593', '174', 'Silent Violin 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (523)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (524)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (525)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (526)\"}}]', 10, 1),
(266, '2021-05-21 15:31:35.314552', '175', 'Silent Violin 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (527)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (528)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (529)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (530)\"}}]', 10, 1),
(267, '2021-05-21 15:32:32.405690', '176', 'Silent Violin 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (531)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (532)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (533)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (534)\"}}]', 10, 1),
(268, '2021-05-21 15:35:10.417272', '50', 'Flutes', 1, '[{\"added\": {}}]', 9, 1),
(269, '2021-05-21 15:42:37.040462', '177', 'Flutes', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (535)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (536)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (537)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (538)\"}}]', 10, 1),
(270, '2021-05-21 15:43:30.644588', '178', 'Flutes 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (539)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (540)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (541)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (542)\"}}]', 10, 1),
(271, '2021-05-21 15:44:01.726724', '179', 'Flutes 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (543)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (544)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (545)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (546)\"}}]', 10, 1),
(272, '2021-05-21 15:44:33.694267', '180', 'Flutes 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (547)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (548)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (549)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (550)\"}}]', 10, 1),
(273, '2021-05-21 15:45:07.973182', '181', 'Flutes 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (551)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (552)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (553)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (554)\"}}]', 10, 1),
(274, '2021-05-21 15:45:42.303129', '51', 'Oboes', 1, '[{\"added\": {}}]', 9, 1),
(275, '2021-05-21 15:50:18.005462', '182', 'Oboes', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (555)\"}}]', 10, 1),
(276, '2021-05-21 15:50:36.165356', '182', 'Oboes', 2, '[{\"added\": {\"name\": \"images\", \"object\": \"Images object (556)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (557)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (558)\"}}]', 10, 1),
(277, '2021-05-21 15:51:11.986228', '183', 'Oboes 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (559)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (560)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (561)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (562)\"}}]', 10, 1),
(278, '2021-05-21 15:51:47.695189', '184', 'Oboes 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (563)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (564)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (565)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (566)\"}}]', 10, 1),
(279, '2021-05-21 15:52:32.795094', '185', 'Oboes 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (567)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (568)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (569)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (570)\"}}]', 10, 1),
(280, '2021-05-21 15:53:10.914406', '186', 'Oboes 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (571)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (572)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (573)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (574)\"}}]', 10, 1),
(281, '2021-05-21 15:54:18.194216', '52', 'Piccolos', 1, '[{\"added\": {}}]', 9, 1),
(282, '2021-05-21 15:59:19.209723', '187', 'Piccolos', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (575)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (576)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (577)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (578)\"}}]', 10, 1),
(283, '2021-05-21 16:00:01.069769', '188', 'Piccolos 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (579)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (580)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (581)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (582)\"}}]', 10, 1),
(284, '2021-05-21 16:01:19.043775', '189', 'Piccolos 2', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (583)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (584)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (585)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (586)\"}}]', 10, 1),
(285, '2021-05-21 16:02:06.343851', '190', 'Piccolos 3', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (587)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (588)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (589)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (590)\"}}]', 10, 1),
(286, '2021-05-21 16:02:40.253979', '191', 'Piccolos 4', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (591)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (592)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (593)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (594)\"}}]', 10, 1),
(287, '2021-05-21 16:27:04.942468', '1', 'E-com', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(288, '2021-05-22 06:34:27.415182', '192', 'Yamaha Tour Custom Drum Shell Set with 22\" Kick Drum in In Liquorice Satin finish', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (595)\"}}]', 10, 1),
(289, '2021-05-22 06:35:06.178667', '37', 'Bass Guitar', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 9, 1),
(290, '2021-05-22 06:35:20.806566', '38', 'Classic Guitar', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 9, 1),
(291, '2021-05-22 06:35:48.076817', '35', 'Electric Guitar', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 9, 1),
(292, '2021-05-22 06:36:01.884091', '36', 'Electro Acoustic Guitar', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 9, 1),
(293, '2021-05-22 06:41:52.014467', '193', 'Yamaha JR2 Small Bodied Acoustic Guitar', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (596)\"}}]', 10, 1),
(294, '2021-05-22 06:52:09.416763', '194', 'Yamaha Revstar RS320 Electric Guitar', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (597)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (598)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (599)\"}}]', 10, 1),
(295, '2021-05-22 06:58:58.459060', '195', 'PSS-E30 (Remie) Home Keyboard with Mini Keys', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (600)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (601)\"}}]', 10, 1),
(296, '2021-05-22 07:00:17.909889', '2', 'GF310NPA', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(297, '2021-05-22 09:06:34.534583', '2', 'GF310NPA', 2, '[]', 10, 1),
(298, '2021-05-22 12:57:19.803020', '13', 'Yamaha PM7X SILENT Brass Pickup Mute for Trumpet & Cornet', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(299, '2021-05-22 13:14:53.138276', '9', 'Yamaha Genos Workstation Keyboard', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(300, '2021-05-22 13:18:57.683071', '6', 'Yamaha AvantGrand N2 Hybrid Piano', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(301, '2021-05-22 13:19:35.935013', '4', 'Yamaha NU1X AvantGrand Hybrid Upright Piano', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(302, '2021-05-22 13:20:04.161245', '5', 'Yamaha AvantGrand N1X Hybrid Piano', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(303, '2021-05-22 13:20:36.038167', '6', 'Yamaha AvantGrand N2 Hybrid Piano', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(304, '2021-05-22 13:21:27.569988', '7', 'Yamaha AvantGrand N3X Hybrid Piano', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(305, '2021-05-22 13:22:02.875376', '5', 'Yamaha AvantGrand N1X Hybrid Piano', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(306, '2021-05-22 13:23:35.067829', '4', 'Yamaha NU1X AvantGrand Hybrid Upright Piano', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(307, '2021-05-22 13:32:01.716964', '3', 'Yamaha FG800', 2, '[{\"added\": {\"name\": \"images\", \"object\": \"Images object (602)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (603)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (604)\"}}]', 10, 1),
(308, '2021-05-22 13:32:35.360217', '2', 'GF310NPA', 2, '[{\"added\": {\"name\": \"images\", \"object\": \"Images object (605)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (606)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (607)\"}}]', 10, 1),
(309, '2021-05-22 13:32:55.524707', '3', 'Yamaha FG800', 2, '[{\"changed\": {\"name\": \"images\", \"object\": \"Images object (604)\", \"fields\": [\"Image\"]}}]', 10, 1),
(310, '2021-05-22 13:33:17.443203', '3', 'Yamaha FG800', 3, '', 10, 1),
(311, '2021-05-22 17:05:18.526785', '4', 'hello', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 12, 1),
(312, '2021-05-22 17:26:03.219758', '5', 'good', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 12, 1),
(313, '2021-05-22 18:31:06.159815', '10', 'Hi', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 12, 1),
(314, '2021-05-22 18:34:24.922892', '11', 'HEY', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 12, 1),
(315, '2021-05-22 18:36:57.866162', '12', 'Hmm', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 12, 1),
(316, '2021-05-22 18:39:02.670886', '12', 'Hmm', 2, '[{\"changed\": {\"fields\": [\"Rate\"]}}]', 12, 1),
(317, '2021-05-25 09:52:09.474824', '49', 'YFH-631G Bb Flugelhorn', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(318, '2021-05-25 09:54:02.868378', '50', 'Yamaha YFH-8315G Bb Flugelhorn', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(319, '2021-05-25 09:54:35.045834', '51', 'YFH-631GS Bb Flugelhorn Professional Model in Silver-plated finish', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(320, '2021-05-25 09:56:31.732986', '52', 'Yamaha YFH-8315GS Bb Flugelhorn', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(321, '2021-05-25 09:57:25.168950', '53', 'Yamaha YFH-8310ZG Bb Flugelhorn \'Bobby Shew\'', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(322, '2021-05-25 09:58:33.071993', '51', 'YFH-631GS Bb Flugelhorn Professional Model in Silver-plated finish', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(323, '2021-05-25 09:58:50.144412', '46', 'YEP-642T Neo Euphonium with Trigger System', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(324, '2021-05-25 09:59:01.759344', '2', 'GF310NPA', 2, '[]', 10, 1),
(325, '2021-05-25 09:59:11.606555', '4', 'Yamaha NU1X AvantGrand Hybrid Upright Piano', 2, '[]', 10, 1),
(326, '2021-05-25 09:59:32.607373', '5', 'Yamaha AvantGrand N1X Hybrid Piano', 2, '[{\"changed\": {\"fields\": [\"Amount\"]}}]', 10, 1),
(327, '2021-05-25 09:59:54.037973', '4', 'Yamaha NU1X AvantGrand Hybrid Upright Piano', 2, '[{\"changed\": {\"fields\": [\"Amount\"]}}]', 10, 1),
(328, '2021-05-25 10:00:08.700975', '5', 'Yamaha AvantGrand N1X Hybrid Piano', 2, '[]', 10, 1),
(329, '2021-05-25 10:00:22.603849', '6', 'Yamaha AvantGrand N2 Hybrid Piano', 2, '[{\"changed\": {\"fields\": [\"Amount\"]}}]', 10, 1),
(330, '2021-05-25 10:00:40.958122', '7', 'Yamaha AvantGrand N3X Hybrid Piano', 2, '[{\"changed\": {\"fields\": [\"Amount\"]}}]', 10, 1),
(331, '2021-05-25 10:01:18.658749', '9', 'Yamaha Genos Workstation Keyboard', 2, '[{\"changed\": {\"fields\": [\"Amount\"]}}]', 10, 1),
(332, '2021-05-25 10:01:32.077065', '10', 'Yamaha Genos Workstation Essential Pack', 2, '[{\"changed\": {\"fields\": [\"Amount\"]}}]', 10, 1),
(333, '2021-05-25 10:02:01.401709', '11', 'Yamaha Genos Workstation Ultimate Pack', 2, '[{\"changed\": {\"fields\": [\"Amount\"]}}]', 10, 1),
(334, '2021-05-25 10:02:23.397922', '12', 'Yamaha SB7X Silent Brass System For Trumpet & Cornet', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(335, '2021-05-25 10:02:45.662707', '13', 'Yamaha PM7X SILENT Brass Pickup Mute for Trumpet & Cornet', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(336, '2021-05-25 10:03:02.991232', '14', 'Yamaha PM-2X Silent Brass Pickup Mute for Euphonium', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(337, '2021-05-25 10:03:18.479225', '15', 'Yamaha SB2X Silent Brass System For Euphonium', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(338, '2021-05-25 10:03:51.178523', '25', 'Yamaha YCL-450 Mk III Bb Clarinet', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(339, '2021-05-25 10:04:40.575356', '24', 'Yamaha YCL-255S Bb Clarinet', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(340, '2021-05-25 10:05:08.936427', '23', 'Yamaha YFG-821II Bassoon', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(341, '2021-05-25 10:05:25.268706', '22', 'Yamaha YFG-812II Bassoon', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(342, '2021-05-25 10:05:43.293035', '21', 'Yamaha VA7SG 16 inch Viola Outfit', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(343, '2021-05-25 10:08:38.035800', '20', 'Yamaha VA5S 16 inch Viola Outfit', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(344, '2021-05-25 10:09:43.875571', '19', 'Yamaha VA5S 13 inch Viola Outfit', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(345, '2021-05-25 10:10:38.886119', '21', 'Yamaha VA7SG 16 inch Viola Outfit', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(346, '2021-05-25 10:12:15.608077', '18', 'Yamaha VC7SG Full Size (4/4) Cello Outfit', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(347, '2021-05-25 10:13:03.134294', '17', 'Yamaha VC5S Full Size (4/4) Cello Outfit', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(348, '2021-05-25 10:13:25.768210', '16', 'Yamaha SB1X Silent Brass System for Tuba', 2, '[{\"changed\": {\"fields\": [\"Amount\"]}}]', 10, 1),
(349, '2021-05-25 10:14:00.129863', '35', 'Yamaha YBH-301 Mk II Bb Baritone Horn in Silver-Plated Finish', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(350, '2021-05-25 10:14:13.382051', '34', 'Yamaha YBH-301 Mk II Bb Baritone Horn', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(351, '2021-05-25 10:14:27.851964', '33', 'Yamaha CB-8036 36x18 inch Bass Drum', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(352, '2021-05-25 10:15:09.420463', '32', 'Yamaha CB-7028 28x14 inch Bass Drum', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(353, '2021-05-25 10:16:07.734167', '31', 'Yamaha CB-7024 24x14 inch Bass Drum', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(354, '2021-05-25 10:16:36.125827', '30', 'Yamaha SBP0F5-HA Stage Custom Birch Shell Set', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(355, '2021-05-25 10:17:01.321487', '29', 'Yamaha Rydeen Drum Shell Kit With Hardware 22\" Kick Drum', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(356, '2021-05-25 10:17:29.552209', '28', 'Yamaha Rydeen Drum Shell Kit With Hardware 20\" Kick Drum', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(357, '2021-05-25 10:17:50.617216', '27', 'Yamaha YCL-CSVII Bb Clarinet', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(358, '2021-05-25 10:18:16.370952', '26', 'Yamaha YCL-221IIS Bb Bass Clarinet', 2, '[{\"changed\": {\"fields\": [\"Amount\", \"Detail\"]}}]', 10, 1),
(359, '2021-05-25 10:18:38.513397', '36', 'Yamaha YBH-621S 4-Valve Bb Baritone Horn', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(360, '2021-05-25 10:18:51.236333', '37', 'Yamaha YBH-621 4-Valve Bb Baritone Horn', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(361, '2021-05-25 10:19:04.468748', '38', 'Yamaha YBH-831 3-Valve Bb Baritone Horn', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(362, '2021-05-25 10:19:20.991774', '39', 'YCR-2330III Bb Cornet', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(363, '2021-05-25 10:19:43.733454', '40', 'YCR-2330SIII Bb Cornet', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(364, '2021-05-25 10:20:02.800253', '41', 'YCR-9435 C Cornet', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(365, '2021-05-25 10:20:18.483586', '42', 'YCR-2610SIII Eb Soprano Cornet', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(366, '2021-05-25 10:20:42.153965', '43', 'YCR-8620 Eb Soprano Cornet', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(367, '2021-05-25 10:21:16.497560', '44', 'YEP-201S 3-Valve Bb Euphonium', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(368, '2021-05-25 10:21:34.408489', '45', 'YEP-211 3-Valve Euphonium - Bell front version', 2, '[]', 10, 1),
(369, '2021-05-25 10:21:51.199050', '46', 'YEP-642T Neo Euphonium with Trigger System', 2, '[]', 10, 1),
(370, '2021-05-25 10:22:07.797145', '47', 'YEP-642TS Neo Euphonium with Trigger System', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(371, '2021-05-25 10:22:21.432521', '48', 'YEP-842TS Custom Euphonium', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(372, '2021-05-25 10:22:35.893941', '49', 'YFH-631G Bb Flugelhorn', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(373, '2021-05-25 10:22:49.679097', '50', 'Yamaha YFH-8315G Bb Flugelhorn', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(374, '2021-05-25 10:23:05.304898', '52', 'Yamaha YFH-8315GS Bb Flugelhorn', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(375, '2021-05-25 10:23:32.594354', '55', 'Deluxe Smart Piano Pack', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(376, '2021-05-25 10:23:50.777019', '54', 'Hybrid Pianos', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(377, '2021-05-25 10:24:15.453599', '53', 'Yamaha YFH-8310ZG Bb Flugelhorn \'Bobby Shew\'', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(378, '2021-05-25 10:26:18.799285', '57', 'Clavinova Digital Pianos 2', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(379, '2021-05-25 10:27:12.991127', '56', 'CLP-735 Clavinova Digital Piano', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(380, '2021-05-25 10:27:43.625891', '57', 'CLP-735 Clavinova Digital Piano Essential Pack', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(381, '2021-05-25 10:28:32.200352', '58', 'CLP-735 Clavinova Digital Piano Essential Pack', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(382, '2021-05-25 10:29:19.082292', '59', 'CLP-735 Clavinova Digital Piano Essential Pack', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(383, '2021-05-25 10:30:45.908494', '60', 'YDP-144 Arius Digital Piano', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(384, '2021-05-25 10:32:28.174521', '61', 'YDP-144 Arius Digital Piano', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(385, '2021-05-25 10:32:46.918618', '60', 'YDP-144 Arius Digital Piano In Rosewood Finish', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(386, '2021-05-25 10:33:22.382089', '62', 'YDP-144 Arius Digital Piano In White Finish', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(387, '2021-05-25 10:34:00.132737', '63', 'YDP-164 Arius Digital Piano In White Ash Finish', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(388, '2021-05-25 10:35:00.313844', '64', 'YDP-S54 Arius Digital Piano', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(389, '2021-05-25 10:36:21.452974', '65', 'DGX670 Pack in Black, with stand and pedal', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(390, '2021-05-25 10:37:29.323216', '66', 'P-45 Digital Piano Deluxe Pack', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(391, '2021-05-25 10:38:06.760021', '68', 'P-125 Deluxe Digital Piano Pack', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(392, '2021-05-25 10:39:20.982626', '67', 'P-121 Digital Piano Student Pack', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(393, '2021-05-25 10:40:09.704014', '69', 'P-515 Digital Piano Pianist Pack', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(394, '2021-05-25 10:40:55.636897', '70', 'CP88 Stage Piano With 88-Note, Weighted Natural Wood', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(395, '2021-05-25 10:42:01.445345', '71', 'CP4 Digital Stage Pianos', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(396, '2021-05-25 10:42:33.499176', '72', 'Digital Stage Pianos CP4', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(397, '2021-05-25 10:42:57.719381', '73', 'Digital Stage Pianos 1', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(398, '2021-05-25 10:43:28.653709', '74', 'CP300 Stage Piano	 88-key Graded Hammer', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(399, '2021-05-25 10:44:11.482958', '72', 'Digital Stage Pianos CP4', 3, '', 10, 1),
(400, '2021-05-25 10:44:36.841165', '71', 'CP73 Stage Piano', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(401, '2021-05-25 10:44:47.152946', '73', 'Digital Stage Pianos 1', 3, '', 10, 1),
(402, '2021-05-25 10:45:22.162769', '75', 'Stage Drums', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(403, '2021-05-25 10:45:37.200534', '76', 'Recording Drums', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(404, '2021-05-25 10:45:50.538576', '77', 'Hybrid Maple Jazz Drum', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(405, '2021-05-25 10:51:46.390438', '78', 'Yamaha Absolute Hybrid Maple Rock Drum Set', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(406, '2021-05-25 10:53:41.667434', '77', 'Absolute Hybrid Maple Fusion Drum Set', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(407, '2021-05-25 10:54:05.219227', '79', 'Absolute Hybrid Maple Jazz Drum Set', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(408, '2021-05-25 10:55:00.063966', '80', 'DTX400 Series Kits', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(409, '2021-05-25 10:55:24.224087', '81', 'Electronic Drum 1', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(410, '2021-05-25 10:56:14.267629', '80', 'DTX402K Electronic Drum Kit', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(411, '2021-05-25 10:57:20.755724', '81', 'DTX482K Electronic Drum Kit', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(412, '2021-05-25 10:57:39.342574', '80', 'DTX402K Electronic Drum Kit', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(413, '2021-05-25 10:58:32.089105', '82', 'Electronic Drum 2', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(414, '2021-05-25 10:59:02.397087', '81', 'DTX408K Electronic Drum Kit', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(415, '2021-05-25 10:59:12.605677', '82', 'DTX482K Electronic Drum Kit', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(416, '2021-05-25 10:59:38.689794', '83', 'DTX452K Electronic Drum Kit', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(417, '2021-05-25 11:00:23.405865', '84', 'DTX6KXUK Electronic Drum Kit', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(418, '2021-05-25 11:01:24.620645', '85', 'Yamaha EAD10 Electro-Acoustic Drum System', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(419, '2021-05-25 11:02:28.243991', '86', 'Bass Drums', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(420, '2021-05-25 11:05:00.061694', '86', 'CB-7024 24x14 inch Bass Drum CB-7000 Series model with Birch ply', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Amount\", \"Detail\"]}}]', 10, 1),
(421, '2021-05-25 11:06:06.299139', '87', 'CB-7028 28x14 inch Bass Drum CB-7000 Series model with Birch ply', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(422, '2021-05-25 11:07:03.196863', '88', 'CB-7032 32x16 inch Bass Drum CB-7000 Series model with Birch ply', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(423, '2021-05-25 11:07:14.006465', '87', 'CB-7028 28x14 inch Bass Drum CB-7000 Series model with Birch ply', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(424, '2021-05-25 11:08:16.975749', '89', 'CB-8032 32x18 inch Bass Drum CB-8000 Series model with Maple shell', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(425, '2021-05-25 11:09:17.386670', '90', 'CB-9032 32x20 inch Bass Drum CB-9000 Series model with Maple shell', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(426, '2021-05-25 11:11:35.202564', '91', 'KSD-255 14x5 inch Snare Drum	 Student model with Steel shell', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(427, '2021-05-25 11:12:34.654266', '92', 'CSM-1350 AII 13x5 inch Snare Drum Maple shell in Natural Vintage finish', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(428, '2021-05-25 11:12:55.579398', '93', 'Snare Drums 2', 3, '', 10, 1),
(429, '2021-05-25 11:14:12.099778', '94', 'CSM-1450 AII 14x5 inch Snare Drum Maple shell in Natural Vintage finish', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(430, '2021-05-25 11:15:29.237940', '95', 'CSM-1465 AII 14x6.5 inch Snare Drum Maple shell in Natural Vintage finish', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}]', 10, 1),
(431, '2021-05-25 11:20:42.517203', '96', 'Yamaha CSF1M Acoustic Guitar', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 10, 1),
(432, '2021-05-25 11:21:41.335953', '97', 'Acoustic Guitars 1', 3, '', 10, 1),
(433, '2021-05-25 11:25:56.812782', '96', 'Yamaha CSF1M Acoustic Guitar', 2, '[{\"changed\": {\"name\": \"images\", \"object\": \"Images object (217)\", \"fields\": [\"Image\"]}}]', 10, 1),
(434, '2021-05-25 11:27:15.142558', '96', 'Yamaha CSF1M Acoustic Guitar', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(435, '2021-05-25 11:28:19.702056', '98', 'Acoustic Guitars 2', 3, '', 10, 1),
(436, '2021-05-25 11:31:15.925832', '99', 'Revstar RS320 Electric Guitar In Ice Blue Finish', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Image\", \"Slug\"]}}]', 10, 1),
(437, '2021-05-25 11:31:29.350537', '99', 'Revstar RS320 Electric Guitar', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(438, '2021-05-25 11:33:24.690794', '100', 'Electric Guiters 1', 3, '', 10, 1),
(439, '2021-05-25 11:48:52.379257', '99', 'Revstar RS320 Electric Guitar', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (229)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (230)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (231)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (232)\", \"fields\": [\"Image\"]}}]', 10, 1),
(440, '2021-05-25 11:49:46.957500', '99', 'Revstar RS320 Electric Guitar', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(441, '2021-05-25 11:51:19.880404', '99', 'Revstar RS320 Electric Guitar', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(442, '2021-05-25 12:06:48.824443', '101', 'Electric Guiters 2', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Slug\"]}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (608)\"}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (237)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (238)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (239)\", \"fields\": [\"Image\"]}}]', 10, 1),
(443, '2021-05-25 12:07:28.904953', '101', 'Revstar RS320 Electric Guitar In Vintage White Finish', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(444, '2021-05-25 12:07:51.251523', '101', 'Revstar RS320 Electric Guitar In Vintage White Finish', 2, '[{\"changed\": {\"name\": \"images\", \"object\": \"Images object (240)\", \"fields\": [\"Image\"]}}]', 10, 1),
(445, '2021-05-25 12:09:20.417651', '101', 'Revstar RS320 Electric Guitar In Vintage White Finish', 2, '[{\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}]', 10, 1),
(446, '2021-05-25 12:09:58.233100', '101', 'Revstar RS320 Electric Guitar In Vintage White Finish', 2, '[{\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}]', 10, 1),
(447, '2021-05-25 12:11:45.944616', '101', 'Revstar RS320 Electric Guitar In Vintage White Finish', 2, '[{\"changed\": {\"name\": \"images\", \"object\": \"Images object (237)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (238)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (239)\", \"fields\": [\"Image\"]}}]', 10, 1),
(448, '2021-05-25 12:12:53.864727', '101', 'Revstar RS320 Electric Guitar In Vintage White Finish', 2, '[{\"changed\": {\"name\": \"images\", \"object\": \"Images object (238)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (239)\", \"fields\": [\"Image\"]}}]', 10, 1),
(449, '2021-05-25 12:13:34.656599', '101', 'Revstar RS320 Electric Guitar In Vintage White Finish', 2, '[{\"changed\": {\"name\": \"images\", \"object\": \"Images object (239)\", \"fields\": [\"Image\"]}}]', 10, 1),
(450, '2021-05-25 12:14:03.336179', '101', 'Revstar RS320 Electric Guitar In Vintage White Finish', 2, '[{\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}]', 10, 1),
(451, '2021-05-25 12:14:41.101102', '102', 'Electric Guitars 3', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 10, 1),
(452, '2021-05-25 12:14:59.471823', '104', 'Electro Acoustic Guitar', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 10, 1),
(453, '2021-05-25 12:15:15.545703', '105', 'Electro Acoustic Guitar 1', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 10, 1),
(454, '2021-05-25 12:15:38.009828', '106', 'Electro Acoustic Guitar 2', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 10, 1),
(455, '2021-05-25 12:15:58.279904', '107', 'Electro Acoustic Guitar 3', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 10, 1),
(456, '2021-05-25 12:16:15.368729', '108', 'Electro Acoustic Guitar 4', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 10, 1),
(457, '2021-05-25 12:16:33.744075', '109', 'Bass Guitar', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 10, 1),
(458, '2021-05-25 12:16:49.899217', '110', 'Bass Guitar 1', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 10, 1),
(459, '2021-05-25 12:17:04.886749', '111', 'Bass Guitar 2', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 10, 1),
(460, '2021-05-25 12:17:22.557401', '112', 'Bass Guitar 3', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 10, 1),
(461, '2021-05-25 12:17:40.343843', '114', 'Classic Guitar', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(462, '2021-05-25 12:18:18.728398', '113', 'Bass Guiter 4', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 10, 1),
(463, '2021-05-25 12:18:28.435824', '113', 'Bass Guitar 4', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(464, '2021-05-25 12:18:37.846935', '115', 'Classic Guitar 1', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(465, '2021-05-25 12:18:57.150986', '116', 'Classic Guitar 2', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 10, 1),
(466, '2021-05-25 12:19:23.478863', '117', 'Classic Guitar 3', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 10, 1),
(467, '2021-05-25 12:20:07.794261', '117', 'Classic Guitar 3', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 10, 1),
(468, '2021-05-25 12:20:21.567145', '118', 'Classic Guitar 4', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 10, 1),
(469, '2021-05-25 12:26:11.930279', '102', 'Electric Guitars 3', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Detail\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (241)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (242)\", \"fields\": [\"Image\"]}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}]', 10, 1),
(470, '2021-05-25 12:26:33.835765', '102', 'Revstar RS420 Electric Guitar In Maya Gold Finish', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(471, '2021-05-25 12:33:40.607994', '103', 'Revstar RS620 Electric Guitar In Snake Eye Green Finish', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Image\", \"Detail\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (245)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (246)\", \"fields\": [\"Image\"]}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}]', 10, 1),
(472, '2021-05-25 12:35:19.270057', '103', 'Revstar RS620 Electric Guitar In Snake Eye Green Finish', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(473, '2021-05-25 12:41:58.465186', '104', 'FX370C Electro-Acoustic Guitar In Natural finish', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Image\", \"Detail\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (249)\", \"fields\": [\"Image\"]}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}]', 10, 1),
(474, '2021-05-25 12:42:23.360083', '104', 'FX370C Electro-Acoustic Guitar In Natural finish', 2, '[{\"added\": {\"name\": \"images\", \"object\": \"Images object (609)\"}}]', 10, 1),
(475, '2021-05-25 12:48:10.377986', '105', 'CPX700 II Electro-Acoustic Guitar in Black finish', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Image\", \"Detail\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (253)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (254)\", \"fields\": [\"Image\"]}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}]', 10, 1),
(476, '2021-05-25 12:53:36.300208', '106', 'Yamaha CPX700 II Electro Acoustic Guitar in Sandburst finish', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Image\", \"Detail\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (257)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (258)\", \"fields\": [\"Image\"]}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}]', 10, 1),
(477, '2021-05-25 12:58:12.378853', '107', 'Yamaha APX600 Electro-Acoustic Guitar In Oriental Blue Burst Finish', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Detail\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (261)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (262)\", \"fields\": [\"Image\"]}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}]', 10, 1),
(478, '2021-05-25 13:05:57.816030', '108', 'Electro Acoustic Guitar 4', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Detail\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (265)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (266)\", \"fields\": [\"Image\"]}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}]', 10, 1),
(479, '2021-05-25 13:06:16.139777', '108', 'FS-TA TransAcoustic Guitar In Raspberry Red Finish', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(480, '2021-05-25 13:08:31.737410', '108', 'FS-TA TransAcoustic Guitar In Raspberry Red Finish', 2, '[]', 10, 1),
(481, '2021-05-25 13:22:11.794154', '109', 'Bass Guitar', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (269)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"images\", \"object\": \"Images object (270)\", \"fields\": [\"Image\"]}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}, {\"deleted\": {\"name\": \"images\", \"object\": \"Images object (None)\"}}]', 10, 1),
(482, '2021-05-25 13:22:34.168046', '109', 'Yamaha TRBX605FM 5-String Electric Bass Guitar In Dark Red Burst Finish', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(483, '2021-05-25 13:31:02.688920', '176', 'Silent Violin 4', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(484, '2021-05-25 13:34:03.438506', '139', 'Marimbas', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(485, '2021-05-25 13:34:17.798721', '140', 'Marimbas 1', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(486, '2021-05-25 13:34:30.968567', '141', 'Marimbas 2', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(487, '2021-05-25 13:34:44.023643', '142', 'Marimbas 3', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(488, '2021-05-25 13:34:55.186374', '143', 'Marimbas 4', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(489, '2021-05-25 13:35:39.058220', '144', 'Orchestral Bells', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(490, '2021-05-25 13:35:50.038973', '145', 'Orchestral Bells 1', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(491, '2021-05-25 13:36:05.781125', '146', 'Orchestral Bells 2', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(492, '2021-05-25 13:37:25.116557', '158', 'Cellos 1', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(493, '2021-05-25 13:37:57.365261', '157', 'Cellos', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(494, '2021-05-25 13:38:19.251764', '159', 'Cellos 2', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(495, '2021-05-25 13:38:34.700593', '160', 'Violas', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(496, '2021-05-25 13:38:50.729844', '161', 'Violas 1', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(497, '2021-05-25 13:39:03.059654', '162', 'Violins', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(498, '2021-05-25 13:39:12.274985', '163', 'Violins 1', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(499, '2021-05-25 13:39:21.866139', '164', 'Violins 2', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(500, '2021-05-25 13:39:33.294102', '165', 'Violins 3', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(501, '2021-05-25 13:39:49.485083', '166', 'Violins 4', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(502, '2021-05-25 13:49:28.208774', '167', 'Electric Violin', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(503, '2021-05-25 13:49:42.081535', '168', 'Electric Violin 1', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(504, '2021-05-25 13:49:53.345760', '174', 'Silent Violin 2', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(505, '2021-05-25 13:50:05.071954', '175', 'Silent Violin 3', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(506, '2021-05-25 13:50:22.404265', '173', 'Silent Violin 1', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(507, '2021-05-25 13:50:34.718529', '172', 'Silent Violin', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(508, '2021-05-25 13:50:51.641632', '170', 'Electric Violin 3', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(509, '2021-05-25 13:51:26.495728', '169', 'Electric Violin 2', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(510, '2021-05-25 13:52:09.317546', '177', 'Flutes', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(511, '2021-05-25 13:52:23.787174', '178', 'Flutes 1', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(512, '2021-05-25 13:52:41.438565', '179', 'Flutes 2', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(513, '2021-05-25 13:52:57.446196', '180', 'Flutes 3', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(514, '2021-05-25 13:53:12.888563', '181', 'Flutes 4', 2, '[{\"changed\": {\"fields\": [\"Detail\"]}}]', 10, 1),
(515, '2021-05-26 04:26:29.744692', '1', 'E-com', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(516, '2021-05-26 04:26:48.141331', '1', 'E-com', 2, '[]', 7, 1),
(517, '2021-05-26 04:28:12.392888', '1', 'SAREGAMAPA', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 7, 1),
(518, '2021-05-26 04:29:27.810094', '1', 'lkfsadhdsaf', 3, '', 19, 1),
(519, '2021-05-26 04:29:43.518212', '3', 'Problem', 3, '', 17, 1),
(520, '2021-05-26 04:29:50.367171', '1', 'String Problem', 3, '', 17, 1),
(521, '2021-05-26 04:29:56.901578', '2', 'String Problem', 3, '', 17, 1),
(522, '2021-06-03 11:12:51.965676', '4', 'Enamul', 3, '', 4, 1),
(523, '2021-06-03 11:13:10.495770', '3', 'MehediHasan', 3, '', 4, 1),
(524, '2021-06-03 11:54:43.463026', '39', 'YCR-2330III Bb Cornet', 3, '', 10, 1),
(525, '2021-06-03 12:07:04.447597', '1', 'SAREGAMAPA', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(526, '2021-06-03 16:30:57.785604', '13', 'Sound', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 12, 1),
(527, '2021-06-14 12:55:19.814576', '43', '2 X Yamaha AvantGrand N1X Hybrid Piano', 3, '', 13, 1),
(528, '2021-06-14 12:55:20.041274', '42', '2 X Yamaha Revstar RS320 Electric Guitar', 3, '', 13, 1),
(529, '2021-06-14 12:56:24.321570', '19', 'Order object (19)', 3, '', 14, 1),
(530, '2021-06-14 12:56:24.519417', '18', 'Order object (18)', 3, '', 14, 1),
(531, '2021-06-14 12:56:24.631599', '17', 'Order object (17)', 3, '', 14, 1),
(532, '2021-06-14 12:56:24.774419', '15', 'Order object (15)', 3, '', 14, 1),
(533, '2021-06-14 12:56:24.895069', '13', 'Order object (13)', 3, '', 14, 1),
(534, '2021-06-14 12:56:25.016863', '12', 'Order object (12)', 3, '', 14, 1),
(535, '2021-06-14 15:57:33.294162', '14', 'Sound', 3, '', 12, 1),
(536, '2021-06-14 16:19:38.467782', '4', 'SyedMehedi', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 16, 1),
(537, '2021-06-14 16:20:11.322918', '4', 'SyedMehedi', 3, '', 16, 1),
(538, '2021-06-14 16:20:37.057919', '5', 'SyedMehedi', 3, '', 4, 1),
(539, '2021-06-14 16:36:55.650551', '15', 'Sound', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 12, 1),
(540, '2021-06-15 10:34:18.868818', '1', 'Mehedi', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 1),
(541, '2021-06-15 11:23:49.124180', '2', 'BillingAddress object (2)', 3, '', 20, 1),
(542, '2021-06-15 11:38:56.634565', '23', 'Order object (23)', 3, '', 14, 1),
(543, '2021-06-15 11:54:13.966224', '2', 'Do it align', 3, '', 19, 1),
(544, '2021-06-15 12:10:04.543432', '13', 'Sound', 3, '', 12, 1),
(545, '2021-06-15 12:10:04.668515', '12', 'Hmm', 3, '', 12, 1),
(546, '2021-06-15 12:10:04.841631', '11', 'HEY', 3, '', 12, 1),
(547, '2021-06-15 12:10:04.962710', '10', 'Hi', 3, '', 12, 1),
(548, '2021-06-15 12:10:05.270917', '9', 'Sound', 3, '', 12, 1),
(549, '2021-06-15 12:10:05.699202', '8', 'hi', 3, '', 12, 1),
(550, '2021-06-15 12:10:05.952370', '7', 'Mr.', 3, '', 12, 1),
(551, '2021-06-15 12:10:06.095465', '6', 'Hello', 3, '', 12, 1),
(552, '2021-06-15 12:10:06.347634', '5', 'good', 3, '', 12, 1),
(553, '2021-06-15 12:10:19.280993', '4', 'hello', 3, '', 12, 1),
(554, '2021-06-15 12:10:19.388321', '3', 'Hello', 3, '', 12, 1),
(555, '2021-06-15 12:10:19.506972', '2', 'Feedback', 3, '', 12, 1),
(556, '2021-06-17 12:08:51.505014', '1', 'SaReGaMaPa', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 7, 1),
(557, '2021-06-21 14:54:25.490972', '196', 'dafgdfg', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (610)\"}}]', 10, 1),
(558, '2021-06-21 14:54:52.262129', '196', 'dafgdfg', 3, '', 10, 1),
(559, '2021-06-22 19:09:20.207696', '2', 'Your product is very good. Delivery system is also very good.', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(560, '2021-06-22 19:18:08.067792', '53', 'Tabla', 1, '[{\"added\": {}}]', 9, 1),
(561, '2021-06-23 07:02:55.848620', '53', 'Tabla', 3, '', 9, 1),
(562, '2021-06-23 07:37:42.859512', '29', 'ce84b96b-d326-4406-b37b-16ed3d1845f7', 3, '', 14, 1),
(563, '2021-06-23 07:37:42.984893', '28', 'be0e5b08-d188-4f98-9516-24e88dddfd30', 3, '', 14, 1),
(564, '2021-06-23 07:37:43.127490', '26', '0d0ad4ca-4d14-4f3f-b61d-2061f3e57915', 3, '', 14, 1),
(565, '2021-06-23 07:37:43.369338', '25', '9a3658bb-7c3d-49f5-89d2-918740b81eff', 3, '', 14, 1),
(566, '2021-06-23 07:37:43.586277', '24', 'a4da4810-8c62-401f-9da8-b284c604ce71', 3, '', 14, 1),
(567, '2021-06-23 07:37:43.711146', '22', 'a3d58ad7-919b-46d9-9fb5-6c2cbfffe674', 3, '', 14, 1),
(568, '2021-06-23 07:37:44.183192', '21', '852656e2-e0be-4a25-9f30-52ac9d3439ef', 3, '', 14, 1),
(569, '2021-06-23 07:37:44.425170', '20', 'ed9b0699-b9af-4375-89d8-408577173ed4', 3, '', 14, 1),
(570, '2021-06-23 07:44:15.557725', '77', '1 X Yamaha JR2 Small Bodied Acoustic Guitar', 3, '', 13, 1),
(571, '2021-06-23 07:44:15.673182', '74', '1 X Revstar RS320 Electric Guitar', 3, '', 13, 1),
(572, '2021-06-23 07:44:15.793469', '72', '1 X Yamaha NU1X AvantGrand Hybrid Upright Piano', 3, '', 13, 1),
(573, '2021-06-23 07:44:16.046667', '71', '3 X GF310NPA', 3, '', 13, 1),
(574, '2021-06-23 07:44:16.189703', '70', '1 X Yamaha AvantGrand N2 Hybrid Piano', 3, '', 13, 1),
(575, '2021-06-23 07:44:16.310631', '69', '2 X PSS-E30 (Remie) Home Keyboard with Mini Keys', 3, '', 13, 1),
(576, '2021-06-23 07:44:16.431549', '66', '1 X Yamaha Revstar RS320 Electric Guitar', 3, '', 13, 1),
(577, '2021-06-23 07:44:16.553288', '65', '2 X PSS-E30 (Remie) Home Keyboard with Mini Keys', 3, '', 13, 1),
(578, '2021-06-23 07:44:16.673579', '63', '2 X Yamaha CPX700 II Electro Acoustic Guitar in Sandburst finish', 3, '', 13, 1),
(579, '2021-06-23 07:44:16.817303', '62', '1 X Classic Guitar 1', 3, '', 13, 1),
(580, '2021-06-23 07:44:16.938226', '61', '1 X Flutes 3', 3, '', 13, 1),
(581, '2021-06-23 07:44:17.178941', '56', '1 X Sonogenic Keyboard', 3, '', 13, 1),
(582, '2021-06-23 07:44:17.322896', '55', '1 X GF310NPA', 3, '', 13, 1),
(583, '2021-06-23 07:44:17.443314', '54', '2 X Yamaha Revstar RS320 Electric Guitar', 3, '', 13, 1),
(584, '2021-06-23 07:44:17.501477', '53', '1 X Yamaha Genos Workstation Ultimate Pack', 3, '', 13, 1),
(585, '2021-06-23 07:44:17.597228', '51', '1 X Piccolos 4', 3, '', 13, 1),
(586, '2021-06-23 07:44:33.429682', '50', '2 X PSS-E30 (Remie) Home Keyboard with Mini Keys', 3, '', 13, 1),
(587, '2021-06-23 07:51:30.554004', '197', 'uttfhj', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (611)\"}}, {\"added\": {\"name\": \"images\", \"object\": \"Images object (612)\"}}]', 10, 1),
(588, '2021-06-23 07:52:40.231956', '197', 'uttfhj', 3, '', 10, 1),
(590, '2021-08-15 09:33:13.205034', '8', 'syedmithu', 3, '', 4, 9),
(591, '2021-08-15 09:33:52.023180', '1', 'Mehedi', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 4, 9),
(592, '2021-08-15 09:34:07.698655', '1', 'Mehedi', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'EcomApp', 'contactmessage'),
(7, 'EcomApp', 'setting'),
(17, 'ForumApp', 'blog'),
(19, 'ForumApp', 'comment'),
(18, 'ForumApp', 'likes'),
(20, 'OrderApp', 'billingaddress'),
(15, 'OrderApp', 'oderproduct'),
(14, 'OrderApp', 'order'),
(13, 'OrderApp', 'shopcart'),
(21, 'PaymentApp', 'billingaddress'),
(9, 'Product', 'category'),
(12, 'Product', 'comment'),
(11, 'Product', 'images'),
(10, 'Product', 'product'),
(6, 'sessions', 'session'),
(16, 'UserApp', 'userprofile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'EcomApp', '0001_initial', '2021-05-05 18:02:16.075608'),
(2, 'EcomApp', '0002_contactmessage', '2021-05-05 18:02:16.977961'),
(3, 'EcomApp', '0003_auto_20200921_2201', '2021-05-05 18:02:20.693111'),
(4, 'EcomApp', '0004_auto_20200921_2243', '2021-05-05 18:02:23.815511'),
(5, 'EcomApp', '0005_faq', '2021-05-05 18:02:24.711954'),
(6, 'EcomApp', '0006_auto_20210505_2316', '2021-05-05 18:02:30.356005'),
(7, 'contenttypes', '0001_initial', '2021-05-05 18:02:32.470405'),
(8, 'auth', '0001_initial', '2021-05-05 18:02:38.617793'),
(9, 'Product', '0001_initial', '2021-05-05 18:03:06.528569'),
(10, 'Product', '0002_product', '2021-05-05 18:03:11.743681'),
(11, 'Product', '0003_images', '2021-05-05 18:03:16.297234'),
(12, 'Product', '0004_auto_20200905_1148', '2021-05-05 18:03:20.540403'),
(13, 'Product', '0005_auto_20200905_1221', '2021-05-05 18:03:20.753272'),
(14, 'Product', '0006_auto_20200905_1228', '2021-05-05 18:03:21.083576'),
(15, 'Product', '0007_auto_20200906_1058', '2021-05-05 18:03:21.549471'),
(16, 'Product', '0008_auto_20200906_1105', '2021-05-05 18:03:22.285983'),
(17, 'Product', '0009_auto_20200919_0027', '2021-05-05 18:03:28.311699'),
(18, 'OrderApp', '0001_initial', '2021-05-05 18:03:30.783332'),
(19, 'OrderApp', '0002_oderproduct_order', '2021-05-05 18:03:39.406469'),
(20, 'Product', '0010_comment', '2021-05-05 18:03:55.790987'),
(21, 'Product', '0011_color', '2021-05-05 18:04:05.016719'),
(22, 'Product', '0012_size_variants', '2021-05-05 18:04:07.704465'),
(23, 'Product', '0013_product_variant', '2021-05-05 18:04:22.798431'),
(24, 'Product', '0014_auto_20201109_0903', '2021-05-05 18:05:01.076183'),
(25, 'Product', '0015_auto_20210505_2241', '2021-05-05 18:05:01.386942'),
(26, 'Product', '0016_auto_20210505_2300', '2021-05-05 18:05:01.581700'),
(27, 'Product', '0017_auto_20210505_2316', '2021-05-05 18:05:13.274318'),
(28, 'UserApp', '0001_initial', '2021-05-05 18:05:14.906003'),
(29, 'admin', '0001_initial', '2021-05-05 18:05:22.351941'),
(30, 'admin', '0002_logentry_remove_auto_add', '2021-05-05 18:05:30.234168'),
(31, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-05 18:05:30.455149'),
(32, 'contenttypes', '0002_remove_content_type_name', '2021-05-05 18:05:33.294565'),
(33, 'auth', '0002_alter_permission_name_max_length', '2021-05-05 18:05:37.425365'),
(34, 'auth', '0003_alter_user_email_max_length', '2021-05-05 18:05:38.065940'),
(35, 'auth', '0004_alter_user_username_opts', '2021-05-05 18:05:38.267285'),
(36, 'auth', '0005_alter_user_last_login_null', '2021-05-05 18:05:41.193275'),
(37, 'auth', '0006_require_contenttypes_0002', '2021-05-05 18:05:41.417246'),
(38, 'auth', '0007_alter_validators_add_error_messages', '2021-05-05 18:05:41.725054'),
(39, 'auth', '0008_alter_user_username_max_length', '2021-05-05 18:05:42.639270'),
(40, 'auth', '0009_alter_user_last_name_max_length', '2021-05-05 18:05:43.056311'),
(41, 'auth', '0010_alter_group_name_max_length', '2021-05-05 18:05:43.662026'),
(42, 'auth', '0011_update_proxy_permissions', '2021-05-05 18:05:44.082467'),
(43, 'auth', '0012_alter_user_first_name_max_length', '2021-05-05 18:05:44.769897'),
(44, 'sessions', '0001_initial', '2021-05-05 18:05:45.826334'),
(45, 'ForumApp', '0001_initial', '2021-05-05 19:18:24.714428'),
(46, 'Product', '0018_auto_20210506_0303', '2021-05-05 21:04:23.337443'),
(47, 'Product', '0019_auto_20210506_0310', '2021-05-05 21:11:05.355822'),
(48, 'Product', '0020_auto_20210507_0201', '2021-05-06 20:02:08.389508'),
(49, 'Product', '0020_product_amount', '2021-05-08 18:00:30.380890'),
(50, 'OrderApp', '0003_shopcart_purchased', '2021-05-08 18:00:30.879482'),
(51, 'OrderApp', '0004_auto_20210507_1417', '2021-05-08 18:00:37.639580'),
(52, 'OrderApp', '0005_auto_20210507_1421', '2021-05-08 18:00:37.803248'),
(53, 'OrderApp', '0006_order_ordered', '2021-05-08 18:00:38.807394'),
(54, 'OrderApp', '0007_order_orderitems', '2021-05-08 18:00:39.879659'),
(55, 'OrderApp', '0008_billingaddress', '2021-05-08 18:00:49.656630'),
(56, 'OrderApp', '0009_auto_20210508_1416', '2021-05-08 18:00:56.119329'),
(57, 'UserApp', '0002_auto_20210507_1622', '2021-05-08 18:15:07.185785'),
(58, 'UserApp', '0003_auto_20210507_1708', '2021-05-08 18:15:08.060809'),
(59, 'UserApp', '0004_remove_userprofile_full_name', '2021-05-08 18:15:08.368634'),
(60, 'UserApp', '0005_userprofile_full_name', '2021-05-08 18:15:08.972566'),
(61, 'UserApp', '0006_remove_userprofile_full_name', '2021-05-08 18:15:09.348533'),
(62, 'EcomApp', '0007_auto_20210512_0026', '2021-05-13 10:35:10.590216'),
(63, 'OrderApp', '0002_auto_20210515_1359', '2021-05-15 09:58:52.632281'),
(64, 'PaymentApp', '0001_initial', '2021-05-15 09:58:53.652319'),
(65, 'OrderApp', '0003_delete_billingaddress', '2021-05-15 09:59:20.308836'),
(66, 'OrderApp', '0004_billingaddress', '2021-05-15 10:25:20.624951'),
(67, 'OrderApp', '0005_auto_20210515_2133', '2021-05-15 15:33:20.959019');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0lpvyjnuc56jj1qx3ez4kgdy5nwkd2l5', '.eJxVjEEOgjAQRe_StWlKGejUpXvO0Mx0WosaSCisjHcXEha6_e-9_1aBtrWEraYljKKuqlGX340pPtN0AHnQdJ91nKd1GVkfij5p1cMs6XU73b-DQrXstYfWIyYmdG1kJGs8o2MiSbaHnE12gAY6anvYFbGdzShWfGQwTRPV5wvgJDet:1ljN6G:q4LrE-bATnVw91jHa4nnMWZerngP_w-YjyyAW43YAlM', '2021-06-02 14:23:04.180322'),
('3hnlkfxx78kvff7un3le7rj29fhmnn32', '.eJxVjMEOwiAQBf-FsyFQYGE9evcbCLAgVQNJaU_Gf9cmPej1zcx7MR-2tfpt5MXPxM4M2el3iyE9ctsB3UO7dZ56W5c58l3hBx382ik_L4f7d1DDqN9aFZ2NgeCclFpiyVNxRBBRWgETKgBlyFlCpzEoC9FZHQVJzIkEYGLvD8UDNxU:1mFCRi:oCamIY9yqyLF9hi8TzyenuXCuOLz9LmA6HMglHoyZik', '2021-08-29 09:28:46.217938'),
('8h6kpcepszhszht3v3rbrdif7mzaor2g', '.eJxVjEsOwjAMBe-SNYocq3UCS_acoXJihxRQIvWzqrg7VOoCtm9m3mYGXpcyrLNOwyjmYsicfrfI6al1B_Lgem82tbpMY7S7Yg8621sTfV0P9--g8Fy-NVJI6hFRnGjOPksQH5Pvo5ACCETs2HEHBGcXREMKQD2DCxiJMJn3B_tpN_g:1lvz0t:qY_mlkyLeepDdFRyObJ11n77_baSXHFDEt-OzO9gVJc', '2021-07-07 09:17:39.599181'),
('at9kappdr8kdsl6f10t2tl6ynph5xfyh', '.eJxVjMsOwiAQRf-FtSHA8HTp3m8gM0ClaiAp7cr479qkC93ec859sYjbWuM2yhLnzM7Ms9PvRpgepe0g37HdOk-9rctMfFf4QQe_9lyel8P9O6g46rcGRU4p6xAFSStRWi10MDYpH6wHhX4iypCDKUI6P-UCxhsk0MVZB4G9P7wDNvA:1mF8K6:2UxNRf6cYkaTx3EsjZBuAQ9zzdz7-3nEghmsYJeSwks', '2021-08-29 05:04:38.760914'),
('flsgio8o39xdszs3yhqhpohgzav6c0cg', '.eJxVjMsOwiAUBf-FtSG8CsWle7-BcB-VqoGktCvjv2uTLnR7Zua8RMrbWtLWeUkzibPQRpx-R8j44LoTuud6axJbXZcZ5K7Ig3Z5bcTPy-H-HZTcy7f2Gp2amHC0PBEFF1kPNhuE6CMbi-CQ3eiNhwBBWz9w5gA2YlSKnBLvDyKQOGk:1mVrdG:zAlhh5WvKIRbQBJt6ciXxswVMd4xwAi2Ge0yNvNNmDE', '2021-10-14 08:41:34.794538'),
('g7bmhiumhh6wzlpnz8ibl9bwl9o49pwa', '.eJxVjEEOgjAQRe_StWlKGejUpXvO0Mx0WosaSCisjHcXEha6_e-9_1aBtrWEraYljKKuqlGX340pPtN0AHnQdJ91nKd1GVkfij5p1cMs6XU73b-DQrXstYfWIyYmdG1kJGs8o2MiSbaHnE12gAY6anvYFbGdzShWfGQwTRPV5wvgJDet:1lom3t:QoJzXjX3nAl1vZ5_BR75tZsrOCxFsY1NY4rM8PNsTak', '2021-06-17 12:02:57.609304'),
('iauphdzmndzyi1wdrx5a7bxaxntrdqwz', '.eJxVjEEOgjAQRe_StWkY7JTBpXvO0Ew7U4saSCisjHdXEha6_e-9_zKBt7WEreoSRjEXA-b0u0VOD512IHeebrNN87QuY7S7Yg9a7TCLPq-H-3dQuJZvjeqI1QO6RC26s_QNCFOTIyJjR4pEfQ8CET1ryiDUAlESjT7mjs37A9QEOBY:1leN7S:9nnNnGbELQCq-z2TbTETfmg8rIoTVHptwB8nc7iRqMo', '2021-05-19 19:23:38.205253'),
('j6mop5x85h8kcp0rwmmfph0xu5mjddrb', '.eJxVjEEOgjAQRe_StWkY7JTBpXvO0Ew7U4saSCisjHdXEha6_e-9_zKBt7WEreoSRjEXA-b0u0VOD512IHeebrNN87QuY7S7Yg9a7TCLPq-H-3dQuJZvjeqI1QO6RC26s_QNCFOTIyJjR4pEfQ8CET1ryiDUAlESjT7mjs37A9QEOBY:1lh8kK:sZKqpUK7ZiNb95aM_35q4gp3ipYb5_iBlqm8jpVFt9s', '2021-05-27 10:39:12.493730'),
('jy4f1yseaep9u95lfyla9b39ybfcjzxy', '.eJxVjEEOgjAQRe_StWkY7JTBpXvO0Ew7U4saSCisjHdXEha6_e-9_zKBt7WEreoSRjEXA-b0u0VOD512IHeebrNN87QuY7S7Yg9a7TCLPq-H-3dQuJZvjeqI1QO6RC26s_QNCFOTIyJjR4pEfQ8CET1ryiDUAlESjT7mjs37A9QEOBY:1leOii:G0tlvXBIYXkCxJdtqj3oqdiSnP5j6x4fGIHyPr3hqZY', '2021-05-19 21:06:12.243125'),
('k3aj4blif16qzt3jmg3q7hnx1rao2cb8', '.eJxVjEEOgjAQRe_StWkY7JTBpXvO0Ew7U4saSCisjHdXEha6_e-9_zKBt7WEreoSRjEXA-b0u0VOD512IHeebrNN87QuY7S7Yg9a7TCLPq-H-3dQuJZvjeqI1QO6RC26s_QNCFOTIyJjR4pEfQ8CET1ryiDUAlESjT7mjs37A9QEOBY:1leLxq:ANSuerPJZBhF4pD4VTD6TfTtk0ULGAapyQ5llqFz88A', '2021-05-19 18:09:38.179516'),
('mfdw3xtwyy9zj9akssie2fn7a45rsui8', '.eJxVjEEOwiAQRe_C2hA6QAGX7nsGMnQGqRqalHZlvLtt0oVu_3vvv0XEbS1xa7zEicRVdEpcfseE45PrQeiB9T7Lca7rMiV5KPKkTQ4z8et2un8HBVvZaw9ACCETogUDvcp7y8xAjr3xWjsTOkoMJlulyIPN5HqvrA6gtWfx-QIU-jfY:1mFCf9:cH-lcuZsu_oIQ2dW9nKYx9cXXJBOiO41kB6DsMgGfok', '2021-08-29 09:42:39.389416'),
('oodb3pp6odw0tp6uyloulww7fwgp7ft4', '.eJxVjMsOwiAQRf-FtSHA8HTp3m8gM0ClaiAp7cr479qkC93ec859sYjbWuM2yhLnzM7Ms9PvRpgepe0g37HdOk-9rctMfFf4QQe_9lyel8P9O6g46rcGRU4p6xAFSStRWi10MDYpH6wHhX4iypCDKUI6P-UCxhsk0MVZB4G9P7wDNvA:1mEu8J:Bv8gGsZE2idI_qtVEjeJr7aeJrOiGaAtlH8RMbx-dXQ', '2021-08-28 13:55:31.755436'),
('rd9f5fjywz7xmr2r15aet77oe5xboucb', '.eJxVjEEOwiAQRe_C2pCBMhRcuvcMZBioVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIstDj9bpH4kesO0p3qrUludV3mKHdFHrTLa0v5eTncv4NCvXxrUGysRZU8uwhkCKxWTMADqOQiK4c4DXbQdgSjJxMheQNoRouoPZN4fwC9FzaT:1lhwiH:G0iYLnLUKa-beLAyzFLC497OPwApwEJUj2ctIerBmqc', '2021-05-29 16:00:25.014244'),
('rmev4iwsfijfktrdd196812om2nwdz8v', '.eJxVjEEOgjAQRe_StWkY7JTBpXvO0Ew7U4saSCisjHdXEha6_e-9_zKBt7WEreoSRjEXA-b0u0VOD512IHeebrNN87QuY7S7Yg9a7TCLPq-H-3dQuJZvjeqI1QO6RC26s_QNCFOTIyJjR4pEfQ8CET1ryiDUAlESjT7mjs37A9QEOBY:1lekD7:EpyjMfjtkkIu1W78tge-uZiNq0EGLqakhKvwAm0te2Y', '2021-05-20 20:03:01.192276'),
('vtnksd3rf89krkd62q0vv3yha7jo8ar3', '.eJxVjEEOwiAQRe_C2pCBMhRcuvcMZBioVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIstDj9bpH4kesO0p3qrUludV3mKHdFHrTLa0v5eTncv4NCvXxrUGysRZU8uwhkCKxWTMADqOQiK4c4DXbQdgSjJxMheQNoRouoPZN4fwC9FzaT:1lltpq:sAo3CzkcOjolMElJb3JoUKsqmT9SrST8rKEh3MhkhVo', '2021-06-09 13:44:34.821564');

-- --------------------------------------------------------

--
-- Table structure for table `ecomapp_contactmessage`
--

CREATE TABLE `ecomapp_contactmessage` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(40) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `status` varchar(40) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ecomapp_contactmessage`
--

INSERT INTO `ecomapp_contactmessage` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Syed Md. Mehedi Hasan', 'syedmehedi3012@gmail.com', 'Admire', 'Your product is very good. Delivery system is also very good.', 'Read', '2021-06-14 16:03:55.533596', '2021-06-22 19:09:20.185682');

-- --------------------------------------------------------

--
-- Table structure for table `ecomapp_setting`
--

CREATE TABLE `ecomapp_setting` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `phone` varchar(150) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ecomapp_setting`
--

INSERT INTO `ecomapp_setting` (`id`, `title`, `keyword`, `description`, `phone`, `email`, `icon`, `facebook`, `instagram`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SaReGaMaPa', 'ecom', '\'SaReGaMaPa\' - A unique musical retail store that hits all the right notes! \'SaReGaMaPa\' is an exciting destination for musicians and aspiring musicians right in the heart of Bangladesh’s vibrant Soho. We are Brand’s only flagship music store outside of Japan and we have a stellar selection of musical instruments, music gear and accessories for you to discover.\r\n\r\nOur unique store is located a stone’s throw from Banani Area. Start your musical journey with us by climbing the sweeping staircase which guides you up into our epic Piano Hall displaying a collection of entry-level pianos alongside the Grandest of Grand Pianos through to the very latest Avant Grand and TransAcoustic pianos. Even those who have never learned to play Chopsticks will be wowed! We encourage our customers to try before they never know who you might spot instore!\r\n\r\nThe Lifestyle experience on the ground floor features modern keyboards, the world’s most popular digital piano and a comprehensive range of brass and woodwind instruments. There are dedicated product areas for Yamaha violins, cellos and the world famous Silent String range. Sssssh! Silent Technology Yamaha is a leading innovator not only in musical instruments but also for its’ award-winning Silent Technology. Silent Technology allows brass players, drummers, violinists, pianists of all levels to practice almost anywere, anytime. Instruments can be played almost silently whilst using headphones without disturbing family, flatmates or neighbours!\r\n\r\nThe ProSounds Zone for pro musos or those who want to take their music performance and production skills up a level, has a professional musical zone featuring a music stage, live-working PA system and lighting plus instruments for stage, studio and stadiums. Don’t miss the largest display of Yamaha guitars in Europe – an impressive collection whether you are picking your first acoustic guitar or the latest RevStar!\r\n\r\n\'SaReGaMaPa\' Experts will be on hand to give advice whether you\'re puzzled about plectrums or overwhelmed by oboes. If you have never played before, and are thinking of picking up an instrument for the first time, the \'SaReGaMaPa\' team are on hand to guide you through the range, and help you to find the perfect musical instrument of your dreams. \'SaReGaMaPa\' LIVE! \'SaReGaMaPa\' has a lineup of live music events from funk to flamenco and country to classical taking place instore all year round AND entry is free!\r\n\r\nDue to Brand’s close ties with the music industry the events often feature new break through musicians as well as music legends, ProMusicians and leading sound production experts. The demonstrations, workshops, classes and recitals are usually FREE but it is always advisable to reserve your place online. For all the latest events check out the YML calendar here\r\n\r\nThe store is well-served by public transport, with Banani Area.\r\n\r\nFind the store at:\r\n\r\nBanani', '+8801999588169', 'mehedicse96@gmail.com', 'icon/image001-6.png.png', '//fb', '//inst', 'Banani', 'True', '2021-05-05 18:18:17.869345', '2021-06-17 12:08:51.473992');

-- --------------------------------------------------------

--
-- Table structure for table `forumapp_blog`
--

CREATE TABLE `forumapp_blog` (
  `id` int(11) NOT NULL,
  `blog_title` varchar(264) NOT NULL,
  `slug` varchar(264) NOT NULL,
  `blog_content` longtext NOT NULL,
  `blog_image` varchar(100) NOT NULL,
  `publish_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forumapp_blog`
--

INSERT INTO `forumapp_blog` (`id`, `blog_title`, `slug`, `blog_content`, `blog_image`, `publish_date`, `update_date`, `author_id`) VALUES
(4, 'String Problem', 'String-Problem-f1c5ff9d-4fb3-4844-8937-c2d3ea310eb1', 'String is so far from fret', 'blog_images/download.jpg', '2021-05-15 18:24:09.044950', '2021-05-15 18:24:09.044950', 2),
(5, 'iiuh', 'iiuh-24a2bdca-d0f6-4f2c-99fb-2f7c4ed19efd', 'nkkk', '', '2021-06-16 09:06:05.465401', '2021-06-16 09:06:05.465401', 6),
(6, 'Guitar Problem', 'Guitar-Problem-581b06ff-b806-4a73-9bfc-12078cf35161', 'This is guitar is not good.', 'blog_images/GCSF1MVN.jpg', '2021-06-23 11:26:57.336614', '2021-06-23 11:26:57.336614', 6),
(7, 'Guitar one', 'Guitar-one-31e2ee0c-eda7-48f9-9c15-cb71fb817264', 'Sample', 'blog_images/20200107_143806.jpg', '2021-06-23 11:28:36.444367', '2021-06-23 11:28:36.444367', 6);

-- --------------------------------------------------------

--
-- Table structure for table `forumapp_comment`
--

CREATE TABLE `forumapp_comment` (
  `id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `comment_date` datetime(6) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forumapp_comment`
--

INSERT INTO `forumapp_comment` (`id`, `comment`, `comment_date`, `blog_id`, `user_id`) VALUES
(3, 'It is not string problem. It is fret problem. Do it align.', '2021-06-15 11:53:46.358596', 4, 1),
(4, 'dsjfasfhhaeosf', '2021-06-22 19:00:32.643405', 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `forumapp_likes`
--

CREATE TABLE `forumapp_likes` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forumapp_likes`
--

INSERT INTO `forumapp_likes` (`id`, `blog_id`, `user_id`) VALUES
(2, 4, 1),
(4, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `orderapp_billingaddress`
--

CREATE TABLE `orderapp_billingaddress` (
  `id` int(11) NOT NULL,
  `address` varchar(264) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderapp_billingaddress`
--

INSERT INTO `orderapp_billingaddress` (`id`, `address`, `zipcode`, `city`, `country`, `user_id`) VALUES
(1, '', '', '', '', 2),
(6, '2 no. road, Banani', '1213', 'Dhaka', 'Bangladesh', 6),
(7, '', '', '', '', 1),
(8, 'Banani', '1213', 'Dhaka', 'Bangladesh', 10),
(9, '2 no. road, Banani', '1213', 'Dhaka', 'Bangladesh', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orderapp_order`
--

CREATE TABLE `orderapp_order` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `orderId` varchar(200) DEFAULT NULL,
  `paymentId` varchar(264) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderapp_order`
--

INSERT INTO `orderapp_order` (`id`, `created`, `user_id`, `ordered`, `orderId`, `paymentId`) VALUES
(31, '2021-06-23 07:40:53.198589', 6, 1, '002ab86c-aece-4078-9a25-382431fffc2a', '2106231342141fYgR9vbMOoq5gx'),
(32, '2021-06-23 08:48:00.227351', 1, 0, NULL, NULL),
(33, '2021-06-23 09:19:01.689864', 6, 1, '9b655e34-2960-4eef-88e0-94a46b25c623', '21062315205716WctPVDHAm2m77'),
(34, '2021-06-23 09:27:15.417635', 6, 1, '88bd8ee3-bcef-46cb-9ed4-4eed77378a91', '210623152817SjzW3jfceVSLoda'),
(35, '2021-06-23 10:21:55.317831', 6, 1, '72fae57c-53f4-42dd-b080-d5b9256e547b', '210623162410Hre7LFrR8uMbjDQ'),
(36, '2021-06-23 11:22:26.864050', 6, 0, NULL, NULL),
(37, '2021-08-15 09:37:11.036792', 10, 1, 'c380959e-3330-4944-9d75-b8a148d5a3b0', '2108151547371vkF8QE0vJutLwz'),
(38, '2021-08-15 09:55:45.462983', 10, 1, 'bb53d705-cb39-4871-9061-b657ef89a95b', '210815155923U6kdVWzFZN1aRQV'),
(39, '2021-08-15 10:02:37.407375', 10, 0, NULL, NULL),
(40, '2021-09-30 08:41:47.698855', 12, 1, 'd2d783ae-3be0-4c67-a367-f301834b4c1d', '210930144618KsiCYj7DXZI9tbQ');

-- --------------------------------------------------------

--
-- Table structure for table `orderapp_order_orderitems`
--

CREATE TABLE `orderapp_order_orderitems` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shopcart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderapp_order_orderitems`
--

INSERT INTO `orderapp_order_orderitems` (`id`, `order_id`, `shopcart_id`) VALUES
(78, 31, 80),
(79, 31, 81),
(80, 32, 82),
(81, 33, 83),
(82, 34, 84),
(83, 35, 85),
(84, 36, 86),
(85, 37, 87),
(86, 38, 88),
(87, 38, 89),
(88, 38, 90),
(89, 39, 91),
(90, 40, 92),
(93, 40, 95);

-- --------------------------------------------------------

--
-- Table structure for table `orderapp_shopcart`
--

CREATE TABLE `orderapp_shopcart` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `purchased` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderapp_shopcart`
--

INSERT INTO `orderapp_shopcart` (`id`, `quantity`, `product_id`, `user_id`, `purchased`) VALUES
(80, 1, 194, 6, 1),
(81, 1, 192, 6, 1),
(82, 2, 194, 1, 0),
(83, 1, 193, 6, 1),
(84, 3, 191, 6, 1),
(85, 1, 5, 6, 1),
(86, 2, 96, 6, 0),
(87, 2, 29, 10, 1),
(88, 1, 35, 10, 1),
(89, 1, 193, 10, 1),
(90, 1, 6, 10, 1),
(91, 2, 193, 10, 0),
(92, 2, 194, 12, 1),
(95, 1, 168, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(10) UNSIGNED NOT NULL CHECK (`level` >= 0),
  `lft` int(10) UNSIGNED NOT NULL CHECK (`lft` >= 0),
  `rght` int(10) UNSIGNED NOT NULL CHECK (`rght` >= 0),
  `tree_id` int(10) UNSIGNED NOT NULL CHECK (`tree_id` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `title`, `status`, `slug`, `created_at`, `updated_at`, `parent_id`, `level`, `lft`, `rght`, `tree_id`) VALUES
(1, 'Guitar', 'True', 'guitar', '2021-05-05 18:18:51.258034', '2021-05-05 18:18:51.258034', NULL, 0, 1, 12, 4),
(2, 'Acoustic Guitar', 'True', 'acoustic-guitar', '2021-05-05 18:19:03.447009', '2021-05-05 18:19:03.447009', 1, 1, 2, 3, 4),
(7, 'Digital Pianoos', 'True', 'digital-pianoos', '2021-05-07 13:47:36.950064', '2021-05-07 13:47:36.950064', NULL, 0, 1, 12, 3),
(8, 'Hybrid Pianos', 'True', 'avantgrand-nu-hybrid-pianos', '2021-05-07 13:47:43.325002', '2021-05-16 08:25:41.139203', 7, 1, 8, 9, 3),
(9, 'Keyboards', 'True', 'keyboards', '2021-05-07 15:59:28.821434', '2021-05-07 15:59:28.821434', NULL, 0, 1, 12, 5),
(10, 'Genos', 'True', 'genos', '2021-05-07 16:00:13.424276', '2021-05-07 16:00:13.424276', 9, 1, 2, 3, 5),
(11, 'Brass', 'True', 'brass', '2021-05-07 18:52:20.119502', '2021-05-16 07:57:15.770812', NULL, 0, 1, 12, 2),
(12, 'Silent Brass', 'True', 'silent-brass', '2021-05-07 18:53:14.789602', '2021-05-17 07:13:52.116717', 11, 1, 2, 3, 2),
(13, 'Strings', 'True', 'strings', '2021-05-07 19:16:41.001780', '2021-05-07 19:16:41.001780', NULL, 0, 1, 12, 8),
(14, 'Cellos', 'True', 'cellos', '2021-05-07 19:18:10.997080', '2021-05-07 19:18:10.997080', 13, 1, 2, 3, 8),
(15, 'Violas', 'True', 'violas', '2021-05-07 19:42:28.443668', '2021-05-07 19:42:28.443668', 13, 1, 8, 9, 8),
(16, 'Woodwind', 'True', 'woodwind', '2021-05-07 20:10:22.557748', '2021-05-07 20:10:22.557748', NULL, 0, 1, 12, 10),
(17, 'Bassoons', 'True', 'bassoons', '2021-05-07 20:11:04.919889', '2021-05-07 20:11:04.919889', 16, 1, 2, 3, 10),
(18, 'Clarinet', 'True', 'clarinet', '2021-05-07 20:17:56.487059', '2021-05-07 20:17:56.487059', 16, 1, 4, 5, 10),
(19, 'Drums', 'True', 'drums', '2021-05-08 10:57:16.432865', '2021-08-14 14:19:19.988072', NULL, 0, 1, 12, 6),
(20, 'Acoustic Drum kits', 'True', 'acoustic-drum-kits', '2021-05-08 10:58:08.142371', '2021-05-08 10:58:08.142371', 19, 1, 2, 3, 6),
(21, 'Percussion', 'True', 'percussion', '2021-05-08 11:08:08.889515', '2021-05-08 11:08:08.889515', NULL, 0, 1, 12, 7),
(22, 'Bass Drums', 'True', 'bass-drums', '2021-05-08 11:08:44.315458', '2021-05-08 11:08:44.315458', 21, 1, 2, 3, 7),
(23, 'Baritone Horns', 'True', 'baritone-horns', '2021-05-16 17:02:17.997424', '2021-05-16 17:02:17.997424', 11, 1, 4, 5, 2),
(24, 'Cornets', 'True', 'cornets', '2021-05-17 07:13:44.094193', '2021-05-17 07:13:44.094193', 11, 1, 6, 7, 2),
(25, 'Euphoniums', 'True', 'euphoniums', '2021-05-17 08:01:41.291831', '2021-05-17 08:15:04.891469', 11, 1, 8, 9, 2),
(26, 'Flugelhorns', 'True', 'flugelhorns', '2021-05-19 13:25:22.815044', '2021-05-19 13:26:39.595651', 11, 1, 10, 11, 2),
(27, 'Clavinova Digital Pianos', 'True', 'clavinova-digital-pianos', '2021-05-19 14:09:26.022483', '2021-05-19 14:09:26.022483', 7, 1, 4, 5, 3),
(28, 'Arius Digital Pianos', 'True', 'arius-digital-pianos', '2021-05-19 14:58:18.401206', '2021-05-19 14:58:18.401206', 7, 1, 2, 3, 3),
(29, 'Portable Digital Pianos', 'True', 'portable-digital-pianos', '2021-05-19 15:06:24.929099', '2021-05-19 15:07:07.306185', 7, 1, 10, 11, 3),
(30, 'Digital Stage Pianos', 'True', 'digital-stage-pianos', '2021-05-19 15:12:09.144506', '2021-05-19 15:12:09.144506', 7, 1, 6, 7, 3),
(31, 'Electronic Drum', 'True', 'electronic-drum', '2021-05-21 06:30:46.149102', '2021-05-21 06:30:46.149102', 19, 1, 8, 9, 6),
(32, 'Electro-Acoustic Drum', 'True', 'electro-acoustic-drum', '2021-05-21 06:41:43.080580', '2021-05-21 06:41:43.080580', 19, 1, 6, 7, 6),
(33, 'Bass Drums', 'True', 'bass-drums-set', '2021-05-21 06:49:59.658790', '2021-05-21 06:49:59.658790', 19, 1, 4, 5, 6),
(34, 'Snare Drums', 'True', 'snare-drums', '2021-05-21 07:59:08.418554', '2021-05-21 07:59:08.418554', 19, 1, 10, 11, 6),
(35, 'Electric Guitar', 'True', 'electric-guitar', '2021-05-21 08:19:52.811111', '2021-05-22 06:35:48.014309', 1, 1, 8, 9, 4),
(36, 'Electro Acoustic Guitar', 'True', 'electro-acoustic-guitar', '2021-05-21 09:25:52.419883', '2021-05-22 06:36:01.829656', 1, 1, 10, 11, 4),
(37, 'Bass Guitar', 'True', 'bass-guitar', '2021-05-21 09:34:47.405378', '2021-05-22 06:35:06.159679', 1, 1, 4, 5, 4),
(38, 'Classic Guitar', 'True', 'classic-guitar', '2021-05-21 09:42:23.085519', '2021-05-22 06:35:20.775317', 1, 1, 6, 7, 4),
(39, 'Sonogenic Keyboard', 'True', 'sonogenic-keyboard', '2021-05-21 13:21:42.835232', '2021-05-21 13:21:42.835232', 9, 1, 6, 7, 5),
(40, 'Home Keyboards', 'True', 'home-keyboards', '2021-05-21 13:34:31.883916', '2021-05-21 13:34:31.883916', 9, 1, 4, 5, 5),
(41, 'Workstation Keyboard', 'True', 'workstation-keyboard', '2021-05-21 13:43:57.269786', '2021-05-21 13:43:57.269786', 9, 1, 10, 11, 5),
(42, 'Synthesizer', 'True', 'synthesizer', '2021-05-21 13:51:49.477489', '2021-05-21 13:51:49.477489', 9, 1, 8, 9, 5),
(43, 'Marimbas', 'True', 'marimbas', '2021-05-21 13:56:57.486282', '2021-05-21 13:56:57.486282', 21, 1, 4, 5, 7),
(44, 'Orchestral Bells', 'True', 'orchestral-bells', '2021-05-21 14:04:18.771877', '2021-05-21 14:04:18.771877', 21, 1, 6, 7, 7),
(45, 'Timpani', 'True', 'timpani', '2021-05-21 14:08:04.170764', '2021-05-21 14:08:04.170764', 21, 1, 8, 9, 7),
(46, 'Vibraphones', 'True', 'vibraphones', '2021-05-21 14:23:35.025786', '2021-05-21 14:23:35.025786', 21, 1, 10, 11, 7),
(47, 'Violins', 'True', 'violins', '2021-05-21 14:43:34.289492', '2021-05-21 14:43:34.289492', 13, 1, 10, 11, 8),
(48, 'Electric Violin', 'True', 'electric-violin', '2021-05-21 14:56:07.335323', '2021-05-21 14:56:07.335323', 13, 1, 4, 5, 8),
(49, 'Silent Violin', 'True', 'silent-violin', '2021-05-21 15:27:10.536999', '2021-05-21 15:27:10.536999', 13, 1, 6, 7, 8),
(50, 'Flutes', 'True', 'flutes', '2021-05-21 15:35:10.417272', '2021-05-21 15:35:10.417272', 16, 1, 6, 7, 10),
(51, 'Oboes', 'True', 'oboes', '2021-05-21 15:45:42.303129', '2021-05-21 15:45:42.303129', 16, 1, 8, 9, 10),
(52, 'Piccolos', 'True', 'piccolos', '2021-05-21 15:54:18.194216', '2021-05-21 15:54:18.194216', 16, 1, 10, 11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `product_comment`
--

CREATE TABLE `product_comment` (
  `id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `rate` int(11) NOT NULL,
  `status` varchar(40) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_comment`
--

INSERT INTO `product_comment` (`id`, `subject`, `comment`, `rate`, `status`, `created_at`, `updated_at`, `product_id`, `user_id`) VALUES
(15, 'Sound', 'Sound quality is very good.', 5, 'True', '2021-06-14 16:15:48.532479', '2021-06-14 16:36:55.647629', 194, 6);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `title`, `image`, `product_id`) VALUES
(1, '', 'product/HNU1XUK_a.jpg', 4),
(2, '', 'product/HNU1XUK_d.jpg', 4),
(3, '', 'product/HN1XUK_e.jpg', 5),
(4, '', 'product/HN1XUK_f.jpg', 5),
(5, '', 'product/HN1XUK_h.jpg', 5),
(6, '', 'product/HN1XUK_i.jpg', 5),
(7, '', 'product/HN3XUK_c.jpg', 7),
(8, '', 'product/HN3XUK_f.jpg', 7),
(9, '', 'product/HN3XUK_g.jpg', 7),
(10, '', 'product/HN3XUK_h.jpg', 7),
(11, '', 'product/HN3XUK_i.jpg', 7),
(16, '', 'product/SGENOSUK_d.jpg', 9),
(17, '', 'product/SGENOSUK_b.jpg', 9),
(18, '', 'product/SGENOSUK_e.jpg', 9),
(19, '', 'product/SGENOSUK_l.jpg', 9),
(20, '', 'product/SGENOSUK-PACK2_c.jpg', 10),
(21, '', 'product/SGENOSUK-PACK2_d.jpg', 10),
(22, '', 'product/SGENOSUK-PACK2_e.jpg', 10),
(23, '', 'product/SGENOSUK-PACK2_c_JEDmYc8.jpg', 11),
(24, '', 'product/SGENOSUK-PACK2_d_Xzc5zPz.jpg', 11),
(25, '', 'product/SGENOSUK-PACK2_e_xpoJrnz.jpg', 11),
(26, '', 'product/YAM-PM7X_a.jpg', 13),
(27, '', 'product/BPM2X_a.jpg', 14),
(28, '', 'product/BSB2X_a.jpg', 15),
(29, '', 'product/BSB2X_b.jpg', 15),
(30, '', 'product/BSB1X_b.jpg', 16),
(31, '', 'product/BSB1X_c.jpg', 16),
(32, '', 'product/YAM-VA5S13-VLA_a.jpg', 19),
(33, '', 'product/YAM-VA5S16-VLA_a.jpg', 20),
(34, '', 'product/YAM-VA7SG16-VLA_a.jpg', 21),
(35, '', 'product/YAM-VA7SG16-VLA_b.jpg', 21),
(36, '', 'product/YAM-VA7SG16-VLA_c.jpg', 21),
(37, '', 'product/YAM-YFG812II_a.jpg', 22),
(38, '', 'product/YAM-YCL255S_a.jpg', 24),
(39, '', 'product/JRDP0F5BGGSET_c.jpg', 28),
(40, '', 'product/JRDP0F5BGGSET_a.jpg', 28),
(41, '', 'product/JRDP0F5BGGSET_c_WdQsrBj.jpg', 29),
(42, '', 'product/JRDP0F5BGGSET_a_WP0B445.jpg', 29),
(43, '', 'product/YAM-CB7024_a.jpg', 31),
(44, '', 'product/YAM-CB7024_b.jpg', 31),
(45, '', 'product/YAM-CB7028_b.jpg', 32),
(46, '', 'product/YAM-CB7028_a.jpg', 32),
(48, '', 'product/2330-1_MIJcskL.jpg', 40),
(49, '', 'product/8620-1.jpg', 43),
(50, '', 'product/Fugelhorns_4-1.jpg', 52),
(51, '', 'product/Fugelhorns_4-1_tWM7h7A.jpg', 53),
(52, '', 'product/piano-1.jpg', 54),
(53, '', 'product/piano-2.jpg', 54),
(54, '', 'product/piano-3.jpg', 54),
(55, '', 'product/NCLP735-SUPER_1.jpg', 55),
(56, '', 'product/NCLP735-SUPER_2.jpg', 55),
(57, '', 'product/NCLP735-SUPER_3.jpg', 55),
(58, '', 'product/NCLP735-SUPER_g_hwc0NSS.jpg', 57),
(59, '', 'product/NCLP735-SUPER_e.jpg', 57),
(60, '', 'product/NCLP735-SUPER_d.jpg', 57),
(61, '', 'product/NCLP735-SUPER_c.jpg', 57),
(62, '', 'product/NCLP735-SUPER_b.jpg', 57),
(63, '', 'product/NCLP735-SUPER_g_ktzKZ3o.jpg', 58),
(64, '', 'product/NCLP735-SUPER_f_p8g2PD7.jpg', 58),
(65, '', 'product/NCLP735-SUPER_d_QyWtzoL.jpg', 58),
(66, '', 'product/NCLP735-SUPER_c_Hc8Ib11.jpg', 58),
(67, '', 'product/NCLP735-SUPER_b_qaXzmII.jpg', 58),
(68, '', 'product/NCLP735-SUPER_g_9xBgict.jpg', 59),
(69, '', 'product/NCLP735-SUPER_f_FQ7jhcY.jpg', 59),
(70, '', 'product/NCLP735-SUPER_e_VdIbhmM.jpg', 59),
(71, '', 'product/NCLP735-SUPER_e_uEtcvyO.jpg', 59),
(72, '', 'product/NCLP735-SUPER_d_Eryd3zh.jpg', 59),
(73, '', 'product/NYDP144BUK_a.jpg', 60),
(74, '', 'product/NYDP144WHUK.jpg', 60),
(75, '', 'product/NYDP164WAUK.jpg', 60),
(76, '', 'product/NYDPS54BUK.jpg', 60),
(77, '', 'product/NYDP144BUK_l5tj9iS.jpg', 61),
(78, '', 'product/NYDP144WHUK_uQaSZ4z.jpg', 61),
(79, '', 'product/NYDP164WAUK_FIX8W0c.jpg', 61),
(80, '', 'product/NYDPS54BUK_azyxjv5.jpg', 61),
(81, '', 'product/NYDP144BUK_bXTxBgG.jpg', 62),
(82, '', 'product/NYDP144BUK_a_gl3GW1T.jpg', 62),
(83, '', 'product/NYDP164WAUK_fxGufPh.jpg', 62),
(84, '', 'product/NYDPS54BUK_UUIp2vj.jpg', 62),
(85, '', 'product/NYDP144BUK_0psSW9y.jpg', 63),
(86, '', 'product/NYDP144BUK_a_xXpRuAB.jpg', 63),
(87, '', 'product/NYDP144WHUK_faYMUnj.jpg', 63),
(88, '', 'product/NYDPS54BUK_D4MRdsb.jpg', 63),
(89, '', 'product/NYDP144BUK_Bj4da8V.jpg', 64),
(90, '', 'product/NYDP144BUK_a_b7i7Duo.jpg', 64),
(91, '', 'product/NYDP144WHUK_SbD5nWk.jpg', 64),
(92, '', 'product/NYDP164WAUK_9zuuWbr.jpg', 64),
(93, '', 'product/NP45BUK-L85PACK.jpg', 65),
(94, '', 'product/NP121BUK-PACK4.jpg', 65),
(95, '', 'product/NP125BUK-PACK1.jpg', 65),
(96, '', 'product/NP515WHUK-PACK2.jpg', 65),
(97, '', 'product/DGX670B-PACK_vTGDwWZ.jpg', 66),
(98, '', 'product/NP121BUK-PACK4_pxXe7Vx.jpg', 66),
(99, '', 'product/NP125BUK-PACK1_hzrPdQL.jpg', 66),
(100, '', 'product/NP515WHUK-PACK2_OT9SZvg.jpg', 66),
(101, '', 'product/DGX670B-PACK_xLKXcU6.jpg', 67),
(102, '', 'product/NP45BUK-L85PACK_VLuCueC.jpg', 67),
(103, '', 'product/NP125BUK-PACK1_1sr7NW9.jpg', 67),
(104, '', 'product/NP515WHUK-PACK2_hUKaK9N.jpg', 67),
(105, '', 'product/DGX670B-PACK_otldP3Q.jpg', 68),
(106, '', 'product/NP45BUK-L85PACK_VnkkLGD.jpg', 68),
(107, '', 'product/NP121BUK-PACK4_ttMTcgt.jpg', 68),
(108, '', 'product/NP515WHUK-PACK2_PUFF2ml.jpg', 68),
(109, '', 'product/DGX670B-PACK_AnwKfFa.jpg', 69),
(110, '', 'product/NP45BUK-L85PACK_y2W6Rt5.jpg', 69),
(111, '', 'product/NP121BUK-PACK4_DzNV0wz.jpg', 69),
(112, '', 'product/NP125BUK-PACK1_3TtBnTu.jpg', 69),
(113, '', 'product/YAM-CP4.jpg', 70),
(114, '', 'product/YAM-CP4_a.jpg', 70),
(115, '', 'product/YAM-CP4_d.jpg', 70),
(116, '', 'product/YAM-CP300.jpg', 70),
(117, '', 'product/CCP88UK_xbRsTjL.jpg', 71),
(118, '', 'product/YAM-CP4_d_xRFj65R.jpg', 71),
(119, '', 'product/YAM-CP4_a_rCKEsMH.jpg', 71),
(120, '', 'product/YAM-CP300_8jR7lxN.jpg', 71),
(129, '', 'product/CCP88UK_y6sp3Km.jpg', 74),
(130, '', 'product/YAM-CP4_WNTljNW.jpg', 74),
(131, '', 'product/YAM-CP4_a_reBg91t.jpg', 74),
(132, '', 'product/YAM-CP4_d_NFkCFhv.jpg', 74),
(133, '', 'product/Stage_Drums_1.jpg', 75),
(134, '', 'product/Stage_Drums_2.jpg', 75),
(135, '', 'product/Stage_Drums_3.jpg', 75),
(136, '', 'product/Stage_Drums_4.jpg', 75),
(137, '', 'product/Stage_Drums_1_i5g1CFL.jpg', 76),
(138, '', 'product/Stage_Drums_2_ZM0HUUN.jpg', 76),
(139, '', 'product/Stage_Drums_3_nIocJlb.jpg', 76),
(140, '', 'product/Stage_Drums_4_qtWJWPK.jpg', 76),
(141, '', 'product/Hybrid_Drums_2.jpg', 77),
(142, '', 'product/Hybrid_Drums_3.jpg', 77),
(143, '', 'product/Hybrid_Drums_4.jpg', 77),
(144, '', 'product/Hybrid_Drums.jpg', 77),
(145, '', 'product/Hybrid_Drums_1_d3ThdCH.jpg', 78),
(146, '', 'product/Hybrid_Drums_3_4je5CeW.jpg', 78),
(147, '', 'product/Hybrid_Drums_4_JSI4miC.jpg', 78),
(148, '', 'product/Hybrid_Drums_4wnPcx3.jpg', 78),
(149, '', 'product/Hybrid_Drums_1_hzWafnW.jpg', 79),
(150, '', 'product/Hybrid_Drums_2_Gb1pwKG.jpg', 79),
(151, '', 'product/Hybrid_Drums_3_n7BLS4J.jpg', 79),
(152, '', 'product/Hybrid_Drums_4_XdenhdM.jpg', 79),
(153, '', 'product/Electroninc_Drums_1.jpg', 80),
(154, '', 'product/Electroninc_Drums_2.jpg', 80),
(155, '', 'product/Electroninc_Drums_3.jpg', 80),
(156, '', 'product/Electroninc_Drums_4.jpg', 80),
(157, '', 'product/Electroninc_Drums_2_pnwHrnO.jpg', 81),
(158, '', 'product/Electroninc_Drums_3_ENhoJFf.jpg', 81),
(159, '', 'product/Electroninc_Drums_4_hqXlkgw.jpg', 81),
(160, '', 'product/Electroninc_Drums_wLgfkuG.jpg', 81),
(161, '', 'product/Electroninc_Drums_1_XONhTEY.jpg', 82),
(162, '', 'product/Electroninc_Drums_3_p7fdwjo.jpg', 82),
(163, '', 'product/Electroninc_Drums_4_n5EjNnx.jpg', 82),
(164, '', 'product/Electroninc_Drums_FAp55F2.jpg', 82),
(165, '', 'product/Electroninc_Drums_1_ngbLDNU.jpg', 83),
(166, '', 'product/Electroninc_Drums_2_CeAAReD.jpg', 83),
(167, '', 'product/Electroninc_Drums_4_zQRnpLK.jpg', 83),
(168, '', 'product/Electroninc_Drums_06ZNVXE.jpg', 83),
(169, '', 'product/Electroninc_Drums_1_zmNEN2u.jpg', 84),
(170, '', 'product/Electroninc_Drums_2_E4Vvs04.jpg', 84),
(171, '', 'product/Electroninc_Drums_3_zEhbfFY.jpg', 84),
(172, '', 'product/Electroninc_Drums_oJrDTCt.jpg', 84),
(173, '', 'product/Electroninc_Drums_1_PRCZ3J5.jpg', 85),
(174, '', 'product/Electroninc_Drums_2_2Olk4PB.jpg', 85),
(175, '', 'product/Electroninc_Drums_3_phE9Nuu.jpg', 85),
(176, '', 'product/Electroninc_Drums_4_KvDyjQb.jpg', 85),
(177, '', 'product/Bass_Drums_2.jpg', 86),
(178, '', 'product/Bass_Drums_1.jpg', 86),
(179, '', 'product/Bass_Drums_3.jpg', 86),
(180, '', 'product/Bass_Drums_4.jpg', 86),
(181, '', 'product/Bass_Drums_2_LuSFauk.jpg', 87),
(182, '', 'product/Bass_Drums_3_kpMXlhi.jpg', 87),
(183, '', 'product/Bass_Drums_4_7PnAExh.jpg', 87),
(184, '', 'product/Bass_Drums_KFYNUwU.jpg', 87),
(185, '', 'product/Bass_Drums_1_RZY6OrK.jpg', 88),
(186, '', 'product/Bass_Drums_3_4A9NCDp.jpg', 88),
(187, '', 'product/Bass_Drums_4_Y5nL1Vu.jpg', 88),
(188, '', 'product/Bass_Drums_TE8xGBV.jpg', 88),
(189, '', 'product/Bass_Drums_1_71I52Qt.jpg', 89),
(190, '', 'product/Bass_Drums_2_yyoTvGv.jpg', 89),
(191, '', 'product/Bass_Drums_4_UZb6GAh.jpg', 89),
(192, '', 'product/Bass_Drums_t1eS3bL.jpg', 89),
(193, '', 'product/Bass_Drums_1_xzq8lwV.jpg', 90),
(194, '', 'product/Bass_Drums_2_pTaBwrc.jpg', 90),
(195, '', 'product/Bass_Drums_3_qjJQiTL.jpg', 90),
(196, '', 'product/Bass_Drums_h1WKV3H.jpg', 90),
(197, '', 'product/Snare_Drums_2.jpg', 91),
(198, '', 'product/Snare_Drums_2_2.jpg', 91),
(199, '', 'product/Snare_Drums_2_1.jpg', 91),
(200, '', 'product/Snare_Drums_3.jpg', 91),
(201, '', 'product/Snare_Drums_1M00N0p.jpg', 92),
(202, '', 'product/Snare_Drums_2_YMUQQ6X.jpg', 92),
(203, '', 'product/Snare_Drums_2_2_8ZfPdtl.jpg', 92),
(204, '', 'product/Snare_Drums_4.jpg', 92),
(209, '', 'product/Snare_Drums_8zbFOXN.jpg', 94),
(210, '', 'product/Snare_Drums_1_TtraRIl.jpg', 94),
(211, '', 'product/Snare_Drums_2_INYioK8.jpg', 94),
(212, '', 'product/Snare_Drums_2_2_0Hq4BR3.jpg', 94),
(213, '', 'product/Snare_Drums_Fv6caVT.jpg', 95),
(214, '', 'product/Snare_Drums_1_fUeqLcG.jpg', 95),
(215, '', 'product/Snare_Drums_2_jJx7oQz.jpg', 95),
(216, '', 'product/Snare_Drums_3_hskcG9l.jpg', 95),
(217, '', 'product/csf1m_acoustic.jpg', 96),
(218, '', 'product/Accoustic-Guiter_2.jpg', 96),
(219, '', 'product/GCSF1MTBL_c.jpg', 96),
(220, '', 'product/GCSF1MTBL_b.jpg', 96),
(229, '', 'product/GRS320ICB-1-backside.jpg', 99),
(230, '', 'product/GRS320ICB-side-shape.jpg', 99),
(231, '', 'product/GRS320ICB_body.jpg', 99),
(232, '', 'product/GRS320ICB_key_mxUCTbN.jpg', 99),
(237, '', 'product/GRS320VW-body_du6PXe2.jpg', 101),
(238, '', 'product/GRS320VW-_key.jpg', 101),
(241, '', 'product/GRS420MYG-body.jpg', 102),
(242, '', 'product/GRS420MYG-key.jpg', 102),
(245, '', 'product/GRS620SEG-body.jpg', 103),
(246, '', 'product/GRS620SEG-key.jpg', 103),
(249, '', 'product/YAM-FX370C-GTR-body.jpg', 104),
(253, '', 'product/YAM-CPX700II-body.jpg', 105),
(254, '', 'product/YAM-CPX700II-B-key.jpg', 105),
(257, '', 'product/YAM-CPX700II-SDB-body.jpg', 106),
(258, '', 'product/YAM-CPX700II-SDB-key.jpg', 106),
(261, '', 'product/GAPX600OBB-body.jpg', 107),
(262, '', 'product/GAPX600OBB-key.jpg', 107),
(265, '', 'product/GFSTARR-body.jpg', 108),
(266, '', 'product/GFSTARR-key.jpg', 108),
(269, '', 'product/bass-body.jpg', 109),
(270, '', 'product/bass-key.jpg', 109),
(273, '', 'product/BG_cgNhyTX.jpg', 110),
(274, '', 'product/BG_2_9jVv0Nz.jpg', 110),
(275, '', 'product/BG_3_VeX2eaL.jpg', 110),
(276, '', 'product/BG_4_ALdBLF2.jpg', 110),
(277, '', 'product/BG_oSkqeOI.jpg', 111),
(278, '', 'product/BG_1_op5TdGm.jpg', 111),
(279, '', 'product/BG_3_LEZCZj3.jpg', 111),
(280, '', 'product/BG_4_ftvmrjO.jpg', 111),
(281, '', 'product/BG_cHAbqEF.jpg', 112),
(282, '', 'product/BG_1_iwy2CgA.jpg', 112),
(283, '', 'product/BG_2_vwuZB3f.jpg', 112),
(284, '', 'product/BG_4_JgW7OQB.jpg', 112),
(285, '', 'product/BG_lGY2lgE.jpg', 113),
(286, '', 'product/BG_2_huj3QJ3.jpg', 113),
(287, '', 'product/BG_3_bDpkrQ0.jpg', 113),
(288, '', 'product/BG_4_PQ0xW4g.jpg', 113),
(289, '', 'product/CG_1.jpg', 114),
(290, '', 'product/CG_2.jpg', 114),
(291, '', 'product/CG_3.jpg', 114),
(292, '', 'product/CG_4.jpg', 114),
(293, '', 'product/CG_1HlMe5S.jpg', 115),
(294, '', 'product/CG_2_XXmTbwO.jpg', 115),
(295, '', 'product/CG_3_1yZKbRi.jpg', 115),
(296, '', 'product/CG_4_yewrq33.jpg', 115),
(297, '', 'product/CG_pIj98jA.jpg', 116),
(298, '', 'product/CG_1_Sn42nVJ.jpg', 116),
(299, '', 'product/CG_3_NL8x9I5.jpg', 116),
(300, '', 'product/CG_4_muUq8Wu.jpg', 116),
(301, '', 'product/CG_HRJtlDM.jpg', 117),
(302, '', 'product/CG_1_4TWDjdE.jpg', 117),
(303, '', 'product/CG_2_RUfnjU7.jpg', 117),
(304, '', 'product/CG_4_PzTUD1y.jpg', 117),
(305, '', 'product/CG_dAnny6e.jpg', 118),
(306, '', 'product/CG_1_FerYqE1.jpg', 118),
(307, '', 'product/CG_2_TQKmX0j.jpg', 118),
(308, '', 'product/CG_3_3QIUQbl.jpg', 118),
(309, '', 'product/SGK_1.jpg', 119),
(310, '', 'product/SGK_2.jpg', 119),
(311, '', 'product/SGK_3.jpg', 119),
(312, '', 'product/SGK_4.jpg', 119),
(313, '', 'product/SGK_VVvtJv0.jpg', 120),
(314, '', 'product/SGK_2_8fCugKy.jpg', 120),
(315, '', 'product/SGK_3_RLwZklM.jpg', 120),
(316, '', 'product/SGK_4_uDPAJGZ.jpg', 120),
(317, '', 'product/SGK_h1pvkAF.jpg', 121),
(318, '', 'product/SGK_1_jdQszlb.jpg', 121),
(319, '', 'product/SGK_3_kLSTsrF.jpg', 121),
(320, '', 'product/SGK_4_KGhP2fL.jpg', 121),
(321, '', 'product/SGK_ynjG0d8.jpg', 122),
(322, '', 'product/SGK_1_x8oaw2c.jpg', 122),
(323, '', 'product/SGK_2_DYbFRsU.jpg', 122),
(324, '', 'product/SGK_4_NJ7pxJZ.jpg', 122),
(325, '', 'product/SGK_oSucW9V.jpg', 123),
(326, '', 'product/SGK_1_WzHNndb.jpg', 123),
(327, '', 'product/SGK_2_ZHlOksM.jpg', 123),
(328, '', 'product/SGK_3_jzimyTm.jpg', 123),
(329, '', 'product/HK_1.jpg', 124),
(330, '', 'product/HK_2.jpg', 124),
(331, '', 'product/HK_3.jpg', 124),
(332, '', 'product/HK_4.jpg', 124),
(333, '', 'product/HK_8Pf2gps.jpg', 125),
(334, '', 'product/HK_2_3qYQM5g.jpg', 125),
(335, '', 'product/HK_3_MzIIgyS.jpg', 125),
(336, '', 'product/HK_4_r4Z9WEJ.jpg', 125),
(337, '', 'product/HK_YUvs6vV.jpg', 126),
(338, '', 'product/HK_1_9eX7qdl.jpg', 126),
(339, '', 'product/HK_3_Ulo5TvX.jpg', 126),
(340, '', 'product/HK_4_OVHQ4uy.jpg', 126),
(341, '', 'product/HK_Tm2eLbe.jpg', 127),
(342, '', 'product/HK_1_cEVQ0Bf.jpg', 127),
(343, '', 'product/HK_2_R6550mq.jpg', 127),
(344, '', 'product/HK_4_SakQpnl.jpg', 127),
(345, '', 'product/HK_6JIdZLO.jpg', 128),
(346, '', 'product/HK_1_AakBmJ1.jpg', 128),
(347, '', 'product/HK_2_nwVZnz8.jpg', 128),
(348, '', 'product/HK_3_IiaDCt6.jpg', 128),
(349, '', 'product/WK_1.jpg', 129),
(350, '', 'product/WK_2.jpg', 129),
(351, '', 'product/WK_3.jpg', 129),
(352, '', 'product/WK_4.jpg', 129),
(353, '', 'product/WK_qPdjnyK.jpg', 130),
(354, '', 'product/WK_2_LZgVwkg.jpg', 130),
(355, '', 'product/WK_3_exjVVuF.jpg', 130),
(356, '', 'product/WK_4_K4Xat21.jpg', 130),
(357, '', 'product/WK_sALPFWo.jpg', 131),
(358, '', 'product/WK_1_yGoW3rX.jpg', 131),
(359, '', 'product/WK_3_ov5xOgP.jpg', 131),
(360, '', 'product/WK_4_Tt6xYyn.jpg', 131),
(361, '', 'product/WK_4peeJ3h.jpg', 132),
(362, '', 'product/WK_1_7mLVHQD.jpg', 132),
(363, '', 'product/WK_2_skM7zEz.jpg', 132),
(364, '', 'product/WK_4_VbXM4MU.jpg', 132),
(365, '', 'product/WK_uX0Zb0q.jpg', 133),
(366, '', 'product/WK_1_DGArNzr.jpg', 133),
(367, '', 'product/WK_2_3S5riI0.jpg', 133),
(368, '', 'product/WK_3_eGHkv0d.jpg', 133),
(369, '', 'product/OK_1.jpg', 134),
(370, '', 'product/OK_2.jpg', 134),
(371, '', 'product/OK_3.jpg', 134),
(372, '', 'product/OK_4.jpg', 134),
(373, '', 'product/OK_CcA9EPl.jpg', 135),
(374, '', 'product/OK_2_SxH4HT6.jpg', 135),
(375, '', 'product/OK_3_oYdeWqr.jpg', 135),
(376, '', 'product/OK_4_QcVuRVt.jpg', 135),
(377, '', 'product/OK_wTqQOLK.jpg', 136),
(378, '', 'product/OK_1_u0BSmRE.jpg', 136),
(379, '', 'product/OK_3_nQmC3sG.jpg', 136),
(380, '', 'product/OK_4_hohbX3x.jpg', 136),
(381, '', 'product/OK_EKX1ETp.jpg', 137),
(382, '', 'product/OK_1_T8cJkhV.jpg', 137),
(383, '', 'product/OK_2_GgtH3Lq.jpg', 137),
(384, '', 'product/OK_4_ttpJCVg.jpg', 137),
(385, '', 'product/OK_SaZFnpH.jpg', 138),
(386, '', 'product/OK_1_xHChTZY.jpg', 138),
(387, '', 'product/OK_2_3sgJonb.jpg', 138),
(388, '', 'product/OK_3_dS7BATo.jpg', 138),
(389, '', 'product/MB_1.jpg', 139),
(390, '', 'product/MB_2.jpg', 139),
(391, '', 'product/MB_3.jpg', 139),
(392, '', 'product/MB_4.jpg', 139),
(393, '', 'product/MB_qoqnemz.jpg', 140),
(394, '', 'product/MB_2_BETMc11.jpg', 140),
(395, '', 'product/MB_3_JcHWeUj.jpg', 140),
(396, '', 'product/MB_4_QoJZXcw.jpg', 140),
(397, '', 'product/MB_BNhSdwP.jpg', 141),
(398, '', 'product/MB_1_TaJgeqN.jpg', 141),
(399, '', 'product/MB_3_frOveFk.jpg', 141),
(400, '', 'product/MB_4_IIVjiSv.jpg', 141),
(401, '', 'product/MB_bjdzyH3.jpg', 142),
(402, '', 'product/MB_1_x2Fdc7c.jpg', 142),
(403, '', 'product/MB_2_JkplQvQ.jpg', 142),
(404, '', 'product/MB_4_sJJw4s6.jpg', 142),
(405, '', 'product/MB_Rk2MAwJ.jpg', 143),
(406, '', 'product/MB_1_cqwpbfi.jpg', 143),
(407, '', 'product/MB_2_RKX0C08.jpg', 143),
(408, '', 'product/MB_3_Dejlow5.jpg', 143),
(409, '', 'product/OB_2.jpg', 144),
(410, '', 'product/OB_1.jpg', 144),
(411, '', 'product/OB_NfiW4kY.jpg', 145),
(412, '', 'product/OB_2_Qzbwxpv.jpg', 145),
(413, '', 'product/OB_ZZOGHIP.jpg', 146),
(414, '', 'product/OB_1_iIVeFJh.jpg', 146),
(415, '', 'product/Timpani_1.jpg', 147),
(416, '', 'product/Timpani_2.jpg', 147),
(417, '', 'product/Timpani_3.jpg', 147),
(418, '', 'product/Timpani_4.jpg', 147),
(419, '', 'product/Timpani_BJqtHoL.jpg', 148),
(420, '', 'product/Timpani_2_D2SjZdU.jpg', 148),
(421, '', 'product/Timpani_3_kr4TphY.jpg', 148),
(422, '', 'product/Timpani_4_s7ozi6J.jpg', 148),
(423, '', 'product/Timpani_w8jlNJy.jpg', 149),
(424, '', 'product/Timpani_1_P9gJMfc.jpg', 149),
(425, '', 'product/Timpani_3_1B2Xhnp.jpg', 149),
(426, '', 'product/Timpani_4_ul2OgGc.jpg', 149),
(427, '', 'product/Timpani_st5wSCb.jpg', 150),
(428, '', 'product/Timpani_1_zsLUnKX.jpg', 150),
(429, '', 'product/Timpani_2_YtbW80k.jpg', 150),
(430, '', 'product/Timpani_4_z3mbbj6.jpg', 150),
(431, '', 'product/Timpani_tzMnA2i.jpg', 151),
(432, '', 'product/Timpani_1_v0wwS3y.jpg', 151),
(433, '', 'product/Timpani_2_Vg4greG.jpg', 151),
(434, '', 'product/Timpani_3_2eQfF08.jpg', 151),
(435, '', 'product/VP_1.jpg', 152),
(436, '', 'product/VP_2.jpg', 152),
(437, '', 'product/VP_3.jpg', 152),
(438, '', 'product/VP_4.jpg', 152),
(439, '', 'product/VP_8sebzbF.jpg', 153),
(440, '', 'product/VP_2_cZ5jFWc.jpg', 153),
(441, '', 'product/VP_3_5yvzYQm.jpg', 153),
(442, '', 'product/VP_4_1tbT2VO.jpg', 153),
(443, '', 'product/VP_ATIfhPD.jpg', 154),
(444, '', 'product/VP_1_owY2Y8K.jpg', 154),
(445, '', 'product/VP_3_gfgXbYg.jpg', 154),
(446, '', 'product/VP_4_oJakYOv.jpg', 154),
(447, '', 'product/VP_TrhNDwQ.jpg', 155),
(448, '', 'product/VP_1_hjikpuP.jpg', 155),
(449, '', 'product/VP_2_RNGt07w.jpg', 155),
(450, '', 'product/VP_4_O4o0Cc9.jpg', 155),
(451, '', 'product/VP_J8ZC5ys.jpg', 156),
(452, '', 'product/VP_1_smryOEx.jpg', 156),
(453, '', 'product/VP_2_LUl0h17.jpg', 156),
(454, '', 'product/VP_3_S1nPe8Z.jpg', 156),
(455, '', 'product/Cellos_1.jpg', 157),
(456, '', 'product/Cellos_2.jpg', 157),
(457, '', 'product/Cellos_3.jpg', 157),
(458, '', 'product/Cellos_4.jpg', 157),
(459, '', 'product/Cellos_1YRKOCU.jpg', 158),
(460, '', 'product/Cellos_2_8JfAcDs.jpg', 158),
(461, '', 'product/Cellos_3_oPPdaZW.jpg', 158),
(462, '', 'product/Cellos_4_2MMG38H.jpg', 158),
(463, '', 'product/Cellos_xWgPDsd.jpg', 159),
(464, '', 'product/Cellos_1_sGmJdNs.jpg', 159),
(465, '', 'product/Cellos_3_7Llf4rl.jpg', 159),
(466, '', 'product/Cellos_4_2VlAsx8.jpg', 159),
(467, '', 'product/Violas_1.jpg', 160),
(468, '', 'product/Violas_2.jpg', 160),
(469, '', 'product/Violas_3.jpg', 160),
(470, '', 'product/Violas_4.jpg', 160),
(471, '', 'product/Violas_rb7i6d6.jpg', 161),
(472, '', 'product/Violas_2_5jf9cOC.jpg', 161),
(473, '', 'product/Violas_3_UECb8J0.jpg', 161),
(474, '', 'product/Violas_4_u0hcsKM.jpg', 161),
(475, '', 'product/Violins_1.jpg', 162),
(476, '', 'product/Violins_2.jpg', 162),
(477, '', 'product/Violins_3.jpg', 162),
(478, '', 'product/Violins_4.jpg', 162),
(479, '', 'product/Violins_YN4OsIz.jpg', 163),
(480, '', 'product/Violins_2_PbGqaWL.jpg', 163),
(481, '', 'product/Violins_3_JQ5HsRi.jpg', 163),
(482, '', 'product/Violins_4_sNNZndS.jpg', 163),
(483, '', 'product/Violins_DtOoHlI.jpg', 164),
(484, '', 'product/Violins_1_UP8Lzc2.jpg', 164),
(485, '', 'product/Violins_3_kUdw6Cr.jpg', 164),
(486, '', 'product/Violins_4_gJlMtjt.jpg', 164),
(487, '', 'product/Violins_Vyq5kxm.jpg', 165),
(488, '', 'product/Violins_1_sGZBo44.jpg', 165),
(489, '', 'product/Violins_2_KtyLroO.jpg', 165),
(490, '', 'product/Violins_4_GFJDzU9.jpg', 165),
(491, '', 'product/Violins_Fv2nwPB.jpg', 166),
(492, '', 'product/Violins_1_6DCpAyD.jpg', 166),
(493, '', 'product/Violins_2_r4ql8mJ.jpg', 166),
(494, '', 'product/Violins_3_8FSFxRU.jpg', 166),
(495, '', 'product/EV_1.jpg', 167),
(496, '', 'product/EV_2.jpg', 167),
(497, '', 'product/EV_3.jpg', 167),
(498, '', 'product/EV_4.jpg', 167),
(499, '', 'product/EV_cDIcBUC.jpg', 168),
(500, '', 'product/EV_2_557R1hW.jpg', 168),
(501, '', 'product/EV_3_NSZRzZa.jpg', 168),
(502, '', 'product/EV_4_obs40nL.jpg', 168),
(503, '', 'product/EV_ELt8ead.jpg', 169),
(504, '', 'product/EV_1_I5Xzv5d.jpg', 169),
(505, '', 'product/EV_3_bruWg1o.jpg', 169),
(506, '', 'product/EV_4_vnoASKa.jpg', 169),
(507, '', 'product/EV_KsO3AR2.jpg', 170),
(508, '', 'product/EV_1_e9XwYmh.jpg', 170),
(509, '', 'product/EV_2_o9focoD.jpg', 170),
(510, '', 'product/EV_4_9rzEYBx.jpg', 170),
(511, '', 'product/EV_rvyWEyA.jpg', 171),
(512, '', 'product/EV_1_xMJRFT0.jpg', 171),
(513, '', 'product/EV_2_Pi7VD77.jpg', 171),
(514, '', 'product/EV_3_OgC8fj5.jpg', 171),
(515, '', 'product/SV_1.jpg', 172),
(516, '', 'product/SV_2.jpg', 172),
(517, '', 'product/SV_3.jpg', 172),
(518, '', 'product/SV_4.jpg', 172),
(519, '', 'product/SV_UCJjb2L.jpg', 173),
(520, '', 'product/SV_2_nSzR2ys.jpg', 173),
(521, '', 'product/SV_3_QBGpj5p.jpg', 173),
(522, '', 'product/SV_4_MKz1tyD.jpg', 173),
(523, '', 'product/SV_OeeKPSS.jpg', 174),
(524, '', 'product/SV_1_zVXAyog.jpg', 174),
(525, '', 'product/SV_3_SIRUkz6.jpg', 174),
(526, '', 'product/SV_4_Udh8404.jpg', 174),
(527, '', 'product/SV_e1KJ0WY.jpg', 175),
(528, '', 'product/SV_1_pdpZ6d9.jpg', 175),
(529, '', 'product/SV_2_W443VSG.jpg', 175),
(530, '', 'product/SV_4_yfoYAkw.jpg', 175),
(531, '', 'product/SV_UkUbh9K.jpg', 176),
(532, '', 'product/SV_1_S7HwxTs.jpg', 176),
(533, '', 'product/SV_2_X2jmroP.jpg', 176),
(534, '', 'product/SV_3_n7wKTEa.jpg', 176),
(535, '', 'product/Fluets_1.jpg', 177),
(536, '', 'product/Fluets_2.jpg', 177),
(537, '', 'product/Fluets_3.jpg', 177),
(538, '', 'product/Fluets_4.jpg', 177),
(539, '', 'product/Fluets_R32Qc8D.jpg', 178),
(540, '', 'product/Fluets_1_lvjrGy6.jpg', 178),
(541, '', 'product/Fluets_3_K8PW7m1.jpg', 178),
(542, '', 'product/Fluets_4_hyisbOU.jpg', 178),
(543, '', 'product/Fluets_IhGT92e.jpg', 179),
(544, '', 'product/Fluets_1_xVyRZFI.jpg', 179),
(545, '', 'product/Fluets_3_Ey06nVd.jpg', 179),
(546, '', 'product/Fluets_4_1OuZptO.jpg', 179),
(547, '', 'product/Fluets_JUzWZav.jpg', 180),
(548, '', 'product/Fluets_1_iwVdFvj.jpg', 180),
(549, '', 'product/Fluets_2_Hw260ZT.jpg', 180),
(550, '', 'product/Fluets_4_2tYF5yj.jpg', 180),
(551, '', 'product/Fluets_9T2Ova6.jpg', 181),
(552, '', 'product/Fluets_1_KlbuVsL.jpg', 181),
(553, '', 'product/Fluets_2_JXov7uQ.jpg', 181),
(554, '', 'product/Fluets_3_wPNIcnO.jpg', 181),
(555, '', 'product/Oboes_1.jpg', 182),
(556, '', 'product/Oboes_2.jpg', 182),
(557, '', 'product/Oboes_3.jpg', 182),
(558, '', 'product/Oboes_4.jpg', 182),
(559, '', 'product/Oboes_RSKnY1g.jpg', 183),
(560, '', 'product/Oboes_2_BY7F7TT.jpg', 183),
(561, '', 'product/Oboes_3_xC6Slr7.jpg', 183),
(562, '', 'product/Oboes_4_JibvE3X.jpg', 183),
(563, '', 'product/Oboes_mf5pb84.jpg', 184),
(564, '', 'product/Oboes_1_haCFpVX.jpg', 184),
(565, '', 'product/Oboes_3_5YVTLUC.jpg', 184),
(566, '', 'product/Oboes_4_7kpInYQ.jpg', 184),
(567, '', 'product/Oboes_Y7iaLdy.jpg', 185),
(568, '', 'product/Oboes_1_njXRr9a.jpg', 185),
(569, '', 'product/Oboes_2_UXgRpKZ.jpg', 185),
(570, '', 'product/Oboes_4_iJlCgvw.jpg', 185),
(571, '', 'product/Oboes_93jP19R.jpg', 186),
(572, '', 'product/Oboes_1_TqYOzQb.jpg', 186),
(573, '', 'product/Oboes_2_A3uB0qm.jpg', 186),
(574, '', 'product/Oboes_3_8CXvpaN.jpg', 186),
(575, '', 'product/Pic_1.jpg', 187),
(576, '', 'product/Pic_2.jpg', 187),
(577, '', 'product/Pic_3.jpg', 187),
(578, '', 'product/Pic_4.jpg', 187),
(579, '', 'product/Pic_caNdgKi.jpg', 188),
(580, '', 'product/Pic_2_3Bkn7WU.jpg', 188),
(581, '', 'product/Pic_3_ps1f2PC.jpg', 188),
(582, '', 'product/Pic_4_OIPT9wq.jpg', 188),
(583, '', 'product/Pic_sPwp2zD.jpg', 189),
(584, '', 'product/Pic_1_lRNaW7v.jpg', 189),
(585, '', 'product/Pic_3_Sw7i43C.jpg', 189),
(586, '', 'product/Pic_4_uOznUNn.jpg', 189),
(587, '', 'product/Pic_MoummIe.jpg', 190),
(588, '', 'product/Pic_1_S0y3jQz.jpg', 190),
(589, '', 'product/Pic_2_oKFj9OQ.jpg', 190),
(590, '', 'product/Pic_4_4oeEuvS.jpg', 190),
(591, '', 'product/Pic_z1uRGcO.jpg', 191),
(592, '', 'product/Pic_1_Kz3JVOW.jpg', 191),
(593, '', 'product/Pic_2_7wbIuUW.jpg', 191),
(594, '', 'product/Pic_3_N0smbXT.jpg', 191),
(595, '', 'product/part_m4UTz28.jpg', 192),
(596, '', 'product/guitar-part.jpg', 193),
(597, '', 'product/Untitled-1.jpg', 194),
(598, '', 'product/Untitled-2.jpg', 194),
(599, '', 'product/Untitled-3.jpg', 194),
(600, '', 'product/1.jpg', 195),
(601, '', 'product/2.jpg', 195),
(605, '', 'product/Untitled-1_E3zpFI9.jpg', 2),
(606, '', 'product/Untitled-2_J1UmX4o.jpg', 2),
(607, '', 'product/Untitled-3_I8nmi8M.jpg', 2),
(609, '', 'product/YAM-FX370C-GTR-key.jpg', 104);

-- --------------------------------------------------------

--
-- Table structure for table `product_product`
--

CREATE TABLE `product_product` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `new_price` decimal(15,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  `detail` longtext NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_product`
--

INSERT INTO `product_product` (`id`, `title`, `image`, `new_price`, `status`, `slug`, `created_at`, `updated_at`, `category_id`, `detail`, `amount`) VALUES
(2, 'GF310NPA', 'product/GF310NPA.jpg', '15000.00', 'True', 'gf310npa', '2021-05-05 19:25:16.244200', '2021-05-25 09:59:01.739355', 2, 'Control Interface\r\n-Strings Scale	634 mm (25\")\r\nDesign/Architecture Detail\r\n-Body Depth	96-116 mm (3 3/4\"-4 9/16\")\r\n-Finger Board Width (Nut/Body)	43 mm (1 11/16\")\r\nMaterial\r\n-Top	Spruce\r\n-Back	Meranti\r\n-Side/Rib	Meranti\r\n-Neck	Nato\r\n-Finger Board	Rosewood\r\n-Bridge	Rosewood', 1),
(4, 'Yamaha NU1X AvantGrand Hybrid Upright Piano', 'product/HNU1XUK_jbqodEh.jpg', '48000.00', 'True', 'yamaha-nu1x-avantgrand-hybrid-upright-piano', '2021-05-07 14:17:13.037523', '2021-05-25 09:59:54.033932', 8, 'Number of Keys: 88 (A-1 - C7)\r\nWhite Key Surfaces:  Acrylic resin\r\nBlack Key Surfaces:  Phoenolic resin\r\nTouch Sensitivity Settings:  Hard/Medium/Soft/Fixed\r\nKey Sensors:  Non-contact optical fiber\r\nNumber of Pedals:  3\r\nPedal Types : Damper (with half-pedal effect), Sostenuto, Soft\r\nGP Responsive Damper Pedal : Yes\r\nSoft-Close Fallboard? :  Yes\r\nMusic Rest?: Yes\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\nBinaural Sampling?:  Yes (On CFX Grand Voice)\r\nVirtual Resonance Modelling (VRM):  Yes\r\nKey-off Samples: Yes\r\nSmooth Release:  Yes\r\nNumber of Polyphony (max.):  256\r\nNumber of Voices: 15\r\nDifferent Effect Types?: Yes\r\nIntelligent Acoustic Control (IAC)? :Yes\r\nStereophonic Optimiser? Yes\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\nNumber of Spaces for MIDI Song Recording: 10\r\nNumber of MIDI Recording Tracks: 1\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\nMIDI Recording Data Format: SMF (Format 0)\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\nOn-Board Metronome? Yes\r\nMetronome Range: 5 - 500 bpm\r\nTransposition Range: -6 semitones to +6 semitones\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\nScale Type Options: 7 types\r\nInternal Memory: Total maximum size approx. 1.5MB\r\nExternal Memory Option: USB Flash Drive\r\nHeadphone Connections? TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\nConventional MIDI Connection: IN + OUT\r\nAux In Connection: Stereo Mini Jack\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\nUSB-To-Device Port:  Yes\r\nUSB-To-Host Port:  Yes\r\nAmplifiers:  2x (45W+45W)\r\nSpeaker Size:  2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\nAcoustic Optimiser?  Yes\r\nAuto Power Off Setting (For Energy Saving)?  Yes\r\nWidth:  1501mm\r\nDepth:  463mm\r\nHeight (with lid closed):  1024mm\r\nWeight:  111kg\r\nIncluded Accessories:  Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set, “50 Classical Music Masterpieces” Music Book\r\nSuggested Accessories (Sold Separately):  Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 1),
(5, 'Yamaha AvantGrand N1X Hybrid Piano', 'product/HN1XUK_OF1gXvK.jpg', '50000.00', 'True', 'yamaha-avantgrand-n1x-hybrid-piano', '2021-05-07 14:59:56.394805', '2021-05-25 10:00:08.683238', 8, 'Key Action: Specialised Grand Piano Action\r\nKey Sensors: Yes\r\nHammer Sensors: Yes\r\nGrand Piano Response Damper Pedal Sensor: Yes\r\nVoice Selection:5 Piano Voices, 10 Non-Piano Voices\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\nVirtual Resonance Modelling: Yes\r\nStereophonic Optimiser: Yes\r\nBinaural Sampling: Yes (For Yamaha CFX Voice)\r\nBuilt-In Songs: 15 Voice Demos, 10 Piano Pieces\r\nUSB Audio Recording & Playback Format: WAV\r\nMIDI IN/OUT: Yes\r\nAuxiliary In: Yes (Stereo Mini-Jack)\r\nAuxiliary Out: Yes (Full-Size Mono Jacks - L/Mono & Right)\r\nUSB Host Connection: Yes (For iOS Devices, Macs, and Windows PCs): USB Device Connection\r\nYes (For USB Memory, Compatible USB Wireless Devices)', 1),
(6, 'Yamaha AvantGrand N2 Hybrid Piano', 'product/HN2UK.jpg', '130000.00', 'True', 'yamaha-avantgrand-n2-hybrid-piano', '2021-05-07 15:28:18.404769', '2021-05-25 10:00:22.598850', 8, 'Finish	Polished\r\n\r\nSize/Weight:\r\n\r\nDimensions	Width	1,471mm (57-15/16\")\r\nHeight	1,009mm (39-3/4\") With music rest : 1,181mm (46-1/2\")\r\nDepth	531mm (20-7/8\")\r\nWeight	Weight	142kg (313lbs., 1oz.)\r\n\r\nControl Interface:\r\n\r\nKeyboard	Number of Keys	88\r\nType	Ivorite (white keytops)\r\nKeyboard Action	Specialized Grand Piano Action\r\nTactile Response System (TRS)	Yes\r\nPedal	Number of Pedals	3\r\nHalf Pedal	Yes\r\n\r\nCabinet:\r\nKey Cover	Soft-Close Fallboard	Yes\r\nMusic Rest	Yes\r\n\r\nVoices:\r\n\r\nTone Generation	Tone Generating Technology	Spatial Acoustic Sampling\r\nPolyphony	Number of Polyphony (Max.)	256\r\nPreset	Number of Voices	5\r\n\r\nEffects:\r\n\r\nTypes	Reverb	Yes\r\nSongs\r\nPreset	Number of Preset Songs	10\r\n\r\nRecording:\r\n\r\nNumber of Songs	1\r\nNumber of Tracks	1\r\nData Capacity	300KB (approx. 30,000 notes)\r\nRecording Function	Yes', 1),
(7, 'Yamaha AvantGrand N3X Hybrid Piano', 'product/HN3XUK_2MUMpAc.jpg', '206000.00', 'True', 'yamaha-avantgrand-n3x-hybrid-piano', '2021-05-07 15:57:13.472887', '2021-05-25 10:00:40.932707', 8, 'The Yamaha CFX Concert Grand and the Bösendorfer Imperial Grand; two of the world\'s most revered pianos, each with its own distinctive character and each used in concert halls across the globe.\r\n\r\nWith both pianos measuring more than 9 feet in length and having the acoustic power to fill the largest concert halls unaided, fitting either into your home might not be practical. \r\n\r\nFor the AvantGrand N3X, we set out to create a piano that feels and sounds like both the CFX and Imperial - but one which you can use at home (whether that be a city apartment or a country retreat) and at any time of day or night.\r\n\r\nAvantGrand N3X features our most advanced binaural sampling, world-class hifi-grade speakers and our best-ever integration between digital synthesis and physical cabinet in a digital piano. And, to ensure that N3X feels like a grand piano, we\'ve used a true Yamaha grand piano keyboard and hammer action. \r\n\r\nWith AvantGrand N3X, you really can bring both the Yamaha CFX and Bösendorfer Imperial Grand into your living room.\r\n\r\nSpecialised Grand Piano Action with Ivorite\r\nSpatial Acoustic Sampling\r\nSound sampled on four channels from the Yamaha CFX and Bösendorfer Imperial\r\nYamaha CFX Binaural sampling\r\nVirtual Resonance Modeling (VRM)\r\nSpatial Acoustic Speaker System\r\nSoundboard Resonator\r\nTactile Response System\r\nSpecialized Grand Piano Pedal\r\nUSB Audio Recorder\r\nXLR jack outputs', 1),
(9, 'Yamaha Genos Workstation Keyboard', 'product/SGENOSUK_8v8l97b.jpg', '430000.00', 'True', 'yamaha-genos-workstation-keyboard', '2021-05-07 18:46:43.548748', '2021-05-25 10:01:18.638746', 10, 'Dimensions:\r\n\r\n	Width: 1234mm (48-9/16”)\r\n	Depth: 456mm (17-15/16”)\r\n	Height: 138 (5-7/16”)\r\n	Weight: 13kg (28lbs 11oz)\r\n\r\nKeyboard:\r\n\r\n	Number of keys: 76\r\n	Type: Yamaha FSX\r\n	Touch Response: Yes\r\n	Aftertouch: Yes\r\n	Touch Response Settings:Normal, Easy 1, Easy 2, Soft 					1, Soft 2, Hard 1, Hard 2\r\nAdditional Controls: \r\n\r\n	Pitch/Modulation Controls: Combined 2-Axis Joystick\r\n	Silders: 9 Assignable, Cross Fader\r\n	Articulation Switches: 3 Switches\r\n\r\nDisplays: \r\n\r\n	Main Display: 9” LCD Touchscreen\r\n	Sub Display: OLED Live Control View', 1),
(10, 'Yamaha Genos Workstation Essential Pack', 'product/SGENOSUK-PACK2.jpg', '497000.00', 'True', 'yamaha-genos-workstation-essential-pack', '2021-05-07 18:49:22.924616', '2021-05-25 10:01:32.058041', 10, 'Dimensions:\r\n\r\n	Width: 1234mm (48-9/16”)\r\n	Depth: 456mm (17-15/16”)\r\n	Height: 138 (5-7/16”)\r\n	Weight: 13kg (28lbs 11oz)\r\n\r\nKeyboard:\r\n\r\n	Number of keys: 76\r\n	Type: Yamaha FSX\r\n	Touch Response: Yes\r\n	Aftertouch: Yes\r\n	Touch Response Settings:Normal, Easy 1, Easy 2, Soft 					1, Soft 2, Hard 1, Hard 2\r\nAdditional Controls: \r\n\r\n	Pitch/Modulation Controls: Combined 2-Axis Joystick\r\n	Silders: 9 Assignable, Cross Fader\r\n	Articulation Switches: 3 Switches\r\n\r\nDisplays: \r\n\r\n	Main Display: 9” LCD Touchscreen\r\n	Sub Display: OLED Live Control View', 1),
(11, 'Yamaha Genos Workstation Ultimate Pack', 'product/SGENOSUK-PACK2_xHJxkMt.jpg', '527000.00', 'True', 'yamaha-genos-workstation-ultimate-pack', '2021-05-07 18:51:36.115609', '2021-05-25 10:02:01.387719', 10, 'Welcome to the new world of Digital Workstations. Genos is the new benchmark in Digital Workstation sound, design, and user experience. Whether you are in a recording studio or on stage, Genos will inspire and intensify your musical creation and performance.\r\n\r\nThis pack includes the following:\r\n\r\nYamaha Genos Workstation\r\nYamaha GNS-MS01 2.1 Speaker System for Genos (with Speaker Mounting Points)\r\nYamaha L-7B Stand for Genos\r\nYamaha FC4A Sustain Pedal\r\nYamaha FC5A Foot Pedal\r\nYamaha FC7 Expression Pedal\r\nYamaha HPH-150 Headphones\r\nYamaha Piano Stool', 1),
(12, 'Yamaha SB7X Silent Brass System For Trumpet & Cornet', 'product/BSB7X02.jpg', '20700.00', 'True', 'yamaha-sb7x-silent-brass-system-trumpet-cornet', '2021-05-07 19:02:49.000534', '2021-05-25 10:02:23.331104', 12, 'Pickup Mute™\r\n	\r\nModel				PM7X\r\nDimensions 			(Diameter x Length)	82 x 139mm (3-1/4\" x 5-1/2\")\r\nWeight				70g (2.5 oz.)\r\nInternal Microphone		Electric condenser microphone\r\nPickup Output Jack		Mini phone jack\r\nNominal Level			-25dB～-35dB\r\nBrass Resonance Modeling™	Yes\r\n\r\nPersonal Studio™	\r\nModel				STX-2\r\nDimensions 			(W x D x H)	70 x 20 x 98mm\r\nWeight				69g (2.4 oz) without batteries\r\nJacks and Terminals	MUTE IN, AUX IN, PHONES Control VOL. (volume), Reverb type, Power ON/OFF\r\nBrass Resonance Modeling™	Yes (It behaves correctly only when compatible Pickup Mute™ is connected to Personal Studio™.)\r\nPower Supply			AA alkaline or nickel-metal hydride batteries x 2 (3V DC)\r\nIncluded Accessories		Cable\r\nStereo Earphones		Owner’s Manual\r\n\r\nPlease Note\r\n\r\n    In some cases, the Pickup Mute™ may not fit instruments that have significantly different bell diameters and/or shapes. Please check before purchasing.\r\n    The Pickup Mute™ is not compatible with Marching Mellophones, Marching French Horns, Alto (Tenor) Horns, or Baritones.\r\n    The SILENT Brass™ mute for Trombone (SB5X) and the Pickup Mute™ (PM5X) are not compatible with Alto Trombones or Bass Trombones.\r\n    The SILENT Brass™ mutes for Flugelhorn (SB6X) and the Pickup Mute (PM6X) protrudes 3-4 cm from the bell.\r\n    The Pickup Mute™ cannot be stored in the cases of French Horns with detachable bells.\r\n    For information on compatibility with Yamaha brass instruments and cases please refer to the \"Compatibility Table\".\r\n    Always remove the Pickup Mute™ from the instrument if the instrument is to be stored for an extended period of time.\r\n    The PHONES jack on the Personal Studio™ STX is for stereo output (do not use it for mono output).\r\n    Do not connect an earphone with microphone headset or similar device that has a 4-contact plug to the Personal Studio™. The use of such a device can result in severely degraded balance and sound.\r\n    Do not connect the PHONE jack to a microphone input jack (or combined mic/line input) on a computer, etc., that also supplies power to the connected device (plug-in power).\r\n    If you want to use the jack as an external output, do not connect anything to the AUX IN jack.\r\n    Please note that Brass Resonance Modeling™ is only available when the STX Personal Studio™ is combined with a PM3X/5X/6X/7X Pickup Mute™. It is not available with any other Personal Studio™ or Pickup Mute™ models.\r\n    AA batteries are not supplied. Please purchase separately.\r\n    SILENT Brass™, Personal Studio™, Pickup Mute™, Brass Resonance Modeling™, and SILENT Brass™ logo are all trademarks owned by the Yamaha Corporation.', 1),
(13, 'Yamaha PM7X SILENT Brass Pickup Mute for Trumpet & Cornet', 'product/YAM-PM7X.jpg', '10000.00', 'True', 'yamaha-pm7x-silent-brass-pickup-mute-trumpet-corne', '2021-05-07 19:04:44.473576', '2021-05-25 10:02:45.621082', 12, 'Pickup Mute™\r\nDimensions (Diameter x Length)	82 x 139mm (3-1/4\" x 5-1/2\")\r\nWeight	70g (2.5 oz.)\r\nInternal Microphone	Electric condenser microphone\r\nPickup Output Jack	Mini phone jack\r\nNominal Level	-25dB～-35dB\r\nBrass Resonance Modeling™	Yes\r\nIncluded Accessories	Cable, Owner’s Manual\r\nPlease Note\r\nIn some cases, the Pickup Mute™ may not fit instruments that have significantly different bell diameters and/or shapes. Please check before purchasing.\r\nThe Pickup Mute™ is not compatible with Marching Mellophones, Marching French Horns, Alto (Tenor) Horns, or Baritones.\r\nThe SILENT Brass™ mute for Trombone (SB5X) and the Pickup Mute™ (PM5X) are not compatible with Alto Trombones or Bass Trombones.\r\nSILENT Brass™ mutes for Flugelhorn (SB6X) and Pickup Mute (PM6X) protrudes 3-4 cm from the bell.\r\nThe Pickup Mute™ cannot be stored in the cases of French Horns with detachable bells.\r\nFor information on compatibility with Yamaha brass instruments and cases please refer to the \"Compatibility Table\".\r\nAlways remove the Pickup Mute™ from the instrument if the instrument is to be stored for an extended period of time.\r\nThe PHONES jack on the Personal Studio™ is for stereo output (do not for use it for mono output). If you want to use the jack as an external output, do not connect anything to the AUX IN jack.\r\nPlease note that Brass Resonance Modeling™ is only available when the STX Personal Studio™ is combined with a PM3X/5X/6X/7X Pickup Mute™. It is not available with any other Personal Studio™ or Pickup Mute™ models.\r\nAA batteries are not supplied. Please purchase separately.\r\nSILENT Brass™, Personal Studio™, Pickup Mute™, Brass Resonance Modeling™, and SILENT Brass™ logo are all trademarks owned by the Yamaha Corporation.', 1),
(14, 'Yamaha PM-2X Silent Brass Pickup Mute for Euphonium', 'product/BPM2X.jpg', '23400.00', 'True', 'yamaha-pm-2x-silent-brass-pickup-mute-euphonium', '2021-05-07 19:06:28.150245', '2021-05-25 10:03:02.970246', 12, 'Pickup Mute™\r\nDimensions (Diameter x Length)	210 x 395 mm (8-1/4\" x 15-9/16\")\r\nWeight	750 g (1 lbs. 10 oz.)\r\nInternal Microphone	Electric condenser microphone\r\nPickup Output Jack	Mini phone jack\r\nNominal Level	-25dB～-35dB\r\nBrass Resonance Modeling™	Yes\r\nAccessories\r\nIncluded Accessories	Cable, Owner’s Manual, belt\r\nPlease Note\r\nIn some cases, the Pickup Mute may not fit instruments that have significantly different bell diameters and/or shapes. Please check before purchasing.\r\nThe Pickup Mute is not compatible with Marching Mellophones, Marching French Horns, Alto (Tenor) Horns, or Baritones.\r\nThe SILENT Brass mute for Trombone (SB5X) and the Pickup Mute (PM5X) are not compatible with Alto Trombones or Bass Trombones.\r\nThe SILENT Brass mute for Euphonum(SB2X) and the Pickup Mute (PM2X) cannot be used with alto horn (tenor horn) and baritone.\r\nThe SILENT Brass mutes for Flugelhorn (SB6X) and the Pickup Mute (PM6X) protrudes 3-4 cm from the bell.\r\nFor information on compatibility with Yamaha brass instruments and cases please refer to the \"Compatibility Table\".\r\nAlways remove the Pickup Mute from the instrument if the instrument is to be stored for an extended period of time.\r\nDo not connect the PHONE jack to a microphone input jack (or combined mic/line input) on a computer, etc., that also supplies power to the connected device (plug-in power).\r\nPlease note that Brass Resonance Modeling is only available when the STX-2 Personal Studio is combined with a PM1X/2X/3X/5X/6X/7X Pickup Mute. It is not available with any other Personal Studio or Pickup Mute models.', 1),
(15, 'Yamaha SB2X Silent Brass System For Euphonium', 'product/BSB2X.jpg', '35000.00', 'True', 'yamaha-sb2x-silent-brass-system-euphonium', '2021-05-07 19:08:25.765368', '2021-05-25 10:03:18.457872', 12, 'Pickup Mute™\r\nModel	PM2X\r\nDimensions (Diameter x Length)	210 x 395 mm (8-1/4\" x 15-9/16\")\r\nWeight	750 g (1 lbs. 10 oz.)\r\nInternal Microphone	Electric condenser microphone\r\nPickup Output Jack	Mini phone jack\r\nNominal Level	-25dB～-35dB\r\nBrass Resonance Modeling™	Yes\r\nPersonal Studio™\r\nModel	STX-2\r\nDimensions (W x D x H)	70 x 20 x 98mm\r\nWeight	71g (2.5 oz) without batteries\r\nJacks and Terminals	MUTE IN, AUX IN, PHONES\r\nControl	VOL. (volume), Reverb type, Power ON/OFF\r\nBrass Resonance Modeling™	Yes (It behaves correctly only when compatible Pickup Mute™ is connected to Personal Studio™.)\r\nPower Supply	AA alkaline or nickel-metal hydride batteries x 2 (3V DC)\r\nAccessories\r\nIncluded Accessories	Cable, Stereo Earphones, Owner’s Manual, belt\r\nPlease Note\r\nIn some cases, the Pickup Mute may not fit instruments that have significantly different bell diameters and/or shapes. Please check before purchasing.\r\nThe Pickup Mute is not compatible with Marching Mellophones, Marching French Horns, Alto (Tenor) Horns, or Baritones.\r\nThe SILENT Brass mute for Trombone (SB5X) and the Pickup Mute (PM5X) are not compatible with Alto Trombones or Bass Trombones.\r\nThe SILENT Brass mute for Euphonum(SB2X) and the Pickup Mute (PM2X) cannot be used with alto horn (tenor horn) and baritone.\r\nThe SILENT Brass mutes for Flugelhorn (SB6X) and the Pickup Mute (PM6X) protrudes 3-4 cm from the bell.\r\nFor information on compatibility with Yamaha brass instruments and cases please refer to the \"Compatibility Table\".\r\nAlways remove the Pickup Mute from the instrument if the instrument is to be stored for an extended period of time.\r\nDo not connect the PHONE jack to a microphone input jack (or combined mic/line input) on a computer, etc., that also supplies power to the connected device (plug-in power).\r\nPlease note that Brass Resonance Modeling is only available when the STX-2 Personal Studio is combined with a PM1X/2X/3X/5X/6X/7X Pickup Mute. It is not available with any other Personal Studio or Pickup Mute models. \r\nSILENT Brass™, Personal Studio™, Pickup Mute™, Brass Resonance Modeling™, and SILENT Brass™ logo are all trademarks owned by the Yamaha Corporation.', 1),
(16, 'Yamaha SB1X Silent Brass System for Tuba', 'product/BSB1X.jpg', '71600.00', 'True', 'yamaha-sb1x-silent-brass-system-tuba', '2021-05-07 19:14:55.128747', '2021-05-25 10:13:25.764214', 12, 'Personal Studio™\r\nModel	STX-2\r\nDimensions (W x D x H)	70 x 20 x 98mm\r\nWeight	71g (2.5 oz) without batteries\r\nJacks and Terminals	MUTE IN, AUX IN, PHONES\r\nControl	VOL. (volume), Reverb type, Power ON/OFF\r\nBrass Resonance Modeling™	Yes (It behaves correctly only when compatible Pickup Mute™ is connected to Personal Studio™.)\r\nPower Supply	AA alkaline or nickel-metal hydride batteries x 2 (3V DC)\r\nAccessories\r\nIncluded Accessories	Cable, Stereo Earphones, Owner’s Manual, belt\r\nPlease Note\r\nIn some cases, the Pickup Mute may not fit instruments that have significantly different bell diameters and/or shapes. Please check before purchasing.\r\nThe Pickup Mute is not compatible with Marching Mellophones, Marching French Horns, Alto (Tenor) Horns, or Baritones.\r\nThe SILENT Brass mute for Trombone (SB5X) and the Pickup Mute (PM5X) are not compatible with Alto Trombones or Bass Trombones.\r\nThe SILENT Brass mute for Euphonum(SB2X) and the Pickup Mute (PM2X) cannot be used with alto horn (tenor horn) and baritone.\r\nThe SILENT Brass mutes for Flugelhorn (SB6X) and the Pickup Mute (PM6X) protrudes 3-4 cm from the bell.\r\nFor information on compatibility with Yamaha brass instruments and cases please refer to the \"Compatibility Table\".\r\nAlways remove the Pickup Mute from the instrument if the instrument is to be stored for an extended period of time.\r\nDo not connect the PHONE jack to a microphone input jack (or combined mic/line input) on a computer, etc., that also supplies power to the connected device (plug-in power).\r\nPlease note that Brass Resonance Modeling is only available when the STX-2 Personal Studio is combined with a PM1X/2X/3X/5X/6X/7X Pickup Mute. It is not available with any other Personal Studio or Pickup Mute models.', 1),
(17, 'Yamaha VC5S Full Size (4/4) Cello Outfit', 'product/YAM-VC5S-CELLO.jpg', '125000.00', 'True', 'yamaha-vc5s-full-size-44-cello-outfit', '2021-05-07 19:21:29.522776', '2021-05-25 10:13:03.093316', 14, 'Colour/Finish		\r\n-Body	Finish	Hand Brushed\r\n-Varnish	Oil Varnish\r\nBody		\r\n-Type	Stradivarius\r\n-Size	4/4\r\n-Top	Spruce\r\n-Back	Maple\r\n-Side	Maple\r\n-Neck	Maple\r\n-Finger Board	Ebony\r\nParts		\r\n-Bridge	Yamaha Original\r\n-Tuning Pegs	Rosewood\r\n-Tailpiece	Wittner \"Ultra\" (4 Fine Tuners)\r\n-Strings	D\'Addario Prelude\r\n-Fine Tuner	Wittner \"Ultra\" (4 Fine Tuners)\r\nIncluded Accessories		\r\n-Bow	Brazilian Wood\r\n-Case	Soft Case\r\n-Rosin	Piranito', 0),
(18, 'Yamaha VC7SG Full Size (4/4) Cello Outfit', 'product/YAM-VC7-CELLO.jpg', '245000.00', 'True', 'yamaha-vc7sg-full-size-44-cello-outfit', '2021-05-07 19:24:03.443654', '2021-05-25 10:12:15.602084', 14, 'Colour/Finish		\r\n-Body	Finish	Fully Hand Brushed\r\n-Varnish	Oil Varnish, Shading\r\nBody		\r\n-Type	Stradivarius\r\n-Size	4/4\r\n-Top	Spruce\r\n-Back	Maple\r\n-Side	Maple\r\n-Neck	Maple\r\n-Finger Board	Ebony\r\nParts		\r\n-Bridge	Aubert\r\n-Tuning Pegs	Ebony\r\n-Tailpiece	Wittner \"Ultra\"\r\n-Strings	Helicore\r\n-Fine Tuner	Wittner \"Ultra\" (4 fine tuner)\r\nIncluded Accessories		\r\n-Bow	Brazilian Wood\r\n-Case	Soft Case\r\n-Rosin	Schwarz', 1),
(19, 'Yamaha VA5S 13 inch Viola Outfit', 'product/YAM-VA5S13-VLA.jpg', '45000.00', 'True', 'yamaha-va5s-13-inch-viola-outfit', '2021-05-07 19:43:54.071117', '2021-05-25 10:09:43.631426', 15, 'Colour/Finish		\r\n-Body Finish 		Fully Hand Brushed\r\n-Varnish 		Oil Varnish\r\nBody		\r\n-Type 		Stradivarius\r\n-Size 		13 inch\r\n-Top 		Spruce\r\n-Back 		Maple\r\n-Side 		Maple\r\n-Neck 		Maple\r\n-Finger Board 		Ebony\r\nParts		\r\n-Bridge 		Yamaha Original\r\n-Tuning Pegs 		Rosewood\r\n-Tailpiece 		Wittner \"Ultra\" (4 Fine Tuners)\r\n-Chin Rest 		Rosewood\r\n-Strings 		D\'Addario Prelude\r\n-Fine Tuner 		Wittner \"Ultra\" (4 Fine Tuners)\r\nIncluded Accessories 	\r\n-Bow 	Brazilian Wood\r\n-Case 	Shaped Hard Case\r\n-Rosin 	Piranito', 1),
(20, 'Yamaha VA5S 16 inch Viola Outfit', 'product/YAM-VC5S-CELLO.jpg', '58000.00', 'True', 'yamaha-va5s-16-inch-viola-outfit', '2021-05-07 19:45:32.125136', '2021-05-25 10:08:37.973403', 15, 'Colour/Finish		\r\n-Body Finish: 		Fully Hand Brushed\r\n-Varnish: 		Oil Varnish\r\nBody		\r\n-Type :		Stradivarius\r\n-Size :		16 inch\r\n-Top :		Spruce\r\n-Back :		Maple\r\n-Side :		Maple\r\n-Neck :		Maple\r\n-Finger Board: 		Ebony\r\nParts		\r\n-Bridge: 		Yamaha Original\r\n-Tuning Pegs: 		Rosewood\r\n-Tailpiece: 		Wittner \"Ultra\" (4 Fine Tuners)\r\n-Chin Rest: 		Rosewood\r\n-Strings: 		D\'Addario Prelude\r\n-Fine Tuner :		Wittner \"Ultra\" (4 Fine Tuners)\r\nIncluded Accessories 	\r\n-Bow 	Brazilian Wood\r\n-Case: 	Shaped Hard Case\r\n-Rosin: 	Piranito', 1),
(21, 'Yamaha VA7SG 16 inch Viola Outfit', 'product/YAM-VA7SG16-VLA.jpg', '81000.00', 'True', 'yamaha-va7sg-16-inch-viola-outfit', '2021-05-07 19:47:45.179019', '2021-05-25 10:10:38.870114', 15, 'Colour/Finish		\r\n-Body	Finish	Fully Hand Brushed\r\n-Varnish	Oil Varnish, Shading\r\nBody		\r\n-Type	Stradivarius\r\n-Size	16 inch\r\n-Top	Spruce\r\n-Back	Maple\r\n-Side	Maple\r\n-Neck	Maple\r\n-Finger Board	Ebony\r\nParts		\r\n-Bridge	Aubert\r\n-Tuning Pegs	Ebony\r\n-Tailpiece	Wittner \"Ultra\"\r\n-Chin Rest	Ebony\r\n-Strings	D\'Addario Helicore\r\n-Fine Tuner	Wittner \"Ultra\" (4 fine tuners)\r\nIncluded Accessories		\r\n-Bow	Brazilian Wood\r\n-Case	Shaped Hard Case\r\n-Rosin	Schwarz', 1),
(22, 'Yamaha YFG-812II Bassoon', 'product/YAM-YFG812II.jpg', '2500000.00', 'True', 'yamaha-yfg-812ii-bassoon', '2021-05-07 20:13:24.652589', '2021-05-25 10:05:25.252649', 17, 'Body			Long-seasoned maple body (thick wall)\r\nKeys			Silver-plated nickel silver\r\nTrill keys		F-G, E-F#\r\nAuxiliary Keys 	High D key, 6 roller keys (low C#, low Eb, F#, Ab little finger, Ab thumb, F), Bb key guard, Balancer\r\nToneholes			Heckel system\r\nIncluded Accessories 	Case		FGC-802N\r\nSuper Bocals	CN1S & CN2S', 1),
(23, 'Yamaha YFG-821II Bassoon', 'product/YAM-YFG821II.jpg', '189000.00', 'True', 'yamaha-yfg-821ii-bassoon', '2021-05-07 20:15:15.919770', '2021-05-25 10:05:08.933431', 17, 'Body			Long-seasoned maple body (thin wall)\r\nKeys			Silver-plated nickel silver\r\nTrill keys		F-G (high E key); E-F#\r\nAuxiliary Keys 	Bb key guard; Joint hinge; Balancer; RH pp slide system; A pp arm connecter\r\nRoller Keys	F & Ab ; Ab & F# ; low Eb & low C#\r\nRoller Options	C# ; pp lock; F# lever; Bb key; E\r\nTrill Key Options	LH Eb ; RH Eb ; C; D\r\nToneholes			Heckel system', 1),
(24, 'Yamaha YCL-255S Bb Clarinet', 'product/YAM-YCL255S.jpg', '53000.00', 'True', 'yamaha-ycl-255s-bb-clarinet', '2021-05-07 20:19:05.952154', '2021-05-25 10:04:40.555324', 18, 'System 	Boehm	\r\nBarrel length: 	65mm	\r\nThumb-rest: 	Adjustable	\r\nBody: 	Matte ABS resin	\r\nKeys: 	Silver-plated nickel silver	\r\n17 Keys, 6 Rings	\r\nToneHoles: 	Straight tone holes with tapered undercut\r\nPads :	Bladder pad	\r\nIncluded:  Accessories 	Mouthpiece 	CL-4C\r\nPlastic mouthpiece cap	\r\nKey: 	Bb', 1),
(25, 'Yamaha YCL-450 Mk III Bb Clarinet', 'product/BYCL45003.jpg', '99000.00', 'True', 'yamaha-ycl-450-mk-iii-bb-clarinet', '2021-05-08 10:31:48.855613', '2021-05-25 10:03:51.116483', 18, 'Key types: 17 Keys, 6 Rings\r\nBarrel length: 65mm\r\nThumb-rest: Adjustable with strap ring\r\nToneholes: System Boehm\r\nTonehole Type: Straight tone holes with tapered undercut\r\nBody material: Grenadilla\r\nKey material: Silver-plated nickel silver\r\nKey: Bb\r\nIncluded Accessories: Yamaha CL4C Mouthpiece & Case', 1),
(26, 'Yamaha YCL-221IIS Bb Bass Clarinet', 'product/BYCL221IIS.jpg', '346000.00', 'True', 'yamaha-ycl-221iis-bb-bass-clarinet', '2021-05-08 10:33:35.213735', '2021-05-25 10:18:16.350962', 18, 'Keys\r\nKey	Key types	19 keys, 7 covered finger holes\r\nKey covering	Silver-plated	\r\nDesign/Architecture Detail\r\nThumb-rest	Adjustable\r\nToneholes	System	Boehm\r\nType	Straight tone holes\r\nMaterial\r\nBody	Matte ABS resin\r\nKey	Silver-plated nickel silver\r\nVoices\r\nKey	Bb\r\nAccessories\r\nIncluded Accessories	Mouthpiece	BCL4C', 1),
(27, 'Yamaha YCL-CSVII Bb Clarinet', 'product/YAM-YCLCS-V.jpg', '300000.00', 'True', 'yamaha-ycl-csvii-bb-clarinet', '2021-05-08 10:35:02.864345', '2021-05-25 10:17:50.596800', 18, 'Barrel length 		65mm		\r\nThumb-rest 		Fixed (Adjustable optionally available)	\r\nToneholes 	System 	Boehm		\r\nBody 		Grenadilla		\r\nIncluded Accessories 		Mouthpiece 	CL4CM	\r\nKeys 	Type 	17 Keys, 6 Rings		\r\nKeys 		Silver-plated nickel silver	\r\nKey 		Bb		\r\nToneHoles 	Type 	Tapered tone holes with hand-tapered undercut', 1),
(28, 'Yamaha Rydeen Drum Shell Kit With Hardware 20\" Kick Drum', 'product/JRDP0F5BGGSET.jpg', '54000.00', 'True', 'yamaha-rydeen-drum-shell-kit-hardware-20-kick-drum', '2021-05-08 10:59:24.483015', '2021-05-25 10:17:29.549211', 20, 'Hardware\r\n\r\nClamp\r\n\r\nCL940LB x 2\r\n\r\nLugs\r\n\r\nType\r\n\r\nSeparate lug\r\n\r\nShells\r\n\r\nThickness\r\n\r\n6 ply (7.2mm)\r\n\r\nMaterial\r\n\r\nPoplar\r\n\r\nHead\r\n\r\nTop\r\n\r\nSD : Coated , TT / FT : Clear\r\n\r\nBottom\r\n\r\nSD : S-side , TT / FT : Clear\r\n\r\nFront\r\n\r\nBD : Ebony w/ring mute +Yamaha logo\r\n\r\nBatter\r\n\r\nBD : Clear w/ring mute\r\n\r\nHoop\r\n\r\nSD/TT/FT : Triple Flange Hoop(Steel 1.5mm) , BD : Steel Hoop w/matching color inlay', 1),
(29, 'Yamaha Rydeen Drum Shell Kit With Hardware 22\" Kick Drum', 'product/JRDP0F5BGGSET_wZv26o3.jpg', '58000.00', 'True', 'yamaha-rydeen-drum-shell-kit-hardware-22-kick-drum', '2021-05-08 11:02:21.436772', '2021-05-25 10:17:01.301497', 20, 'Clamp\r\n\r\nCL940LB x 2\r\n\r\nLugs\r\n\r\nSeparate lug\r\n\r\nShells\r\n\r\nThickness\r\n\r\n6 ply (7.2mm)\r\n\r\nMaterial\r\n\r\nPoplar\r\n\r\nHead\r\n\r\nTop\r\n\r\nSD : Coated , TT / FT : Clear\r\n\r\nBottom\r\n\r\nSD : S-side , TT / FT : Clear\r\n\r\nFront\r\n\r\nBD : Ebony w/ring mute +Yamaha logo\r\n\r\nBatter\r\n\r\nBD : Clear w/ring mute\r\n\r\nHoop\r\n\r\nSD/TT/FT : Triple Flange Hoop(Steel 1.5mm) , BD : Steel Hoop w/matching color inlay', 1),
(30, 'Yamaha SBP0F5-HA Stage Custom Birch Shell Set', 'product/JSBP0F5HA.jpg', '79000.00', 'True', 'yamaha-sbp0f5-ha-stage-custom-birch-shell-set', '2021-05-08 11:03:41.963312', '2021-05-25 10:16:36.106786', 20, 'Design/Architecture Detail	 	 \r\nHoop	Model	Triple Flange Hoop\r\n 	Material	Steel\r\nLugs	Type	Separate Lug\r\nShells	Thickness	1.5mm\r\n 	Material	Birch\r\nHeads	Top	Remo UT Clear\r\n 	Bottom	Remo UT Clear\r\n 	Front (BD)	Remo UT Ebony P3\r\n 	Batter (BD)	Remo UT Clear P3\r\n 	 	 \r\nSet includes	Bass Drum	20x17 inch\r\n 	Floor Tom	14x13 inch\r\n 	Tom Tom	12x8 inch\r\n 	Tom Tom	10x7 inch\r\n 	Snare Drum	14x5.5 inch\r\n 	Tom Holder	TH945C', 1),
(31, 'Yamaha CB-7024 24x14 inch Bass Drum', 'product/YAM-CB7024.jpg', '92000.00', 'True', 'yamaha-cb-7024-24x14-inch-bass-drum', '2021-05-08 11:10:56.140262', '2021-05-25 10:16:07.719125', 22, 'Size/Weight		\r\n-Dimensions	Depth	14 inches\r\n-Diameter	24 inches\r\n-Weight		8.3Kg\r\nDesign/Architecture Detail		\r\n-Hoop	Material	Birch Ply\r\n-Lugs		8\r\n-Shells	Material	Birch Ply\r\n-Thickness	6-ply\r\n-Head	Batter	Yamaha Remo Smooth White\r\n-Bottom	Yamaha Remo Smooth White', 1),
(32, 'Yamaha CB-7028 28x14 inch Bass Drum', 'product/YAM-CB7028.jpg', '120000.00', 'True', 'yamaha-cb-7028-28x14-inch-bass-drum', '2021-05-08 11:12:52.832458', '2021-05-25 10:15:09.404434', 22, 'Size/Weight		\r\n-Dimensions	Depth	14 inches\r\n-Diameter	28 inches\r\n-Weight		9.8Kg\r\nDesign/Architecture Detail		\r\n-Hoop	Material	Birch Ply\r\n-Lugs		10\r\n-Shells	Material	Birch Ply\r\n-Thickness	6-ply\r\n-Head	Batter	Yamaha Remo Smooth White\r\n-Bottom	Yamaha Remo Smooth White', 1),
(33, 'Yamaha CB-8036 36x18 inch Bass Drum', 'product/YAM-CB8036.jpg', '270000.00', 'True', 'yamaha-cb-8036-36x18-inch-bass-drum', '2021-05-08 11:15:25.027836', '2021-05-25 10:14:27.807941', 22, 'Size/Weight		\r\nDimensions	Depth	18 inches\r\nDiameter	36 inches\r\nWeight		23.3Kg\r\nDesign/Architecture Detail		\r\nHoop	Material	Steel\r\nLugs		10\r\nShells	Material	Maple\r\nThickness	7-ply\r\nHead	Batter	Yamaha Remo Nuskyn\r\nBottom	Yamaha Remo Nuskyn', 1),
(34, 'Yamaha YBH-301 Mk II Bb Baritone Horn', 'product/BRASS-1.jpg', '23000.00', 'True', 'yamaha-ybh-301-mk-ii-bb-baritone-horn', '2021-05-16 17:20:58.137000', '2021-05-25 10:14:13.378049', 23, 'Features\r\n-----------\r\nHoned valves\r\n\r\nThe precise fit between valve casings and pistons after honing means no air leakage.\r\n\r\nPressure formed tubing\r\n\r\nPerfectly rounded tubing results in less turbulence and a smoother air flow, thus allowing for an excellent scale and reduced resistance.\r\n\r\nLaser-fused pluzuma welded bell\r\n\r\nA high-energy laser fuses the brass together for a virtually seamless bell which allows continuous, even vibrations.\r\n\r\nOriginal wrap design\r\n\r\nThe wrap of the Yamaha baritones makes the instruments comfortable to play.\r\n\r\nIdeal for beginners\r\n\r\nThe YBH-301 is an all-around instrument with a quick response and correct intonation, making it ideal for students.\r\n\r\nSpaces\r\n---------\r\nBody 	Body finish 	Clear lacquer\r\n			\r\nNumber of Valves 		3 top action\r\n			\r\nBell 	Bell Diameter 	211.4mm (8-3/8\")\r\n	Bell Material 	Yellow brass\r\n			\r\nBore 		12.8mm (0.504\")\r\n			\r\nKey of Instrument 		Bb 	\r\n			\r\nIncluded Accessories 	Mouthpiece 	45C2', 3),
(35, 'Yamaha YBH-301 Mk II Bb Baritone Horn in Silver-Plated Finish', 'product/BRASS-22.jpg', '28000.00', 'True', 'yamaha-ybh-301-mk-ii-bb-baritone-horn-silver-plate', '2021-05-17 07:17:53.741045', '2021-05-25 10:14:00.049824', 23, 'Features\r\n-----------\r\nHoned valves\r\n\r\nThe precise fit between valve casings and pistons after honing means no air leakage.\r\n\r\nPressure formed tubing\r\n\r\nPerfectly rounded tubing results in less turbulence and a smoother air flow, thus allowing for an excellent scale and reduced resistance.\r\n\r\nLaser-fused pluzuma welded bell\r\n\r\nA high-energy laser fuses the brass together for a virtually seamless bell which allows continuous, even vibrations.\r\n\r\nOriginal wrap design\r\n\r\nThe wrap of the Yamaha baritones makes the instruments comfortable to play.\r\n\r\nIdeal for beginners\r\n\r\nThe YBH-301S is an all-around instrument with a quick response and correct intonation, making it ideal for students.\r\n\r\nSpecs\r\n---------\r\nBody 	Body finish 	Silver-plated\r\n			\r\nNumber of Valves 		3 top action\r\n			\r\nBell 	Bell Diameter 	211.4mm (8-3/8\")\r\n	Bell Material 	Yellow brass\r\n			\r\nBore 		12.8mm (0.504\")\r\n			\r\nKey of Instrument 		Bb 	\r\n			\r\nIncluded Accessories 	Mouthpiece 	45C2', 3),
(36, 'Yamaha YBH-621S 4-Valve Bb Baritone Horn', 'product/621s.jpg', '29000.00', 'True', 'yamaha-ybh-621s-4-valve-bb-baritone-horn', '2021-05-17 07:31:49.838848', '2021-05-25 10:18:37.971735', 23, 'Features\r\n-----------\r\nMonel pistons\r\n\r\nMonel pistons are resistant to corrosion and are an ideal choice for professional baritone pistons which must retain precise fit and smooth action over many years.\r\n\r\nPressure formed tubing\r\n\r\nPerfectly rounded tubing results in less turbulence and a smoother air flow, thus allowing for an excellent scale and reduced resistance.\r\n\r\nLaser-fused pluzuma welded bell\r\n\r\nA high-energy laser fuses the brass together for a virtually seamless bell, which allows continuous even vibrations.\r\n\r\nOriginal wrap design\r\n\r\nThe wrap of the Yamaha baritones makes the instruments comfortable to play.\r\n\r\nHand-lapped valves and slides\r\n\r\nHand-lapping valves and slides ensures an absolutely perfect fit and seal between the valve pistons and casing or slide parts. Such a perfect fit helps to achieve smooth air flow and smooth action and improve the response and intonation of the instrument.\r\n\r\nSpecs\r\n--------\r\nBody 	Body finish 	Silver-plated 	\r\n				\r\nNumber of Valves 		3 top action + 1 side action\r\n				\r\nBell 	Bell Diameter 	211.4mm (8-3/8\") 	\r\n	Bell Material 	Yellow brass 	\r\n				\r\nBore 		12.8-13.5mm (0.504-0.531\")\r\n				\r\nKey of Instrument 		Bb 		\r\n				\r\nIncluded Accessories 	Mouthpiece 	45C2', 3),
(37, 'Yamaha YBH-621 4-Valve Bb Baritone Horn', 'product/621.jpg', '26000.00', 'True', 'yamaha-ybh-621-4-valve-bb-baritone-horn', '2021-05-17 07:34:42.685445', '2021-05-25 10:18:51.207349', 23, 'Features\r\n------------\r\nMonel pistons\r\n\r\nMonel pistons are resistant to corrosion and are an ideal choice for professional baritone pistons which must retain precise fit and smooth action over many years.\r\n\r\nPressure formed tubing\r\n\r\nPerfectly rounded tubing results in less turbulence and a smoother air flow, thus allowing for an excellent scale and reduced resistance.\r\n\r\nLaser-fused pluzuma welded bell\r\n\r\nA high-energy laser fuses the brass together for a virtually seamless bell, which allows continuous even vibrations.\r\n\r\nOriginal wrap design\r\n\r\nThe wrap of the Yamaha baritones makes the instruments comfortable to play.\r\n\r\nHand-lapped valves and slides\r\n\r\nHand-lapping valves and slides ensures an absolutely perfect fit and seal between the valve pistons and casing or slide parts. Such a perfect fit helps to achieve smooth air flow and smooth action and improve the response and intonation of the instrument.\r\n\r\nSpecs\r\n---------\r\nBody 	Body finish 	Clear lacquer 	\r\n				\r\nNumber of Valves 		3 top action + 1 side action\r\n				\r\nBell 	Bell Diameter 	211.4mm (8-3/8\") 	\r\n	Bell Material 	Yellow brass 	\r\n				\r\nBore 		12.8-13.5mm (0.504-0.531\")\r\n				\r\nKey of Instrument 		Bb 		\r\n				\r\nIncluded Accessories 	Mouthpiece 	45C2', 3),
(38, 'Yamaha YBH-831 3-Valve Bb Baritone Horn', 'product/831.jpg', '27000.00', 'True', 'yamaha-ybh-831-3-valve-bb-baritone-horn', '2021-05-17 07:37:46.265169', '2021-05-25 10:19:04.463751', 23, 'Features\r\n-----------\r\nCompensating System\r\n\r\nThe 3-valve compensating system is a traditional baritone type with an original tubing configuration for improved pitch compensation. By allowing breath to flow through the bypass tubes of valves that are pressed simultaneously with the third valve, pitch accuracy in the mid to low range is markedly improved. You can play in the normal way, without using a trigger or alternate fingerings, making it easier to concentrate on the music.\r\n\r\nOriginal Taper and Large Bell\r\n\r\nThe original main tube taper and large bell add clarity and projection to a deep, magnificent baritone timbre that won’t get lost in powerful tutti passages.\r\n\r\nLeadpipe\r\n\r\nIn addition to featuring a new design that offers ideal playing resistance, the leadpipe is not soldered to the bell so that the full, natural resonance of the instrument is available for superior expressive capability.\r\n\r\nEnhanced Playing Comfort\r\n\r\nSlim valve casings and a hand rest mounted parallel to the valves contribute to a natural, stress-free hand position, while lightweight pistons make the action quick and agile.\r\n\r\nCase\r\n\r\nThe supplied Neo case features a nameplate and shoulder pad for convenient carrying.\r\n\r\nSpecs\r\n--------\r\nControl Interface\r\n\r\n    Valve	Number of Valves	3 pistons\r\n\r\nDesign/Architecture Detail\r\n\r\n    Bell	Bell Size	240mm (9.4\")\r\n    Bore	Bore Size	13.2mm (0.52\") - 14mm (0.55\")\r\n\r\nMaterial\r\n\r\n    Body	Yellow brass\r\n\r\nVoices\r\n\r\n    Key	Bb\r\n\r\nAccessories\r\n\r\n    Included Accessories	Case	BHC-81\r\n    Mouthpiece	SL-48(S)', 3),
(40, 'YCR-2330SIII Bb Cornet', 'product/2330s.jpg', '26000.00', 'True', 'ycr-2330siii-bb-cornet', '2021-05-17 07:47:57.305276', '2021-05-25 10:19:43.720459', 24, 'Features\r\n------------\r\nYellow brass bell\r\n\r\nThe newly redesigned, durable yet light two-piece bell is made of yellow brass for optimal playability and to promote good technique and endurance.\r\n\r\nNew piston, piston caps and buttons\r\n\r\nHighly durable monel alloy pistons as well as newly designed piston buttons and bottom caps help lengthen the life of the instrument while also maximizing sound quality.\r\n\r\nNew tuning slides\r\n\r\nThe 2nd and main tuning slides are produced using the same method as high-end Yamaha models, which provides stability, a more refined tonal colour and added durability.\r\n\r\nBore size and lead pipe\r\n\r\nThe redesigned rounded leadpipe and ML (medium-large) 11.65mm (0.459\") bore give this instrument a smooth and light response and a warm tone quality.\r\n\r\nSpecs\r\n--------\r\nBody 	Body finish 	Silver-plated 		\r\n						\r\nWeight 			Medium 			\r\n						\r\nBell 	Bell Diameter 	119.0mm (4-2/3\") 		\r\n	Bell Material 	Two piece Yellow brass 	\r\n						\r\nBore 			Medium-Large 11.65mm (0.459\")\r\n						\r\nKey of Instrument 			Bb 			\r\n						\r\nIncluded Accessories 	Mouthpiece 	CR-11E4', 3),
(41, 'YCR-9435 C Cornet', 'product/9435.jpg', '25000.00', 'True', 'ycr-9435-c-cornet', '2021-05-17 07:50:33.955823', '2021-05-25 10:20:02.786090', 24, 'Features\r\n-----------\r\nDeveloped with top artists\r\n\r\nThe YCR-9435 was developed with John Hagstrom of the Chicago Symphony Orchestra.\r\n\r\nTrumpet Mouthpiece receiver\r\n\r\nThe trumpet mouthpiece receiver provides an unprecedented ease of transition between trumpet and cornet.\r\n\r\nMC1 Leadpipe taper\r\n\r\nThe MC1 leadpipe taper from the \"Chicago\" series Artist Model trumpets gives this custom cornet a strong, brilliant and complex sound.\r\n\r\nArtist Model style 1st valve slide thumbhook and 3rd valve slide ring\r\n\r\nThe Artist Model style thumbhook and ring helps bring a consistency of feel to the transition between trumpet and cornet.\r\n\r\nOne-piece yellow brass bell\r\n\r\nThe one-piece bell provides for great tonal colours and improved response.\r\n\r\nSpecs\r\n--------\r\nBody finish 		Silver-plated 		\r\n				\r\nWeight 		Heavy 		\r\n				\r\nBell 	Bell Diameter 	123mm (4-7/8\") 	\r\n	Bell Material 	One piece Yellow brass 	\r\n				\r\nBore 		Medium-Large 11.65mm (0.459\")\r\n				\r\nKey of Instrument 		C 		\r\n				\r\nIncluded Accessories 	Mouthpiece 	TR-16C4 		\r\n	Case  	CRC-810', 3),
(42, 'YCR-2610SIII Eb Soprano Cornet', 'product/2610s.jpg', '26000.00', 'True', 'ycr-2610siii-eb-soprano-cornet', '2021-05-17 07:52:53.531135', '2021-05-25 10:20:18.433570', 24, 'Features\r\n------------\r\nYellow brass bell\r\n\r\nThe newly redesigned, durable yet light two-piece bell is made of yellow brass for optimal playability and to promote good technique and endurance.\r\n\r\nNew piston, piston caps and buttons\r\n\r\nHighly durable monel alloy pistons as well as newly designed piston buttons and bottom caps help lengthen the life of the instrument while also maximizing sound quality.\r\n\r\nNew tuning slides\r\n\r\nThe 2nd and main tuning slides are produced using the same method as high-end Yamaha models, which provides stability, a more refined tonal colour and added durability.\r\n\r\nSpecs\r\n--------\r\nBody 	Body finish 	Silver-plated 		\r\n						\r\nWeight 			Light 			\r\n						\r\nBell 	Bell Diameter 	119.0mm (4-2/3\") 		\r\n	Bell Material 	One piece Gold brass 	\r\n						\r\nBore 			Medium-Large 11.65mm (0.459\")\r\n						\r\nKey of Instrument 			Eb 			\r\n						\r\nIncluded Accessories 	Mouthpiece 	CR-7D4d', 3),
(43, 'YCR-8620 Eb Soprano Cornet', 'product/8620.jpg', '28000.00', 'True', 'ycr-8620-eb-soprano-cornet', '2021-05-17 07:55:43.617716', '2021-05-25 10:20:42.112990', 24, 'Features\r\n-----------\r\nThinner bell\r\n\r\nThinner and lightweight bell allows for free resonance, excellent control and flexibility.\r\n\r\nCurved leadpipe with sleeve\r\n\r\nA curved leadpipe provides the correct amount of resistance while allowing the player to achieve a full and warm tone.\r\n\r\nCase\r\n\r\nThis custom-designed single case features a better fit and provides more protection during transportation.\r\n\r\nSpecs\r\n--------\r\nBody 	Body finish 	Clear lacquer 		\r\n						\r\nWeight 			Light 			\r\n						\r\nBell 	Bell Diameter 	120.0mm (4-3/4\") 		\r\n	Bell Material 	One piece Yellow brass 	\r\n						\r\nBore 			Medium-Large 11.30mm (0.445\")\r\n						\r\nKey of Instrument 			Eb 			\r\n						\r\nIncluded Accessories 	Mouthpiece 	CR-6B4(L) 			\r\n	Case  		CRC-8620', 3),
(44, 'YEP-201S 3-Valve Bb Euphonium', 'product/201s.jpg', '32000.00', 'True', 'yep-201s-3-valve-bb-euphonium', '2021-05-17 08:02:45.511237', '2021-05-25 10:21:16.485567', 25, 'Features\r\n-----------\r\nHoned valves\r\n\r\nThe precise fit between valve casings and pistons after honing means no air leakage.\r\n\r\nPressure formed tubing\r\n\r\nPerfectly rounded tubing results in less turbulence and a smoother air flow, thus allowing for an excellent scale and reduced resistance.\r\n\r\nLaser-fused pluzuma welded bell\r\n\r\nA high-energy laser fuses the brass together for a virtually seamless bell, which allows continuous even vibrations.\r\n\r\nIntonation\r\n\r\nThe excellent intonation of the YEP-201S helps to foster a feel for correct pitch in beginning players.\r\n\r\nResponse\r\n\r\nThe responsiveness of the YEP-201S assists beginning players in learning the phrasing of the euphonium.\r\n\r\nLightweight\r\n\r\nThe student euphoniums are lightweight, making them easier for younger students to handle.\r\n\r\nSpecs\r\n----------\r\nBody 	Body finish 	Silver-plated\r\n			\r\nNumber of Valves 		3 top action\r\n			\r\nBell 	Bell Diameter 	280mm (11\")\r\n	Bell Material 	Yellow brass\r\n			\r\nBore 		14.5mm (0.571\")\r\n			\r\nKey of Instrument 		Bb 	\r\n			\r\nIncluded Accessories 	Mouthpiece 	48M', 3),
(45, 'YEP-211 3-Valve Euphonium - Bell front version', 'product/211.jpg', '31000.00', 'True', 'yep-211-3-valve-euphonium-bell-front-version', '2021-05-17 08:04:28.460560', '2021-05-25 10:21:34.382504', 25, 'Features\r\n----------\r\nHoned valves\r\n\r\nThe precise fit between valve casings and pistons after honing means no air leakage.\r\n\r\nPressure formed tubing\r\n\r\nPerfectly rounded tubing results in less turbulence and a smoother air flow, thus allowing for an excellent scale and reduced resistance.\r\n\r\nLaser-fused pluzuma welded bell\r\n\r\nA high-energy laser fuses the brass together for a virtually seamless bell, which allows continuous even vibrations.\r\n\r\nIntonation\r\n\r\nThe excellent intonation of the YEP-211 helps to foster a feel for correct pitch in beginning players.\r\n\r\nResponse\r\n\r\nThe responsiveness of the YEP-211 assists beginning players in learning the phrasing of the euphonium.\r\n\r\nLightweight\r\n\r\nThe student euphoniums are lightweight, making them easy for younger students to handle.', 3),
(46, 'YEP-642T Neo Euphonium with Trigger System', 'product/642.jpg', '33000.00', 'True', 'yep-642t-neo-euphonium-trigger-system', '2021-05-17 08:08:08.111729', '2021-05-25 10:21:51.065966', 25, 'Features\r\n-----------\r\nBody Design\r\n\r\nThe YEP-642T\'s main tube utilises a new design that maintains adequate resistance, delivers a powerful low range and focused high range, and improves dynamics over the instrument’s entire range. In addition to a matured and comfortable tone, this design offers accurate pitch while delivering greater musical expressiveness.\r\nHandrest\r\n\r\nChanging the handrest position to allow for a more natural hold on the instrument simplifies fingering and offers smoother performance while playing demanding solo or ensemble passages.\r\nMain Tube Trigger System\r\n\r\nA main-tube trigger system offers precise pitch control as well as solid tone. The lever plate can be pressed during a performance to shift the main tube tuning slide downward, lowering pitch by a precisely controlled amount. Release the lever plate and the tuning slide returns to its original position. To tune the instrument prior to a performance, loosen the rod base screw so that the main tube tuning slide can be positioned as required. The screw can then be tightened to set the trigger rod to the desired position.\r\n\r\n*A hex wrench (for lever plate vertical position and angle adjustment) and operation manual for the trigger system are supplied.\r\nAdjustable Trigger System\r\n\r\nThe position, angle, and stroke of the lever plate can be adjusted to optimize trigger system operation and comfort individual needs:\r\n\r\n    Lever plate vertical position and angle adjustment: The supplied hex wrench can be used to loosen the lever plate screws, allowing the vertical position and angle of the lever plate to be adjusted for maximum operation comfort and ease.\r\n    Lever plate stroke adjustment: Use a standard “minus” screwdriver to rotate the lever plate stroke screw and adjust as required.\r\n\r\nDedicated Main Tube Trigger Slide\r\n\r\nThe main tube tuning slides of euphoniums designed for trigger mechanisms have a rod base to which the trigger rod attaches. Additionally, the diameter of the main tube tuning slide inner tube is smaller than normal to ensure smooth trigger operation.\r\nDedicated Main Tube Tuning Slide Trigger Cover\r\n\r\nA special metal cover prevents the main tube tuning slide from coming into to direct contact with and possibly transferring oil to the player’s clothing. Loosen the attachment screw to adjust the position of the cover as required.\r\n\r\nSpecs\r\n---------\r\nKey: Bb\r\n\r\nBody: Yellow brass\r\n\r\nBell Diameter: 300mm (11 4/5\")\r\n\r\nBore Size: 15-16.8mm (0.591-0.661\")\r\n\r\nHeight: 664mm\r\n\r\nValves: 3 top + 1 side, compensating\r\n\r\nFinish: Clear lacquer\r\n\r\nMouthpiece: SL-51L\r\n\r\nCase: Included', 3);
INSERT INTO `product_product` (`id`, `title`, `image`, `new_price`, `status`, `slug`, `created_at`, `updated_at`, `category_id`, `detail`, `amount`) VALUES
(47, 'YEP-642TS Neo Euphonium with Trigger System', 'product/42ts.jpg', '34000.00', 'True', 'yep-642ts-neo-euphonium-trigger-system', '2021-05-17 08:11:56.863524', '2021-05-25 10:22:07.766465', 25, 'Features\r\n----------\r\nBody Design\r\n\r\nThe YEP-642T\'s main tube utilises a new design that maintains adequate resistance, delivers a powerful low range and focused high range, and improves dynamics over the instrument’s entire range. In addition to a matured and comfortable tone, this design offers accurate pitch while delivering greater musical expressiveness.\r\nHandrest\r\n\r\nChanging the handrest position to allow for a more natural hold on the instrument simplifies fingering and offers smoother performance while playing demanding solo or ensemble passages.\r\nMain Tube Trigger System\r\n\r\nA main-tube trigger system offers precise pitch control as well as solid tone. The lever plate can be pressed during a performance to shift the main tube tuning slide downward, lowering pitch by a precisely controlled amount. Release the lever plate and the tuning slide returns to its original position. To tune the instrument prior to a performance, loosen the rod base screw so that the main tube tuning slide can be positioned as required. The screw can then be tightened to set the trigger rod to the desired position.\r\n\r\n*A hex wrench (for lever plate vertical position and angle adjustment) and operation manual for the trigger system are supplied.\r\nAdjustable Trigger System\r\n\r\nThe position, angle, and stroke of the lever plate can be adjusted to optimize trigger system operation and comfort individual needs:\r\n\r\n    Lever plate vertical position and angle adjustment: The supplied hex wrench can be used to loosen the lever plate screws, allowing the vertical position and angle of the lever plate to be adjusted for maximum operation comfort and ease.\r\n    Lever plate stroke adjustment: Use a standard “minus” screwdriver to rotate the lever plate stroke screw and adjust as required.\r\n\r\nDedicated Main Tube Trigger Slide\r\n\r\nThe main tube tuning slides of euphoniums designed for trigger mechanisms have a rod base to which the trigger rod attaches. Additionally, the diameter of the main tube tuning slide inner tube is smaller than normal to ensure smooth trigger operation.\r\nDedicated Main Tube Tuning Slide Trigger Cover\r\n\r\nA special metal cover prevents the main tube tuning slide from coming into to direct contact with and possibly transferring oil to the player’s clothing. Loosen the attachment screw to adjust the position of the cover as required.\r\n\r\nSpecs\r\n--------\r\nKey: Bb\r\n\r\nBody: Yellow brass\r\n\r\nBell Diameter: 300mm (11 4/5\")\r\n\r\nBore Size: 15-16.8mm (0.591-0.661\")\r\n\r\nHeight: 664mm\r\n\r\nValves: 3 top + 1 side, compensating\r\n\r\nFinish: Silver-Plated\r\n\r\nMouthpiece: SL-51L\r\n\r\nCase: Included', 3),
(48, 'YEP-842TS Custom Euphonium', 'product/842ts.jpg', '32000.00', 'True', 'yep-842ts-custom-euphonium', '2021-05-17 08:13:39.798893', '2021-05-25 10:22:21.413126', 25, 'Specs\r\n-----------\r\n    Key: Bb\r\n    Body Material: Yellow brass\r\n    Bell Diameter:	300mm (11 4/5\")\r\n    Bore Size:	15-16.8mm (0.591-0.661\")\r\n    Height:	664mm\r\n    Valves:	3 top + 1 side, compensating\r\n    Finish:	Silver-plated with gold-plated trim\r\n    Mouthpiece:	EP-53DL\r\n    Case:	Included, EPC-82', 3),
(49, 'YFH-631G Bb Flugelhorn', 'product/YFH-436G.jpg', '25000.00', 'True', 'bb-flugelhorn-1', '2021-05-19 13:29:55.851109', '2021-05-25 10:22:35.881360', 26, 'Features\r\n-----------\r\n    Rotary valves\r\n    3rd valve slide trigger\r\n    Gold brass bell\r\n    Lacquer finish\r\n\r\nSpecs\r\n--------\r\nBody	Body finish	Clear lacquer		\r\n						\r\nBell	Bell Diameter	151.8mm (6\")		\r\n	Bell Material	Gold brass	\r\n						\r\nBore			Medium-Small 11.00mm (0.433\")\r\n						\r\nKey of Instrument			Bb			\r\n						\r\nIncluded Accessories	Mouthpiece	FH15F4', 3),
(50, 'Yamaha YFH-8315G Bb Flugelhorn', 'product/Fugelhorns_2.jpg', '24000.00', 'True', 'bb-flugelhorn-2', '2021-05-19 13:32:12.846732', '2021-05-25 10:22:49.643564', 26, 'Features\r\n------------\r\nVertical valve tubing\r\n\r\nTraditionally, flugelhorns are made with vertical valve tubing.\r\n\r\nMonel pistons\r\n\r\nMonel pistons are resistant to corrosion and are an ideal choice for professional flugelhorn pistons which must retain precise precise fit and smooth action over many years.\r\n\r\nHand-lapped pistons and slides\r\n\r\nHand-lapped pistons and slides ensures an absolutely perfect fit and seal between the pistons and casing or slide parts. Such a perfect fit helps achieve smooth air flow and smooth action and improve the response and intonation of the instrument.\r\n\r\nMovable mouthpiece receiver\r\n\r\nTuning is made easier with the movable mouthpiece receiver.\r\n\r\nPressure formed tubing\r\n\r\nPerfectly rounded tubing results in less turbulence and a smoother airflow, thus allowing for an excellent scale and reduced resistance.\r\n\r\nLaser-fused pluzuma welded bell\r\n\r\nA high-energy laser fuses the brass together for a virtually seamless bell which allows continuous even vibrations.\r\n\r\nThird valve slide trigger assembly\r\n\r\nA third valve slide trigger assembly (YAC YFTR) is standard.\r\n\r\nSpecs\r\n--------\r\nBody 	Body finish 	Clear lacquer 		\r\n						\r\nWeight 			Medium 			\r\n						\r\nBell 	Bell Diameter 	152mm (6\") 		\r\n	Bell Material 	Two piece Gold brass 	\r\n						\r\nBore 			Medium-Small 11.00mm (0.433\")\r\n						\r\nKey of Instrument 			Bb 			\r\n						\r\nIncluded Accessories 	Mouthpiece 	11F4 			\r\n	Case  		FHC-6310', 3),
(51, 'YFH-631GS Bb Flugelhorn Professional Model in Silver-plated finish', 'product/Fugelhorns_3.jpg', '26000.00', 'True', 'bb-flugelhorn-3', '2021-05-19 13:34:29.877263', '2021-05-25 09:58:33.057631', 26, 'Features\r\n-----------\r\nVertical valve tubing\r\n\r\nTraditionally, flugelhorns are made with vertical valve tubing.\r\n\r\nMonel pistons\r\n\r\nMonel pistons are resistant to corrosion and are an ideal choice for professional flugelhorn pistons which must retain precise precise fit and smooth action over many years.\r\n\r\nHand-lapped pistons and slides\r\n\r\nHand-lapped pistons and slides ensures an absolutely perfect fit and seal between the pistons and casing or slide parts. Such a perfect fit helps achieve smooth air flow and smooth action and improve the response and intonation of the instrument.\r\n\r\nMovable mouthpiece receiver\r\n\r\nTuning is made easier with the movable mouthpiece receiver.\r\n\r\nPressure formed tubing\r\n\r\nPerfectly rounded tubing results in less turbulence and a smoother airflow, thus allowing for an excellent scale and reduced resistance.\r\n\r\nLaser-fused pluzuma welded bell\r\n\r\nA high-energy laser fuses the brass together for a virtually seamless bell which allows continuous even vibrations.\r\n\r\nThird valve slide trigger assembly\r\n\r\nA third valve slide trigger assembly (YAC YFTR) is standard.\r\n\r\nSpecs\r\n---------\r\nBody 	Body finish 	Silver-plated 		\r\n						\r\nWeight 			Medium 			\r\n						\r\nBell 	Bell Diameter 	152mm (6\") 		\r\n	Bell Material 	Two piece Gold brass 	\r\n						\r\nBore 			Medium-Small 11.00mm (0.433\")\r\n						\r\nKey of Instrument 			Bb 			\r\n						\r\nIncluded Accessories 	Mouthpiece 	11F4 			\r\n	Case  		FHC-6310', 3),
(52, 'Yamaha YFH-8315GS Bb Flugelhorn', 'product/Fugelhorns_3_uwXLj9i.jpg', '24500.00', 'True', 'bb-flugelhorn-4', '2021-05-19 13:37:33.733387', '2021-05-25 10:23:05.291906', 26, 'Features\r\n-----------\r\nNew trigger system\r\n\r\nThe newly designed third valve slide trigger is more ergonomic and will accommodate a wider range of hand sizes.\r\n\r\nNew leadpipe design\r\n\r\nThe YFH-8315G features a newly designed leadpipe, outer leadpipe area and a new connection brace between the leadpipe and the valve casing.\r\n\r\nVertical valve tubing\r\n\r\nTraditionally, flugelhorns are made with vertical valve tubing.\r\n\r\nMonel pistons\r\n\r\nMonel pistons are resistant to corrosion and are an ideal choice for professional flugelhorn pistons which must retain precise fit and smooth action over many years.\r\n\r\nHand-lapped pistons and slides\r\n\r\nHand-lapping pistons and slides ensures an absolutely perfect fit and seal between the pistons and casing or slide parts. Such a perfect fit helps to achieve smooth air flow and smooth action and improve the response and intonation of the instrument.\r\n\r\nSpecs\r\n--------\r\nBody finish 		Clear lacquer 	\r\n			\r\nWeight 		Medium 	\r\n			\r\nBell 	Bell Diameter 	151.6mm (6\") 	\r\n	Bell Material 	Two piece Gold brass\r\n			\r\nBore 		Small 10.5mm (0.413\")\r\n			\r\nKey of Instrument 		Bb 	\r\n			\r\nIncluded Accessories 	Mouthpiece 	14F4 	\r\n	Case  	FHC-8315G', 3),
(53, 'Yamaha YFH-8310ZG Bb Flugelhorn \'Bobby Shew\'', 'product/Fugelhorns_5.jpg', '26300.00', 'True', 'bb-flugelhorn-5', '2021-05-19 13:55:25.219164', '2021-05-25 10:24:15.428615', 26, 'Features\r\n------------\r\nBrand new design\r\n\r\nA brand new design based on the original YFH-6310Z Bobby Shew Professional Bb flugelhorn.\r\n\r\nNew trigger system\r\n\r\nThe newly designed third valve slide trigger is more ergonomic and will accommodate a wider range of hand sizes.\r\n\r\nNew leadpipe design\r\n\r\nThe YFH-8310Z features a newly designed leadpipe, outer leadpipe area and a new connection brace between the leadpipe and the valve casing.\r\n\r\nNew top and bottom valve caps\r\n\r\nThe new top and bottom valve caps match the YTR-8310Z Bobby Shew Custom Bb trumpet.\r\n\r\nVertical valve tubing\r\n\r\nTraditionally, flugelhorns are made with vertical valve tubing.\r\n\r\nMonel pistons\r\n\r\nMonel pistons are resistant to corrosion and are an ideal choice for professional flugelhorn pistons which must retain precise fit and smooth action over many years.\r\n\r\nHand-lapped pistons and slides\r\n\r\nHand-lapping pistons and slides ensures an absolutely perfect fit and seal between the pistons and casing or slide parts. Such a perfect fit helps to achieve smooth air flow and smooth action and improve the response and intonation of the instrument.\r\n\r\nSpecs\r\n-------\r\nBody finish 		Clear lacquer 	\r\n			\r\nWeight 		Medium 	\r\n			\r\nBell 	Bell Diameter 	151.6mm (6\") 	\r\n	Bell Material 	One piece Yellow brass\r\n			\r\nBore 		Small 10.5mm (0.413\")\r\n			\r\nKey of Instrument 		Bb 	\r\n			\r\nIncluded Accessories 	Mouthpiece 	Bobby Shew Model\r\n	Case  	FHC-8310Z', 3),
(54, 'Hybrid Pianos', 'product/piano.jpg', '44000.00', 'True', 'hybrid-pianos', '2021-05-19 14:07:47.848622', '2021-05-25 10:23:50.742142', 8, 'Features\r\n-----------\r\nThe superb natural feel of a real piano action\r\n\r\nThe NU1X represents the next evolution in hybrid piano technology melding the Yamaha pedigree of unparalleled piano craft with progressive digital innovation. Employing a real acoustic upright piano action that intuitively connects player and piano, the NU1X offers a gratifying dynamic experience. The result is an instrument that not only pays tribute to its acoustic counterpart but exceeds all expectations.\r\nLegendary piano samples\r\n\r\nTo play an AvantGrand means access to the actual sound profile of two legendary concert grands: the Yamaha CFX and the Bösendorfer Imperial. Whether you prefer the bold, expansive palette of the CFX, or the warm, rich Vienna tones of the Imperial, switching between the two is simple.\r\nVirtual Resonance Modelling\r\n\r\nIn a grand piano, sound resonates throughout the body of the instrument, producing a rich reverberation that envelops the listener in sound. This phenomena is repro- duced perfectly in the NU1X through Virtual Resonance Modelling (VRM), which calculates the various states of the strings for each of the 88 notes on the keyboard from one instant to the next, allowing vivid, richly varied expression that reflects the limitless number of factors inherent in playing the piano such as which keys are pressed, the strength with which the keys are played and pedal timing.\r\nEven headphones produce a larger than life experience\r\n\r\nHeadphone connectivity wasn’t just an added formality for the NU1X. Thanks to our advanced binaural sampling technology, the sound you hear through your head- phones is remarkably lifelike. This technology uses piano samples recorded by specialised microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all. (CFX Grand Voice only)\r\nIntelligent connectivity and integration\r\n\r\nBehind its simple control panel, the NU1X hosts an abundance of connectivity options for maximum functionality and integration with external devices. It can be connected directly to computers and mobile devices via USB, sound and recording systems via audio cables, act as a Bluetooth receiver, and integrate with iOS apps via WiFi.\r\n\r\nSpecs\r\n-------\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(55, 'Deluxe Smart Piano Pack', 'product/NCLP735-SUPER_g.jpg', '37000.00', 'True', 'deluxe-smart-piano-pack', '2021-05-19 14:16:26.124114', '2021-05-25 10:23:32.573581', 27, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(56, 'CLP-735 Clavinova Digital Piano', 'product/NCLP735-SUPER_g.jpg', '36000.00', 'True', 'clavinova-digital-pianos-1', '2021-05-19 14:20:09.310701', '2021-05-25 10:27:12.957898', 27, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool\r\n\r\nProduct ID: HNU1XPBWUK\r\n\r\nLimited Shipping: Please note that we deliver within the United Kingdom only', 3),
(57, 'CLP-735 Clavinova Digital Piano Essential Pack', 'product/NCLP735-SUPER_f.jpg', '37000.00', 'True', 'clavinova-digital-pianos-2', '2021-05-19 14:49:26.664846', '2021-05-25 10:27:43.608900', 27, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(58, 'CLP-735 Clavinova Digital Piano Essential Pack', 'product/NCLP735-SUPER_e_orFDmDd.jpg', '38000.00', 'True', 'clavinova-digital-pianos-3', '2021-05-19 14:51:05.093690', '2021-05-25 10:28:32.172316', 27, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(59, 'CLP-735 Clavinova Digital Piano Essential Pack', 'product/NCLP735-SUPER_c_bq9XYDO.jpg', '39000.00', 'True', 'clavinova-digital-pianos-4', '2021-05-19 14:51:54.254263', '2021-05-25 10:29:19.064969', 27, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(60, 'YDP-144 Arius Digital Piano In Rosewood Finish', 'product/NYDP144BUK.jpg', '42000.00', 'True', 'arius-digital-pianos-1', '2021-05-19 14:59:15.583846', '2021-05-25 10:32:46.870391', 28, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(61, 'YDP-144 Arius Digital Piano', 'product/NYDP144BUK_a_SXLe46J.jpg', '41000.00', 'True', 'arius-digital-pianos-2', '2021-05-19 14:59:55.527471', '2021-05-25 10:32:28.152535', 28, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3);
INSERT INTO `product_product` (`id`, `title`, `image`, `new_price`, `status`, `slug`, `created_at`, `updated_at`, `category_id`, `detail`, `amount`) VALUES
(62, 'YDP-144 Arius Digital Piano In White Finish', 'product/NYDP144WHUK_Q1MRrCT.jpg', '44000.00', 'True', 'arius-digital-pianos-3', '2021-05-19 15:00:37.811521', '2021-05-25 10:33:22.364125', 28, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(63, 'YDP-164 Arius Digital Piano In White Ash Finish', 'product/NYDP164WAUK_QLPr2RF.jpg', '46000.00', 'True', 'arius-digital-pianos-4', '2021-05-19 15:01:15.914563', '2021-05-25 10:34:00.113748', 28, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(64, 'YDP-S54 Arius Digital Piano', 'product/NYDPS54BUK_o4R0PXB.jpg', '47000.00', 'True', 'arius-digital-pianos-5', '2021-05-19 15:01:49.944809', '2021-05-25 10:35:00.291858', 28, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(65, 'DGX670 Pack in Black, with stand and pedal', 'product/DGX670B-PACK.jpg', '28000.00', 'True', 'portable-digital-pianos-1', '2021-05-19 15:07:56.744363', '2021-05-25 10:36:21.429944', 29, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(66, 'P-45 Digital Piano Deluxe Pack', 'product/NP45BUK-L85PACK_4yDGNQ5.jpg', '32000.00', 'True', 'portable-digital-pianos-2', '2021-05-19 15:08:33.711307', '2021-05-25 10:37:29.282244', 29, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(67, 'P-121 Digital Piano Student Pack', 'product/NP121BUK-PACK4_envhYBf.jpg', '34000.00', 'True', 'portable-digital-pianos-3', '2021-05-19 15:09:27.153682', '2021-05-25 10:39:20.949598', 29, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(68, 'P-125 Deluxe Digital Piano Pack', 'product/NP125BUK-PACK1_KVOVmlH.jpg', '37000.00', 'True', 'portable-digital-pianos-4', '2021-05-19 15:10:13.673096', '2021-05-25 10:38:06.732974', 29, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(69, 'P-515 Digital Piano Pianist Pack', 'product/NP515WHUK-PACK2_34NGw0m.jpg', '40000.00', 'True', 'portable-digital-pianos-5', '2021-05-19 15:11:01.016439', '2021-05-25 10:40:09.675031', 29, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(70, 'CP88 Stage Piano With 88-Note, Weighted Natural Wood', 'product/CCP88UK.jpg', '27000.00', 'True', 'digital-stage-pianos-1', '2021-05-19 15:17:13.039122', '2021-05-25 10:40:55.619412', 30, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(71, 'CP73 Stage Piano', 'product/YAM-CP4_Fvu05Xr.jpg', '29000.00', 'True', 'digital-stage-pianos-2', '2021-05-19 15:17:50.471971', '2021-05-25 10:44:36.821176', 30, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3),
(74, 'CP300 Stage Piano	 88-key Graded Hammer', 'product/YAM-CP300_7mJBaoS.jpg', '35000.00', 'True', 'digital-stage-pianos-5', '2021-05-19 15:19:55.147425', '2021-05-25 10:43:28.643228', 30, 'Features\r\n--------\r\nInnovation for effortless performance\r\n\r\nClavinova is an innovative lineup of digital pianos that have continued to evolve while seeking to provide the touch and tone of a concert grand piano - the ultimate symbol of piano excellence. This authentic grand piano experience is the product of the knowledge and expertise that we\'ve accumulated over more than 100 years of crafting acoustic pianos. Utilising state-of-the-art technology to achieve grand piano quality, Clavinova digital pianos offer an inviting playing experience that is perfect for players of all levels. They emulate the touch and tone of a grand piano to make the transition from digital to acoustic piano a seamless and enjoyable one.\r\nThe sound of some of the finest concert grand pianos in the world\r\n\r\nWith two world-renowned concert grand pianos available at the touch of a button, the CSP Series lets you choose the perfect piano tone for the music you want to play. Offering far more than just sampled sounds, the CSP Series reproduces our own CFX concert grand and the legendary Bӧsendorfer Imperial in meticulous detail.\r\nA fully immersive concert grand experience - even with headphones\r\n\r\nOur advanced binaural sampling technology is now available on the Clavinova. The technology uses samples from the CFX, Yamaha’s acclaimed concert grand piano, recorded with specialized microphones that capture locational information and other nuances discerned by the human ear. The resulting sound is so natural, so enveloping, that you’ll soon forget you’re even wearing headphones at all.\r\n\r\nSpecs\r\n------\r\n\r\nNumber of Keys: 88 (A-1 - C7)\r\n\r\nWhite Key Surfaces: Acrylic resin\r\n\r\nBlack Key Surfaces: Phoenolic resin\r\n\r\nTouch Sensitivity Settings: Hard/Medium/Soft/Fixed\r\n\r\nKey Sensors: Non-contact optical fiber\r\n\r\nNumber of Pedals: 3\r\n\r\nPedal Types: Damper (with half-pedal effect), Sostenuto, Soft\r\n\r\nGP Responsive Damper Pedal: Yes\r\n\r\nSoft-Close Fallboard?: Yes\r\n\r\nMusic Rest?: Yes\r\n\r\nPiano Models: Yamaha CFX, Bösendorfer Imperial\r\n\r\nBinaural Sampling?: Yes (On CFX Grand Voice)\r\n\r\nVirtual Resonance Modelling (VRM): Yes\r\n\r\nKey-off Samples: Yes\r\n\r\nSmooth Release: Yes\r\n\r\nNumber of Polyphony (max.): 256\r\n\r\nNumber of Voice: 15\r\n\r\nDifferent Effect Types?: Yes\r\n\r\nIntelligent Acoustic Control (IAC)?: Yes\r\n\r\nStereophonic Optimiser?: Yes\r\n\r\nNumber of Pre-Recorded Songs: 15 Voice Demo Songs + 50 Classics\r\n\r\nNumber of Spaces for MIDI Song Recording: 10\r\n\r\nNumber of MIDI Recording Tracks: 1\r\n\r\nMIDI Recording Data Capacity: Approx. 550KB/Song\r\n\r\nMIDI Playback Data Format: SMF (Format 0,1)\r\n\r\nMIDI Recording Data Format: SMF (Format 0)\r\n\r\nMaximum Audio Recording Time: 80 minutes per song (depending on data storage available)\r\n\r\nAudio Playback Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nAudio Recording Format: WAV (44.1kHz, 16bit, stereo)\r\n\r\nOn-Board Metronome?: Yes\r\n\r\nMetronome Range: 5 - 500 bpm\r\n\r\nTransposition Range: -6 semitones to +6 semitones\r\n\r\nTuning Range: 414.8 – 440.0 – 466.8 Hz (approx. 0.2 Hz increments)\r\n\r\nScale Type Options: 7 types\r\n\r\nInternal Memory: Total maximum size approx. 1.5MB\r\n\r\nExternal Memory Option: USB Flash Drive\r\n\r\nHeadphone Connections?: TRS (Stereo) 1/4” Phone Jack Sockets For Two Pairs of Headphones\r\n\r\nConventional MIDI Connection: IN + OUT\r\n\r\nAux In Connection: Stereo Mini Jack\r\n\r\nAux Out Connections: Left/Mono TRS 1/4” Jack + Right TRS 1/4” Jack\r\n\r\nUSB-To-Device Port: Yes\r\n\r\nUSB-To-Host Port: Yes\r\n\r\nAmplifiers: 2x 45W (Stereo)\r\n\r\nSpeaker Size: 2x 1.9cm Tweeters, 2x 16cm Main Drivers\r\n\r\nAcoustic Optimiser?: Yes\r\n\r\nAuto Power Off Setting (For Energy Saving)?: Yes\r\n\r\nWidth: 1501mm\r\n\r\nDepth: 463mm\r\n\r\nHeight (with lid closed): 1024mm\r\n\r\nWeight: 111kg\r\n\r\nIncluded Accessories: Owner’s Manual, Power Cord, Felt Key Cover, Online Member Product Registration, Felt Strip Set,\r\n“50 Classical Music Masterpieces” Music Book\r\n\r\nSuggested Accessories (Sold Separately): Headphones (HPH-50/HPH-100/HPH-150), USB wireless LAN adaptor (UD-WL01), Wireless MIDI Adaptor(MD-BT01/UD-BT01), Piano Stool', 3);
INSERT INTO `product_product` (`id`, `title`, `image`, `new_price`, `status`, `slug`, `created_at`, `updated_at`, `category_id`, `detail`, `amount`) VALUES
(75, 'Stage Drums', 'product/Stage_Drums.jpg', '52000.00', 'True', 'stage-drums', '2021-05-21 06:18:21.129218', '2021-05-25 10:45:22.120587', 20, 'Features\r\n--------\r\n20\" x 8\" Bass Drum\r\n\r\nThis kit combines the diameter used to achieve the rich bass tones of a regular set with a shallow body that allows the drummer to save space.\r\nFloor Tom with snare\r\n\r\nThe floor tom comes equipped with 20-strand snares and can be transformed into a deep, 13\" snare drum with only a single action. In addition to jazz and pop music, it can also be used for hip-hop, R&B, and a variety of other musical genres.\r\nCompact Setting\r\n\r\nThanks to a shallow bass drum, the Stage Custom Hip is compact enough to set up in even the smallest of venues.\r\nPerfect for practising at home\r\n\r\nCompact size combined with commercially available mesh heads and practice cymbals allows you to practice in almost perfect silence. In addition, installing an EAD10 or trigger pickups transforms the Stage Custom Hip into a hybrid drum kit that allows you to enjoy a rich variety of sounds.\r\nThe perfect match for Advanced Lightweight Hardware HW3\r\n\r\nLightweight and easy to carry, the HW3 is the perfect hardware set to combine with the Stage Custom Hip.\r\n100% Birch shell\r\n\r\nThis kit employs the 100% birch, 6-ply shells that have become synonymous with Yamaha drums. It combines the rich, mid-range sound characteristics of birch with an expressive shell resonance.\r\nBall Mount & Clamp\r\n\r\nOur original ball mount and clamp tighten the plate with wing bolts and fix the built-in resin ball in place, allowing you to set the drum at any angle while maintaining excellent stability and accuracy.\r\n\r\nSpecs\r\n-------\r\nHoop Materials: Triple Flange Hoop, Steel / 1.5mm (FT / TT / SD), Wood Hoop - Natural Wood Color (BD)\r\n\r\nLug Type: One-piece with Lug Insertion Plate\r\n\r\nShell Material: All Birch (6ply)\r\n\r\nTop Heads: TT : Yamaha Coated, SD / FT: Yamaha Coated\r\n\r\nBottom Heads: TT : Yamaha Clear, SD / FT:Yamaha Snare Side\r\n\r\nFront Head: Yamaha Smooth White with rimg mute\r\n\r\nBatter Head: Yamaha Clear with ring mute\r\n\r\nTom Mount: Direct mount\r\n\r\nClamps: All Round Ball Clamp (Long Rod)', 3),
(76, 'Recording Drums', 'product/Recording_Drums.jpg', '50000.00', 'True', 'recording-drums', '2021-05-21 06:21:30.035084', '2021-05-25 10:45:37.186521', 20, 'Features\r\n--------\r\n20\" x 8\" Bass Drum\r\n\r\nThis kit combines the diameter used to achieve the rich bass tones of a regular set with a shallow body that allows the drummer to save space.\r\nFloor Tom with snare\r\n\r\nThe floor tom comes equipped with 20-strand snares and can be transformed into a deep, 13\" snare drum with only a single action. In addition to jazz and pop music, it can also be used for hip-hop, R&B, and a variety of other musical genres.\r\nCompact Setting\r\n\r\nThanks to a shallow bass drum, the Stage Custom Hip is compact enough to set up in even the smallest of venues.\r\nPerfect for practising at home\r\n\r\nCompact size combined with commercially available mesh heads and practice cymbals allows you to practice in almost perfect silence. In addition, installing an EAD10 or trigger pickups transforms the Stage Custom Hip into a hybrid drum kit that allows you to enjoy a rich variety of sounds.\r\nThe perfect match for Advanced Lightweight Hardware HW3\r\n\r\nLightweight and easy to carry, the HW3 is the perfect hardware set to combine with the Stage Custom Hip.\r\n100% Birch shell\r\n\r\nThis kit employs the 100% birch, 6-ply shells that have become synonymous with Yamaha drums. It combines the rich, mid-range sound characteristics of birch with an expressive shell resonance.\r\nBall Mount & Clamp\r\n\r\nOur original ball mount and clamp tighten the plate with wing bolts and fix the built-in resin ball in place, allowing you to set the drum at any angle while maintaining excellent stability and accuracy.\r\n\r\nSpecs\r\n-------\r\nHoop Materials: Triple Flange Hoop, Steel / 1.5mm (FT / TT / SD), Wood Hoop - Natural Wood Color (BD)\r\n\r\nLug Type: One-piece with Lug Insertion Plate\r\n\r\nShell Material: All Birch (6ply)\r\n\r\nTop Heads: TT : Yamaha Coated, SD / FT: Yamaha Coated\r\n\r\nBottom Heads: TT : Yamaha Clear, SD / FT:Yamaha Snare Side\r\n\r\nFront Head: Yamaha Smooth White with rimg mute\r\n\r\nBatter Head: Yamaha Clear with ring mute\r\n\r\nTom Mount: Direct mount\r\n\r\nClamps: All Round Ball Clamp (Long Rod)', 3),
(77, 'Absolute Hybrid Maple Fusion Drum Set', 'product/Hybrid_Drums_1.jpg', '56000.00', 'True', 'hybrid-maple-jazz-drum', '2021-05-21 06:28:39.640430', '2021-05-25 10:53:41.650428', 20, 'Features\r\n--------\r\n20\" x 8\" Bass Drum\r\n\r\nThis kit combines the diameter used to achieve the rich bass tones of a regular set with a shallow body that allows the drummer to save space.\r\nFloor Tom with snare\r\n\r\nThe floor tom comes equipped with 20-strand snares and can be transformed into a deep, 13\" snare drum with only a single action. In addition to jazz and pop music, it can also be used for hip-hop, R&B, and a variety of other musical genres.\r\nCompact Setting\r\n\r\nThanks to a shallow bass drum, the Stage Custom Hip is compact enough to set up in even the smallest of venues.\r\nPerfect for practising at home\r\n\r\nCompact size combined with commercially available mesh heads and practice cymbals allows you to practice in almost perfect silence. In addition, installing an EAD10 or trigger pickups transforms the Stage Custom Hip into a hybrid drum kit that allows you to enjoy a rich variety of sounds.\r\nThe perfect match for Advanced Lightweight Hardware HW3\r\n\r\nLightweight and easy to carry, the HW3 is the perfect hardware set to combine with the Stage Custom Hip.\r\n100% Birch shell\r\n\r\nThis kit employs the 100% birch, 6-ply shells that have become synonymous with Yamaha drums. It combines the rich, mid-range sound characteristics of birch with an expressive shell resonance.\r\nBall Mount & Clamp\r\n\r\nOur original ball mount and clamp tighten the plate with wing bolts and fix the built-in resin ball in place, allowing you to set the drum at any angle while maintaining excellent stability and accuracy.\r\n\r\nSpecs\r\n-------\r\nHoop Materials: Triple Flange Hoop, Steel / 1.5mm (FT / TT / SD), Wood Hoop - Natural Wood Color (BD)\r\n\r\nLug Type: One-piece with Lug Insertion Plate\r\n\r\nShell Material: All Birch (6ply)\r\n\r\nTop Heads: TT : Yamaha Coated, SD / FT: Yamaha Coated\r\n\r\nBottom Heads: TT : Yamaha Clear, SD / FT:Yamaha Snare Side\r\n\r\nFront Head: Yamaha Smooth White with rimg mute\r\n\r\nBatter Head: Yamaha Clear with ring mute\r\n\r\nTom Mount: Direct mount\r\n\r\nClamps: All Round Ball Clamp (Long Rod)', 3),
(78, 'Yamaha Absolute Hybrid Maple Rock Drum Set', 'product/Hybrid_Drums_2_4HBONo7.jpg', '57000.00', 'True', 'hybrid-maple-jazz-drum-1', '2021-05-21 06:29:24.821341', '2021-05-25 10:51:46.278937', 20, 'Features\r\n--------\r\n20\" x 8\" Bass Drum\r\n\r\nThis kit combines the diameter used to achieve the rich bass tones of a regular set with a shallow body that allows the drummer to save space.\r\nFloor Tom with snare\r\n\r\nThe floor tom comes equipped with 20-strand snares and can be transformed into a deep, 13\" snare drum with only a single action. In addition to jazz and pop music, it can also be used for hip-hop, R&B, and a variety of other musical genres.\r\nCompact Setting\r\n\r\nThanks to a shallow bass drum, the Stage Custom Hip is compact enough to set up in even the smallest of venues.\r\nPerfect for practising at home\r\n\r\nCompact size combined with commercially available mesh heads and practice cymbals allows you to practice in almost perfect silence. In addition, installing an EAD10 or trigger pickups transforms the Stage Custom Hip into a hybrid drum kit that allows you to enjoy a rich variety of sounds.\r\nThe perfect match for Advanced Lightweight Hardware HW3\r\n\r\nLightweight and easy to carry, the HW3 is the perfect hardware set to combine with the Stage Custom Hip.\r\n100% Birch shell\r\n\r\nThis kit employs the 100% birch, 6-ply shells that have become synonymous with Yamaha drums. It combines the rich, mid-range sound characteristics of birch with an expressive shell resonance.\r\nBall Mount & Clamp\r\n\r\nOur original ball mount and clamp tighten the plate with wing bolts and fix the built-in resin ball in place, allowing you to set the drum at any angle while maintaining excellent stability and accuracy.\r\n\r\nSpecs\r\n-------\r\nHoop Materials: Triple Flange Hoop, Steel / 1.5mm (FT / TT / SD), Wood Hoop - Natural Wood Color (BD)\r\n\r\nLug Type: One-piece with Lug Insertion Plate\r\n\r\nShell Material: All Birch (6ply)\r\n\r\nTop Heads: TT : Yamaha Coated, SD / FT: Yamaha Coated\r\n\r\nBottom Heads: TT : Yamaha Clear, SD / FT:Yamaha Snare Side\r\n\r\nFront Head: Yamaha Smooth White with rimg mute\r\n\r\nBatter Head: Yamaha Clear with ring mute\r\n\r\nTom Mount: Direct mount\r\n\r\nClamps: All Round Ball Clamp (Long Rod)', 3),
(79, 'Absolute Hybrid Maple Jazz Drum Set', 'product/Hybrid_Drums_VLVu0qi.jpg', '58000.00', 'True', 'hybrid-maple-jazz-drum-2', '2021-05-21 06:30:05.795375', '2021-05-25 10:54:05.197238', 20, 'Features\r\n--------\r\n20\" x 8\" Bass Drum\r\n\r\nThis kit combines the diameter used to achieve the rich bass tones of a regular set with a shallow body that allows the drummer to save space.\r\nFloor Tom with snare\r\n\r\nThe floor tom comes equipped with 20-strand snares and can be transformed into a deep, 13\" snare drum with only a single action. In addition to jazz and pop music, it can also be used for hip-hop, R&B, and a variety of other musical genres.\r\nCompact Setting\r\n\r\nThanks to a shallow bass drum, the Stage Custom Hip is compact enough to set up in even the smallest of venues.\r\nPerfect for practising at home\r\n\r\nCompact size combined with commercially available mesh heads and practice cymbals allows you to practice in almost perfect silence. In addition, installing an EAD10 or trigger pickups transforms the Stage Custom Hip into a hybrid drum kit that allows you to enjoy a rich variety of sounds.\r\nThe perfect match for Advanced Lightweight Hardware HW3\r\n\r\nLightweight and easy to carry, the HW3 is the perfect hardware set to combine with the Stage Custom Hip.\r\n100% Birch shell\r\n\r\nThis kit employs the 100% birch, 6-ply shells that have become synonymous with Yamaha drums. It combines the rich, mid-range sound characteristics of birch with an expressive shell resonance.\r\nBall Mount & Clamp\r\n\r\nOur original ball mount and clamp tighten the plate with wing bolts and fix the built-in resin ball in place, allowing you to set the drum at any angle while maintaining excellent stability and accuracy.\r\n\r\nSpecs\r\n-------\r\nHoop Materials: Triple Flange Hoop, Steel / 1.5mm (FT / TT / SD), Wood Hoop - Natural Wood Color (BD)\r\n\r\nLug Type: One-piece with Lug Insertion Plate\r\n\r\nShell Material: All Birch (6ply)\r\n\r\nTop Heads: TT : Yamaha Coated, SD / FT: Yamaha Coated\r\n\r\nBottom Heads: TT : Yamaha Clear, SD / FT:Yamaha Snare Side\r\n\r\nFront Head: Yamaha Smooth White with rimg mute\r\n\r\nBatter Head: Yamaha Clear with ring mute\r\n\r\nTom Mount: Direct mount\r\n\r\nClamps: All Round Ball Clamp (Long Rod)', 3),
(80, 'DTX402K Electronic Drum Kit', 'product/Electroninc_Drums.jpg', '75000.00', 'True', 'electronic-drum', '2021-05-21 06:38:03.189523', '2021-05-25 10:57:39.316587', 31, 'Hoop Materials: Triple Flange Hoop, Steel / 1.5mm (FT / TT / SD), Wood Hoop - Natural Wood Color (BD)\r\n\r\nLug Type: One-piece with Lug Insertion Plate\r\n\r\nShell Material: All Birch (6ply)\r\n\r\nTop Heads: TT : Yamaha Coated, SD / FT: Yamaha Coated\r\n\r\nBottom Heads: TT : Yamaha Clear, SD / FT:Yamaha Snare Side\r\n\r\nFront Head: Yamaha Smooth White with rimg mute\r\n\r\nBatter Head: Yamaha Clear with ring mute\r\n\r\nTom Mount: Direct mount\r\n\r\nClamps: All Round Ball Clamp (Long Rod)', 3),
(81, 'DTX408K Electronic Drum Kit', 'product/Electroninc_Drums_1_TXrXsph.jpg', '72000.00', 'True', 'electronic-drum-1', '2021-05-21 06:38:43.683480', '2021-05-25 10:59:02.361113', 31, 'Hoop Materials: Triple Flange Hoop, Steel / 1.5mm (FT / TT / SD), Wood Hoop - Natural Wood Color (BD)\r\n\r\nLug Type: One-piece with Lug Insertion Plate\r\n\r\nShell Material: All Birch (6ply)\r\n\r\nTop Heads: TT : Yamaha Coated, SD / FT: Yamaha Coated\r\n\r\nBottom Heads: TT : Yamaha Clear, SD / FT:Yamaha Snare Side\r\n\r\nFront Head: Yamaha Smooth White with rimg mute\r\n\r\nBatter Head: Yamaha Clear with ring mute\r\n\r\nTom Mount: Direct mount\r\n\r\nClamps: All Round Ball Clamp (Long Rod)', 3),
(82, 'DTX482K Electronic Drum Kit', 'product/Electroninc_Drums_2_434T7f9.jpg', '70000.00', 'True', 'electronic-drum-2', '2021-05-21 06:39:42.013524', '2021-05-25 10:59:12.577355', 31, 'Hoop Materials: Triple Flange Hoop, Steel / 1.5mm (FT / TT / SD), Wood Hoop - Natural Wood Color (BD)\r\n\r\nLug Type: One-piece with Lug Insertion Plate\r\n\r\nShell Material: All Birch (6ply)\r\n\r\nTop Heads: TT : Yamaha Coated, SD / FT: Yamaha Coated\r\n\r\nBottom Heads: TT : Yamaha Clear, SD / FT:Yamaha Snare Side\r\n\r\nFront Head: Yamaha Smooth White with rimg mute\r\n\r\nBatter Head: Yamaha Clear with ring mute\r\n\r\nTom Mount: Direct mount\r\n\r\nClamps: All Round Ball Clamp (Long Rod)\r\n\r\nProduct ID: JSBP0F4HMSG', 3),
(83, 'DTX452K Electronic Drum Kit', 'product/Electroninc_Drums_3_QVLeqnZ.jpg', '71000.00', 'True', 'electronic-drum-3', '2021-05-21 06:40:15.427550', '2021-05-25 10:59:38.666266', 31, 'Hoop Materials: Triple Flange Hoop, Steel / 1.5mm (FT / TT / SD), Wood Hoop - Natural Wood Color (BD)\r\n\r\nLug Type: One-piece with Lug Insertion Plate\r\n\r\nShell Material: All Birch (6ply)\r\n\r\nTop Heads: TT : Yamaha Coated, SD / FT: Yamaha Coated\r\n\r\nBottom Heads: TT : Yamaha Clear, SD / FT:Yamaha Snare Side\r\n\r\nFront Head: Yamaha Smooth White with rimg mute\r\n\r\nBatter Head: Yamaha Clear with ring mute\r\n\r\nTom Mount: Direct mount\r\n\r\nClamps: All Round Ball Clamp (Long Rod)', 3),
(84, 'DTX6KXUK Electronic Drum Kit', 'product/Electroninc_Drums_4_tOUedMG.jpg', '73000.00', 'True', 'electronic-drum-4', '2021-05-21 06:40:59.384010', '2021-05-25 11:00:23.364815', 31, 'Hoop Materials: Triple Flange Hoop, Steel / 1.5mm (FT / TT / SD), Wood Hoop - Natural Wood Color (BD)\r\n\r\nLug Type: One-piece with Lug Insertion Plate\r\n\r\nShell Material: All Birch (6ply)\r\n\r\nTop Heads: TT : Yamaha Coated, SD / FT: Yamaha Coated\r\n\r\nBottom Heads: TT : Yamaha Clear, SD / FT:Yamaha Snare Side\r\n\r\nFront Head: Yamaha Smooth White with rimg mute\r\n\r\nBatter Head: Yamaha Clear with ring mute\r\n\r\nTom Mount: Direct mount\r\n\r\nClamps: All Round Ball Clamp (Long Rod)', 3),
(85, 'Yamaha EAD10 Electro-Acoustic Drum System', 'product/Electro_Electronics_Drum.jpg', '65000.00', 'True', 'electro-acoustic-drum', '2021-05-21 06:44:00.039080', '2021-05-25 11:01:24.606315', 32, 'Hoop Materials: Triple Flange Hoop, Steel / 1.5mm (FT / TT / SD), Wood Hoop - Natural Wood Color (BD)\r\n\r\nLug Type: One-piece with Lug Insertion Plate\r\n\r\nShell Material: All Birch (6ply)\r\n\r\nTop Heads: TT : Yamaha Coated, SD / FT: Yamaha Coated\r\n\r\nBottom Heads: TT : Yamaha Clear, SD / FT:Yamaha Snare Side\r\n\r\nFront Head: Yamaha Smooth White with rimg mute\r\n\r\nBatter Head: Yamaha Clear with ring mute\r\n\r\nTom Mount: Direct mount\r\n\r\nClamps: All Round Ball Clamp (Long Rod)\r\n\r\nProduct ID: JSBP0F4HMSG', 3),
(86, 'CB-7024 24x14 inch Bass Drum CB-7000 Series model with Birch ply', 'product/Bass_Drums.jpg', '32000.00', 'True', 'bass-drums', '2021-05-21 06:56:26.711065', '2021-05-25 11:05:00.030670', 33, 'Size/Weight 		\r\n-Dimensions 	Depth 	14 inches\r\n	Diameter 	24 inches\r\n-Weight 		8.3Kg\r\n		\r\nDesign/Architecture Detail 		\r\n-Hoop 	Material 	Birch Ply\r\n-Lugs 		8\r\n-Shells 	Material 	Birch Ply\r\n	Thickness 	6-ply\r\n-Head 	Batter 	Yamaha Remo Smooth White\r\n	Bottom 	Yamaha Remo Smooth White', 5),
(87, 'CB-7028 28x14 inch Bass Drum CB-7000 Series model with Birch ply', 'product/Bass_Drums_1_4hBis0w.jpg', '33000.00', 'True', 'bass-drums-1', '2021-05-21 07:55:51.768099', '2021-05-25 11:07:13.985441', 33, 'Size/Weight 		\r\n-Dimensions 	Depth 	14 inches\r\n	Diameter 	28 inches\r\n-Weight 		9.8Kg\r\n		\r\nDesign/Architecture Detail 		\r\n-Hoop 	Material 	Birch Ply\r\n-Lugs 		10\r\n-Shells 	Material 	Birch Ply\r\n	Thickness 	6-ply\r\n-Head 	Batter 	Yamaha Remo Smooth White\r\n	Bottom 	Yamaha Remo Smooth White', 3),
(88, 'CB-7032 32x16 inch Bass Drum CB-7000 Series model with Birch ply', 'product/Bass_Drums_2_gzK0zhZ.jpg', '35000.00', 'True', 'bass-drums-2', '2021-05-21 07:56:39.085335', '2021-05-25 11:07:03.143849', 33, 'Size/Weight 		\r\n-Dimensions 	Depth 	16 inches\r\n	Diameter 	32 inches\r\n-Weight 		12.4Kg\r\n		\r\nDesign/Architecture Detail 		\r\n-Hoop 	Material 	Birch Ply\r\n-Lugs 		12\r\n-Shells 	Material 	Birch Ply\r\n	Thickness 	6-ply\r\n-Head 	Batter 	Yamaha Remo Nuskyn\r\n	Bottom 	Yamaha Remo Smooth White', 3),
(89, 'CB-8032 32x18 inch Bass Drum CB-8000 Series model with Maple shell', 'product/Bass_Drums_3_LVlgYm8.jpg', '37000.00', 'True', 'bass-drums-3', '2021-05-21 07:57:18.342114', '2021-05-25 11:08:16.939949', 33, 'Size/Weight 		\r\n-Dimensions 	Depth 	18 inches\r\n	Diameter 	32 inches\r\n-Weight 		18.9Kg\r\n		\r\nDesign/Architecture Detail 		\r\n-Hoop 	Material 	Steel\r\n-Lugs 		8\r\n-Shells 	Material 	Maple\r\n	Thickness 	7-ply\r\n-Head 	Batter 	Yamaha Remo Nuskyn\r\n	Bottom 	Yamaha Remo Nuskyn', 3),
(90, 'CB-9032 32x20 inch Bass Drum CB-9000 Series model with Maple shell', 'product/Bass_Drums_4_oC8Uo2q.jpg', '39000.00', 'True', 'bass-drums-4', '2021-05-21 07:58:01.312961', '2021-05-25 11:09:17.312660', 22, 'Size/Weight 		\r\n-Dimensions 	Depth 	20 inches\r\n	Diameter 	32 inches\r\n-Weight 		20.7Kg\r\n		\r\nDesign/Architecture Detail 		\r\n-Hoop 	Material 	Steel\r\n-Lugs 		8\r\n-Shells 	Material 	Maple\r\n	Thickness 	7-ply\r\n-Head 	Batter 	Yamaha Remo Nuskyn\r\n	Bottom 	Yamaha Remo Nuskyn', 3),
(91, 'KSD-255 14x5 inch Snare Drum	 Student model with Steel shell', 'product/Snare_Drums.jpg', '25000.00', 'True', 'snare-drums', '2021-05-21 08:05:22.049262', '2021-05-25 11:11:35.182409', 34, 'Colour/Finish 		\r\n-Body 	Colour 	Silver\r\n	Finish 	Chrome\r\nSize/Weight 		\r\n-Dimensions 	Depth 	5.5 inches\r\n	Diameter 	14 inches\r\n-Weight 		4kg\r\n		\r\nDesign/Architecture Detail 		\r\n-Hoop 	Model 	Regular hoop: triple-flange\r\n	Material 	1.6mm Steel\r\n-Lugs 	Type 	One-piece\r\n	Number of Lugs 	10\r\n	Tuning Bolts 	10 x 2\r\n-Shells 	Thickness 	1.0mm Steel with Centre Bead\r\n	Material 	Steel\r\n-Snare 	Material 	High-Carbon Steel Coiled Wire (20 strands)\r\n	Snare Bed 	Regular hoop: triple-flange\r\n-Strainers 		B-type\r\n-Head 	Bottom 	Remo Diplomat\r\n	Batter 	Remo Renaissance Diplomat', 3),
(92, 'CSM-1350 AII 13x5 inch Snare Drum Maple shell in Natural Vintage finish', 'product/Snare_Drums_1.jpg', '27000.00', 'True', 'snare-drums-1', '2021-05-21 08:07:09.751635', '2021-05-25 11:12:34.603510', 34, 'Colour/Finish		\r\n-Body		Natural Vintage\r\n		\r\nSize/Weight		\r\n-Dimensions	Depth	5 inches\r\n	Diameter	13 inches\r\n		\r\nDesign/Architecture Detail		\r\n-Hoop	Model	Triple Frange\r\n-Lugs	Type	Tube Type\r\n	Number of Lugs	8\r\n-Shells	Thickness	8 ply\r\n	Material	Maple\r\n-Snare	Material	Stainless Steel Coiled Wires\r\n	Snare Bed	Extra Deep\r\n-Strainers	Butt Side	Q Type\r\n	Release Side	DC3 Type\r\n-Head	Bottom	Yamaha Remo Snare Deplomat\r\n	Batter	Yamaha Remo Coated', 3),
(94, 'CSM-1450 AII 14x5 inch Snare Drum Maple shell in Natural Vintage finish', 'product/Snare_Drums_3_5SLiAZx.jpg', '33000.00', 'True', 'snare-drums-3', '2021-05-21 08:08:37.689885', '2021-05-25 11:14:12.067916', 34, 'Colour/Finish		\r\n-Body		Natural Vintage\r\n		\r\nSize/Weight		\r\n-Dimensions	Depth	5 inches\r\n	Diameter	14 inches\r\n		\r\nDesign/Architecture Detail		\r\n-Hoop	Model	Dyna Hoop\r\n-Lugs	Type	Tube Type\r\n	Number of Lugs	10\r\n-Shells	Thickness	8 ply\r\n	Material	Maple\r\n-Snare	Material	Stainless Steel Coiled Wires\r\n	Snare Bed	Extra Deep\r\n-Strainers	Butt Side	Q Type\r\n	Release Side	DC3 Type\r\n-Head	Bottom	Yamaha Remo Snare Deplomat\r\n	Batter	Yamaha Remo Renaissance Diplomat', 3),
(95, 'CSM-1465 AII 14x6.5 inch Snare Drum Maple shell in Natural Vintage finish', 'product/Snare_Drums_4_IbCpgOV.jpg', '37000.00', 'True', 'snare-drums-4', '2021-05-21 08:09:40.454249', '2021-05-25 11:15:29.201893', 34, 'Colour/Finish		\r\n-Body		Natural Vintage\r\n		\r\nSize/Weight		\r\n-Dimensions	Depth	6.5 inches\r\n	Diameter	14 inches\r\n		\r\nDesign/Architecture Detail		\r\n-Hoop	Model	Dyna Hoop\r\n-Lugs	Type	Tube Type\r\n	Number of Lugs	10\r\n-Shells	Thickness	8 ply\r\n	Material	Maple\r\n-Snare	Material	Stainless Steel Coiled Wires\r\n	Snare Bed	Extra Deep\r\n-Strainers	Butt Side	Q Type\r\n	Release Side	DC3 Type\r\n-Head	Bottom	Yamaha Remo Snare Deplomat\r\n	Batter	Yamaha Remo Renaissance Diplomat', 3),
(96, 'Yamaha CSF1M Acoustic Guitar', 'product/GCSF1MTBL.jpg', '12000.00', 'True', 'yamaha-CSF1M-acoustic-guitar', '2021-05-21 08:16:51.684682', '2021-05-25 11:27:15.120573', 2, 'General Specifications\r\n-------------------------\r\n\r\n    Body Shape: CSF\r\n    Scale Length: 600mm\r\n    Body Length: 450mm\r\n    Body Depth: 85-105mm\r\n    Nut Width: 43mm\r\n    String Spacing *: 11mm\r\n    Top Material: Solid Sitka Spruce\r\n    Back Material: Mahogany\r\n    Side Material: Mahogany\r\n    Neck Material: Nato\r\n    Fingerboard Material: Rosewood\r\n    Fingerboard Radius: 400mm\r\n    Bridge Material: Rosewood\r\n    Nut Material: Urea\r\n    Saddle Material: Urea\r\n    Bridge Pins: Black ABS with White Dot\r\n    Tuners: Die-cast Chrome\r\n    Body Binding: Black + White\r\n    Soundhole Inlay: Abalone + Black\r\n    Body Finish: Gloss\r\n    Electronics: Passive System (SRT Piezo)\r\n    Connections: LINE OUT\r\n    Strings: Elixir NANOWEB 80/20 Bronze Light\r\n    Accessories: Hex Wrench\r\n    Case: Hard bag', 3),
(99, 'Revstar RS320 Electric Guitar', 'product/GRS320ICB.jpg', '22000.00', 'True', 'electric-guitars', '2021-05-21 08:25:30.696009', '2021-05-25 11:51:19.810453', 35, 'General Specifications\r\n-------------------------\r\n       Construction: set-in\r\n    Scale Length: 628 mm (24 - 3/4\")\r\n    Neck: Nato\r\n    Neck Profile: slim\r\n    Fingerboard: Rosewood\r\n    radius: 350mm (13 - 3/4\")\r\n    Frets: medium\r\n    Body: Nato\r\n    Body Cut : N/A\r\n    Tuners : Diecast\r\n    Hardware Color: Nickel\r\n    Nut / Width: plastic / 43 mm\r\n    Bridge: Tune-O-Matic\r\n    Tailpiece: Stopbar\r\n    Pickups: Ceramic Humbuckers\r\n    Controls: Master volume/ tone\r\n    Additional Function: n/a\r\n    Finish on Top: High Gloss\r\n    Case: not included', 3),
(101, 'Revstar RS320 Electric Guitar In Vintage White Finish', 'product/GRS320VW-t.jpg', '19000.00', 'True', 'electric-guitars-2', '2021-05-21 08:27:02.980008', '2021-05-25 12:14:03.288210', 35, 'General Specifications\r\n-------------------------\r\n    Construction: set-in\r\n    Scale Length: 628 mm (24 - 3/4\")\r\n    Neck: Mahogany\r\n    Neck Profile: medium\r\n    Fingerboard: Rosewood\r\n    radius: 350mm (13 - 3/4\")\r\n    Frets: Jumbo\r\n    Body: Flamed Maple / Mahogany\r\n    Body Cut : Top & Back\r\n    Tuners : Diecast\r\n    Hardware Color: Satin Nickel\r\n    Nut / Width: plastic / 43 mm\r\n    Bridge: Adjustable wrap-around\r\n    Tailpiece: n/a\r\n    Pickguards: Black 3-ply\r\n    Pickups: Alnico Humbuckers\r\n    Controls: Master volume/ tone\r\n    Additional Function: Dry-switch (push-pull)\r\n    Finish on Top: Steel wool\r\n    Case: gigbag included', 3),
(102, 'Revstar RS420 Electric Guitar In Maya Gold Finish', 'product/GRS420MYG-t.jpg', '20000.00', 'True', 'electric-guitars-3', '2021-05-21 08:28:01.192454', '2021-05-25 12:26:33.812450', 35, 'General Specifications\r\n-------------------------\r\n   \r\n    Overview\r\n    Specs\r\n    Questions & Answers\r\n    Finance\r\n\r\n    Construction: set-in\r\n    Scale Length: 628 mm (24 - 3/4\")\r\n    Neck: Nato\r\n    Neck Profile: slim\r\n    Fingerboard: Rosewood\r\n    radius: 350mm (13 - 3/4\")\r\n    Frets: medium\r\n    Body: Maple/ Nato\r\n    Body Cut : Back only\r\n    Tuners : Diecast\r\n    Hardware Color: Nickel\r\n    Nut / Width: plastic / 43 mm\r\n    Bridge: Tune-O-Matic\r\n    Tailpiece: Stopbar\r\n    Pickguards: Black 3-ply\r\n    Pickups: Alnico Humbuckers\r\n    Controls: Master volume/ tone\r\n    Additional Function: Dry-switch (push-pull)\r\n    Finish on Top: High Gloss\r\n    Case: not included', 3),
(103, 'Revstar RS620 Electric Guitar In Snake Eye Green Finish', 'product/GRS620SEG-t.jpg', '17000.00', 'True', 'electric-guiters-4', '2021-05-21 08:28:41.182375', '2021-05-25 12:35:19.249074', 35, 'General Specifications\r\n-------------------------\r\n      Construction: set-in\r\n    Scale Length: 628 mm (24 - 3/4\")\r\n    Neck: Mahogany\r\n    Neck Profile: medium\r\n    Fingerboard: Rosewood\r\n    radius: 350mm (13 - 3/4\")\r\n    Frets: Jumbo\r\n    Body: Flamed Maple / Mahogany\r\n    Body Cut : Top & Back\r\n    Tuners : Diecast\r\n    Hardware Color: Satin Nickel\r\n    Nut / Width: plastic / 43 mm\r\n    Bridge: Adjustable wrap-around\r\n    Tailpiece: n/a\r\n    Pickguards: Black 3-ply\r\n    Pickups: Alnico Humbuckers\r\n    Controls: Master volume/ tone\r\n    Additional Function: Dry-switch (push-pull)\r\n    Finish on Top: Steel wool\r\n    Case: gigbag included', 3),
(104, 'FX370C Electro-Acoustic Guitar In Natural finish', 'product/YAM-FX370C-GTR-t.jpg', '10000.00', 'True', 'electro-acoustic-guitar', '2021-05-21 09:26:51.447441', '2021-05-25 12:42:23.314339', 36, 'General Specifications\r\n-------------------------\r\n -Body Finish  	Hi-Gloss\r\n-Strings Scale  	634 mm (25\")\r\n-Body Depth  	96-116 mm (3 3/4\"-4 9/6\")\r\n-Finger Board Width (Nut/Body)  	43 mm\r\n-Pick Up System  	System 58 1 way\r\n-Top  	Spruce\r\n-Side/Rib  	Nato\r\n-Back  	Nato\r\n-Neck  	Nato\r\n-Finger Board  	Rosewood\r\n-Bridge  	Rosewood', 3),
(105, 'CPX700 II Electro-Acoustic Guitar in Black finish', 'product/YAM-CPX700II-BL-t.jpg', '12000.00', 'True', 'electro-acoustic-guitar-1', '2021-05-21 09:27:35.870471', '2021-05-25 12:48:10.341007', 36, 'General Specifications\r\n-------------------------\r\n    Top: Solid Spruce\r\n    Back: Nato\r\n    Sides: Nato\r\n    Neck: Nato\r\n    Fingerboar:d	Rosewood\r\n    Bridge: Rosewood\r\n    Body Depth: 95-115mm (3 3/4\" - 4 1/4\")\r\n    Nut Width: 43mm\r\n    String Length: 650mm\r\n    Tuners: Die-Cast Chrome\r\n    Preamp	System: 64 1-way A.R.T.', 3),
(106, 'Yamaha CPX700 II Electro Acoustic Guitar in Sandburst finish', 'product/YAM-CPX700II-SDB-t.jpg', '13000.00', 'True', 'electro-acoustic-guitar-2', '2021-05-21 09:28:27.524793', '2021-05-25 12:53:36.270227', 36, 'General Specifications\r\n-------------------------\r\n    Top: Solid Spruce\r\n    Back: Nato\r\n    Sides: Nato\r\n    Neck: Nato\r\n    Fingerboar:d Rosewood\r\n    Bridge: Rosewood\r\n    Body Depth: 95-115mm (3 3/4\" - 4 1/4\")\r\n    Nut Width: 43mm\r\n    String Length: 650mm\r\n    Tuners: Die-Cast Chrome\r\n    Preamp System: 64 1-way A.R.T.', 3),
(107, 'Yamaha APX600 Electro-Acoustic Guitar In Oriental Blue Burst Finish', 'product/EEG_3_hkBGzHi.jpg', '11000.00', 'True', 'electro-acoustic-guitar-3', '2021-05-21 09:29:18.081751', '2021-05-25 12:58:12.325884', 36, 'The archetypal APX, the 600 series combines the outstanding comfort and perfect on-stage tone of the APX500 with\r\n\r\n    -Thin Body and Cutaway For Excellent Playability\r\n    -634mm Scale Length for Enhanced Comfort\r\n    -Narrower String Spacing Makes Stretching for Chords Easier\r\n    -New Bracing Pattern For More Powerful Bass Response\r\n   - Stage-focused Pickup Sound to Cut Through a Mix\r\n    -Inlaid Soundhole Rosette', 3),
(108, 'FS-TA TransAcoustic Guitar In Raspberry Red Finish', 'product/GFSTARR-t.jpg', '15000.00', 'True', 'electro-acoustic-guitar-4', '2021-05-21 09:30:07.864145', '2021-05-25 13:08:31.725417', 36, 'General Specifications\r\n-------------------------\r\n     Body Shape: Concert\r\n    Scale Length: 634mm (25”)\r\n    Body Length: 497mm (19 9/16\")\r\n    Total Length: 1021mm (40 3/16\")\r\n    Body Width: 380mm (14 15/16\")\r\n    Body Depth: 90-110mm (3 9/16\" - 4 5/16\")	100-\r\n    Nut Width: 43mm (1 11/16\")\r\n    String Spacing *: 10.0mm\r\n    Top Material: Solid Spruce\r\n    Back Material: Mahogany\r\n    Side Material: Mahogany\r\n    Neck Material: Nato\r\n    Fingerboard Material: Rosewood\r\n    Fingerboard Radius: R400mm (15 3/4\")\r\n    Bridge Material: Rosewood\r\n    Nut Material: Urea\r\n    Saddle Material: Urea\r\n    Bridge Pins: Black ABS with White Dot\r\n    Tuners: Die-cast Chrome(TM29T)\r\n    Body Binding: Cream\r\n    Soundhole Inlay: Black + White\r\n    Pickguard: Transparent\r\n    Body Finish: Gloss\r\n    Neck Finish: Matt\r\n    Electronics: SYSTEM70 TransAcoustic + SRT Piezzo Pickup\r\n    Controls: Reverb / Chorus / TA Switch / Line Out Vol\r\n    Connections: LINE OUT\r\n    Strings: Yamaha FS50BT or D\'Addario EXP11\r\n    Accessories: Hex Wrench, 2 x AA Batteries\r\n    Case/ Bag - not included', 3),
(109, 'Yamaha TRBX605FM 5-String Electric Bass Guitar In Dark Red Burst Finish', 'product/BG.jpg', '24000.00', 'True', 'bass-guitar', '2021-05-21 09:35:29.984196', '2021-05-25 13:22:34.136048', 37, 'General Specifications\r\n-------------------------\r\n    Construction: Bolt-on\r\n    Scale Length: 34\" (863.6 mm)\r\n    Body Materials: Flamed Maple / Alder\r\n    Body Finish: Translucent Black, Dark Red Burst: Gloss Polyurethane, Matte Amber, Natural Satin: Satin Polyurethane\r\n    Neck Materials: Maple/Mahogany 5pcs\r\n    Neck Finish: Satin Polyurethane\r\n    Fingerboard Materials: Rosewood\r\n    Fingerboard Radius: 23 5/8\" (600 mm)\r\n    Fret wire: Medium\r\n    Number of frets: 24\r\n    Nut materials: Urea\r\n    Width @ 0 Fret / 12th Fret: 43.0 / 63.4 mm\r\n    Thickness @ 1st Fret / 12th Fret: 20.5 / 22.5 mm\r\n    Neck Pickup: Double Coil / Alnico V\r\n    Middle Pickup: -\r\n    Bridge Pickup: Double Coil / Alnico V\r\n    Controls: Master Volume, Pickup Balancer, 3-BAND EQ(Bass, Middle, Treble), Active/Passive Switch.\r\n    Pickup Switch: -\r\n    Bridge: Die-cast\r\n    String spacing: 18mm\r\n    Tailpiece: -\r\n    Tuning Machines: Covered / Die-cast\r\n    Pickguard: -\r\n    String gauge: 0.045-0.130 (5 strings)\r\n    Case/Bag - not included', 3),
(110, 'Bass Guitar 1', 'product/BG_1_wfpqcIu.jpg', '25000.00', 'True', 'bass-guitar-1', '2021-05-21 09:36:08.607280', '2021-05-25 12:16:49.881172', 37, 'General Specifications\r\n-------------------------\r\n    Construction: set-in\r\n    Scale Length: 628 mm (24 - 3/4\")\r\n    Neck: Mahogany\r\n    Neck Profile: medium\r\n    Fingerboard: Rosewood\r\n    radius: 350mm (13 - 3/4\")\r\n    Frets: Jumbo\r\n    Body: Flamed Maple / Mahogany\r\n    Body Cut : Top & Back\r\n    Tuners : Diecast\r\n    Hardware Color: Satin Nickel\r\n    Nut / Width: plastic / 43 mm\r\n    Bridge: Adjustable wrap-around\r\n    Tailpiece: n/a\r\n    Pickguards: Black 3-ply\r\n    Pickups: Alnico Humbuckers\r\n    Controls: Master volume/ tone\r\n    Additional Function: Dry-switch (push-pull)\r\n    Finish on Top: Steel wool\r\n    Case: gigbag included', 3),
(111, 'Bass Guitar 2', 'product/BG_2_WFpuZJ5.jpg', '23000.00', 'True', 'bass-guitar-2', '2021-05-21 09:36:54.725697', '2021-05-25 12:17:04.846774', 37, 'General Specifications\r\n-------------------------\r\n    Construction: set-in\r\n    Scale Length: 628 mm (24 - 3/4\")\r\n    Neck: Mahogany\r\n    Neck Profile: medium\r\n    Fingerboard: Rosewood\r\n    radius: 350mm (13 - 3/4\")\r\n    Frets: Jumbo\r\n    Body: Flamed Maple / Mahogany\r\n    Body Cut : Top & Back\r\n    Tuners : Diecast\r\n    Hardware Color: Satin Nickel\r\n    Nut / Width: plastic / 43 mm\r\n    Bridge: Adjustable wrap-around\r\n    Tailpiece: n/a\r\n    Pickguards: Black 3-ply\r\n    Pickups: Alnico Humbuckers\r\n    Controls: Master volume/ tone\r\n    Additional Function: Dry-switch (push-pull)\r\n    Finish on Top: Steel wool\r\n    Case: gigbag included', 3),
(112, 'Bass Guitar 3', 'product/BG_3_erpTt6b.jpg', '21000.00', 'True', 'bass-guitar-3', '2021-05-21 09:37:29.249212', '2021-05-25 12:17:22.522707', 37, 'General Specifications\r\n-------------------------\r\n    Construction: set-in\r\n    Scale Length: 628 mm (24 - 3/4\")\r\n    Neck: Mahogany\r\n    Neck Profile: medium\r\n    Fingerboard: Rosewood\r\n    radius: 350mm (13 - 3/4\")\r\n    Frets: Jumbo\r\n    Body: Flamed Maple / Mahogany\r\n    Body Cut : Top & Back\r\n    Tuners : Diecast\r\n    Hardware Color: Satin Nickel\r\n    Nut / Width: plastic / 43 mm\r\n    Bridge: Adjustable wrap-around\r\n    Tailpiece: n/a\r\n    Pickguards: Black 3-ply\r\n    Pickups: Alnico Humbuckers\r\n    Controls: Master volume/ tone\r\n    Additional Function: Dry-switch (push-pull)\r\n    Finish on Top: Steel wool\r\n    Case: gigbag included', 3),
(113, 'Bass Guitar 4', 'product/BG_4_2xXvyxG.jpg', '29000.00', 'True', 'bass-guitar-4', '2021-05-21 09:38:13.085255', '2021-05-25 12:18:28.430826', 37, 'General Specifications\r\n-------------------------\r\n    Construction: set-in\r\n    Scale Length: 628 mm (24 - 3/4\")\r\n    Neck: Mahogany\r\n    Neck Profile: medium\r\n    Fingerboard: Rosewood\r\n    radius: 350mm (13 - 3/4\")\r\n    Frets: Jumbo\r\n    Body: Flamed Maple / Mahogany\r\n    Body Cut : Top & Back\r\n    Tuners : Diecast\r\n    Hardware Color: Satin Nickel\r\n    Nut / Width: plastic / 43 mm\r\n    Bridge: Adjustable wrap-around\r\n    Tailpiece: n/a\r\n    Pickguards: Black 3-ply\r\n    Pickups: Alnico Humbuckers\r\n    Controls: Master volume/ tone\r\n    Additional Function: Dry-switch (push-pull)\r\n    Finish on Top: Steel wool\r\n    Case: gigbag included', 3),
(114, 'Classic Guitar', 'product/CG.jpg', '12000.00', 'True', 'class', '2021-05-21 09:43:09.274570', '2021-05-25 12:17:40.327601', 38, 'General Specifications\r\n-------------------------\r\n    Construction: set-in\r\n    Scale Length: 628 mm (24 - 3/4\")\r\n    Neck: Mahogany\r\n    Neck Profile: medium\r\n    Fingerboard: Rosewood\r\n    radius: 350mm (13 - 3/4\")\r\n    Frets: Jumbo\r\n    Body: Flamed Maple / Mahogany\r\n    Body Cut : Top & Back\r\n    Tuners : Diecast\r\n    Hardware Color: Satin Nickel\r\n    Nut / Width: plastic / 43 mm\r\n    Bridge: Adjustable wrap-around\r\n    Tailpiece: n/a\r\n    Pickguards: Black 3-ply\r\n    Pickups: Alnico Humbuckers\r\n    Controls: Master volume/ tone\r\n    Additional Function: Dry-switch (push-pull)\r\n    Finish on Top: Steel wool\r\n    Case: gigbag included', 3),
(115, 'Classic Guitar 1', 'product/CG_1_xzP5K2J.jpg', '13000.00', 'True', 'classic-guiter-1', '2021-05-21 09:43:50.699805', '2021-05-25 12:18:37.817052', 38, 'General Specifications\r\n-------------------------\r\n    Construction: set-in\r\n    Scale Length: 628 mm (24 - 3/4\")\r\n    Neck: Mahogany\r\n    Neck Profile: medium\r\n    Fingerboard: Rosewood\r\n    radius: 350mm (13 - 3/4\")\r\n    Frets: Jumbo\r\n    Body: Flamed Maple / Mahogany\r\n    Body Cut : Top & Back\r\n    Tuners : Diecast\r\n    Hardware Color: Satin Nickel\r\n    Nut / Width: plastic / 43 mm\r\n    Bridge: Adjustable wrap-around\r\n    Tailpiece: n/a\r\n    Pickguards: Black 3-ply\r\n    Pickups: Alnico Humbuckers\r\n    Controls: Master volume/ tone\r\n    Additional Function: Dry-switch (push-pull)\r\n    Finish on Top: Steel wool\r\n    Case: gigbag included', 3),
(116, 'Classic Guitar 2', 'product/CG_2_XvJG6nZ.jpg', '11000.00', 'True', 'classic-guitar-2', '2021-05-21 09:44:31.811497', '2021-05-25 12:18:57.120285', 38, 'General Specifications\r\n-------------------------\r\n    Construction: set-in\r\n    Scale Length: 628 mm (24 - 3/4\")\r\n    Neck: Mahogany\r\n    Neck Profile: medium\r\n    Fingerboard: Rosewood\r\n    radius: 350mm (13 - 3/4\")\r\n    Frets: Jumbo\r\n    Body: Flamed Maple / Mahogany\r\n    Body Cut : Top & Back\r\n    Tuners : Diecast\r\n    Hardware Color: Satin Nickel\r\n    Nut / Width: plastic / 43 mm\r\n    Bridge: Adjustable wrap-around\r\n    Tailpiece: n/a\r\n    Pickguards: Black 3-ply\r\n    Pickups: Alnico Humbuckers\r\n    Controls: Master volume/ tone\r\n    Additional Function: Dry-switch (push-pull)\r\n    Finish on Top: Steel wool\r\n    Case: gigbag included', 3),
(117, 'Classic Guitar 3', 'product/CG_3_QzFkl5R.jpg', '14000.00', 'True', 'classic-guitar-3', '2021-05-21 09:45:40.216017', '2021-05-25 12:20:07.774256', 38, 'General Specifications\r\n-------------------------\r\n    Construction: set-in\r\n    Scale Length: 628 mm (24 - 3/4\")\r\n    Neck: Mahogany\r\n    Neck Profile: medium\r\n    Fingerboard: Rosewood\r\n    radius: 350mm (13 - 3/4\")\r\n    Frets: Jumbo\r\n    Body: Flamed Maple / Mahogany\r\n    Body Cut : Top & Back\r\n    Tuners : Diecast\r\n    Hardware Color: Satin Nickel\r\n    Nut / Width: plastic / 43 mm\r\n    Bridge: Adjustable wrap-around\r\n    Tailpiece: n/a\r\n    Pickguards: Black 3-ply\r\n    Pickups: Alnico Humbuckers\r\n    Controls: Master volume/ tone\r\n    Additional Function: Dry-switch (push-pull)\r\n    Finish on Top: Steel wool\r\n    Case: gigbag included', 3),
(118, 'Classic Guitar 4', 'product/CG_4_X1KZMkp.jpg', '15000.00', 'True', 'classic-guitar-4', '2021-05-21 09:46:27.593208', '2021-05-25 12:20:21.547157', 38, 'General Specifications\r\n-------------------------\r\n    Construction: set-in\r\n    Scale Length: 628 mm (24 - 3/4\")\r\n    Neck: Mahogany\r\n    Neck Profile: medium\r\n    Fingerboard: Rosewood\r\n    radius: 350mm (13 - 3/4\")\r\n    Frets: Jumbo\r\n    Body: Flamed Maple / Mahogany\r\n    Body Cut : Top & Back\r\n    Tuners : Diecast\r\n    Hardware Color: Satin Nickel\r\n    Nut / Width: plastic / 43 mm\r\n    Bridge: Adjustable wrap-around\r\n    Tailpiece: n/a\r\n    Pickguards: Black 3-ply\r\n    Pickups: Alnico Humbuckers\r\n    Controls: Master volume/ tone\r\n    Additional Function: Dry-switch (push-pull)\r\n    Finish on Top: Steel wool\r\n    Case: gigbag included', 3),
(119, 'Sonogenic Keyboard', 'product/SGK.jpg', '22000.00', 'True', 'sonogenic-keyboard', '2021-05-21 13:26:04.705136', '2021-05-21 13:26:04.705136', 39, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(120, 'Sonogenic Keyboard 1', 'product/SGK_1_03FdhFS.jpg', '25000.00', 'True', 'sonogenic-keyboard-1', '2021-05-21 13:26:43.464251', '2021-05-21 13:26:43.464251', 39, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(121, 'Sonogenic Keyboard 2', 'product/SGK_2_FQjmV1N.jpg', '24000.00', 'True', 'sonogenic-keyboard-2', '2021-05-21 13:27:17.054085', '2021-05-21 13:27:17.054085', 39, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(122, 'Sonogenic Keyboard 3', 'product/SGK_3_LyiHj16.jpg', '26000.00', 'True', 'sonogenic-keyboard-3', '2021-05-21 13:27:56.560793', '2021-05-21 13:27:56.560793', 39, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(123, 'Sonogenic Keyboard 4', 'product/SGK_4_ePXHpac.jpg', '27500.00', 'True', 'sonogenic-keyboard-4', '2021-05-21 13:28:34.386827', '2021-05-21 13:28:34.386827', 39, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(124, 'Home Keyboards', 'product/HK.jpg', '27500.00', 'True', 'home-keyboards', '2021-05-21 13:35:09.976143', '2021-05-21 13:35:09.976143', 40, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(125, 'Home Keyboards 1', 'product/HK_1_WVmsbMX.jpg', '22000.00', 'True', 'home-keyboards-1', '2021-05-21 13:38:18.261954', '2021-05-21 13:38:18.261954', 40, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(126, 'Home Keyboards 2', 'product/HK_2_b1PCgze.jpg', '23000.00', 'True', 'home-keyboards-2', '2021-05-21 13:38:51.093874', '2021-05-21 13:38:51.093874', 40, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(127, 'Home Keyboards 3', 'product/HK_3_svT0KFA.jpg', '23500.00', 'True', 'home-keyboards-3', '2021-05-21 13:39:23.544508', '2021-05-21 13:39:23.544508', 40, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3);
INSERT INTO `product_product` (`id`, `title`, `image`, `new_price`, `status`, `slug`, `created_at`, `updated_at`, `category_id`, `detail`, `amount`) VALUES
(128, 'Home Keyboards 4', 'product/HK_4_CpKMBCD.jpg', '25000.00', 'True', 'home-keyboards-4', '2021-05-21 13:40:12.937676', '2021-05-21 13:40:12.937676', 40, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(129, 'Workstation Keyboard', 'product/WK.jpg', '32000.00', 'True', 'workstation-keyboard', '2021-05-21 13:44:34.388631', '2021-05-21 13:44:34.388631', 41, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(130, 'Workstation Keyboard 1', 'product/WK_1_R1U6ry3.jpg', '36000.00', 'True', 'workstation-keyboard-1', '2021-05-21 13:45:17.345674', '2021-05-21 13:45:17.345674', 41, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(131, 'Workstation Keyboard 2', 'product/WK_2_16nPlEU.jpg', '35000.00', 'True', 'workstation-keyboard-2', '2021-05-21 13:45:56.599494', '2021-05-21 13:45:56.599494', 41, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(132, 'Workstation Keyboard 3', 'product/WK_3_IjLx4C4.jpg', '36500.00', 'True', 'workstation-keyboard-3', '2021-05-21 13:46:38.030007', '2021-05-21 13:46:38.030007', 41, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(133, 'Workstation Keyboard 4', 'product/WK_4_6dnyO7I.jpg', '37500.00', 'True', 'workstation-keyboard-4', '2021-05-21 13:47:10.318578', '2021-05-21 13:47:10.318578', 41, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(134, 'Synthesizer', 'product/OK.jpg', '17500.00', 'True', 'synthesizer', '2021-05-21 13:52:24.709183', '2021-05-21 13:52:24.709183', 42, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(135, 'Synthesizer 1', 'product/OK_1_BqK7HN2.jpg', '25000.00', 'True', 'synthesizer-1', '2021-05-21 13:53:00.559043', '2021-05-21 13:53:00.559043', 42, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(136, 'Synthesizer 2', 'product/OK_2_8ExFgZy.jpg', '25600.00', 'True', 'synthesizer-2', '2021-05-21 13:53:32.450378', '2021-05-21 13:53:32.450378', 42, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(137, 'Synthesizer 3', 'product/OK_3_7XseMbB.jpg', '27500.00', 'True', 'synthesizer-3', '2021-05-21 13:54:02.385680', '2021-05-21 13:54:02.385680', 42, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(138, 'Synthesizer 4', 'product/OK_4_SBhY3Sw.jpg', '26400.00', 'True', 'synthesizer-4', '2021-05-21 13:54:39.433165', '2021-05-21 13:54:39.433165', 42, 'Specs\r\n------\r\nModel: SHS-500 Sonogenic\r\nDimensions: 821 x 65 x 121mm\r\nWeight: 1.5kg\r\n\r\nControl Interface\r\n------------------	\r\nNumber of Keys: 37\r\nTouch Response:	Soft, Medium, Hard, Fixed\r\nPitch Bend: Yes\r\nModulation: Yes\r\nControl Knobs: Yes\r\nDisplay: LCD\r\n\r\nFunctions\r\n---------	\r\nPanel Sustain: Yes\r\nTranspose: -12 to 0, 0 to +12\r\nTuning: 427.0 - 440.0 - 453.0 Hz (approx 0.2Hz increments)\r\nUSB Audio Interface: 44.1 kHz, 16 bit, stereo\r\nJAM: JAM Function (5 mode)\r\n\r\nVoices	\r\n------\r\nTone Generation: AWM Stereo Sampling\r\nPolyphony: 48\r\nPreset: 30\r\n\r\nEffects	\r\n--------\r\nDSP: 9 types (assignable on control knobs)\r\nMaster EQ: 4 types\r\n\r\nSongs	\r\n-----\r\n\r\nNumber of Preset Songs: 3\r\n\r\nStorage and Connectivity\r\n-------------------------\r\n	\r\nDC IN: 12V\r\nHeadphones: Yes (stereo-mini)\r\nLINE OUT: Yes (mono)\r\nAUX IN: Yes (stereo-mini)\r\nUSB TO HOST: Yes (MIDI/Audio: 44.1 kHz, 16 bit, stereo)\r\n\r\nAmplifiers and Speakers	\r\n------------------------\r\nAmplifiers: 0.7W\r\nColour: 3.6cm', 3),
(139, 'Marimbas', 'product/MB.jpg', '43000.00', 'True', 'marimbas', '2021-05-21 13:58:10.247337', '2021-05-25 13:34:03.420514', 43, 'Features\r\n--------\r\n    Exclusive Yamaha tuning method ensures true pitch and full sound\r\n\r\n    Padauk wood bars provide natural wood sound and feel\r\n\r\n    Graduated bars produce a full tone and projection throughout the instrument\'s range\r\n\r\n    Resonator tracking system allows two resonator height settings for pitch and tone control in varying climate conditions\r\n\r\n    Compact size fits well in rehearsal setting or where space/storage is limited\r\n\r\n    Height adjustable frame allows most comfortable playing position for all players\r\n\r\n    Durable frame\'s lower crossbar support maintains stability and, therefore, playability\r\n\r\n    Locking casters on player side are easy to reach, and they secure the instrument while playing\r\n\r\nSpecs\r\n-----\r\nSize/Weight 		\r\nDimensions 	Width 	154cm\r\n	Height 	82-94cm\r\n	Depth 	80cm\r\nWeight 		39kg\r\n		\r\nDesign/Architecture Detail 		\r\nBars 	Thickness 	24.5-22.5mm\r\n	Width 	53-40mm\r\n	Material 	Padauk\r\n		\r\nRange 		3 1/2 octaves\r\nPitch 		A442Hz (23℃)', 3),
(140, 'Marimbas 1', 'product/MB_1_9Bj9eQx.jpg', '36000.00', 'True', 'marimbas-1', '2021-05-21 14:02:00.038745', '2021-05-25 13:34:17.728533', 43, 'Features\r\n--------\r\n    Exclusive Yamaha tuning method ensures true pitch and full sound\r\n\r\n    Padauk wood bars provide natural wood sound and feel\r\n\r\n    Graduated bars produce a full tone and projection throughout the instrument\'s range\r\n\r\n    Resonator tracking system allows two resonator height settings for pitch and tone control in varying climate conditions\r\n\r\n    Compact size fits well in rehearsal setting or where space/storage is limited\r\n\r\n    Height adjustable frame allows most comfortable playing position for all players\r\n\r\n    Durable frame\'s lower crossbar support maintains stability and, therefore, playability\r\n\r\n    Locking casters on player side are easy to reach, and they secure the instrument while playing\r\n\r\nSpecs\r\n-----\r\nSize/Weight 		\r\nDimensions 	Width 	154cm\r\n	Height 	82-94cm\r\n	Depth 	80cm\r\nWeight 		39kg\r\n		\r\nDesign/Architecture Detail 		\r\nBars 	Thickness 	24.5-22.5mm\r\n	Width 	53-40mm\r\n	Material 	Padauk\r\n		\r\nRange 		3 1/2 octaves\r\nPitch 		A442Hz (23℃)', 3),
(141, 'Marimbas 2', 'product/MB_2_NMBOgM3.jpg', '35000.00', 'True', 'marimbas-2', '2021-05-21 14:02:30.898006', '2021-05-25 13:34:30.894564', 43, 'Features\r\n--------\r\n    Exclusive Yamaha tuning method ensures true pitch and full sound\r\n\r\n    Padauk wood bars provide natural wood sound and feel\r\n\r\n    Graduated bars produce a full tone and projection throughout the instrument\'s range\r\n\r\n    Resonator tracking system allows two resonator height settings for pitch and tone control in varying climate conditions\r\n\r\n    Compact size fits well in rehearsal setting or where space/storage is limited\r\n\r\n    Height adjustable frame allows most comfortable playing position for all players\r\n\r\n    Durable frame\'s lower crossbar support maintains stability and, therefore, playability\r\n\r\n    Locking casters on player side are easy to reach, and they secure the instrument while playing\r\n\r\nSpecs\r\n-----\r\nSize/Weight 		\r\nDimensions 	Width 	154cm\r\n	Height 	82-94cm\r\n	Depth 	80cm\r\nWeight 		39kg\r\n		\r\nDesign/Architecture Detail 		\r\nBars 	Thickness 	24.5-22.5mm\r\n	Width 	53-40mm\r\n	Material 	Padauk\r\n		\r\nRange 		3 1/2 octaves\r\nPitch 		A442Hz (23℃)', 3),
(142, 'Marimbas 3', 'product/MB_3_E3iQf9e.jpg', '39000.00', 'True', 'marimbas-3', '2021-05-21 14:03:06.838754', '2021-05-25 13:34:44.003467', 43, 'Features\r\n--------\r\n    Exclusive Yamaha tuning method ensures true pitch and full sound\r\n\r\n    Padauk wood bars provide natural wood sound and feel\r\n\r\n    Graduated bars produce a full tone and projection throughout the instrument\'s range\r\n\r\n    Resonator tracking system allows two resonator height settings for pitch and tone control in varying climate conditions\r\n\r\n    Compact size fits well in rehearsal setting or where space/storage is limited\r\n\r\n    Height adjustable frame allows most comfortable playing position for all players\r\n\r\n    Durable frame\'s lower crossbar support maintains stability and, therefore, playability\r\n\r\n    Locking casters on player side are easy to reach, and they secure the instrument while playing\r\n\r\nSpecs\r\n-----\r\nSize/Weight 		\r\nDimensions 	Width 	154cm\r\n	Height 	82-94cm\r\n	Depth 	80cm\r\nWeight 		39kg\r\n		\r\nDesign/Architecture Detail 		\r\nBars 	Thickness 	24.5-22.5mm\r\n	Width 	53-40mm\r\n	Material 	Padauk\r\n		\r\nRange 		3 1/2 octaves\r\nPitch 		A442Hz (23℃)', 3),
(143, 'Marimbas 4', 'product/MB_4_B9W45VX.jpg', '37500.00', 'True', 'marimbas-4', '2021-05-21 14:03:41.738955', '2021-05-25 13:34:55.182374', 43, 'Features\r\n--------\r\n    Exclusive Yamaha tuning method ensures true pitch and full sound\r\n\r\n    Padauk wood bars provide natural wood sound and feel\r\n\r\n    Graduated bars produce a full tone and projection throughout the instrument\'s range\r\n\r\n    Resonator tracking system allows two resonator height settings for pitch and tone control in varying climate conditions\r\n\r\n    Compact size fits well in rehearsal setting or where space/storage is limited\r\n\r\n    Height adjustable frame allows most comfortable playing position for all players\r\n\r\n    Durable frame\'s lower crossbar support maintains stability and, therefore, playability\r\n\r\n    Locking casters on player side are easy to reach, and they secure the instrument while playing\r\n\r\nSpecs\r\n-----\r\nSize/Weight 		\r\nDimensions 	Width 	154cm\r\n	Height 	82-94cm\r\n	Depth 	80cm\r\nWeight 		39kg\r\n		\r\nDesign/Architecture Detail 		\r\nBars 	Thickness 	24.5-22.5mm\r\n	Width 	53-40mm\r\n	Material 	Padauk\r\n		\r\nRange 		3 1/2 octaves\r\nPitch 		A442Hz (23℃)', 3),
(144, 'Orchestral Bells', 'product/OB.jpg', '25000.00', 'True', 'orchestral-bells', '2021-05-21 14:06:25.229999', '2021-05-25 13:35:38.992089', 44, 'Features\r\n--------\r\n    Exclusive Yamaha tuning method ensures true pitch and full sound\r\n\r\n    Padauk wood bars provide natural wood sound and feel\r\n\r\n    Graduated bars produce a full tone and projection throughout the instrument\'s range\r\n\r\n    Resonator tracking system allows two resonator height settings for pitch and tone control in varying climate conditions\r\n\r\n    Compact size fits well in rehearsal setting or where space/storage is limited\r\n\r\n    Height adjustable frame allows most comfortable playing position for all players\r\n\r\n    Durable frame\'s lower crossbar support maintains stability and, therefore, playability\r\n\r\n    Locking casters on player side are easy to reach, and they secure the instrument while playing\r\n\r\nSpecs\r\n-----\r\nSize/Weight 		\r\nDimensions 	Width 	154cm\r\n	Height 	82-94cm\r\n	Depth 	80cm\r\nWeight 		39kg\r\n		\r\nDesign/Architecture Detail 		\r\nBars 	Thickness 	24.5-22.5mm\r\n	Width 	53-40mm\r\n	Material 	Padauk\r\n		\r\nRange 		3 1/2 octaves\r\nPitch 		A442Hz (23℃)', 3),
(145, 'Orchestral Bells 1', 'product/OB_1_vNbQK10.jpg', '27000.00', 'True', 'orchestral-bells-1', '2021-05-21 14:06:54.596951', '2021-05-25 13:35:49.978658', 44, 'Features\r\n--------\r\n    Exclusive Yamaha tuning method ensures true pitch and full sound\r\n\r\n    Padauk wood bars provide natural wood sound and feel\r\n\r\n    Graduated bars produce a full tone and projection throughout the instrument\'s range\r\n\r\n    Resonator tracking system allows two resonator height settings for pitch and tone control in varying climate conditions\r\n\r\n    Compact size fits well in rehearsal setting or where space/storage is limited\r\n\r\n    Height adjustable frame allows most comfortable playing position for all players\r\n\r\n    Durable frame\'s lower crossbar support maintains stability and, therefore, playability\r\n\r\n    Locking casters on player side are easy to reach, and they secure the instrument while playing\r\n\r\nSpecs\r\n-----\r\nSize/Weight 		\r\nDimensions 	Width 	154cm\r\n	Height 	82-94cm\r\n	Depth 	80cm\r\nWeight 		39kg\r\n		\r\nDesign/Architecture Detail 		\r\nBars 	Thickness 	24.5-22.5mm\r\n	Width 	53-40mm\r\n	Material 	Padauk\r\n		\r\nRange 		3 1/2 octaves\r\nPitch 		A442Hz (23℃)', 3),
(146, 'Orchestral Bells 2', 'product/OB_2_Rvjp3Z6.jpg', '29000.00', 'True', 'orchestral-bells-2', '2021-05-21 14:07:24.790717', '2021-05-25 13:36:05.764109', 44, 'Features\r\n--------\r\n    Exclusive Yamaha tuning method ensures true pitch and full sound\r\n\r\n    Padauk wood bars provide natural wood sound and feel\r\n\r\n    Graduated bars produce a full tone and projection throughout the instrument\'s range\r\n\r\n    Resonator tracking system allows two resonator height settings for pitch and tone control in varying climate conditions\r\n\r\n    Compact size fits well in rehearsal setting or where space/storage is limited\r\n\r\n    Height adjustable frame allows most comfortable playing position for all players\r\n\r\n    Durable frame\'s lower crossbar support maintains stability and, therefore, playability\r\n\r\n    Locking casters on player side are easy to reach, and they secure the instrument while playing\r\n\r\nSpecs\r\n-----\r\nSize/Weight 		\r\nDimensions 	Width 	154cm\r\n	Height 	82-94cm\r\n	Depth 	80cm\r\nWeight 		39kg\r\n		\r\nDesign/Architecture Detail 		\r\nBars 	Thickness 	24.5-22.5mm\r\n	Width 	53-40mm\r\n	Material 	Padauk\r\n		\r\nRange 		3 1/2 octaves\r\nPitch 		A442Hz (23℃)', 3),
(147, 'Timpani', 'product/Timpani.jpg', '23000.00', 'True', 'timpani', '2021-05-21 14:15:57.018650', '2021-05-21 14:15:57.018650', 45, 'Features\r\n--------\r\nBowl Design\r\n\r\nThe hammered bowls in this series feature a squarer \'cambered\' profile than conventional bowl designs. The most obvious benefits are ample volume, ideal timpani decay, and significantly improved mallet response. The most desirable qualities of copper are emphasised, with carefully thought out and proven refinements to bowl size, bearing edge shape (the edge that contacts the timpani head), the diameter of the aperture in the bottom of the bowl, and more. The overall result is rich, deep tone with superior playability.\r\nSteel Caster Nuts\r\n\r\nThe nuts that hold the main casters in place are made of steel, adding to the weight and stability of the frame so that sound is effectively transferred to the floor and to every corner of the hall.\r\nMachine Hammering\r\n\r\nSpecially designed hammering machines faithfully simulate the hand hammering process while eliminating the unavoidable inconsistencies of handwork. The goal was not only to improve efficiency, but more importantly to recreate the technique of master craftsmen. The result is bowls that exude hand-made warmth.\r\nPedal Adjustment Clutch (PAC) System\r\n\r\nThe PAC system allows pedal resistance to be adjusted while maintaining perfect pedal balance. A large knob makes adjustment easy too.\r\n\r\nSpecs\r\n-----\r\n    Head Type: Yamaha Remo Renaissance\r\n    Kettle: Cambered Hammered Copper\r\n    Tuning Mechanism: Pedal Balance Spring System\r\n    Included Accessories: Tuning Key, Allen Wrench, Head Protector', 3),
(148, 'Timpani 1', 'product/Timpani_1_cEqjN5y.jpg', '23500.00', 'True', 'timpani-1', '2021-05-21 14:16:30.909364', '2021-05-21 14:16:30.909364', 45, 'Features\r\n--------\r\nBowl Design\r\n\r\nThe hammered bowls in this series feature a squarer \'cambered\' profile than conventional bowl designs. The most obvious benefits are ample volume, ideal timpani decay, and significantly improved mallet response. The most desirable qualities of copper are emphasised, with carefully thought out and proven refinements to bowl size, bearing edge shape (the edge that contacts the timpani head), the diameter of the aperture in the bottom of the bowl, and more. The overall result is rich, deep tone with superior playability.\r\nSteel Caster Nuts\r\n\r\nThe nuts that hold the main casters in place are made of steel, adding to the weight and stability of the frame so that sound is effectively transferred to the floor and to every corner of the hall.\r\nMachine Hammering\r\n\r\nSpecially designed hammering machines faithfully simulate the hand hammering process while eliminating the unavoidable inconsistencies of handwork. The goal was not only to improve efficiency, but more importantly to recreate the technique of master craftsmen. The result is bowls that exude hand-made warmth.\r\nPedal Adjustment Clutch (PAC) System\r\n\r\nThe PAC system allows pedal resistance to be adjusted while maintaining perfect pedal balance. A large knob makes adjustment easy too.\r\n\r\nSpecs\r\n-----\r\n    Head Type: Yamaha Remo Renaissance\r\n    Kettle: Cambered Hammered Copper\r\n    Tuning Mechanism: Pedal Balance Spring System\r\n    Included Accessories: Tuning Key, Allen Wrench, Head Protector', 3),
(149, 'Timpani 2', 'product/Timpani_2_NBlWv07.jpg', '24500.00', 'True', 'timpani-2', '2021-05-21 14:17:01.329403', '2021-05-21 14:17:01.329403', 45, 'Features\r\n--------\r\nBowl Design\r\n\r\nThe hammered bowls in this series feature a squarer \'cambered\' profile than conventional bowl designs. The most obvious benefits are ample volume, ideal timpani decay, and significantly improved mallet response. The most desirable qualities of copper are emphasised, with carefully thought out and proven refinements to bowl size, bearing edge shape (the edge that contacts the timpani head), the diameter of the aperture in the bottom of the bowl, and more. The overall result is rich, deep tone with superior playability.\r\nSteel Caster Nuts\r\n\r\nThe nuts that hold the main casters in place are made of steel, adding to the weight and stability of the frame so that sound is effectively transferred to the floor and to every corner of the hall.\r\nMachine Hammering\r\n\r\nSpecially designed hammering machines faithfully simulate the hand hammering process while eliminating the unavoidable inconsistencies of handwork. The goal was not only to improve efficiency, but more importantly to recreate the technique of master craftsmen. The result is bowls that exude hand-made warmth.\r\nPedal Adjustment Clutch (PAC) System\r\n\r\nThe PAC system allows pedal resistance to be adjusted while maintaining perfect pedal balance. A large knob makes adjustment easy too.\r\n\r\nSpecs\r\n-----\r\n    Head Type: Yamaha Remo Renaissance\r\n    Kettle: Cambered Hammered Copper\r\n    Tuning Mechanism: Pedal Balance Spring System\r\n    Included Accessories: Tuning Key, Allen Wrench, Head Protector', 3),
(150, 'Timpani 3', 'product/Timpani_3_DPAoXfJ.jpg', '25600.00', 'True', 'timpani-3', '2021-05-21 14:21:57.023478', '2021-05-21 14:21:57.023478', 45, 'Features\r\n--------\r\nBowl Design\r\n\r\nThe hammered bowls in this series feature a squarer \'cambered\' profile than conventional bowl designs. The most obvious benefits are ample volume, ideal timpani decay, and significantly improved mallet response. The most desirable qualities of copper are emphasised, with carefully thought out and proven refinements to bowl size, bearing edge shape (the edge that contacts the timpani head), the diameter of the aperture in the bottom of the bowl, and more. The overall result is rich, deep tone with superior playability.\r\nSteel Caster Nuts\r\n\r\nThe nuts that hold the main casters in place are made of steel, adding to the weight and stability of the frame so that sound is effectively transferred to the floor and to every corner of the hall.\r\nMachine Hammering\r\n\r\nSpecially designed hammering machines faithfully simulate the hand hammering process while eliminating the unavoidable inconsistencies of handwork. The goal was not only to improve efficiency, but more importantly to recreate the technique of master craftsmen. The result is bowls that exude hand-made warmth.\r\nPedal Adjustment Clutch (PAC) System\r\n\r\nThe PAC system allows pedal resistance to be adjusted while maintaining perfect pedal balance. A large knob makes adjustment easy too.\r\n\r\nSpecs\r\n-----\r\n    Head Type: Yamaha Remo Renaissance\r\n    Kettle: Cambered Hammered Copper\r\n    Tuning Mechanism: Pedal Balance Spring System\r\n    Included Accessories: Tuning Key, Allen Wrench, Head Protector', 3),
(151, 'Timpani 4', 'product/Timpani_4_nNOZosW.jpg', '26500.00', 'True', 'timpani-4', '2021-05-21 14:22:32.688276', '2021-05-21 14:22:32.688276', 45, 'Features\r\n--------\r\nBowl Design\r\n\r\nThe hammered bowls in this series feature a squarer \'cambered\' profile than conventional bowl designs. The most obvious benefits are ample volume, ideal timpani decay, and significantly improved mallet response. The most desirable qualities of copper are emphasised, with carefully thought out and proven refinements to bowl size, bearing edge shape (the edge that contacts the timpani head), the diameter of the aperture in the bottom of the bowl, and more. The overall result is rich, deep tone with superior playability.\r\nSteel Caster Nuts\r\n\r\nThe nuts that hold the main casters in place are made of steel, adding to the weight and stability of the frame so that sound is effectively transferred to the floor and to every corner of the hall.\r\nMachine Hammering\r\n\r\nSpecially designed hammering machines faithfully simulate the hand hammering process while eliminating the unavoidable inconsistencies of handwork. The goal was not only to improve efficiency, but more importantly to recreate the technique of master craftsmen. The result is bowls that exude hand-made warmth.\r\nPedal Adjustment Clutch (PAC) System\r\n\r\nThe PAC system allows pedal resistance to be adjusted while maintaining perfect pedal balance. A large knob makes adjustment easy too.\r\n\r\nSpecs\r\n-----\r\n    Head Type: Yamaha Remo Renaissance\r\n    Kettle: Cambered Hammered Copper\r\n    Tuning Mechanism: Pedal Balance Spring System\r\n    Included Accessories: Tuning Key, Allen Wrench, Head Protector', 3),
(152, 'Vibraphones', 'product/VP.jpg', '34000.00', 'True', 'vibraphones', '2021-05-21 14:27:29.791760', '2021-05-21 14:27:29.791760', 46, 'Features\r\n--------\r\nBowl Design\r\n\r\nThe hammered bowls in this series feature a squarer \'cambered\' profile than conventional bowl designs. The most obvious benefits are ample volume, ideal timpani decay, and significantly improved mallet response. The most desirable qualities of copper are emphasised, with carefully thought out and proven refinements to bowl size, bearing edge shape (the edge that contacts the timpani head), the diameter of the aperture in the bottom of the bowl, and more. The overall result is rich, deep tone with superior playability.\r\nSteel Caster Nuts\r\n\r\nThe nuts that hold the main casters in place are made of steel, adding to the weight and stability of the frame so that sound is effectively transferred to the floor and to every corner of the hall.\r\nMachine Hammering\r\n\r\nSpecially designed hammering machines faithfully simulate the hand hammering process while eliminating the unavoidable inconsistencies of handwork. The goal was not only to improve efficiency, but more importantly to recreate the technique of master craftsmen. The result is bowls that exude hand-made warmth.\r\nPedal Adjustment Clutch (PAC) System\r\n\r\nThe PAC system allows pedal resistance to be adjusted while maintaining perfect pedal balance. A large knob makes adjustment easy too.\r\n\r\nSpecs\r\n-----\r\n    Head Type: Yamaha Remo Renaissance\r\n    Kettle: Cambered Hammered Copper\r\n    Tuning Mechanism: Pedal Balance Spring System\r\n    Included Accessories: Tuning Key, Allen Wrench, Head Protector', 3),
(153, 'Vibraphones 1', 'product/VP_1_SQJeq1C.jpg', '26500.00', 'True', 'vibraphones-1', '2021-05-21 14:28:23.490700', '2021-05-21 14:28:23.490700', 46, 'Features\r\n--------\r\nBowl Design\r\n\r\nThe hammered bowls in this series feature a squarer \'cambered\' profile than conventional bowl designs. The most obvious benefits are ample volume, ideal timpani decay, and significantly improved mallet response. The most desirable qualities of copper are emphasised, with carefully thought out and proven refinements to bowl size, bearing edge shape (the edge that contacts the timpani head), the diameter of the aperture in the bottom of the bowl, and more. The overall result is rich, deep tone with superior playability.\r\nSteel Caster Nuts\r\n\r\nThe nuts that hold the main casters in place are made of steel, adding to the weight and stability of the frame so that sound is effectively transferred to the floor and to every corner of the hall.\r\nMachine Hammering\r\n\r\nSpecially designed hammering machines faithfully simulate the hand hammering process while eliminating the unavoidable inconsistencies of handwork. The goal was not only to improve efficiency, but more importantly to recreate the technique of master craftsmen. The result is bowls that exude hand-made warmth.\r\nPedal Adjustment Clutch (PAC) System\r\n\r\nThe PAC system allows pedal resistance to be adjusted while maintaining perfect pedal balance. A large knob makes adjustment easy too.\r\n\r\nSpecs\r\n-----\r\n    Head Type: Yamaha Remo Renaissance\r\n    Kettle: Cambered Hammered Copper\r\n    Tuning Mechanism: Pedal Balance Spring System\r\n    Included Accessories: Tuning Key, Allen Wrench, Head Protector', 3),
(154, 'Vibraphones 2', 'product/VP_2_DLpvm4u.jpg', '27500.00', 'True', 'vibraphones-2', '2021-05-21 14:29:03.580770', '2021-05-21 14:29:03.580770', 46, 'Features\r\n--------\r\nBowl Design\r\n\r\nThe hammered bowls in this series feature a squarer \'cambered\' profile than conventional bowl designs. The most obvious benefits are ample volume, ideal timpani decay, and significantly improved mallet response. The most desirable qualities of copper are emphasised, with carefully thought out and proven refinements to bowl size, bearing edge shape (the edge that contacts the timpani head), the diameter of the aperture in the bottom of the bowl, and more. The overall result is rich, deep tone with superior playability.\r\nSteel Caster Nuts\r\n\r\nThe nuts that hold the main casters in place are made of steel, adding to the weight and stability of the frame so that sound is effectively transferred to the floor and to every corner of the hall.\r\nMachine Hammering\r\n\r\nSpecially designed hammering machines faithfully simulate the hand hammering process while eliminating the unavoidable inconsistencies of handwork. The goal was not only to improve efficiency, but more importantly to recreate the technique of master craftsmen. The result is bowls that exude hand-made warmth.\r\nPedal Adjustment Clutch (PAC) System\r\n\r\nThe PAC system allows pedal resistance to be adjusted while maintaining perfect pedal balance. A large knob makes adjustment easy too.\r\n\r\nSpecs\r\n-----\r\n    Head Type: Yamaha Remo Renaissance\r\n    Kettle: Cambered Hammered Copper\r\n    Tuning Mechanism: Pedal Balance Spring System\r\n    Included Accessories: Tuning Key, Allen Wrench, Head Protector', 3),
(155, 'Vibraphones 3', 'product/VP_3_5KOgNn6.jpg', '29500.00', 'True', 'vibraphones-3', '2021-05-21 14:29:34.240950', '2021-05-21 14:29:34.240950', 46, 'Features\r\n--------\r\nBowl Design\r\n\r\nThe hammered bowls in this series feature a squarer \'cambered\' profile than conventional bowl designs. The most obvious benefits are ample volume, ideal timpani decay, and significantly improved mallet response. The most desirable qualities of copper are emphasised, with carefully thought out and proven refinements to bowl size, bearing edge shape (the edge that contacts the timpani head), the diameter of the aperture in the bottom of the bowl, and more. The overall result is rich, deep tone with superior playability.\r\nSteel Caster Nuts\r\n\r\nThe nuts that hold the main casters in place are made of steel, adding to the weight and stability of the frame so that sound is effectively transferred to the floor and to every corner of the hall.\r\nMachine Hammering\r\n\r\nSpecially designed hammering machines faithfully simulate the hand hammering process while eliminating the unavoidable inconsistencies of handwork. The goal was not only to improve efficiency, but more importantly to recreate the technique of master craftsmen. The result is bowls that exude hand-made warmth.\r\nPedal Adjustment Clutch (PAC) System\r\n\r\nThe PAC system allows pedal resistance to be adjusted while maintaining perfect pedal balance. A large knob makes adjustment easy too.\r\n\r\nSpecs\r\n-----\r\n    Head Type: Yamaha Remo Renaissance\r\n    Kettle: Cambered Hammered Copper\r\n    Tuning Mechanism: Pedal Balance Spring System\r\n    Included Accessories: Tuning Key, Allen Wrench, Head Protector', 3),
(156, 'Vibraphones 4', 'product/VP_4_MPezOKW.jpg', '32000.00', 'True', 'vibraphones-4', '2021-05-21 14:30:34.598770', '2021-05-21 14:30:34.598770', 46, 'Features\r\n--------\r\nBowl Design\r\n\r\nThe hammered bowls in this series feature a squarer \'cambered\' profile than conventional bowl designs. The most obvious benefits are ample volume, ideal timpani decay, and significantly improved mallet response. The most desirable qualities of copper are emphasised, with carefully thought out and proven refinements to bowl size, bearing edge shape (the edge that contacts the timpani head), the diameter of the aperture in the bottom of the bowl, and more. The overall result is rich, deep tone with superior playability.\r\nSteel Caster Nuts\r\n\r\nThe nuts that hold the main casters in place are made of steel, adding to the weight and stability of the frame so that sound is effectively transferred to the floor and to every corner of the hall.\r\nMachine Hammering\r\n\r\nSpecially designed hammering machines faithfully simulate the hand hammering process while eliminating the unavoidable inconsistencies of handwork. The goal was not only to improve efficiency, but more importantly to recreate the technique of master craftsmen. The result is bowls that exude hand-made warmth.\r\nPedal Adjustment Clutch (PAC) System\r\n\r\nThe PAC system allows pedal resistance to be adjusted while maintaining perfect pedal balance. A large knob makes adjustment easy too.\r\n\r\nSpecs\r\n-----\r\n    Head Type: Yamaha Remo Renaissance\r\n    Kettle: Cambered Hammered Copper\r\n    Tuning Mechanism: Pedal Balance Spring System\r\n    Included Accessories: Tuning Key, Allen Wrench, Head Protector', 3),
(157, 'Cellos', 'product/Cellos.jpg', '32000.00', 'True', 'cellos', '2021-05-21 14:35:41.830736', '2021-05-25 13:37:57.321436', 14, 'Colour/Finish	\r\n	\r\nBody Finish 	Fully Hand Brushed\r\nVarnish 	Oil Varnish, Shading\r\n	\r\nBody	\r\n	\r\nType 	Stradivarius\r\nSize 	4/4\r\nTop 	Spruce\r\nBack 	Maple\r\nSide 	Maple\r\nNeck 	Maple\r\nFinger Board 	Ebony\r\n	\r\nParts	\r\n	\r\nBridge	Aubert LUX\r\nTuning Pegs	Ebony\r\nTailpiece	Wittner \"Ultra\" with fine tuners for every string', 3),
(158, 'Cellos 1', 'product/Cellos_1_aO2pmuP.jpg', '32500.00', 'True', 'cellos-1', '2021-05-21 14:36:13.153483', '2021-05-25 13:37:25.113557', 14, 'Colour/Finish	\r\n	\r\nBody Finish 	Fully Hand Brushed\r\nVarnish 	Oil Varnish, Shading\r\n	\r\nBody	\r\n	\r\nType 	Stradivarius\r\nSize 	4/4\r\nTop 	Spruce\r\nBack 	Maple\r\nSide 	Maple\r\nNeck 	Maple\r\nFinger Board 	Ebony\r\n	\r\nParts	\r\n	\r\nBridge	Aubert LUX\r\nTuning Pegs	Ebony\r\nTailpiece	Wittner \"Ultra\" with fine tuners for every string', 3),
(159, 'Cellos 2', 'product/Cellos_2_NaBfi5h.jpg', '33000.00', 'True', 'cellos-2', '2021-05-21 14:36:54.964407', '2021-05-25 13:38:19.234774', 14, 'Colour/Finish	\r\n	\r\nBody Finish 	Fully Hand Brushed\r\nVarnish 	Oil Varnish, Shading\r\n	\r\nBody	\r\n	\r\nType 	Stradivarius\r\nSize 	4/4\r\nTop 	Spruce\r\nBack 	Maple\r\nSide 	Maple\r\nNeck 	Maple\r\nFinger Board 	Ebony\r\n	\r\nParts	\r\n	\r\nBridge	Aubert LUX\r\nTuning Pegs	Ebony\r\nTailpiece	Wittner \"Ultra\" with fine tuners for every string', 3),
(160, 'Violas', 'product/Violas.jpg', '32000.00', 'True', 'violas', '2021-05-21 14:41:39.362767', '2021-05-25 13:38:34.678608', 15, 'Colour/Finish		\r\n\r\n    Body Finish 	Fully Hand Brushed\r\n    Varnish 		Oil Varnish\r\n\r\nBody		\r\n\r\n    Type 	Stradivarius\r\n    Size 	15.5 inch\r\n    Top 		Spruce\r\n    Back 	Maple\r\n    Side 	Maple\r\n    Neck 	Maple\r\n    Finger Board 	Ebony\r\n\r\nParts		\r\n\r\n    Bridge 	Yamaha Original\r\n    Tuning Pegs 	Rosewood\r\n    Tailpiece 		Wittner \"Ultra\" (4 Fine Tuners)\r\n    Chin Rest 	Rosewood\r\n    Strings 		D\'Addario Prelude\r\n    Fine Tuner 	Wittner \"Ultra\" (4 Fine Tuners)\r\n\r\nAccessories 	\r\n\r\n    Bow 	Brazilian Wood\r\n    Case 	Shaped Hard Case\r\n    Rosin 	Piranito', 3),
(161, 'Violas 1', 'product/Violas_1_gv9yiwm.jpg', '35000.00', 'True', 'violas-1', '2021-05-21 14:42:11.940075', '2021-05-25 13:38:50.714829', 15, 'Colour/Finish		\r\n\r\n    Body Finish 	Fully Hand Brushed\r\n    Varnish 		Oil Varnish\r\n\r\nBody		\r\n\r\n    Type 	Stradivarius\r\n    Size 	15.5 inch\r\n    Top 		Spruce\r\n    Back 	Maple\r\n    Side 	Maple\r\n    Neck 	Maple\r\n    Finger Board 	Ebony\r\n\r\nParts		\r\n\r\n    Bridge 	Yamaha Original\r\n    Tuning Pegs 	Rosewood\r\n    Tailpiece 		Wittner \"Ultra\" (4 Fine Tuners)\r\n    Chin Rest 	Rosewood\r\n    Strings 		D\'Addario Prelude\r\n    Fine Tuner 	Wittner \"Ultra\" (4 Fine Tuners)\r\n\r\nAccessories 	\r\n\r\n    Bow 	Brazilian Wood\r\n    Case 	Shaped Hard Case\r\n    Rosin 	Piranito', 3),
(162, 'Violins', 'product/Violins.jpg', '18000.00', 'True', 'violins', '2021-05-21 14:48:19.620356', '2021-05-25 13:39:03.040629', 47, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.', 3),
(163, 'Violins 1', 'product/Violins_1_C9XgkVQ.jpg', '16500.00', 'True', 'violins-1', '2021-05-21 14:49:03.546764', '2021-05-25 13:39:12.257085', 47, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.', 3),
(164, 'Violins 2', 'product/Violins_2_n62Q4fj.jpg', '16500.00', 'True', 'violins-2', '2021-05-21 14:49:38.600535', '2021-05-25 13:39:21.858148', 47, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.', 3),
(165, 'Violins 3', 'product/Violins_3_32lfUHq.jpg', '17500.00', 'True', 'violins-3', '2021-05-21 14:50:20.400847', '2021-05-25 13:39:33.245131', 47, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.', 3),
(166, 'Violins 4', 'product/Violins_4_Kwe0VAz.jpg', '18500.00', 'True', 'violins-4', '2021-05-21 14:50:58.095263', '2021-05-25 13:39:49.478086', 47, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.', 3),
(167, 'Electric Violin', 'product/EV.jpg', '23600.00', 'True', 'electric-violin', '2021-05-21 14:58:14.183574', '2021-05-25 13:49:28.184790', 48, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.', 3),
(168, 'Electric Violin 1', 'product/EV_1_ZY5zvyU.jpg', '22000.00', 'True', 'electric-violin-1', '2021-05-21 14:59:07.589992', '2021-05-25 13:49:42.057684', 48, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.', 3),
(169, 'Electric Violin 2', 'product/EV_2_i8ULH7c.jpg', '25000.00', 'True', 'electric-violin-2', '2021-05-21 14:59:39.920567', '2021-05-25 13:51:26.472742', 48, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.', 3),
(170, 'Electric Violin 3', 'product/EV_3_b8fl5Sm.jpg', '26000.00', 'True', 'electric-violin-3', '2021-05-21 15:00:20.683576', '2021-05-25 13:50:51.586525', 48, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.', 3),
(171, 'Electric Violin 4', 'product/EV_4_650dZ24.jpg', '24500.00', 'True', 'electric-violin-4', '2021-05-21 15:01:01.025637', '2021-05-21 15:01:01.025637', 48, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.\r\n\r\nProduct ID	KV20SG', 3),
(172, 'Silent Violin', 'product/SV.jpg', '22500.00', 'True', 'silent-violin', '2021-05-21 15:29:11.418270', '2021-05-25 13:50:34.699524', 49, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.', 3),
(173, 'Silent Violin 1', 'product/SV_1_qCxdOOk.jpg', '23500.00', 'True', 'silent-violin-1', '2021-05-21 15:29:52.983375', '2021-05-25 13:50:22.346299', 49, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.', 3),
(174, 'Silent Violin 2', 'product/SV_2_zIdkkYS.jpg', '24500.00', 'True', 'silent-violin-2', '2021-05-21 15:30:47.127607', '2021-05-25 13:49:53.341762', 49, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.', 3),
(175, 'Silent Violin 3', 'product/SV_3_ZsWFMSY.jpg', '21500.00', 'True', 'silent-violin-3', '2021-05-21 15:31:35.267679', '2021-05-25 13:50:05.039975', 49, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.', 3),
(176, 'Silent Violin 4', 'product/SV_4_eLqbajH.jpg', '22000.00', 'True', 'silent-violin-4', '2021-05-21 15:32:32.390058', '2021-05-25 13:31:02.552004', 49, 'The V20SG is a set including\r\n\r\n    V20G,\r\n    case (VHC2),\r\n    bow,\r\n    and rosin.', 3),
(177, 'Flutes', 'product/Fluets.jpg', '8000.00', 'True', 'flutes', '2021-05-21 15:42:37.024858', '2021-05-25 13:52:09.292541', 50, 'Features\r\n---------\r\nNew Adjustment Screws\r\n\r\nNew adjustment screws enhance stability.\r\n\r\nNew scale\r\n\r\nExcellent intonation and great response especially in the low register\r\n\r\nGold brass construction\r\n\r\nGold brass makes the flute much lighter and easier to hold while still creating a rich and colourful sound.\r\n\r\nSpecs\r\n-----\r\nKeys  		Type  		Covered keys\r\n		E Mechanism  		No\r\n		Pads 		Double bladder\r\n				\r\nBody & Footjoint  			Gold brass (Clear-lacquer)\r\nKeys  				Nickel silver (Silver-plated)\r\nHeadjoint & Lip Plate  		Gold brass (Clear-lacquer), with Sterling silver lip plate', 3),
(178, 'Flutes 1', 'product/Fluets_1_OVku0EZ.jpg', '10000.00', 'True', 'flutes-1', '2021-05-21 15:43:30.346951', '2021-05-25 13:52:23.676240', 50, 'Features\r\n---------\r\nNew Adjustment Screws\r\n\r\nNew adjustment screws enhance stability.\r\n\r\nNew scale\r\n\r\nExcellent intonation and great response especially in the low register\r\n\r\nGold brass construction\r\n\r\nGold brass makes the flute much lighter and easier to hold while still creating a rich and colourful sound.\r\n\r\nSpecs\r\n-----\r\nKeys  		Type  		Covered keys\r\n		E Mechanism  		No\r\n		Pads 		Double bladder\r\n				\r\nBody & Footjoint  			Gold brass (Clear-lacquer)\r\nKeys  				Nickel silver (Silver-plated)\r\nHeadjoint & Lip Plate  		Gold brass (Clear-lacquer), with Sterling silver lip plate', 3),
(179, 'Flutes 2', 'product/Fluets_2_N8UByM2.jpg', '12000.00', 'True', 'flutes-2', '2021-05-21 15:44:01.682962', '2021-05-25 13:52:41.435566', 50, 'Features\r\n---------\r\nNew Adjustment Screws\r\n\r\nNew adjustment screws enhance stability.\r\n\r\nNew scale\r\n\r\nExcellent intonation and great response especially in the low register\r\n\r\nGold brass construction\r\n\r\nGold brass makes the flute much lighter and easier to hold while still creating a rich and colourful sound.\r\n\r\nSpecs\r\n-----\r\nKeys  		Type  		Covered keys\r\n		E Mechanism  		No\r\n		Pads 		Double bladder\r\n				\r\nBody & Footjoint  			Gold brass (Clear-lacquer)\r\nKeys  				Nickel silver (Silver-plated)\r\nHeadjoint & Lip Plate  		Gold brass (Clear-lacquer), with Sterling silver lip plate', 3);
INSERT INTO `product_product` (`id`, `title`, `image`, `new_price`, `status`, `slug`, `created_at`, `updated_at`, `category_id`, `detail`, `amount`) VALUES
(180, 'Flutes 3', 'product/Fluets_3_gZI2JLZ.jpg', '14000.00', 'True', 'flutes-3', '2021-05-21 15:44:33.647389', '2021-05-25 13:52:57.401652', 50, 'Features\r\n---------\r\nNew Adjustment Screws\r\n\r\nNew adjustment screws enhance stability.\r\n\r\nNew scale\r\n\r\nExcellent intonation and great response especially in the low register\r\n\r\nGold brass construction\r\n\r\nGold brass makes the flute much lighter and easier to hold while still creating a rich and colourful sound.\r\n\r\nSpecs\r\n-----\r\nKeys  		Type  		Covered keys\r\n		E Mechanism  		No\r\n		Pads 		Double bladder\r\n				\r\nBody & Footjoint  			Gold brass (Clear-lacquer)\r\nKeys  				Nickel silver (Silver-plated)\r\nHeadjoint & Lip Plate  		Gold brass (Clear-lacquer), with Sterling silver lip plate', 3),
(181, 'Flutes 4', 'product/Fluets_4_v662kMO.jpg', '15000.00', 'True', 'flutes-4', '2021-05-21 15:45:07.957561', '2021-05-25 13:53:12.807572', 50, 'Features\r\n---------\r\nNew Adjustment Screws\r\n\r\nNew adjustment screws enhance stability.\r\n\r\nNew scale\r\n\r\nExcellent intonation and great response especially in the low register\r\n\r\nGold brass construction\r\n\r\nGold brass makes the flute much lighter and easier to hold while still creating a rich and colourful sound.\r\n\r\nSpecs\r\n-----\r\nKeys  		Type  		Covered keys\r\n		E Mechanism  		No\r\n		Pads 		Double bladder\r\n				\r\nBody & Footjoint  			Gold brass (Clear-lacquer)\r\nKeys  				Nickel silver (Silver-plated)\r\nHeadjoint & Lip Plate  		Gold brass (Clear-lacquer), with Sterling silver lip plate', 3),
(182, 'Oboes', 'product/Oboes.jpg', '14000.00', 'True', 'oboes', '2021-05-21 15:50:17.715460', '2021-05-21 15:50:36.125597', 51, 'Specs\r\n-----\r\nBody 		Grenadilla\r\n		\r\nKeys 		Silver-plated nickel silver keys\r\n	Trill keys 	C# - D#; F# - G#; Ab - Bb; A# - B; B - C#; left C - D; right C - D\r\n	Auxiliary Keys  	3rd octave key, Left-hand F key, Fork F resonance key\r\n		\r\nPads 		8 cork, 15 felt pads\r\nToneholes 		Simplified Conservatoire (full-automatic octave system)', 3),
(183, 'Oboes 1', 'product/Oboes_1_04su2Lw.jpg', '14500.00', 'True', 'oboes-1', '2021-05-21 15:51:11.925368', '2021-05-21 15:51:11.925368', 51, 'Specs\r\n-----\r\nBody 		Grenadilla\r\n		\r\nKeys 		Silver-plated nickel silver keys\r\n	Trill keys 	C# - D#; F# - G#; Ab - Bb; A# - B; B - C#; left C - D; right C - D\r\n	Auxiliary Keys  	3rd octave key, Left-hand F key, Fork F resonance key\r\n		\r\nPads 		8 cork, 15 felt pads\r\nToneholes 		Simplified Conservatoire (full-automatic octave system)', 3),
(184, 'Oboes 2', 'product/Oboes_2_j3JzjU9.jpg', '15000.00', 'True', 'oboes-2', '2021-05-21 15:51:47.645288', '2021-05-21 15:51:47.645288', 51, 'Specs\r\n-----\r\nBody 		Grenadilla\r\n		\r\nKeys 		Silver-plated nickel silver keys\r\n	Trill keys 	C# - D#; F# - G#; Ab - Bb; A# - B; B - C#; left C - D; right C - D\r\n	Auxiliary Keys  	3rd octave key, Left-hand F key, Fork F resonance key\r\n		\r\nPads 		8 cork, 15 felt pads\r\nToneholes 		Simplified Conservatoire (full-automatic octave system)', 3),
(185, 'Oboes 3', 'product/Oboes_3_QtzFu8x.jpg', '14500.00', 'True', 'oboes-3', '2021-05-21 15:52:32.772111', '2021-05-21 15:52:32.772111', 51, 'Specs\r\n-----\r\nBody 		Grenadilla\r\n		\r\nKeys 		Silver-plated nickel silver keys\r\n	Trill keys 	C# - D#; F# - G#; Ab - Bb; A# - B; B - C#; left C - D; right C - D\r\n	Auxiliary Keys  	3rd octave key, Left-hand F key, Fork F resonance key\r\n		\r\nPads 		8 cork, 15 felt pads\r\nToneholes 		Simplified Conservatoire (full-automatic octave system)', 3),
(186, 'Oboes 4', 'product/Oboes_4_NOGnTIJ.jpg', '15000.00', 'True', 'oboes-4', '2021-05-21 15:53:10.854420', '2021-05-21 15:53:10.854420', 51, 'Specs\r\n-----\r\nBody 		Grenadilla\r\n		\r\nKeys 		Silver-plated nickel silver keys\r\n	Trill keys 	C# - D#; F# - G#; Ab - Bb; A# - B; B - C#; left C - D; right C - D\r\n	Auxiliary Keys  	3rd octave key, Left-hand F key, Fork F resonance key\r\n		\r\nPads 		8 cork, 15 felt pads\r\nToneholes 		Simplified Conservatoire (full-automatic octave system)', 3),
(187, 'Piccolos', 'product/Pic.jpg', '22000.00', 'True', 'piccolos', '2021-05-21 15:59:18.879938', '2021-05-21 15:59:18.879938', 52, 'Features\r\n-------\r\nHandcrafted Quality\r\n\r\nHandcrafted piccolos feature a select grenadilla wood body and offers a headjoint choice between grenadilla (YPC-81) or sterling silver (YPC-82)\r\n\r\nRibbed key post construction\r\n\r\nGreater body strength and accurate key action\r\n\r\nSplit E mechanism\r\n\r\nProduces a clearer and more responsive high E\r\n\r\nUndercut tone holes\r\n\r\nImproved intonation and response due to smoother airflow throughout the instrument\r\n\r\nDouble bladder pads\r\n\r\nLong life and better seating\r\n\r\nSpecs\r\n------\r\nKeys  	System  	Offset G\r\n	Type  	Covered keys\r\n	E Mechanism  	Yes\r\n		\r\nBody  		Grenadilla\r\nKeys  		Nickel silver (Silver-plated)\r\nHeadjoint & Lip Plate  		Grenadilla', 3),
(188, 'Piccolos 1', 'product/Pic_1_lPADmut.jpg', '25000.00', 'True', 'piccolos-1', '2021-05-21 16:00:00.859795', '2021-05-21 16:00:00.859795', 52, 'Features\r\n-------\r\nHandcrafted Quality\r\n\r\nHandcrafted piccolos feature a select grenadilla wood body and offers a headjoint choice between grenadilla (YPC-81) or sterling silver (YPC-82)\r\n\r\nRibbed key post construction\r\n\r\nGreater body strength and accurate key action\r\n\r\nSplit E mechanism\r\n\r\nProduces a clearer and more responsive high E\r\n\r\nUndercut tone holes\r\n\r\nImproved intonation and response due to smoother airflow throughout the instrument\r\n\r\nDouble bladder pads\r\n\r\nLong life and better seating\r\n\r\nSpecs\r\n------\r\nKeys  	System  	Offset G\r\n	Type  	Covered keys\r\n	E Mechanism  	Yes\r\n		\r\nBody  		Grenadilla\r\nKeys  		Nickel silver (Silver-plated)\r\nHeadjoint & Lip Plate  		Grenadilla', 3),
(189, 'Piccolos 2', 'product/Pic_2_U27B9AT.jpg', '22500.00', 'True', 'piccolos-2', '2021-05-21 16:01:18.748756', '2021-05-21 16:01:18.748756', 52, 'Features\r\n-------\r\nHandcrafted Quality\r\n\r\nHandcrafted piccolos feature a select grenadilla wood body and offers a headjoint choice between grenadilla (YPC-81) or sterling silver (YPC-82)\r\n\r\nRibbed key post construction\r\n\r\nGreater body strength and accurate key action\r\n\r\nSplit E mechanism\r\n\r\nProduces a clearer and more responsive high E\r\n\r\nUndercut tone holes\r\n\r\nImproved intonation and response due to smoother airflow throughout the instrument\r\n\r\nDouble bladder pads\r\n\r\nLong life and better seating\r\n\r\nSpecs\r\n------\r\nKeys  	System  	Offset G\r\n	Type  	Covered keys\r\n	E Mechanism  	Yes\r\n		\r\nBody  		Grenadilla\r\nKeys  		Nickel silver (Silver-plated)\r\nHeadjoint & Lip Plate  		Grenadilla', 3),
(190, 'Piccolos 3', 'product/Pic_3_YCmRFOg.jpg', '24500.00', 'True', 'piccolos-3', '2021-05-21 16:02:06.278997', '2021-05-21 16:02:06.278997', 52, 'Features\r\n-------\r\nHandcrafted Quality\r\n\r\nHandcrafted piccolos feature a select grenadilla wood body and offers a headjoint choice between grenadilla (YPC-81) or sterling silver (YPC-82)\r\n\r\nRibbed key post construction\r\n\r\nGreater body strength and accurate key action\r\n\r\nSplit E mechanism\r\n\r\nProduces a clearer and more responsive high E\r\n\r\nUndercut tone holes\r\n\r\nImproved intonation and response due to smoother airflow throughout the instrument\r\n\r\nDouble bladder pads\r\n\r\nLong life and better seating\r\n\r\nSpecs\r\n------\r\nKeys  	System  	Offset G\r\n	Type  	Covered keys\r\n	E Mechanism  	Yes\r\n		\r\nBody  		Grenadilla\r\nKeys  		Nickel silver (Silver-plated)\r\nHeadjoint & Lip Plate  		Grenadilla', 3),
(191, 'Piccolos 4', 'product/Pic_4_5olLaEk.jpg', '25000.00', 'True', 'piccolos-4', '2021-05-21 16:02:39.903677', '2021-05-21 16:02:39.903677', 52, 'Features\r\n-------\r\nHandcrafted Quality\r\n\r\nHandcrafted piccolos feature a select grenadilla wood body and offers a headjoint choice between grenadilla (YPC-81) or sterling silver (YPC-82)\r\n\r\nRibbed key post construction\r\n\r\nGreater body strength and accurate key action\r\n\r\nSplit E mechanism\r\n\r\nProduces a clearer and more responsive high E\r\n\r\nUndercut tone holes\r\n\r\nImproved intonation and response due to smoother airflow throughout the instrument\r\n\r\nDouble bladder pads\r\n\r\nLong life and better seating\r\n\r\nSpecs\r\n------\r\nKeys  	System  	Offset G\r\n	Type  	Covered keys\r\n	E Mechanism  	Yes\r\n		\r\nBody  		Grenadilla\r\nKeys  		Nickel silver (Silver-plated)\r\nHeadjoint & Lip Plate  		Grenadilla', 3),
(192, 'Yamaha Tour Custom Drum Shell Set with 22\" Kick Drum in In Liquorice Satin finish', 'product/JTMP0F4LCS_pUlwppF.jpg', '120000.00', 'True', 'yamaha-tour-custom-drum-shell-set-22-kick-drum-liq', '2021-05-22 06:34:27.327195', '2021-05-22 06:34:27.327195', 20, 'Hoop Material TT / FT : Inverse Dyna Hoop , BD : Maple\r\nHoop Thickness TT / FT : 2.3mm, BD : 8.0mm\r\nLug Type: Absolute Lug (Chrome finish)\r\nShell Thickness: 5.6mm\r\nShell Material: Maple (6ply)\r\nHeads, Top TT / FT : REMO Ambassodor Clear\r\nHeads, Bottom TT / FT : REMO Ambassador Clear\r\nHead, Front BD : REMO Smooth White Powerstroke3 with Yamaha Logo\r\nHead, Batter BD : REMO Powerstroke3 Clear\r\nBearing Edge TT / FT / BD: 45 degrees\r\nTom Mount Type: YESS', 1),
(193, 'Yamaha JR2 Small Bodied Acoustic Guitar', 'product/YAM-JR2-TBS.jpg', '14500.00', 'True', 'yamaha-jr2-small-bodied-acoustic-guitar', '2021-05-22 06:41:51.860807', '2021-05-22 06:41:51.860807', 2, 'Top:	Spruce\r\nBack:	Mahogany Finish UTF (Ultra Thin Film)\r\nSide:	Mahogany Finish UTF (Ultra Thin Film)\r\nNeck:	Nato\r\nFingerboard:	Rosewood\r\nBridge:	Rosewood\r\nBody Depth:	80-90mm (3 1/8\" - 3 9/16\")\r\nNut Width:	43mm (1 11/16\")\r\nString Length:	540mm (21 1/4\")\r\nTuners:	Open Chrome\r\nIncluded Accessories:	Gig Bag', 1),
(194, 'Yamaha Revstar RS320 Electric Guitar', 'product/GRS320BSTA.jpg', '33000.00', 'True', 'yamaha-revstar-rs320-electric-guitar', '2021-05-22 06:52:09.126096', '2021-05-22 06:52:09.126096', 35, 'Construction: set-in\r\n    Scale Length: 628 mm (24 - 3/4\")\r\n    Neck: Nato\r\n    Neck Profile: slim\r\n    Fingerboard: Rosewood\r\n    radius: 350mm (13 - 3/4\")\r\n    Frets: medium\r\n    Body: Nato\r\n    Body Cut : N/A\r\n    Tuners : Diecast\r\n    Hardware Color: Nickel\r\n    Nut / Width: plastic / 43 mm\r\n    Bridge: Tune-O-Matic\r\n    Tailpiece: Stopbar\r\n    Pickups: Ceramic Humbuckers\r\n    Controls: Master volume/ tone\r\n    Additional Function: n/a\r\n    Finish on Top: High Gloss\r\n    Case: not included', 1),
(195, 'PSS-E30 (Remie) Home Keyboard with Mini Keys', 'product/SPSSE30.jpg', '5000.00', 'True', 'pss-e30-remie-home-keyboard-mini-keys', '2021-05-22 06:58:58.358786', '2021-05-22 06:58:58.358786', 40, '-High quality mini keyboard\r\n    -47 Voices (instruments)\r\n    -74 sound effects\r\n    -Quiz mode - Guess the sound!\r\n    -28 auto accompaniment Styles and the Smart Chord function\r\n    -30 onboard Songs\r\n    -Free digital songbook\r\n    -Light and compact\r\n    -Built-in speaker / Headphones jack\r\n    -Battery and USB bus powered (USB power adaptor is sold separately)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userapp_userprofile`
--

CREATE TABLE `userapp_userprofile` (
  `id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `zipcode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userapp_userprofile`
--

INSERT INTO `userapp_userprofile` (`id`, `phone`, `address`, `city`, `country`, `image`, `user_id`, `zipcode`) VALUES
(1, '01568039971', '2 no. road, Banani', 'Dhaka', 'Bangladesh', 'user_img/IMG_20210217_121719.jpg', 2, '1213'),
(5, '01568039971', '2 no. road, Banani', 'Dhaka', 'Bangladesh', 'user_img/IMG_20200108_093844.jpg', 6, '1213'),
(6, '', '', '', '', 'user_img/avatar.jpg', 7, ''),
(7, '01568039971', 'Banani', 'Dhaka', 'Bangladesh', 'user_img/IMG_20210217_121719_7KZeL7a.jpg', 10, '1213'),
(8, '01568039971', '2 no. road, Banani', 'Dhaka', 'Bangladesh', 'user_img/IMG20190607180955.jpg', 12, '1213');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `ecomapp_contactmessage`
--
ALTER TABLE `ecomapp_contactmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecomapp_setting`
--
ALTER TABLE `ecomapp_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forumapp_blog`
--
ALTER TABLE `forumapp_blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `ForumApp_blog_author_id_479d7a50_fk_auth_user_id` (`author_id`);

--
-- Indexes for table `forumapp_comment`
--
ALTER TABLE `forumapp_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ForumApp_comment_blog_id_10b4578e_fk_ForumApp_blog_id` (`blog_id`),
  ADD KEY `ForumApp_comment_user_id_e3de97be_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `forumapp_likes`
--
ALTER TABLE `forumapp_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ForumApp_likes_blog_id_25a7f009_fk_ForumApp_blog_id` (`blog_id`),
  ADD KEY `ForumApp_likes_user_id_a006b474_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `orderapp_billingaddress`
--
ALTER TABLE `orderapp_billingaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OrderApp_billingaddress_user_id_daa2a8a7_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `orderapp_order`
--
ALTER TABLE `orderapp_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OrderApp_order_user_id_84cad7b4_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `orderapp_order_orderitems`
--
ALTER TABLE `orderapp_order_orderitems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `OrderApp_order_orderitems_order_id_shopcart_id_e1819de0_uniq` (`order_id`,`shopcart_id`),
  ADD KEY `OrderApp_order_order_shopcart_id_0212e423_fk_OrderApp_` (`shopcart_id`);

--
-- Indexes for table `orderapp_shopcart`
--
ALTER TABLE `orderapp_shopcart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OrderApp_shopcart_product_id_f4261b7b_fk_Product_product_id` (`product_id`),
  ADD KEY `OrderApp_shopcart_user_id_3582085a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `Product_category_parent_id_4b9e6c44_fk_Product_category_id` (`parent_id`),
  ADD KEY `Product_category_tree_id_c0e2e897` (`tree_id`);

--
-- Indexes for table `product_comment`
--
ALTER TABLE `product_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Product_comment_product_id_ef7d013a_fk_Product_product_id` (`product_id`),
  ADD KEY `Product_comment_user_id_e9ed38a4_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Product_images_product_id_14a571e3_fk_Product_product_id` (`product_id`);

--
-- Indexes for table `product_product`
--
ALTER TABLE `product_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `Product_product_category_id_ded7ea18_fk_Product_category_id` (`category_id`);

--
-- Indexes for table `userapp_userprofile`
--
ALTER TABLE `userapp_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=593;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `ecomapp_contactmessage`
--
ALTER TABLE `ecomapp_contactmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ecomapp_setting`
--
ALTER TABLE `ecomapp_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forumapp_blog`
--
ALTER TABLE `forumapp_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `forumapp_comment`
--
ALTER TABLE `forumapp_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forumapp_likes`
--
ALTER TABLE `forumapp_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderapp_billingaddress`
--
ALTER TABLE `orderapp_billingaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orderapp_order`
--
ALTER TABLE `orderapp_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `orderapp_order_orderitems`
--
ALTER TABLE `orderapp_order_orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `orderapp_shopcart`
--
ALTER TABLE `orderapp_shopcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_comment`
--
ALTER TABLE `product_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=613;

--
-- AUTO_INCREMENT for table `product_product`
--
ALTER TABLE `product_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `userapp_userprofile`
--
ALTER TABLE `userapp_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `forumapp_blog`
--
ALTER TABLE `forumapp_blog`
  ADD CONSTRAINT `ForumApp_blog_author_id_479d7a50_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `forumapp_comment`
--
ALTER TABLE `forumapp_comment`
  ADD CONSTRAINT `ForumApp_comment_blog_id_10b4578e_fk_ForumApp_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `forumapp_blog` (`id`),
  ADD CONSTRAINT `ForumApp_comment_user_id_e3de97be_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `forumapp_likes`
--
ALTER TABLE `forumapp_likes`
  ADD CONSTRAINT `ForumApp_likes_blog_id_25a7f009_fk_ForumApp_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `forumapp_blog` (`id`),
  ADD CONSTRAINT `ForumApp_likes_user_id_a006b474_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `orderapp_billingaddress`
--
ALTER TABLE `orderapp_billingaddress`
  ADD CONSTRAINT `OrderApp_billingaddress_user_id_daa2a8a7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `orderapp_order`
--
ALTER TABLE `orderapp_order`
  ADD CONSTRAINT `OrderApp_order_user_id_84cad7b4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `orderapp_order_orderitems`
--
ALTER TABLE `orderapp_order_orderitems`
  ADD CONSTRAINT `OrderApp_order_order_shopcart_id_0212e423_fk_OrderApp_` FOREIGN KEY (`shopcart_id`) REFERENCES `orderapp_shopcart` (`id`),
  ADD CONSTRAINT `OrderApp_order_orderitems_order_id_6fade090_fk_OrderApp_order_id` FOREIGN KEY (`order_id`) REFERENCES `orderapp_order` (`id`);

--
-- Constraints for table `orderapp_shopcart`
--
ALTER TABLE `orderapp_shopcart`
  ADD CONSTRAINT `OrderApp_shopcart_product_id_f4261b7b_fk_Product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`),
  ADD CONSTRAINT `OrderApp_shopcart_user_id_3582085a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `Product_category_parent_id_4b9e6c44_fk_Product_category_id` FOREIGN KEY (`parent_id`) REFERENCES `product_category` (`id`);

--
-- Constraints for table `product_comment`
--
ALTER TABLE `product_comment`
  ADD CONSTRAINT `Product_comment_product_id_ef7d013a_fk_Product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`),
  ADD CONSTRAINT `Product_comment_user_id_e9ed38a4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `Product_images_product_id_14a571e3_fk_Product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`);

--
-- Constraints for table `product_product`
--
ALTER TABLE `product_product`
  ADD CONSTRAINT `Product_product_category_id_ded7ea18_fk_Product_category_id` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`);

--
-- Constraints for table `userapp_userprofile`
--
ALTER TABLE `userapp_userprofile`
  ADD CONSTRAINT `UserApp_userprofile_user_id_3bfd84d3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
