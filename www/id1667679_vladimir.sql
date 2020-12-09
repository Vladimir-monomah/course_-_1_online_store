-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 14 2019 г., 11:17
-- Версия сервера: 10.3.14-MariaDB
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `id1667679_vladimir`
--

-- --------------------------------------------------------

--
-- Структура таблицы `buy_products`
--

CREATE TABLE `buy_products` (
  `buy_id` int(11) NOT NULL,
  `buy_id_order` int(11) NOT NULL,
  `buy_id_product` int(11) NOT NULL,
  `buy_count_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `buy_products`
--

INSERT INTO `buy_products` (`buy_id`, `buy_id_order`, `buy_id_product`, `buy_count_product`) VALUES
(11, 9, 10, 2),
(12, 9, 8, 1),
(13, 9, 11, 1),
(14, 10, 11, 1),
(15, 11, 18, 1),
(16, 12, 17, 1),
(17, 13, 17, 14),
(18, 14, 18, 1),
(19, 14, 12, 2),
(20, 15, 16, 1),
(21, 16, 15, 1),
(22, 17, 42, 1),
(23, 18, 42, 1),
(24, 19, 42, 1),
(25, 20, 42, 1),
(26, 21, 42, 1),
(27, 22, 42, 1),
(28, 23, 42, 1),
(29, 24, 42, 1),
(30, 25, 44, 1),
(31, 26, 44, 1),
(32, 27, 44, 2),
(33, 28, 44, 1),
(34, 29, 44, 1),
(35, 30, 27, 2),
(36, 30, 35, 1),
(37, 31, 44, 1),
(38, 32, 44, 2),
(39, 33, 44, 2),
(40, 34, 44, 2),
(41, 35, 44, 2),
(42, 36, 44, 2),
(43, 37, 44, 2),
(44, 38, 28, 1),
(45, 39, 25, 2),
(46, 40, 44, 1),
(47, 40, 43, 1),
(48, 40, 41, 1),
(49, 41, 44, 2),
(50, 42, 44, 1),
(51, 0, 44, 1),
(52, 0, 43, 1),
(53, 0, 43, 1),
(54, 0, 44, 1),
(55, 0, 44, 1),
(56, 0, 44, 1),
(57, 0, 44, 1),
(58, 0, 44, 1),
(59, 0, 44, 1),
(60, 0, 44, 1),
(61, 0, 44, 1),
(62, 0, 44, 1),
(63, 0, 44, 1),
(64, 0, 44, 1),
(65, 0, 43, 1),
(66, 0, 44, 1),
(67, 0, 43, 1),
(68, 0, 44, 1),
(69, 0, 43, 1),
(70, 0, 44, 1),
(71, 0, 43, 1),
(72, 0, 44, 1),
(73, 0, 43, 1),
(74, 0, 44, 1),
(75, 0, 43, 1),
(76, 0, 44, 1),
(77, 0, 43, 1),
(78, 0, 44, 1),
(79, 0, 43, 1),
(80, 0, 44, 1),
(81, 0, 42, 1),
(82, 0, 42, 1),
(83, 0, 42, 1),
(84, 0, 42, 1),
(85, 0, 42, 1),
(86, 0, 44, 1),
(87, 0, 42, 1),
(88, 0, 44, 1),
(89, 0, 42, 1),
(90, 0, 44, 1),
(91, 0, 42, 1),
(92, 0, 44, 1),
(93, 0, 44, 1),
(94, 0, 44, 1),
(95, 0, 44, 1),
(96, 0, 44, 1),
(97, 0, 44, 1),
(98, 1, 44, 1),
(99, 2, 44, 3),
(100, 3, 44, 2),
(101, 4, 70, 2),
(102, 5, 44, 3),
(103, 5, 70, 1),
(104, 6, 70, 1),
(105, 7, 70, 1),
(106, 8, 70, 1),
(107, 9, 70, 1),
(108, 10, 70, 1),
(109, 11, 70, 1),
(110, 12, 70, 1),
(111, 13, 70, 1),
(112, 14, 70, 1),
(113, 15, 65, 2),
(114, 16, 70, 1),
(115, 17, 70, 1),
(116, 18, 70, 1),
(117, 19, 70, 3),
(118, 20, 65, 1),
(119, 20, 68, 1),
(120, 21, 70, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `cart_id_products` int(11) NOT NULL,
  `cart_price` int(11) NOT NULL,
  `cart_count` int(11) NOT NULL DEFAULT 1,
  `cart_datetime` datetime NOT NULL,
  `cart_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`cart_id`, `cart_id_products`, `cart_price`, `cart_count`, `cart_datetime`, `cart_ip`) VALUES
(8, 42, 3990, 1, '2018-10-26 06:13:03', '91.107.96.166'),
(9, 44, 17789, 1, '2018-10-29 10:10:00', '178.207.121.6'),
(10, 44, 17789, 1, '2018-11-03 14:08:29', '178.207.50.90'),
(11, 26, 9809, 1, '2018-11-06 16:40:58', '84.18.118.193'),
(13, 39, 5199, 1, '2018-11-13 09:38:17', '85.140.5.117'),
(15, 43, 6444, 1, '2018-11-19 15:48:03', '84.18.119.229'),
(17, 0, 0, 7, '2018-11-26 20:13:14', '178.207.223.15'),
(19, 0, 0, 2, '2018-11-26 20:16:24', '94.180.213.89'),
(27, 44, 17789, 1, '2018-12-01 13:20:15', '178.207.134.57'),
(29, 44, 17789, 1, '2018-12-11 05:58:26', '91.107.98.226'),
(32, 30, 21990, 1, '2018-12-18 03:57:13', '178.207.6.197'),
(36, 25, 12486, 2, '2018-12-19 07:05:18', '178.207.81.189'),
(42, 44, 17789, 2, '2018-12-19 10:24:59', '85.233.76.83'),
(43, 44, 17789, 1, '2018-12-23 19:52:28', '188.234.61.205'),
(44, 43, 6444, 1, '2018-12-24 04:09:06', '84.18.118.199'),
(46, 44, 17789, 4, '2018-12-24 20:15:34', '178.207.126.232'),
(48, 43, 6444, 1, '2018-12-24 20:20:36', '5c213f3d709774.59330902'),
(50, 44, 17789, 1, '2018-12-25 08:18:23', '31'),
(51, 43, 6444, 1, '2018-12-25 08:18:25', '31'),
(52, 42, 3990, 1, '2018-12-25 08:18:29', '31'),
(53, 41, 7499, 1, '2018-12-25 08:18:30', '31'),
(54, 43, 6444, 1, '2019-02-07 13:11:54', '40'),
(73, 44, 17789, 3, '2019-02-22 08:51:58', '41'),
(84, 40, 5590, 1, '2019-02-26 07:00:05', '5c74e376181462.29288936'),
(90, 44, 17789, 1, '2019-02-27 14:20:15', '5c769c13336975.11119499'),
(92, 70, 15888, 1, '2019-03-11 13:36:56', '41'),
(100, 70, 15888, 1, '2019-04-08 10:23:55', '5caa447361ea18.65113281'),
(101, 70, 15888, 1, '2019-04-09 05:37:12', '47'),
(102, 70, 15888, 1, '2019-04-09 06:39:35', '45'),
(104, 70, 15888, 1, '2019-04-11 15:06:31', '48'),
(105, 70, 15888, 1, '2019-04-11 15:15:47', '49'),
(114, 69, 16990, 1, '2019-04-12 05:45:06', '51');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `brand` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `type`, `brand`) VALUES
(51, 'mobile', 'Apple'),
(52, 'mobile', 'Samsung'),
(53, 'mobile', 'Meizu'),
(55, 'mobile', 'Honor'),
(56, 'mobile', 'Sony'),
(57, 'mobile', 'Huawei'),
(58, 'mobile', 'Vertex'),
(59, 'mobile', 'Xiaomi'),
(60, 'mobile', 'ZTE'),
(61, 'mobile', 'Alcatel'),
(62, 'mobile', 'Prestigio'),
(63, 'mobile', 'HTC'),
(64, 'mobile', 'Digma'),
(65, 'mobile', 'Asus'),
(66, 'mobile', 'Nokia'),
(67, 'mobile', 'Motorola'),
(68, 'mobile', 'Fly'),
(69, 'notepad', 'Apple iPad'),
(70, 'notepad', 'Samsung Galaxy Tab'),
(71, 'notepad', 'Lenovo Tab'),
(72, 'notepad', 'Lenovo Miix'),
(73, 'notepad', 'Prestigio Grace'),
(74, 'notepad', 'Digma Optima'),
(75, 'notepad', 'Huawei MediaPad'),
(76, 'notebook', 'HP'),
(77, 'notebook', 'Lenovo'),
(78, 'notebook', 'Acer'),
(79, 'notebook', 'Prestigio'),
(80, 'notebook', 'Irbis'),
(81, 'notebook', 'Apple'),
(82, 'pc', 'HP'),
(83, 'pc', 'Acer'),
(84, 'pc', 'Lenovo'),
(85, 'pc', 'Intel');

-- --------------------------------------------------------

--
-- Структура таблицы `localization`
--

CREATE TABLE `localization` (
  `id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `ru` text COLLATE utf8_unicode_ci NOT NULL,
  `en` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `localization`
--

INSERT INTO `localization` (`id`, `ru`, `en`) VALUES
('005b091d7300c9591f7e536aa51f5907', 'Набережные Челны', 'Naberezhnye Chelny'),
('008e5e69244e4f5c82f6ae5af257ff02', '<p>Xiaomi Mi A2 4/64GB &ndash; для любых задач! Восьмиядерный процессор и операционная система Android позаботятся о моментальной загрузке игр, приложений и программ. А за счет оперативной памяти в 4 Гб вы будете с комфортом работать в режиме многозадачности. Объем встроенного накопителя составляет 64 Гб - Xiaomi Mi A2 4/64GB послужит надежным хранилищем информации. Смотреть фильмы и на ярком дисплее в 5,99 дюйма - одно наслаждение! Высокое разрешение 2160x1080 гарантирует впечатляющую четкость и детализированность.</p>\r\n', '<p> Xiaomi Mi A2 4 / 64GB; for any tasks! Eight-core processor and Android operating system will take care of instant loading of games, applications and programs. And at the expense of 4 GB of RAM, you will be comfortable working in multitasking mode. The capacity of the built-in storage device is 64 GB - Xiaomi Mi A2 4 / 64GB will serve as a reliable information storage. Watching movies on a bright display of 5.99 inches is one delight! The high resolution of 2160x1080 guarantees impressive clarity and detail. </ P>'),
('00a88c65c887564d4636f43c259010df', '<p>Диагональ 5.45 дюйма</p>\r\n\r\n<p>Количество SIM-карт 2</p>\r\n\r\n<p>Объем оперативной памяти 2 Гб</p>\r\n', '<p> Diagonal & nbsp; 5.45 inches </ p>\r\n\r\n<p> The number of SIM card\r\n 2 </ p>\r\n\r\n<p> RAM Size & nbsp; 2 GB </ p>'),
('0113fd29cc23720ea2accec023290a4c', 'Информация для доставки:', 'Shipping Information:'),
('01340e1c32e59182483cfaae52f5206f', 'на сумму', 'for the amount of'),
('016b22007dac3c34a6a07531d737f8c7', 'Простое оформление заказа', 'Easy checkout'),
('0217ffd2f6271c7a218f05ac68b88571', 'Смартфон Huawei P Smart 32GB', 'Smartphone Huawei P Smart 32GB'),
('038785a1eb47c11a20c34bb27eba2c0c', 'Смартфон Alcatel 3X 5058I', 'Alcatel 3X 5058I Smartphone'),
('038a9aae694675e143a10ff4222e8895', '<p>Смартфон Digma VOX S501 3G - современный и доступный! Игры и приложения будут загружаться быстро благодаря четырехъядерному процессору и операционной системе Android. На встроенной памяти объемом 4 Гб вы сохраните самые необходимые данные. Смотреть фильмы и видеоролики на ярком 5-дюймовом экране - настоящее наслаждение! Хорошее разрешение 1280x720 гарантирует очень четкое изображение, и вы увидите все детали происходящего. С 3G связью веб-страницы открываются очень быстро.</p>\r\n', '<p> Digma VOX S501 3G Smartphone - Modern and Affordable! Games and applications will load quickly thanks to the quad-core processor and the Android operating system. On the internal memory of 4 GB, you save the most necessary data. Watching movies and videos on a bright 5-inch screen is a real delight! A good resolution of 1280x720 guarantees a very clear image and you will see all the details of what is happening. With a 3G connection, web pages open very quickly. </ P>'),
('039c27ff4be7caad45aa9864eaf0cc83', 'Получите до 1000 бонусных рублей на счет при покупке планшета в МТС!', 'Get up to 1000 bonus rubles to your account when you buy a tablet in MTS!'),
('03cca6da4ae38125d26bef3cf51ea058', 'Шаг 1 из 3', 'Step 1 of 3'),
('047f5653b183292396e67f14c8750b73', 'Главная', 'Main'),
('07fc50e23da0a72f7043a78f9af0137c', 'Конечная информация:', 'Final Information:'),
('081ec36c242dff9228071c849a594d3f', '<p>Смартфон Apple iPhone 6S 32Gb возможности поражают! Наслаждайтесь просмотром фильмов и видеороликов на ярком 4,7-дюймовом экране! Вы по достоинству оцените четкое изображение с сочными красками. Apple iPhone 6S 32Gb снабжен мощным процессором Apple A9 с 64-битной архитектурой. Объёма встроенной памяти в 32 Гб хватит для создания собственной мультимедийной библиотеки. Сенсорный дисплей с поддержкой технологии 3D Touch распознает силу нажатия, предоставляя быстрый доступ к самым разным функциям.</p>\r\n', '<p> Apple iPhone 6S 32Gb Smartphone opportunities are amazing! Enjoy watching movies and videos on a bright 4.7-inch screen! You will appreciate the sharp image with rich colors. Apple iPhone 6S 32Gb is equipped with a powerful Apple A9 processor with 64-bit architecture. The amount of internal memory of 32 GB is enough to create your own multimedia library. The 3D Touch-enabled touchscreen display recognizes pressing force, providing quick access to a wide variety of functions. </ P>'),
('0918fbc4b36a3e8901471e02c312f667', 'ул Интузиастов д 18, кв 58', 'St. Enthusiasts d 18, ap 58'),
('0992609fcee589b17b8072ed1ff854d9', 'Смартфон Samsung Galaxy A9', 'Samsung Galaxy A9 Smartphone'),
('09bfdc2dfb6e430511ac4e99ebc40987', 'От дешевых к дорогим', 'From cheap to expensive'),
('0b93f81293f084dbfa4dbe93a8280555', 'Регистрация', 'Registration'),
('0c4314d7e97135227081282bf1df81c9', '<p>Huawei Y6 (2018) подарит большие возможности! Четырехъядерный процессор и операционная система Android 8.0 обеспечат моментальную загрузку современных игр, приложений и программ. Объем встроенного накопителя составляет 16 Гб - этого будет достаточно, чтобы сохранить всю необходимую информацию. Смотреть любимые фильмы и видеоролики на ярком 5,7-дюймовом экране - одно наслаждение! Huawei Y6 (2018) отличается прекрасными цветами и эффектным объемом. С 4G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n', '<p> Huawei Y6 (2018) will bring great opportunities! The quad-core processor and the Android 8.0 operating system will provide instant downloads of modern games, applications and programs. The amount of internal storage is 16 GB - this will be enough to save all the necessary information. Watching your favorite movies and videos on a bright 5.7-inch screen is one delight! Huawei Y6 (2018) is distinguished by beautiful colors and spectacular volume. With 4G connection, you can go online wherever you are. </ P>'),
('0e1d21452b7da806892e049e0327b496', 'нашего менеджера', 'our manager'),
('0e2e04bd2885cdc169471ea2a113a43f', 'Обратная связь', 'Feedback'),
('0e3d8666193e05039daf781439ce58f6', '<p>Диагональ&nbsp; 6.3 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 4 Гб</p>\r\n', '<p> Diagonal 6.3 inches. </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> 4 GB RAM </ p>'),
('0e898d7f456144d0171c6a38af4bd624', '<p>Диагональ&nbsp; 5.5 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 1</p>\r\n\r\n<p>Объем встроенной памяти&nbsp; 64 Гб</p>\r\n', '<p> 5.5 inches diagonal. </ p>\r\n\r\n<p> The number of SIM-cards 1 </ p>\r\n\r\n<p> 64 GB internal memory </ p>'),
('11428f436d9bd8d3048b40b11df512a5', '<p>Смартфон Alcatel 3X 5058I - большие возможности в ваших руках. С четырехъядерным процессором и операционной системой Android 7.0 вам будет доступно множество игр, приложений и программ. Объем встроенного накопителя составляет 32 Гб &ndash; вы сохраните множество файлов. Просмотр фильмов на ярком дисплее в 5,7 дюйма принесет настоящее наслаждение! Вы по достоинству оцените четкое и насыщенное изображение. С 4G связью веб-страницы открываются очень быстро.</p>\r\n', '<p> The Alcatel 3X 5058I smartphone is a great opportunity in your hands. With a quad-core processor and the Android 7.0 operating system, you will be available to many games, applications and programs. The amount of internal storage is 32 GB & ndash; you save many files. Watching movies on a bright display of 5.7 inches will bring real pleasure! You will appreciate the clear and rich image. With a 4G connection, web pages open very quickly. </ P>'),
('121e701b43f3aab3f136cb01911155da', '<p>Диагональ&nbsp; 6.3 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 6 Гб</p>\r\n', '<p> Diagonal 6.3 inches. </ p>\r\n\r\n<p> Number of SIM Cards2 </ p>\r\n\r\n<p> 6 GB RAM </ p>'),
('1289c4503a192e2bbbef5ce6bf91574e', 'Режим работы:', 'Operation mode:'),
('132cd6e278e7db5b44f8dfe9a1a3db7e', 'Смартфон Honor 7A Pro цвет золотой', 'Smartphone Honor 7A Pro color gold'),
('1406aeccd2d0440e0e2707b7a54184a7', '<p>Диагональ&nbsp; 5.7 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 3 Гб</p>\r\n', '<p> Diagonal  5.7 inches. </ P>\r\n\r\n<p> The number of SIM cards  2 </ p>\r\n\r\n<p> RAM Size 3 GB </ p>'),
('14bd376becf67a4a2fc5b058f287c97c', 'Сортировка:', 'Sorting:'),
('157298fd7045a53d1be4ea9dfe3d91dc', 'Оплата заказа', 'Payment order'),
('170f0fa4fff8632cb3f7d4cd00200dfd', 'Ноутбуки', 'Laptops'),
('187f340c61c35a3ceab405e2da96dace', 'Суббота, воскресенье - выходной', 'Saturday, Sunday - closed'),
('18b32c949a70493315f2463cfa202fd9', 'Только мы даем самые низкие цены на свою продукцию, а если вы найдете еще дешевле, то мы снизим цену еще больше.', 'Only we give the lowest prices for their products, and if you find it even cheaper, we will lower the price even more.'),
('19142156a2e4f4eb5fa9437a9e382b7e', '<p>Смартфон Xiaomi Redmi 6A 2/16GB &ndash; ваш изящный помощник! Четырехъядерный процессор с частотой 2000 МГц и операционная система Android позаботятся о моментальной загрузке игр, приложений и программ. На встроенном накопителе в 16 Гб вы сохраните все необходимые данные. Смотрите любимые фильмы и видеоролики на ярком 5,45-дюймовом дисплее! Благодаря хорошему разрешению 1440x720 изображение будет четким, и вы не пропустите ни одной детали происходящего. С 4G связью веб-страницы открываются очень быстро.</p>\r\n', '<p> Smartphone Xiaomi Redmi 6A 2 / 16GB is your elegant assistant! The quad-core processor with a frequency of 2000 MHz and the Android operating system will take care of instant loading of games, applications and programs. On the built-in storage in 16 GB you save all the necessary data. Watch your favorite movies and videos on the bright 5.45-inch display! Thanks to the good resolution of 1440x720, the image will be clear and you will not miss any details of what is happening. With a 4G connection, web pages open very quickly. </ P>'),
('19f2a095d9e2beb78b9048da0318a2f2', 'Лидеры продаж', 'Sales leaders'),
('1a0c50a16855edcaef2ad12ae1b779af', 'Бонус на счет при покупке планшета с 3G-модулем', 'Bonus to the account when buying a tablet with a 3G module'),
('1a88dfe6328d3925596812ce1b257e19', 'Адрес доставки:', 'Delivery address:'),
('1bce6acfff2e082c59900f125f9e34f2', 'руб.', 'rub.'),
('1c3fea01a64e56bd70c233491dd537aa', 'Отзывы', 'Reviews'),
('1da5534a101e3ccda263c92ae6d586d8', 'руб', 'rub'),
('1db1065a30cff216b2b3201a289096a6', 'Дальше', 'Farther'),
('1e884e3078d9978e216a027ecd57fb34', 'E-mail', 'E-mail'),
('1f6536e1363ecbbf7bac45e5685e68d9', 'В магазине на кассе', 'In the store at the checkout'),
('224b67b37576d6b38a24dc5cb854ece3', 'Банковской картой:', 'Bank card:'),
('234b89cc27235772a45e6959b0ca0e46', 'Завершение', 'Completion'),
('24a9d4950a938163e2112d671e9f1092', 'Наличными:', 'In cash:'),
('24d90c18256e9940da27aef2cf2246ce', 'ФИО:', 'SNP:'),
('25ba0afd26aba01f8f23414f5bb1d824', 'Ульяновск', 'Ulyanovsk'),
('25c3da3bfe6e7bb963dcd9f27b4fceb6', '<p>Операционная система&nbsp; Android</p>\r\n\r\n<p>Количество ядер&nbsp; 4</p>\r\n\r\n<p>Частота&nbsp; 1.45 ГГц</p>\r\n', '<p> Операционная система Android </ p>\r\n\r\n<p> Количество ядер 4 </ p>\r\n\r\n<p> Частота 1,45 ГГц </ p>'),
('282996cf3540a01856f7398679b7a2eb', '<p>Смартфон Vertex Impress Game откроет перед вами большие возможности и позволит сэкономить семейный бюджет. Благодаря четырехъядерному процессору и операционной системе Android 7.0 современные игры принесут настоящее удовольствие, а работать в программах будет комфортно. Объем встроенной памяти составляет 8 Гб - Vertex Impress Game послужит надежным хранилищем информации. Смотрите фильмы и видеоролики на ярком экране в 5 дюймов! Вы по достоинству оцените естественную цветопередачу и улучшенную глубину.</p>\r\n', '<p> Смартфон Vertex Impress Game откроет перед вами большие возможности и позволит сэкономить семейный бюджет. Благодаря четырехъядерному процессу и операционной системе Android 7.0 современные игры приносят удовольствие. Объем встроенной памяти составляет 8 Гб - Vertex Impress Game послужил надежным хранилищем информации. Смотрите фильмы на 5 дюймов! Вы по достоинству оцениваете естественную цветопередачу и улучшенную глубину. </ P>'),
('2928e19c705428df3c9f1e6d4ea8042f', 'Телефон', 'Phone'),
('2a95b6ed059d0eaefd4bfcfb05430b12', 'Правилами продажи товаров дистанционным способом', 'Rules for the sale of goods by remote method'),
('2b0b0225a86bb67048840d3da9b899bc', 'Назад', 'Back'),
('2b17c2adeaef6bbc5a13afc3f0e8bc11', 'Смартфон Meizu 15 Lite 4/32GB цвет чёрный', 'Smartphone Meizu 15 Lite 4 / 32GB color black'),
('2c476e393848dc262a971afb868c4638', 'Текст сообщения', 'Message text'),
('2d37727e46df0942521456effc18f15b', 'Текущий пароль', 'Current password'),
('2d459837f5441a6e07b2d910bd85c289', '<p>Смартфон Prestigio Muze E7 LTE &ndash; большие возможности в изящном корпусе! Четырехъядерный процессор и операционная система Android 7.0 позаботятся о мгновенной загрузке игр, приложений и программ. Объема встроенной памяти в 8 Гб будет достаточно, чтобы сохранить самые необходимые данные. Смотрите фильмы и видеоролики на ярком экране в 5,5 дюйма! Prestigio Muze E7 LTE отличается прекрасными цветами и несравненным контрастом. С 4G вы всегда будете оставаться на связи.</p>\r\n', '<p> Prestigio Muze E7 LTE Smartphone great features in an elegant case! The quad-core processor and the Android 7.0 operating system will take care of instant loading of games, applications and programs. The amount of internal memory of 8 GB will be enough to save the most necessary data. Watch movies and videos on a 5.5 inches bright screen! Prestigio Muze E7 LTE has beautiful colors and incomparable contrast. With 4G you will always stay in touch. </ P>'),
('2e2aae245958e9bb93cdb6bfb86ea225', 'Здравствуйте, Vladimir!', 'Hello Vladimir!'),
('2e940217a444152d0ca6a179b5a68734', 'Достоинства', 'Virtues'),
('302e2bd6745f94ad88c421bd2f6dc954', 'Кол-во', 'Qty'),
('3041c854d3a9647ef9c7c9e0d002a613', 'Корзина пуста', 'Cart empty'),
('30da7c7e1062a42a81ea1819119e09cc', 'Круглосуточно', 'Around the clock'),
('333b88323b9e18b100b092ab9c2ab34e', '<p>Prestigio Grace P7 7570 DUO - большие возможности! Игры принесут настоящее удовольствие, а приложения помогут справиться с повседневными задачами благодаря четырехъядерному процессору и операционной системе Android 7.0. Объем встроенной памяти составляет 16 Гб - этого хватит, чтобы сохранить всю необходимую информацию. Смотреть фильмы на ярком экране в 5,7 дюйма - одно наслаждение! Вы по достоинству оцените естественную цветопередачу и улучшенную глубину. С 4G связью веб-страницы открываются очень быстро.</p>\r\n', '<p> Prestigio Grace P7 7570 DUO - great opportunity! Games will bring real pleasure, and applications will help to cope with everyday tasks thanks to the quad-core processor and the operating system Android 7.0. The amount of internal memory is 16 GB - this is enough to save all the necessary information. Watching movies on a 5.7-inch bright screen is one delight! You will appreciate the natural color reproduction and improved depth. With a 4G connection, web pages open very quickly. </ P>'),
('33535bb2c1f4ecc6afca649df5704c3b', 'Укажите своё имя', 'Enter your name'),
('34e1413d659cf910494586bf9fbc727e', 'Готово', 'Ready'),
('34f179908c20a8be787b9a20178b513a', '<p>Диагональ&nbsp; 3.97 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 512 Мб</p>\r\n', '<p> Диагональ 3.97 дюйма </ p>\r\n\r\n<p> Количество SIM-карт 2 </ p>\r\n\r\n<p> Объем оперативной памяти 512 Мб </ p>'),
('3562e3ac5bbec9fac4096a482387b1ef', '<p>Диагональ&nbsp; 5.5 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 3 Гб</p>\r\n', '<p> 5.5 inches diagonal. </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> 3 GB RAM </ p>'),
('363183ab7dc2d503b33966ce7f54bbc9', 'Планшеты', 'Tablets'),
('3633cd3639cfdd046eba88787c8aa95c', 'Ставрополь', 'Stavropol'),
('37b095b696e0fb48f09ad18553f02ff6', 'товара', 'goods'),
('38506012e7a83f4edae598fd34484a7f', '<p>Смартфон Meizu M6 Note 16GB - невероятные возможности! Восьмиядерный процессор и операционная система Android 7.1 позаботятся о моментальной загрузке игр и приложений. Объем встроенного накопителя составляет 16 Гб - Meizu M6 Note 16GB послужит надежным хранилищем данных. Просмотр фильмов на большом 5,5-дюймовом экране принесет настоящее наслаждение! Изображение будет максимально четким и детализированным благодаря высокому разрешению 1920x1080. С 4G связью веб-страницы открываются очень быстро.</p>\r\n', '<p> Meizu M6 Note 16GB Smartphone - Incredible Features! The eight-core processor and operating system Android 7.1 will take care of instant loading of games and applications. The amount of internal storage is 16 GB - Meizu M6 Note 16GB will serve as a reliable data storage. Watching movies on a large 5.5-inch screen will bring real pleasure! The image will be as clear and detailed as possible due to the high resolution of 1920x1080. With a 4G connection, web pages open very quickly. </ P>'),
('386ba1ac3ab1bea6efd1e29adfd86ef4', 'Смартфон Samsung Galaxy A6', 'Smartphone Samsung Galaxy A6'),
('38a4c5058d5fd8e286d1b07fe11d99e6', 'Недостатки', 'Disadvantages'),
('38bb0dceaeccc88640465bf53a63481f', 'Забыли пароль?', 'Forgot your password?'),
('38d619d427ae1bbf38603924d0470f0d', 'Пример: ivanov@mail.ru', 'Example: ivanov@mail.ru'),
('390972decd79be4c411829a405f31df8', 'Смартфон Samsung Galaxy A9 (2018) цвет синий', 'Smartphone Samsung Galaxy A9 (2018) color blue'),
('3a590a009e69f0a1edc9b046584f0c4c', 'Мобильные телефоны', 'Mobile phone'),
('3adc5c7801fd63ceae9e1dd54e3ebbd2', 'Удалить все товары', 'Remove all items'),
('3bf18b050771673272461c55620f70d8', 'Введите E-mail', 'Enter E-mail'),
('3c3cee96356bd15ed1ac51e1c731cc2b', 'Интернет-магазин BrightFuture', 'Online Store BrightFuture'),
('3c56a346518173fb80822ee8b7682e5a', 'Здравствуйте, Владимир!', 'Hello Vladimir!'),
('3c5ee2492723fca409d14e6d3578e930', '<p>Диагональ&nbsp; 5 дюймов</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 1 Гб</p>\r\n', '<p> 5 inches diagonal </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> RAM size 1 GB </ p>'),
('3ccf543c3aeb1a550689d2e57ae68972', 'Знакомство с Honor 10', 'Meet Honor 10'),
('3d759234829f9bcd5d28e436a9690850', '<p>Смартфон Alcatel 1 в компактном и легком корпусе имеет богатый функционал, который оценит каждый пользователь устройства. 5-дюймовый экран FullView с соотношением сторон 18:9 дарит непревзойденное удовольствие от просмотра мультимедийного контента.&nbsp;</p>\r\n', '<p> The Alcatel 1 smartphone in a compact and lightweight case has a rich functionality that every device user will appreciate. The 5-inch FullView screen with an 18: 9 aspect ratio gives you unparalleled enjoyment of multimedia content. </ P>'),
('3d88ee6421796148bd06193f339ea86e', '<p>Диагональ&nbsp; 5.2 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 6 Гб</p>\r\n', '<p> Diagonal 5.2 inches </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> 6 GB RAM </ p>'),
('3e34aebef29ee8cb2cef07555f9ee38e', 'Регистрация.Зарегистрируйтесь</b> и упростите оформление последующих заказов — вся основная информация<br> будет сохранена в вашем «Личном кабинете».', 'Registration.Register </ b> and simplify the processing of subsequent orders - all the basic information <br> will be stored in your \"Personal Account\".'),
('3e561575fba67549d9a47c93aa05a85e', 'Пример: г. Москва,', 'Example: Moscow,'),
('3ece3b3c70d18241895c4c22f93ddec8', '<p>Диагональ&nbsp; 5.2 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 3 Гб</p>\r\n', '<p> Diagonal 5.2 inches. </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> The amount of RAM3 GB </ p>'),
('3f0cf794c9f92aca4e9dc8955e7d10ea', '<p>Xiaomi Redmi Note 6 Pro 3/32GB - мощное устройство! Современные игры принесут настоящее удовольствие, а работать в программах вы будете с комфортом благодаря восьмиядерному процессору и операционной системе Android. Объем встроенной памяти составляет 32 Гб - Xiaomi Redmi Note 6 Pro 3/32GB послужит надежным хранилищем информации. Вы в полной мере насладитесь просмотром любимых фильмов на ярком дисплее в 6,25 дюйма! Изображение будет максимально четким, и вы увидите малейшую деталь происходящего благодаря высокому разрешению 2280x1080.</p>\r\n', '<p> Xiaomi Redmi Note 6 Pro 3 / 32GB - мощное устройство! Современные игры доставлены вам в удовольствие. Объем встроенной памяти составляет 32 Гб - Xiaomi Redmi Note 6 Pro 3 / 32Гб послужил надежным хранилищем информации. Вы видите в 6,25 дюйма! Изображение будет максимально четким, и вы увидите малую деталь происходящего благодаря высокому разрешению 2280x1080. </ P>'),
('405dcd829921dd84af4c43fc58d3d19e', 'Сервис и помощь', 'Service and assistance'),
('43a5149546aa3834d45e561bbaa80fbb', '<p>Смартфон ZTE Nubia Z17 MiniS - умное устройство! Восьмиядерный процессор и операционная система Android 8.1 позаботятся о мгновенной загрузке игр и приложений. А за счет оперативной памяти в 6 Гб вы будете с комфортом работать в режиме многозадачности. На встроенной памяти в 64 Гб вы сохраните множество данных. Просмотр любимых фильмов на ярком 5,2-дюймовом дисплее принесет настоящее наслаждение! Высокое разрешение 1920x1080 гарантирует впечатляющую четкость и детализированность.</p>\r\n', '<p> ZTE Nubia Z17 MiniS Smartphone is a smart device! The eight-core processor and operating system Android 8.1 will take care of instant loading of games and applications. And at the expense of 6 GB of RAM, you will comfortably work in multitasking mode. On the internal memory in 64 GB you save a lot of data. Watching your favorite movies on a bright 5.2-inch display will bring real pleasure! 1920x1080 high resolution ensures impressive clarity and detail. </ P>'),
('44a3cb5865775393a75fb4e9f8234e96', '<p>Vertex Impress Saturn откроет перед вами большие возможности. Благодаря четырехъядерному процессору и операционной системе Android 7.0 игры принесут настоящее удовольствие, а работать в программах будет комфортно. Объема встроенной памяти в 8 Гб хватит, чтобы сохранить самые необходимые файлы. Смотреть фильмы на 5-дюймовом экране - одно наслаждение! Хорошее разрешение 1280x720 гарантирует четкое изображение, и вы не упустите ни одной детали происходящего. С 4G связью веб-страницы открываются очень быстро.</p>\r\n', '<p> Vertex Impress Saturn will open up great opportunities. Thanks to the quad-core processor and the Android 7.0 operating system, games will bring real pleasure, and work in programs will be comfortable. The amount of internal memory of 8 GB is enough to save the most necessary files. Watching movies on a 5-inch screen is one delight! A good resolution of 1280x720 guarantees a clear image, and you will not miss any details of what is happening. With a 4G connection, web pages open very quickly. </ P>'),
('459e5b8ffe6c5d5c96bc925af39e3d76', 'О компании:', 'About company:'),
('45a1548d4182d28a3cb6464688440570', 'Смартфон Sony Xperia XZ2 Compact Black', 'Смартфон Sony Xperia XZ2 Compact Черный'),
('488d37d4746eda16022d7e7934f92a77', 'Возврат', 'Return'),
('48f383808be0988fe05e3a5d3aaffa88', 'Способ доставки:', 'Delivery method:'),
('48fd279af9634642e0902f703d80140c', 'Смартфон Digma VOX S501 3G', 'Smartphone Digma VOX S501 3G'),
('491397e94e2408b85af5fbaa06a50e7e', 'Альметьевск', 'Almetevsk'),
('49e6e3cf4eff598e51d82cf669432cc3', 'Здравствуйте, Иван!', NULL),
('4b17ecbb4642426ee2753a64a4431007', 'Адрес доставки', 'Delivery address'),
('4bf854db30fd9dbbd0fedbaf4f52bce9', 'Укажите тему письма!', 'Specify the subject of the letter!'),
('4bfb6432d7bb214319efc6d48e31988d', 'и', 'and'),
('4c0516630b17602cd69d8629700814de', 'Полное оформление заказа.</b> Отправьте выбранные товары в корзину, нажав кнопку “Купить” <br> у товара. Обратите внимание, что товары, не имеющие этой кнопки, нельзя заказать в интернет-<br>магазине, они продаются только в магазинах сети. После того, как вы закончили выбор товаров,<br> перейдите в корзину для оформления заказа. Если у нас будут вопросы по заказу, то мы оперативно<br> свяжемся с вами по телефону. А если нет, то будем извещать о судьбе заказа в письмах и sms-сообщениях.', 'Complete the order. </ B> Send the selected items to the cart by clicking “Buy” <br> of the item. Please note that products that do not have this button cannot be ordered from the online store, they are sold only in the stores of the network. After you have completed your selection of products, go to cart for checkout. If we have questions about the order, we will promptly contact you by phone. And if not, then we will notify about the fate of the order in letters and sms-messages.'),
('4c3fdc5cabeed8ffb73ba8c3cdc1596f', 'Вход', 'Login'),
('4caffb2a58fc0bd6f790d3e85b054125', 'Оплатить', 'Pay'),
('4d4b965543303cec8425b75a4a839242', 'О нас', 'About Us'),
('4dbf0c67eed6243d0535352743ed3b46', 'Способ оплаты', 'Payment method'),
('4e1d1a5a931a0d9f4ab36008158fa55b', '<p>Диагональ&nbsp; 6.3 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 6 Гб</p>\r\n', '<p> Diagonal 6.3 inches </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> 6 GB RAM </ p>'),
('4f46b78db8372925aa574c07e9a782ff', 'От дорогих к дешевым', 'From expensive to cheap'),
('501b3503b7a008bd1ff1d8edf590372e', 'button-param-search', 'button-param-search en'),
('50359b05140c93396c60b3d59f5fabc5', 'Смартфон Huawei Y6', 'Smartphone Huawei Y6'),
('50e325f31b2d4a1b3aaf86d322b7dbdf', '<p>Смартфон ZTE Nubia Z17 Lite - стильное и мощное устройство! Современные игры принесут настоящее удовольствие, а приложения облегчат повседневные задачи благодаря восьмиядерному процессору и операционной системе Android 7.1. Объем встроенной памяти составляет 64 Гб - вы сохраните множество данных. Смотрите любимые фильмы и видеоролики на ярком экране в 5,5 дюйма! Благодаря высокому разрешению 1920x1080 изображение будет максимально четким, и вы не пропустите ни одной детали происходящего.</p>\r\n', '<p> The ZTE Nubia Z17 Lite smartphone is a stylish and powerful device! Modern games will bring real pleasure, and applications will facilitate everyday tasks thanks to the eight-core processor and the Android 7.1 operating system. The amount of internal memory is 64 GB - you save a lot of data. Watch your favorite movies and videos on a 5.5 inches bright screen! Thanks to the high resolution of 1920x1080, the image will be as sharp as possible, and you will not miss any details of what is happening. </ P>'),
('511ddc925824aae0789561d1483e80da', 'Защитный код', 'Security code'),
('51ebfc2ff6ad41a51b45c6d44ff65b7f', 'Ваше имя', 'Your name'),
('52bcbc5da375864e369b3b9967d4195b', '<p>Диагональ&nbsp; 5.7 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 2 Гб</p>\r\n', '<p> Diagonal 5.7 inches. </ P>\r\n\r\n<p> The number of SIM cards 2 </ p>\r\n\r\n<p> RAM Size 2 GB </ p>'),
('52efc8b4d56084f155cadffefd2eab12', 'Смартфон Sony Xperia L1 DS Black', 'Smartphone Sony Xperia L1 DS Black'),
('531889180232bbf4978d3376b0233b2f', 'Смартфон Samsung Galaxy A6 32GB цвет синий', 'Smartphone Samsung Galaxy A6 32GB color blue'),
('538dc63d3c6db1a1839cafbaf359799b', 'до', 'before'),
('54264bcf6a35390e27aae34ff19fe461', 'Смартфон Asus ZenFone 5 Lite ZC600KL 4/64GB', 'Asus ZenFone 5 Lite ZC600KL 4 / 64GB Smartphone'),
('553550cadd45454d2460b795eda44c8e', '<p>Vertex Impress Funk порадует широким функционалом. С четырехъядерным процессором и операционной системой Android 8.1 вам будет доступно множество игр, приложений и программ на любой вкус. Объем встроенной памяти составляет 8Гб - этого хватит, чтобы сохранить самые необходимые данные. Просмотр видеороликов на ярком экране в 3,97 дюйма принесет настоящее наслаждение! Vertex Impress Funk отличается сказочной цветопередачей и несравненным контрастом. С 3G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n', '<p> Vertex Impress Funk will please with wide functionality. With a quad-core processor and the Android 8.1 operating system, you will be available to many games, applications and programs for every taste. The amount of internal memory is 8GB - this is enough to save the most necessary data. Watching videos on a 3.97 inch bright screen will bring real pleasure! Vertex Impress Funk has fabulous color reproduction and incomparable contrast. With 3G connection you can go online wherever you are. </ P>'),
('563d018e8a6f4f0a2cf01f85a71461ee', '<p>Диагональ&nbsp; 5.65 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 3 Гб</p>\r\n', '<p> 5.65 inch diagonal. </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> The amount of RAM3 GB </ p>'),
('56786d1ef87790c1fc15cada02db97ae', 'Новый пароль', 'New password'),
('56b96e29acef415e8079f9f46db10c45', 'Смартфон ZTE Nubia Z17 MiniS цвет синий', 'Smartphone ZTE Nubia Z17 MiniS color blue'),
('56da0a5694d4c2cdc19e2ef85666ded7', 'Уточните информацию о заказе.', 'Specify order information.'),
('570cc16e11ae1b3cf3dd3ebc200144e3', 'Смартфон Apple iPhone 6S ', 'Apple iPhone 6S Smartphone'),
('5781a644de7a7276ce1b079f9f27fafe', 'Отзывов нет', 'No reviews'),
('58704ae3d1f0e82be019aa68612da922', 'Смартфон ZTE Nubia Z17 MiniS', 'Smartphone ZTE Nubia Z17 MiniS'),
('58a773ef6ee3d4f47b073334c6af2b6d', 'Будние дни: с 9:00 до 18:00', 'Weekdays: from 9:00 to 18:00'),
('5930f0e518a2f7683c401692018d2480', 'Смартфон Xiaomi Redmi Note 6 Pro ', 'Xiaomi Redmi Note 6 Pro smartphone'),
('5b4e09a1698a5cf13e7414df11b21e02', '<p>Смартфон&nbsp;<strong>Sony Xperia XZ2 Compact Black</strong>&nbsp;&mdash; элегантная модель в эргономично изогнутом корпусе из ударопрочного стекла Corning Gorilla Glass 5 с матовым покрытием. Ему присвоен класс защиты от воды и пыли IP65 &mdash; он пыленепроницаем и надежно защищает внутренние компоненты при контакте с водой.</p>\r\n', '<p> The smartphone <strong> Sony Xperia XZ2 Compact Black </ strong> is an elegant model in an ergonomically curved body made of shock-resistant Corning Gorilla Glass 5 glass with a matte finish. It is assigned a class of protection against water and dust IP65; it is dustproof and reliably protects internal components in contact with water. </ P>'),
('5bde931c5b4164737b2ef6ebd1aa86a4', 'По почте', 'By mail'),
('5c32491a51e8fa2f22335506084857d1', 'Смартфон Xiaomi Redmi 6A 2/16GB цвет чёрный', 'Smartphone Xiaomi Redmi 6A 2 / 16GB color black'),
('5e543256c480ac577d30f76f9120eb74', 'undefined', NULL),
('5e99fc3d4e8293c23bbe7f9b2ccb8ad4', 'Укажите корректный E-mail', 'Please enter a valid E-mail'),
('5ebe553e01799a927b1d045924bbd4fd', 'Пароль', 'Password'),
('5fe5313dd98f8f5c31ab39c22b629759', 'Логин', 'Login'),
('60d051210d5f7947715c9c581a0e7558', 'При доставки курьеру', 'Upon delivery to courier'),
('62899cefc8855544723baae88cbfce9c', 'Отчество', 'Patronymic\r\n'),
('64425f291098b47b020295a65b376177', 'Служба поддержки', 'Support'),
('651436d4395f8fee24ca2b317086f365', 'Ваш E-mail', 'Your E-mail'),
('651d35b555723c9d6ff6624b363e9b32', '<p>Vertex S107 - стильный телефон в корпусе &quot;слайдер&quot; с большим ярким дисплеем и камерой со вспышкой. Большой яркий экран обеспечивает комфортный просмотр фото- и видеофайлов, а также отправку сообщений и совершение звонков. Vertex S107 имеет камеру для простых повседневных снимков. Телефон поддерживает работу двух SIM-карт, активных в режиме ожидания. Одновременная работа двух SIM-карт позволяет просто и удобно совместить личный и рабочий номер в одном телефоне.</p>\r\n', '<p> Vertex S107 - a stylish phone in the & quot; slider With a large bright display and camera with flash. The large bright screen provides comfortable viewing of photo and video files, as well as sending messages and making calls. The Vertex S107 has a camera for simple everyday shots. The phone supports two SIM-cards active in the standby mode. The simultaneous operation of two SIM-cards makes it easy and convenient to combine personal and work number in one phone. </ P>'),
('65651c1183e5379d953864c098b5b5f0', 'Смартфон Vertex Impress Game цвет чёрный', 'Smartphone Vertex Impress Game color black'),
('659f926aef0a85f5d8f19e22a52d0575', 'Смартфон Apple iPhone 6S 32GB цвет розовое золото', 'Smartphone Apple iPhone 6S 32GB rose gold'),
('668508444c579588d349cfe750509488', '<p>Смартфон Samsung Galaxy A6 32GB подарит большие возможности! Samsung Galaxy A6 32GB оснащен большим и практически безрамочным sAMOLED экраном высокого разрешения с удивительно высокой контрастностью. Samsung Galaxy A6 32GB обладает режимом разделенного экрана, который позволяет запускать одновременно два приложения. Технология распознавания лица гарантирует доступ к телефону только его владельцу, благодаря чему ваши личные данные никогда не попадут в чужие руки.</p>\r\n', '<p> Smartphone Samsung Galaxy A6 32GB will give great opportunities! Samsung Galaxy A6 32GB is equipped with a large and almost frameless sAMOLED high-resolution screen with surprisingly high contrast. Samsung Galaxy A6 32GB has a split-screen mode that allows you to run two applications simultaneously. Face recognition technology guarantees access to the phone only to its owner, so that your personal data will never fall into the wrong hands. </ P>'),
('66cc74e0be72b6e34f7e563fda882798', 'Информация по товару', 'Product Information'),
('67a6a0695fae29bb9f484808951e6eec', 'Представленный ассортимент является самым широким и у нас есть все, что вам нужно.', 'The presented range is the widest and we have everything you need.'),
('6808999ef13e379dee5bb433fe583cb0', 'Смартфон Huawei Mate 20 Pro 6/128GB цвет черный карбон', 'Smartphone Huawei Mate 20 Pro 6 / 128GB color carbon black'),
('682fa8dbadd54fda355b27f124938c93', 'Цена', 'Price'),
('686eb72bc896f521125728b32bb38d51', 'Примечание', 'Note\r\n'),
('6a12a98075236d31198bd8f05133b7e1', 'Неверный Логин и(или) Пароль', 'Invalid login and / or password'),
('6aee3b36a1394dbdb2d294f924624416', 'Смартфон Apple iPhone 6S', 'Apple iPhone 6S Smartphone'),
('6ba26fc8472fd43f912cb5f93eb929a2', 'Смартфон Apple iPhone 6S 32GB цвет space gray', 'Smartphone Apple iPhone 6S 32GB color space gray'),
('6d52a3fdee9390bcaa974b78875fd6bb', 'Режим работы интернет-магазина', 'Mode of operation of the online store'),
('6d55de5f0d5abce4573318573b54e5db', 'Смартфон Vertex Impress Funk', 'Smartphone Vertex Impress Funk'),
('6d8eebf5547f1a187a2002c2eb5b1c0f', '<p>Стремительное развитие технологий все активнее размывает границы между мечтой и реальностью. Сила безграничного воображения послужила вдохновением при создании HUAWEI Mate 20 Pro.&nbsp;</p>\r\n', '<p> The rapid development of technology is increasingly eroding the boundaries between dream and reality. The power of unlimited imagination served as inspiration for the creation of HUAWEI Mate 20 Pro. </ P>'),
('6de5f69528fd71317a9f2ab63b8c82ef', 'Смартфон Meizu M6 Note 16GB', 'Smartphone Meizu M6 Note 16GB'),
('6df99700f6f7d5d9e0f2091067e4688f', 'Новинки', 'New'),
('6f7ffd7f2f3718ab984685b2af8da77c', 'Смартфон Asus ZenFone ', 'Asus ZenFone Smartphone'),
('71fd3ebca38c267d4d110c4bfcd45f97', '<p>Диагональ&nbsp; 6.39 дюйма</p>\r\n\r\n<p>Количество SIM-карт 2</p>\r\n\r\n<p>Объем оперативной памяти 6 Гб</p>\r\n', '<p> Diagonal 6.39 inches </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> 6 GB RAM </ p>'),
('720d388e38d07ef13c808f84fc947625', 'Возврат товара', 'Purchase returns'),
('720e01ba8323706857abb8c0927b44d1', 'товаров', 'goods'),
('72d974ded6225815533a3ccd11ce08ab', 'ФИО', 'SNP'),
('75768c49c24662cc4465237b0731e1ce', 'Контакты', 'Contacts'),
('75d83ba4e325c799fec74f494ab6828e', 'Главная страница', 'Main page'),
('76d27c94f9bac1a3496fcfd777278512', '<p>Смартфон Digma VOX S501 3G - современный и доступный!</p>\r\n\r\n<p><strong>Умное устройство</strong></p>\r\n\r\n<p>Игры и приложения будут загружаться быстро благодаря четырехъядерному процессору и операционной системе Android.</p>\r\n\r\n<p>На встроенной памяти объемом 4 Гб вы сохраните самые необходимые данные. А расширить вместимость устройства можно с легкостью при помощи карточки памяти.</p>\r\n\r\n<p><strong>Насыщенность красок</strong></p>\r\n\r\n<p>Смотреть фильмы и видеоролики на ярком 5-дюймовом экране - настоящее наслаждение!</p>\r\n\r\n<p>Хорошее разрешение 1280x720 гарантирует очень четкое изображение, и вы увидите все детали происходящего.</p>\r\n\r\n<p><strong>Доступ в Интернет</strong></p>\r\n\r\n<p>Общайтесь с друзьями в социальных сетях, следите за последними новостями, загружайте нужный контент - с 3G связью веб-страницы открываются очень быстро.</p>\r\n\r\n<p>Стандарт GPS точно определит ваши координаты, и вы не заблудитесь даже в чужом городе.</p>\r\n\r\n<p><strong>Ловите момент</strong></p>\r\n\r\n<p>С камерой на 8 мегапикселей вы создадите отличные фотографии, и ни одна важная деталь не будет упущена.</p>\r\n\r\n<p>Фронтальная камера на 2 мегапикселя даст возможность общаться с родными и близкими через Skype.</p>\r\n\r\n<p><strong>Поддержка 2 SIM-карт</strong></p>\r\n\r\n<p>С поддержкой 2 SIM-карт вы с легкостью подберете оптимальные тарифы для экономии на звонках.</p>\r\n', '<p> Digma VOX S501 3G Smartphone - Modern and Affordable! </ p>\r\n\r\n<p> <strong> Smart Device </ strong> </ p>\r\n\r\n<p> Games and applications will load quickly thanks to the quad-core processor and the Android operating system. </ p>\r\n\r\n<p> On the internal memory of 4 GB, you save the most necessary data. And you can easily expand the capacity of the device with a memory card. </ P>\r\n\r\n<p> <strong> Ink Saturation </ strong> </ p>\r\n\r\n<p> Watching movies and videos on a bright 5-inch screen is a real pleasure! </ p>\r\n\r\n<p> A good resolution of 1280x720 guarantees a very clear image and you will see all the details of what is happening. </ p>\r\n\r\n<p> <strong> Internet access </ strong> </ p>\r\n\r\n<p> Chat with friends on social networks, follow the latest news, download the necessary content - with a 3G connection, web pages open very quickly. </ p>\r\n\r\n<p> The GPS standard will accurately determine your coordinates, and you will not get lost even in a foreign city. </ p>\r\n\r\n<p> <strong> Catch the moment </ strong> </ p>\r\n\r\n<p> With an 8 megapixel camera, you’ll create great photos, and no important detail will be missed. </ p>\r\n\r\n<p> The front camera of 2 megapixels will provide an opportunity to communicate with family and friends via Skype. </ p>\r\n\r\n<p> <strong> Support for 2 SIM cards </ strong> </ p>\r\n\r\n<p> With support for 2 SIM cards, you can easily select the best rates to save on calls. </ p>'),
('772768ae00e77d928f2af7753e72bb24', 'Например, удобное время для звонка', 'For example, a convenient time to call'),
('776ff79f6e548d5c3fbde8766cf55686', 'Примечание:', 'Note:'),
('77c485551194caf15a9e41e540cfce77', '<p>Смартфон Asus ZenFone 5 Lite ZC600KL 4/64GB - мощное устройство!</p>\r\n\r\n<p><strong>Отличная производительность</strong></p>\r\n\r\n<p>Благодаря восьмиядерному процессору и операционной системе Android 7.1 вам будет доступно множество игр, приложений и программ. За счет оперативной памяти в 4 Гб вы будете с комфортом работать в режиме многозадачности.</p>\r\n\r\n<p>Объем встроенного накопителя составляет 64 Гб - вы сохраните множество файлов. Для увеличения вместимости устройства можно воспользоваться картой памяти.</p>\r\n\r\n<p><strong>Получите новые впечатления от просмотра</strong></p>\r\n\r\n<p>Просмотр любимых фильмов на большом 6-дюймовом экране принесет настоящее наслаждение!</p>\r\n\r\n<p>Высокое разрешение&nbsp;2160x1080&nbsp;гарантирует максимально четкое изображение, и вы рассмотрите каждую деталь происходящего.</p>\r\n\r\n<p><strong>Доступ в сеть</strong></p>\r\n\r\n<p>С 4G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n\r\n<p>Стандарт GPS позволит использовать смартфон в качестве навигатора.</p>\r\n\r\n<p><strong>Ловите момент</strong></p>\r\n\r\n<p>С 16-мегапиксельной камерой вы создадите качественные снимки и не упустите интересные события вашей жизни.</p>\r\n\r\n<p>Фронтальная 20-мегапиксельная камера даст возможность создавать восхитительные селфи.</p>\r\n\r\n<p><strong>Не подведет</strong></p>\r\n\r\n<p>С емким 3300 мАч аккумулятором смартфон будет работать целых 30 часов в режиме разговора без дополнительной зарядки.</p>\r\n\r\n<p><strong>Поддержка 2 SIM-карт</strong></p>\r\n\r\n<p>С поддержкой 2 SIM-карт вы сможете с легкостью разделять личные и рабочие звонки.</p>\r\n', '<p> The Asus ZenFone 5 Lite ZC600KL 4 / 64GB smartphone is a powerful device! </ p>\r\n\r\n<p> <strong> Excellent performance </ strong> </ p>\r\n\r\n<p> Thanks to the eight-core processor and the Android 7.1 operating system, you will have access to many games, applications and programs. With 4 GB of RAM, you’ll be comfortable working in multitasking mode. </ P>\r\n\r\n<p> The amount of internal storage is 64 GB - you save a lot of files. To increase the capacity of the device, you can use a memory card. </ P>\r\n\r\n<p> <strong> Get new viewing experience </ strong> </ p>\r\n\r\n<p> Watching your favorite movies on a large 6-inch screen will bring real pleasure! </ p>\r\n\r\n<p> High resolution & nbsp; 2160x1080 & nbsp; guarantees the clearest possible image and you will see every detail of what is happening. </ p>\r\n\r\n<p> <strong> Network Access </ strong> </ p>\r\n\r\n<p> With 4G connection, you can go online wherever you are. </ p>\r\n\r\n<p> The GPS standard will allow you to use your smartphone as a navigator. </ p>\r\n\r\n<p> <strong> Catch the moment </ strong> </ p>\r\n\r\n<p> With a 16-megapixel camera, you will create high-quality images and do not miss the interesting events of your life. </ p>\r\n\r\n<p> A frontal 20 megapixel camera will give you the opportunity to create amazing selfies. </ p>\r\n\r\n<p> <strong> Will not let you down </ strong> </ p>\r\n\r\n<p> With a capacious 3300 mAh battery, your smartphone will work as long as 30 hours in talk mode without additional charging. </ p>\r\n\r\n<p> <strong> Support for 2 SIM cards </ strong> </ p>\r\n\r\n<p> With 2 SIM cards, you can easily separate personal and work calls. </ p>'),
('77e2b9c068148178061b8f1829b53dd2', '<p>Диагональ&nbsp; 6.3 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 6 Гб</p>\r\n\r\n<p>Объем встроенной памяти&nbsp; 128 Гб</p>\r\n', '<p> Diagonal 6.3 inches </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> 6 GB RAM </ p>\r\n\r\n<p> Built-in Memory 128 GB </ p>'),
('7826f7d79775abbc6a4d30ba90490c56', '<p>Meizu M6T 16Gb &ndash; изящное решение сложных задач! Современные игры принесут настоящее удовольствие, а работать в программах вы будете с комфортом благодаря восьмиядерному процессору и операционной системе Android. Объема встроенной памяти в 16 Гб будет достаточно, чтобы сохранить все необходимые файлы. Просмотр любимых фильмов на дисплее в 5,7 дюйма принесет настоящее наслаждение! Вы по достоинству оцените четкое изображение с богатой палитрой цветов. С 4G связью веб-страницы открываются очень быстро.</p>\r\n', '<p> Meizu M6T 16Gb is an elegant solution to complex problems! Modern games will bring real pleasure, and you will be comfortable working in programs thanks to the eight-core processor and the Android operating system. The amount of internal memory of 16 GB will be enough to save all the necessary files. Watching your favorite movies on a 5.7-inch display will bring real pleasure! You will appreciate the clear image with a rich palette of colors. With a 4G connection, web pages open very quickly. </ P>'),
('7847fcfb8849c3e96f1d7a05297da604', '<p>смартфон с Android 7.1</p>\r\n\r\n<p>двойная камера 13/13&nbsp;МП, автофокус, F/2.2</p>\r\n', '<p> Android 7.1 Smartphone </ p>\r\n\r\n<p> Dual Camera 13/13 MP, Autofocus, F / 2.2 </ p>'),
('7968589d13b421eef184e739941a99a4', 'Онлайн оплата на сайте', 'Online payment on the site'),
('7a28c88e041304e7bb69c54e3875730d', 'Корзина заказов', 'Order basket'),
('7ab2b3c02cdb6b79f212160fb022f509', 'У Honor 10 сочетание цены и качества получилось настолько сбалансированным, что при выборе смартфона этой ценовой категории в 2018 году пройти мимо модели никак нельзя.', 'At Honor 10, the combination of price and quality turned out so balanced that when choosing a smartphone of this price category in 2018, it is impossible to pass by the model.'),
('7bdee2ac84a1e13dab116792824c2e1c', 'Пример: Иванов Иван Иванович', 'Example: Ivanov Ivan Ivanovich'),
('7bfbd201ffd55d8066ed798ffb35e8fd', '<p>Sony Xperia L1 &mdash; ваш элегантный спутник! Благодаря четырехъядерному процессору и операционной системе Android 7.0 современные игры принесут настоящее удовольствие, а работать в программах будет комфортно. Объема встроенной памяти в 16 Гб будет достаточно, чтобы сохранить все необходимые файлы. Смотреть фильмы и видеоролики на большом 5,5-дюймовом дисплее - одно наслаждение! С хорошим разрешением 1280x720 изображение будет очень четким. С 4G связью веб-страницы открываются очень быстро.</p>\r\n', '<p> Sony Xperia L1 is your elegant companion! Thanks to the quad-core processor and the Android 7.0 operating system, modern games will bring real pleasure, and work in the programs will be comfortable. The amount of internal memory of 16 GB will be enough to save all the necessary files. Watching movies and videos on a large 5.5-inch display is one delight! With a good resolution of 1280x720, the image will be very clear. With a 4G connection, web pages open very quickly. </ P>'),
('7f164d12155a14bdb34181b6f8c41f3f', 'от', 'from'),
('80148fa5ada7bcd36bf3b351ee3ca3b0', 'Адрес', 'Address'),
('802d1053655c3b1db6884b56a4c136d6', 'Бонус на счет при покупке смартфонов Nokia', 'Bonus to the account when buying Nokia smartphones'),
('844692c53331dc8036348ad625fa312a', '<p>Диагональ&nbsp; 5.46 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 4 Гб</p>\r\n', '<p> Diagonal 5.46 inches </ p>\r\n\r\n<p> Number of SIM Cards2 </ p>\r\n\r\n<p> 4 GB RAM </ p>'),
('84c03b71dbe4203ab6d6a71afd8735fb', 'Категории товаров', 'Product Categories'),
('85ce398dcfcc6c8326ba4e5ddfe76d55', 'Курьерам', 'To couriers'),
('860e22c35b64a9d464f56107af8bce4a', 'Смартфон Sony Xperia L1 DS', 'Sony Xperia L1 DS smartphone'),
('861af39a92c0fd45dcf55e50cac4f4e0', '<p>Honor 10 4/64GB поразит своими возможностями! Благодаря восьмиядерному процессору и операционной системе Android 8.1 современные игры и приложения будут загружаться мгновенно. За счет оперативной памяти в 4 Гб вы будете с комфортом работать в режиме многозадачности. На встроенной памяти в 64 Гб вы сохраните множество файлов. Смотреть фильмы на большом дисплее в 5,84 дюйма - настоящее наслаждение! Изображение будет четким с проработкой малейших деталей благодаря высокому разрешению 2280x1080.</p>\r\n', '<p> Honor 10 4 / 64GB will amaze with its capabilities! Thanks to the eight-core processor and the Android 8.1 operating system, modern games and applications will be loaded instantly. Due to the RAM in 4 GB you will comfortably work in multitasking mode. On the internal memory of 64 GB you save many files. Watching movies on a 5.84 inch large display is a real delight! The image will be clear with the study of the smallest details due to the high resolution of 2280x1080. </ P>'),
('86966382d3fb844c799fb89fa7c4646b', 'Здравствуйте, Николай!', NULL),
('8bb6088da86d1a61aae6e1444b763344', 'доставки', 'delivery'),
('8c0e0c8df40142ed056dbcb1e59f0616', 'Купите акционный смартфон Nokia и получите на свой счет до 1000 рублей!', 'Buy Nokia Promotional Smartphone and get up to 1000 rubles to your account!'),
('8d7ae9e25c2fc07856a1406d06bfd3f4', 'Комментарий', 'Comment'),
('8df354d38389300b8dda1a0ba32c41cd', 'Рассказать о сайте', 'Share Site'),
('8e1a74a1ac7fa2c25b0bfdbed2ad5d9a', 'Смартфон ZTE Nubia Z17 mini', 'Smartphone ZTE Nubia Z17 mini'),
('8ef2d61ae629c63b155ae66c3d2fc9fa', 'Выход', 'Output'),
('8f369d3dd77696a97e84c14e9f4da67f', '1. Позаботьтесь об освещении\r\n2. Зарядите селфи-палку\r\n3. Снимайте на основную камеру\r\n4. Снимайте на фронталку\r\n', '1. Take care of the lighting\r\n2. Charge the selfie stick\r\n3. Shoot the main camera\r\n4. Take off the front'),
('8f385ff54c62c38aa42e87e581af7e14', 'Выбирайте удобный для вас способ заказа!', 'Choose a convenient way to order!'),
('8f8e8016c7b1486163ffe2d360dd466c', '<p>Смартфон Honor 7A Pro &ndash; умное устройство! Игры, приложения и программы будут загружаться моментально благодаря восьмиядерному процессору и операционной системе Android 8.0. Объем встроенного накопителя составляет 16 Гб - Honor 7A Pro послужит надежным хранилищем информации. Смотрите фильмы и видеоролики на ярком экране в 5,7 дюйма! Вы по достоинству оцените богатую палитру цветов и исключительную глубину. С 4G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n', '<p> Smartphone Honor 7A Pro smart device! Games, applications and programs will be loaded instantly thanks to the eight-core processor and the Android 8.0 operating system. The amount of internal storage is 16 GB - Honor 7A Pro will serve as a reliable storage of information. Watch movies and videos on a 5.7-inch bright screen! You will appreciate the rich color palette and exceptional depth. With 4G connection, you can go online wherever you are. </ P>'),
('90e7efe268f55ab929768482c4c6bc01', 'От дорогих к дешёвым', 'From expensive to cheap'),
('92fe9635ec6c00211890ff398f67b8ff', 'Звонок бесплатный', 'The call is free'),
('946354bbbd9dbed4d256638ac5a64f22', '<p>Диагональ&nbsp; 5.84 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 4 Гб</p>\r\n', '<p> 5.84 inch diagonal. </ p>\r\n\r\n<p> Number of SIM Cards2 </ p>\r\n\r\n<p> 4 GB RAM </ p>');
INSERT INTO `localization` (`id`, `ru`, `en`) VALUES
('955f535a3e89332639e06f7b5c3e4658', '<p>Смартфон ZTE Nubia Z17 mini 4/64GB - возможности без границ! Современные игры принесут настоящее удовольствие, а приложения помогут справиться с повседневными задачами благодаря восьмиядерному процессору и операционной системе Android 6.0. Объем встроенной памяти составляет 64 Гб &ndash; вы сохраните множество данных. Смотреть фильмы и видеоролики на ярком экране в 5,2 дюйма - одно наслаждение! Благодаря высокому разрешению 1920x1080 изображение будет четким, и вы заметите малейшую деталь происходящего.</p>\r\n', '<p> ZTE Nubia Z17 mini 4 / 64GB smartphone - possibilities without limits! Modern games will bring real pleasure, and applications will help to cope with everyday tasks thanks to the eight-core processor and the Android 6.0 operating system. The amount of internal memory is 64 GB & ndash; you save a lot of data. Watching movies and videos on a 5.2-inch bright screen is one delight! Thanks to the high resolution of 1920x1080, the image will be sharp, and you will notice the smallest detail of what is happening. </ P>'),
('978b822d532112573a0c9a066ed10709', 'Смартфон Prestigio Muze E7 LTE', 'Smartphone Prestigio Muze E7 LTE'),
('978f6ae28acd9e1d2d15f598f0d3ff8c', 'Запомнить меня', 'Remember me'),
('9e16c91c8bbf0f6314b09afb77e6aef0', 'Методы доставки:', 'Shipping Methods:'),
('9e26d3c026ab4079d3967e7038b4d948', 'Тема', 'Theme'),
('9e70aad03f5fb4460f7042c9a4e97761', 'Смартфон Prestigio Grace P7 7570 DUO', 'Smartphone Prestigio Grace P7 7570 DUO'),
('9ea27f5fffd60b79263674a5f5e4e11a', '<p>Смартфон Honor 8X 4/128GB поразит своей мощью! Благодаря восьмиядерному процессору с частотой 2200 МГц и операционной системе Android современные игры и приложения будут загружаться моментально. На встроенной памяти в 128 Гб вы сохраните множество файлов. Смотреть фильмы и видеоролики на ярком 6,5-дюймовом экране - одно наслаждение! Высокое разрешение 2340x1080 гарантирует очень четкое и детализированное изображение. С двойной 20/2-мегапиксельной камерой вы сделаете превосходные фотографии.</p>\r\n', '<p> Smartphone Honor 8X 4 / 128GB will amaze with its power! Thanks to the eight-core processor with a frequency of 2200 MHz and the Android operating system, modern games and applications will be loaded instantly. On the internal memory of 128 GB you save many files. Watching movies and videos on a bright 6.5-inch screen is one delight! High resolution 2340x1080 guarantees a very clear and detailed image. With a dual 20/2 megapixel camera, you will make excellent photos. </ P>'),
('9ee2770f56339d2fdc2357f2a2abacd9', 'Контактная информация', 'Contact Information'),
('9f73d46aadb910b11fb3802c3d26116a', 'Пример: 8 950 100 12 34', 'Example: 8 950 100 12 34'),
('9fabd60c6d83d5f4eddebc569363c2ea', 'Укажите текст сообщения', 'Enter the message text'),
('9feb937fc24ee177d2fd3adbc7d8c9df', 'Здравствуйте, Яна!', NULL),
('a0d68b113a16b04c623cd3632668f653', 'Поиск по параметрам', 'Search by parameters'),
('a2a469d997ca00bb247d98fd9e07d807', '<p>Диагональ&nbsp; 6.25 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 3 Гб</p>\r\n', '<p> 6.25 inches diagonal </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> 3 GB RAM </ p>'),
('a2bc1b318e371614af059b6c4a6c36f5', 'Смартфон Honor 8X 4/128GB цвет красный', 'Smartphone Honor 8X 4 / 128GB color red'),
('a35d750dc0a7065b321072392db0c166', 'Сгенерировать', 'Generate'),
('a3fe96bb327280a7b059d9894579a7bb', 'Смартфон Meizu M8c', 'Smartphone Meizu M8c'),
('a46c372347e02010f5ef45fe441e4349', 'Профиль', 'Profile'),
('a4cb6bd21beee6076b9d8db99740e3a9', 'Вид:', 'View:'),
('a4cca523e221ede388efd8bcd3f8dcaa', 'Смартфон Huawei Y6 (2018) цвет чёрный', 'Smartphone Huawei Y6 (2018) color black'),
('a4eb7bd26e0e5a3a35431f1e890429b0', 'Екатеринбург', 'Yekaterinburg'),
('a5bfb0fd502eba0d2669c094659f946b', '<p>Диагональ&nbsp; &nbsp;4.7 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 1</p>\r\n\r\n<p>Объем встроенной памяти&nbsp; 32 Гб</p>\r\n', '<p> 4.7 inch diagonal. </ p>\r\n\r\n<p> The number of SIM-cards 1 </ p>\r\n\r\n<p> 32 GB internal memory </ p>'),
('a7b7155595aa7b561ddeca02e231ff05', 'Смартфон Alcatel 1 5033D', 'Alcatel 1 smartphone 5033D'),
('a7b7df8362d60258a7208dde0a392643', 'Фамилия', 'Surname'),
('a7ead11c595090fe472414bca327c32a', 'Телефон:', 'Phone:'),
('a804ed6861036a31f77fb33137d69f2a', 'Законом РФ «О защите прав потребителей»', 'RF Law \"On Protection of Consumer Rights\"'),
('a95ef8c4f2cb2ad7885635c5093e334f', 'Казань', 'Kazan'),
('a9c1508ed8fd87c3e9775250eaa1cc33', 'Кострома', 'Kostroma'),
('a9fd50c49d2cee27b8c478c10341e726', 'Смартфон Vertex Impress Saturn', 'Smartphone Vertex Impress Saturn'),
('aae0dea7547784fbb484173843097e39', '<p>Смартфон Meizu M8c - стильное и мощное устройство! С четырехъядерным процессором и операционной системой Android современные игры и приложения будут загружаться мгновенно. На встроенной памяти объемом 16 Гб вы сохраните все необходимые данные. Вы в полной мере насладитесь просмотром фильмов и чтением электронных книг на ярком 5,45-дюймовом экране! Вы по достоинству оцените естественную цветопередачу и улучшенную глубину. С 4G вы всегда будете оставаться на связи.</p>\r\n', '<p> The Meizu M8c smartphone is a stylish and powerful device! With the quad-core processor and the Android operating system, modern games and applications will be loaded instantly. On the internal memory of 16 GB you save all the necessary data. You will fully enjoy watching movies and reading e-books on a bright 5.45-inch screen! You will appreciate the natural color reproduction and improved depth. With 4G you will always stay in touch. </ P>'),
('aba0bd0a12574337cd85fd325167f8d8', '10 советов, как сделать крутое фото на Хеллоуин', '10 Tips to Make a Cool Halloween Photo'),
('abd6f4fdee7c404c85f22ee3f770c103', 'Смартфон Honor 10 4/64GB', 'Smartphone Honor 10 4 / 64GB'),
('abf74b2d483ee9a68a5d9e4bb15f7a16', 'Безопасные способы оплаты', 'Secure payment options'),
('abf7ee5ba9d8de0e80906fec06683548', '<p>Диагональ&nbsp; 6 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 4 Гб</p>\r\n', '<p> Diagonal 6 inch. </ P>\r\n\r\n<p> The number of SIM cards 2 </ p>\r\n\r\n<p> RAM Size 4 GB </ p>'),
('ac284d0403e58500c8b0e5ef2287ee6a', '<p>Смартфон Samsung Galaxy J5 (2017) SM-J530 &mdash; для любых задач! Восьмиядерный процессор с частотой 1600 МГц и операционная система Android обеспечат мгновенную загрузку современных игр и приложений. Объема встроенного накопителя в 16 Гб хватит, чтобы сохранить всю необходимую информацию. Наслаждайтесь просмотром фильмов и видеороликов на большом дисплее в 5,2 дюйма! Хорошее разрешение 720x1280 гарантирует четкое изображение, и вы рассмотрите каждую деталь происходящего. С 4G связью веб-страницы открываются очень быстро.</p>\r\n', '<p> Smartphone Samsung Galaxy J5 (2017) SM-J530 for any task! The eight-core processor with a frequency of 1600 MHz and the Android operating system will provide instant downloads of modern games and applications. The amount of internal storage of 16 GB is enough to save all the necessary information. Enjoy watching movies and videos on a large 5.2-inch display! A good resolution of 720x1280 guarantees a clear image, and you will see every detail of what is happening. With a 4G connection, web pages open very quickly. </ P>'),
('ac2cf67f10899950c30c6d29f82a5c43', '<p>Диагональ&nbsp; 5.5 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 2 Гб</p>\r\n', '<p> 5.5 inches diagonal. </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> 2 GB RAM </ p>'),
('afe3256be2403b6c6d02b744658a79a1', 'Все товары', 'All goods'),
('b07f06cae29e8f93d106d522b559d346', 'Смартфон Xiaomi Redmi Note 6 Pro 3/32GB цвет чёрный', 'Smartphone Xiaomi Redmi Note 6 Pro 3 / 32GB color black'),
('b0cbf581ce61479181cd836f61b604bb', 'Стоимость', 'Cost of'),
('b1834834b855c1878187b211cf6ce79d', 'Категория не доступна или не создана!', NULL),
('b211c40d9a6ddca53ea048421de12171', 'Смартфон Apple iPhone 8 Plus 64GB', 'Smartphone Apple iPhone 8 Plus 64GB'),
('b29f1bf823ace9936dad5fb5eaba61fe', 'Ваш город...', 'Your city...'),
('b36e0ab3847e00a79740d2acf69d5f84', 'Самовывоз', 'Pickup'),
('b41394ff636fc852fa9498ebe7b989fd', '<p>Смартфон Apple iPhone 8 Plus 64GB &ndash; изящное решение сложных задач! Шестиядерный процессор и операционная система iOS 11 обеспечат мгновенную загрузку современных игр и приложений. Объем встроенной памяти составляет 64 Гб &ndash; вы сохраните множество данных. Смотрите фильмы и видеоролики на большом дисплее в 5,5 дюйма! Благодаря высокому разрешению 1920x1080 изображение будет четким с проработкой малейших деталей. С 4G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n', '<p> The Apple iPhone 8 Plus 64GB Smartphone is an elegant solution to complex problems! The six-core processor and the iOS 11 operating system will provide instant downloads of modern games and applications. The amount of internal memory is 64 GB & ndash; you save a lot of data. Watch movies and videos on the 5.5 inches large display! Thanks to the high resolution of 1920x1080, the image will be clear with the elaboration of the smallest details. With 4G connection, you can go online wherever you are. </ P>'),
('b417d36df37062dc2f1f43c52f8673ef', '<p>Диагональ&nbsp; 5 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 1 Гб</p>\r\n', '<p> Diagonal 5 inch. </ P>\r\n\r\n<p> The number of SIM cards 2 </ p>\r\n\r\n<p> RAM Size 1 GB </ p>'),
('b7fa8c824d2f879623f4f75a3690e692', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>micro SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>138 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>72x147x8.2 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>пластик</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>попеременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>сенсорные кнопки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной IPS, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>5 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>1280x720</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>294</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>8 млн пикс., светодиодная вспышка (фронтальная и тыловая)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 2 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, FM-радио</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диктофон</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Игры</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11n, Bluetooth, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>Spreadtrum SC7731, 1200 МГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>4 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор</td>\r\n			<td>Mali-400 MP2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>1 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объём карты памяти</td>\r\n			<td>128 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>2000 мА&sdot;ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Время разговора</td>\r\n			<td>9 ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Время ожидания</td>\r\n			<td>360 ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Время работы в режиме прослушивания музыки</td>\r\n			<td>6 ч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>освещенности</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, сетевой адаптер питания, USB-кабель, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Гарантия</td>\r\n			<td>12 мес.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>EAN код</td>\r\n			<td>4630016805465</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p> <strong> General Features </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Type </ td>\r\n<td> smartphone </ td>\r\n</ tr>\r\n<tr>\r\n<td> Chassis Type </ td>\r\n<td> classic </ td>\r\n</ tr>\r\n<tr>\r\n<td> SIM Type </ td>\r\n<td> micro SIM </ td>\r\n</ tr>\r\n<tr>\r\n<td> Number of SIM cards </ td>\r\n<td> 2 </ td>\r\n</ tr>\r\n<tr>\r\n<td> Weight </ td>\r\n<td> 138 g </ td>\r\n</ tr>\r\n<tr>\r\n<td> Dimensions (WxHxT) </ td>\r\n<td> 72x147x8.2 mm </ td>\r\n</ tr>\r\n<tr>\r\n<td> Body Material </ td>\r\n<td> plastic </ td>\r\n</ tr>\r\n<tr>\r\n<td> Multi-SIM Mode </ td>\r\n<td> alternate </ td>\r\n</ tr>\r\n<tr>\r\n<td> Manage </ td>\r\n<td> touch buttons </ td>\r\n</ tr>\r\n<tr>\r\n<td> Platform </ td>\r\n<td> Android </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Screen </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Screen Type </ td>\r\n<td> color IPS, touch </ td>\r\n</ tr>\r\n<tr>\r\n<td> Touchscreen Type </ td>\r\n<td> multitouch, capacitive </ td>\r\n</ tr>\r\n<tr>\r\n<td> Diagonal </ td>\r\n<td> 5 inches. </ td>\r\n</ tr>\r\n<tr>\r\n<td> Image Size </ td>\r\n<td> 1280x720 </ td>\r\n</ tr>\r\n<tr>\r\n<td> Number of pixels per inch (PPI) </ td>\r\n<td> 294 </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Multimedia Features </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Camera </ td>\r\n<td> 8 million pixels., LED flash (front and rear) </ td>\r\n</ tr>\r\n<tr>\r\n<td> Video Recording </ td>\r\n<td> is </ td>\r\n</ tr>\r\n<tr>\r\n<td> Front Camera </ td>\r\n<td> is, 2 million pixels. </ td>\r\n</ tr>\r\n<tr>\r\n<td> Audio </ td>\r\n<td> MP3, FM Radio </ td>\r\n</ tr>\r\n<tr>\r\n<td> Voice Recorder </ td>\r\n<td> is </ td>\r\n</ tr>\r\n<tr>\r\n<td> Games </ td>\r\n<td> is </ td>\r\n</ tr>\r\n<tr>\r\n<td> Headphone Jack </ td>\r\n<td> 3.5 mm </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Communication </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Interfaces </ td>\r\n<td> Wi-Fi 802.11n, Bluetooth, USB </ td>\r\n</ tr>\r\n<tr>\r\n<td> Satellite Navigation </ td>\r\n<td> GPS </ td>\r\n</ tr>\r\n<tr>\r\n<td> A-GPS System </ td>\r\n<td> is </ td>\r\n</ tr>\r\n<tr>\r\n<td> Standard </ td>\r\n<td> GSM 900/1800/1900, 3G </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Memory and processor </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Processor </ td>\r\n<td> Spreadtrum SC7731, 1200 MHz </ td>\r\n</ tr>\r\n<tr>\r\n<td> Built-in Memory </ td>\r\n<td> 4 GB </ td>\r\n</ tr>\r\n<tr>\r\n<td> Memory Card Slot </ td>\r\n<td> is </ td>\r\n</ tr>\r\n<tr>\r\n<td> Number of processor cores </ td>\r\n<td> 4 </ td>\r\n</ tr>\r\n<tr>\r\n<td> Video Processor </ td>\r\n<td> Mali-400 MP2 </ td>\r\n</ tr>\r\n<tr>\r\n<td> RAM </ td>\r\n<td> 1 GB </ td>\r\n</ tr>\r\n<tr>\r\n<td> Maximum Memory Card Capacity </ td>\r\n<td> 128 GB </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Power </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Battery Capacity </ td>\r\n<td> 2000 mA & sdot; h </ td>\r\n</ tr>\r\n<tr>\r\n<td> Talk time </ td>\r\n<td> 9h </ td>\r\n</ tr>\r\n<tr>\r\n<td> Timeout </ td>\r\n<td> 360 h </ td>\r\n</ tr>\r\n<tr>\r\n<td> Music listening time </ td>\r\n<td> 6 hours </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Other Functions </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Manage </ td>\r\n<td> voice dialing, voice control </ td>\r\n</ tr>\r\n<tr>\r\n<td> Sensors </ td>\r\n<td> Illumination </ td>\r\n</ tr>\r\n<tr>\r\n<td> Flight Mode </ td>\r\n<td> is </ td>\r\n</ tr>\r\n<tr>\r\n<td> Flashlight </ td>\r\n<td> is </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Bundle </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Package </ td>\r\n<td> Smartphone, power adapter, USB cable, documentation </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Warranty and Certification </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Warranty </ td>\r\n<td> 12 months </ td>\r\n</ tr>\r\n<tr>\r\n<td> EAN code </ td>\r\n<td> 4630016805465 </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>'),
('b92ac7b2d9ef20a438293819979c21b0', 'Режим работы', 'Operation mode'),
('ba6bbb3bc966f3eac52d3d3af3a2cdd9', 'Неверный код с картинки!', 'Invalid code from the image!'),
('bb011426b108fb3c1db40f8e13fd8d40', 'Нет сортировки', 'No sorting'),
('bb421c2b5df2e3c7dff7cec7a3b3cd3f', 'Смартфон Vertex Impress Game', 'Smartphone Vertex Impress Game'),
('bced49d01eaa7cbe91c1687060358122', 'Производители', 'Manufacturers'),
('bd0f7585b07d3b9d4662ee0452f56a50', '<p>Диагональ&nbsp; 5.7 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 2 Гб</p>\r\n', '<p> Diagonal 5.7 inches </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> 2 GB RAM </ p>'),
('be25e7f800da7a9ead8ef5d6f6435454', '<p>Huawei Mate 20 lite откроет перед вами большие возможности. Четырехъядерный процессор и операционная система Android 8.1 позаботятся о моментальной загрузке игр и приложений. Объема встроенного накопителя в 4 Гб хватит, чтобы сохранить самые необходимые файлы. Вы в полной мере насладитесь просмотром любимых фильмов на ярком 4-дюймовом экране! Вы по достоинству оцените богатую палитру цветов и исключительную глубину. Пользоваться Интернетом будет удобно - с 3G связью веб-страницы открываются очень быстро.</p>\r\n', '<p> Huawei Mate 20 lite will open up great opportunities. The quad-core processor and the operating system Android 8.1 will take care of instant loading of games and applications. The amount of internal storage in 4 GB is enough to save the most necessary files. You will fully enjoy watching your favorite movies on a bright 4-inch screen! You will appreciate the rich color palette and exceptional depth. It will be convenient to use the Internet - with a 3G connection, web pages open very quickly. </ P>'),
('bebec77b6974fd0556e9c9fdd606d9b3', '<p>Диагональ&nbsp; 5.6 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 3 Гб</p>\r\n', '<p> 5.6 inch diagonal </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> 3 GB RAM </ p>'),
('bf65d9bdeb83401a58aeffb59a171727', 'Корзина пуста', 'Cart empty'),
('bf6b835a317e2b35b8b9f506a4803ad6', '<p>Смартфон Huawei P Smart 32GB &mdash; ваш незаменимый спутник! Восьмиядерный процессор и операционная система Android 8.0 обеспечат моментальную загрузку современных игр и приложений. Объем встроенного накопителя составляет 32 Гб &mdash; вы сохраните множество файлов. Смотрите любимые фильмы и видеоролики на ярком дисплее в 5,65 дюйма! Высокое разрешение 2160x1080 гарантирует четкое изображение, и вы заметите малейшую деталь происходящего. С 4G связью веб-страницы открываются очень быстро.</p>\r\n', '<p> The Huawei P Smart 32GB Smartphone is your indispensable companion! Eight-core processor and operating system Android 8.0 will provide instant downloads of modern games and applications. The amount of internal storage is 32 GB & mdash; you save many files. Watch your favorite movies and videos on a bright 5.65 inch display! The high resolution of 2160x1080 guarantees a clear image, and you will notice the smallest detail of what is happening. With a 4G connection, web pages open very quickly. </ P>'),
('bfc95980634bf529e8a406db2c842b31', 'Поиск', 'Search'),
('c0cf9e67817c5eb2af23f8ee16e25b8a', 'Распродажа', 'Sell-out'),
('c20e40f5ba3051924ad69d8a21a97836', '<p>Диагональ&nbsp; 6.5 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 4 Гб</p>\r\n', '<p> Diagonal 6.5 inches. </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> 4 GB RAM </ p>'),
('c2a5afd97c40d0ed665ed00bc6313f80', '<p>Диагональ&nbsp; 5.2 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 2 Гб</p>\r\n', '<p> Diagonal 5.2 inches. </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> 2 GB RAM </ p>'),
('c318d6aece415f27decf21b272d94fa2', 'Изображение', 'Picture'),
('c334f726d522404e3ef688117eadf6df', '<p>Диагональ&nbsp; 5.5 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 1 Гб</p>\r\n', '<p> Diagonal 5.5 inches. </ P>\r\n\r\n<p> The number of SIM cards 2 </ p>\r\n\r\n<p> RAM Size 1 GB </ p>'),
('c361691eb93abd52f91d80580e4d1ab5', 'Смартфон Vertex Impress Funk цвет чёрный', 'Smartphone Vertex Impress Funk color black'),
('c3f64903983a0485dcc5348a7d8ebc60', '<p>Asus Zenfone G552KL откроет перед вами большие возможности. Игры и приложения будут загружаться моментально благодаря четырехъядерному процессору и операционной системе Android 7.0. Объем встроенной памяти составляет 16 Гб - этого хватит, чтобы сохранить все необходимые данные. Вы в полной мере насладитесь просмотром любимых фильмов на ярком 5,5-дюймовом дисплее! Хорошее разрешение 1440x720 гарантирует четкое изображение. С 4G связью веб-страницы открываются очень быстро.</p>\r\n', '<p> Asus Zenfone G552KL will open up great opportunities. Games and applications will be loaded instantly thanks to the quad-core processor and the Android 7.0 operating system. The amount of internal memory is 16 GB - that\'s enough to save all the necessary data. You will fully enjoy watching your favorite movies on a bright 5.5-inch display! A good resolution of 1440x720 guarantees a clear image. With a 4G connection, web pages open very quickly. </ P>'),
('c480386ebdb89ed0912e896621876e46', 'Данного товара в списке нету или он не создан', 'This product is not listed or it has not been created.'),
('c623e3ea75d78a73218e614e9fdfa024', 'Смартфон Sony Xperia XZ2', 'Sony Xperia XZ2 Smartphone'),
('c68c7196abdb417dd92877d385a794f0', 'Смартфон Huawei Mate 20 Pro', 'Smartphone Huawei Mate 20 Pro'),
('c6ebf17be3ea7ecfe7b7e9201d0acc73', 'Смартфон Honor 8X ', 'Smartphone Honor 8X'),
('c7c46ce28bc4b2837e50fe6e1f6aeedf', 'Вы вправе отказаться от товара в любое время до его передачи, а после передачи товара — в течение семи дней, если сохранены его товарный вид, потребительские свойства, а также документ, подтверждающий факт и условия покупки указанного товара. В остальном, отношения между продавцом и покупателем регулируются', NULL),
('c93ed8280d12ff76d80d9441970d7fe7', '<p>Смартфон Sony Xperia XA2 Dual откроет перед вами большие возможности! 23-мегапиксельная камера поддерживает видеозапись в разрешении 4K. Это обеспечивает исключительное качество изображений даже при съемке в условиях низкой освещенности. Sony Xperia XA2 Dual имеет 5,2-дюймовый дисплей Full HD и безрамочный дизайн. Дисплей занимает всю ширину передней панели, а смартфон удобно лежит в руке. С аккумулятором емкостью 3300 мАч вы можете использовать смартфон по полной, не беспокоясь о заряде.</p>\r\n', '<p> The Sony Xperia XA2 Dual smartphone will open up great opportunities! 23 megapixel camera supports 4K video recording. This provides exceptional image quality even when shooting in low light conditions. The Sony Xperia XA2 Dual has a 5.2-inch full HD display and frameless design. The display occupies the entire width of the front panel, and the smartphone fits comfortably in your hand. With a battery capacity of 3300 mAh, you can use your smartphone to the full, without worrying about the charge. </ P>'),
('c944d745b377880c6e3a2f851bb3510a', 'товар', 'product'),
('ca76de3164a63392f2b5d17c47a1eb97', 'Навигация', 'Navigation'),
('caefb8cfaae66bee16f80c404bce5518', '<p>Количество ядер&nbsp; 8</p>\r\n\r\n<p>Частота&nbsp; 4х1.8 + 4х2.8 ГГц</p>\r\n', '<p> Number of cores8 </ p>\r\n\r\n<p> Frequency 4х1.8 + 4х2.8 GHz </ p>'),
('cbc7a78f200181c4fbcbe5785783a566', 'Смартфон Xiaomi Redmi 5 16GB', 'Xiaomi Redmi 5 16GB Smartphone'),
('cda550c8ed84fba422fd316dfd73c19f', 'Популярное', 'Popular'),
('d018b4571f106c50b68e4102be4bb84f', 'Здравствуйте, sldfls!', NULL),
('d059e23f01c605e449e9b434e0f25651', '<p>Смартфон&nbsp;<strong>Sony Xperia L1 Dual Black</strong>&nbsp;&mdash; доступный и компактный мультимедийный центр, который позволяет смотреть HD-видео, находить информацию в интернете, снимать собственный фото- и видеоматериал. Он предоставляет в распоряжение владельца множество функций, включая подсказки по повышению производительности, режим экономии заряда аккумулятора и систему быстрой очистки оперативной памяти Smart Cleaner.&nbsp;</p>\r\n', '<p> Smartphone <strong> Sony Xperia L1 Dual Black </ strong> is an affordable and compact multimedia center that allows you to watch HD-video, find information on the Internet, shoot your own photo and video. It provides the owner with many features, including tips on improving performance, battery saving mode and the Smart Cleaner fast memory system. </ P>'),
('d2fc7cb771a48b5e4eea417dbec4858c', 'Сортировка', 'Sorting'),
('d38d6d925c80a2267031f3f03d0a9070', 'Имя', 'Name'),
('d41d8cd98f00b204e9800998ecf8427e', '', NULL),
('d53bd2af98a3874f3b6eaf3fe93ee2e8', 'Компьютеры', 'Computers'),
('d591685abc969597edab7718fda763da', 'Наш интернет магазин вышел на рынок труда ещё не давно, но уже зарекомендовали себя <br> как надежного и уверенного поставщика товара.', 'Our online store has entered the labor market not long ago, but it has already established itself as a reliable and confident supplier of goods.'),
('d5e1b3b0c92206dddd90f232cb69476d', '<p>Asus ZenFone 5 Lite ZC600KL 4/64GB - мощное устройство! Благодаря восьмиядерному процессору и операционной системе Android 7.1 вам будет доступно множество игр, приложений и программ. Объем встроенного накопителя составляет 64 Гб - вы сохраните множество файлов. Просмотр любимых фильмов на большом 6-дюймовом экране принесет настоящее наслаждение! Высокое разрешение 2160x1080 гарантирует максимально четкое изображение, и вы рассмотрите каждую деталь происходящего. С 4G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n', '<p> Asus ZenFone 5 Lite ZC600KL 4 / 64GB - a powerful device! Thanks to the eight-core processor and the Android 7.1 operating system, you will be available to many games, applications and programs. The amount of internal storage is 64 GB - you save a lot of files. Watching your favorite movies on a large 6-inch screen will bring real pleasure! The high resolution of 2160x1080 guarantees the clearest image, and you will see every detail of what is happening. With 4G connection, you can go online wherever you are. </ P>'),
('d68903e36dee32ea6027e2549a7bf71a', 'На почте', 'At the post office'),
('d6f9a39be4b8938d8499ac3b525abea7', 'Характеристики', 'Specifications'),
('d7e44c513c70f15b08cfc1f87662e0ae', 'Смартфон Sony Xperia XA2 Dual', 'Sony Xperia XA2 Dual smartphone'),
('d8170286e41569425067d3fa41d5f7b6', 'Сервис “Купить в 2 клика”.</b> Нет ничего проще! Нажмите на ссылку “Купить в 2 клика” на странице товара, введите свое имя и контактный телефон. Наш оператор перезвонит вам для оформления заказа.', '“Buy in 2 clicks” service. </ B> There is nothing easier! Click on the “Buy in 2 clicks” link on the product page, enter your name and contact phone number. Our operator will call you back to place an order.'),
('da0a7375a8c3cbd8e7726cf293cebdec', '<p>Диагональ&nbsp; &nbsp;4.7 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 1</p>\r\n\r\n<p>Объем встроенной памяти&nbsp; 32 Гб</p>\r\n', '<p> Diagonal & nbsp; 4.7 inches </ p>\r\n\r\n<p> The number of SIM-cards 1 </ p>\r\n\r\n<p> 32 GB internal memory </ p>'),
('dbe34816c7eab21690cc1c4d702ea644', 'Публикация отзыва производится после предварительной модерации.', 'The publication of the review is made after pre-moderation.'),
('dbe5444a9a2c431188f3f130d668c274', 'Обновить', 'Refresh'),
('dd932437018cc48be04f6e08384c2be4', 'Как сделать заказ', 'How to make an order'),
('dfb85d7e854d4f132aa15448e0abe997', 'Смартфон Honor 7A Pro', 'Smartphone Honor 7A Pro'),
('dfde396ce626fff6c369748561c6c587', '<p>Диагональ&nbsp; 2.4 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем встроенной памяти&nbsp; 32 Мб</p>\r\n', '<p> Diagonal & nbsp; 2.4 inches. </ P>\r\n\r\n<p> The number of SIM cards & nbsp; 2 </ p>\r\n\r\n<p> Built-in Memory & nbsp; 32 MB </ p>'),
('e144ec5a79690f5ae62c3f6c47c0a3f9', 'Смартфон Huawei Mate 20 lite', 'Smartphone Huawei Mate 20 lite'),
('e32f07bd649686aa552ba31b81ab13c7', 'Смартфон Sony Xperia L1 цвет белый', 'Smartphone Sony Xperia L1 color white'),
('e3cfa957b64d32f5307252e0709ae74e', 'Смартфон Meizu M6T 16Gb', 'Smartphone Meizu M6T 16Gb'),
('e6eb3a7361bf01ed68df48c399e93e3e', 'Москва', 'Moscow'),
('e73fc0effe14b55f67b44ddcb583f95a', 'Шаг 2 из 3', 'Step 2 of 3'),
('e79a6525a56d9be4bf7fef516c1951bd', '<p>Смартфон Xiaomi Redmi 5 16GB подарит большие возможности! Восьмиядерный процессор и операционная система Android позаботятся о моментальной загрузке игр, приложений и программ. Объем встроенного накопителя составляет 16 Гб - вы сохраните всю необходимую информацию. Вы в полной мере насладитесь просмотром фильмов и чтением электронных книг на ярком 5,7-дюймовом дисплее! Xiaomi Redmi 5 16GB отличается прекрасными цветами и несравненным контрастом. С 4G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n', '<p> The smartphone Xiaomi Redmi 5 16GB will give great opportunities! Eight-core processor and Android operating system will take care of instant loading of games, applications and programs. The amount of internal storage is 16 GB - you save all the necessary information. You will fully enjoy watching movies and reading e-books on a bright 5.7-inch display! Xiaomi Redmi 5 16GB has beautiful colors and incomparable contrast. With 4G connection, you can go online wherever you are. </ P>'),
('e7fd41e257a33c2b7a32643fbd42218c', '<p>Смартфон Apple iPhone 6S 32GB &ndash; возможности поражают! Наслаждайтесь просмотром фильмов и видеороликов на ярком 4,7-дюймовом экране! Вы по достоинству оцените четкое изображение с сочными красками. Apple iPhone 6S 32GB снабжен мощным процессором Apple A9 с 64-битной архитектурой. Объёма встроенной памяти в 32 Гб хватит для создания собственной мультимедийной библиотеки. Сенсорный дисплей с поддержкой технологии 3D Touch распознает силу нажатия, предоставляя быстрый доступ к самым разным функциям.</p>\r\n', '<p> The Apple iPhone 6S 32GB smartphone is amazing! Enjoy watching movies and videos on a bright 4.7-inch screen! You will appreciate the sharp image with rich colors. Apple iPhone 6S 32GB is equipped with a powerful Apple A9 processor with 64-bit architecture. The amount of internal memory of 32 GB is enough to create your own multimedia library. The 3D Touch-enabled touchscreen display recognizes pressing force, providing quick access to a wide variety of functions. </ P>'),
('e973cf1629f2c446657e8a7931a246ac', 'Договор', 'Contract'),
('e9898bcb326b1441868a0ffa3111a496', 'Смартфон ZTE Nubia Z17 Lite', 'Smartphone ZTE Nubia Z17 Lite'),
('eab79dbd1f2eae4dc7d4cc425358de84', 'Итого:', 'Total:'),
('ec3c8caf8baf5e1cd4ce7f840978cff6', 'Смартфон Samsung Galaxy J5 (2017) SM-J530', 'Smartphone Samsung Galaxy J5 (2017) SM-J530'),
('ed73f1c6b114031f43b6e81c7fa8c5ad', '<p>Samsung Galaxy A9 (2018) - возможности поражают! 4 камеры - широкоформатная, телефотографическая, основная камера 24 Мп и портретная камера - позволяют делать максимально реалистичные фотографии. Samsung Galaxy A9 (2018) оснащен 6,3-дюймовым безграничным FHD+ экраном с более четким контрастом и насыщенными цветами, чтобы вы смогли максимально погрузиться в происходящее. С восьмиядерным процессором и операционной системой Android современные игры принесут настоящее удовольствие, а работать в программах будет комфортно.</p>\r\n', '<p> Samsung Galaxy A9 (2018) - the possibilities are amazing! 4 cameras - a widescreen, telephoto, 24 MP main camera and a portrait camera - allow you to take the most realistic photos. Samsung Galaxy A9 (2018) is equipped with a 6.3-inch unlimited FHD + screen with a clearer contrast and rich colors, so that you can immerse yourself in what is happening. With the eight-core processor and the Android operating system, modern games will bring real pleasure, and work in programs will be comfortable. </ P>'),
('edcf39209f3f2bb6da1efd8258c12639', 'Итого', 'Total'),
('ee62dce88e74674bdfe94719fec34011', '<p>Диагональ&nbsp; &nbsp;4.7 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; &nbsp;1</p>\r\n\r\n<p>Объем встроенной памяти&nbsp; &nbsp;32 Гб</p>\r\n', '<p> 4.7 inch diagonal </ p>\r\n\r\n<p> The number of SIM-cards 1 </ p>\r\n\r\n<p> 32 GB internal memory </ p>'),
('eee16ae285dca002c1b0914b122aeaf7', 'От дешёвых к дорогим', 'From cheap to expensive'),
('eefd38f4a3956c69cbf039dee2e818b4', 'Смартфон ZTE Nubia Z17 mini 4/64GB цвет золотистый', 'Smartphone ZTE Nubia Z17 mini 4 / 64GB color golden'),
('f0897f9968ef71e54c3084c7ea8f0669', 'Вы вправе отказаться от товара в любое время до его передачи, а после передачи товара — в течение семи дней, если сохранены его товарный вид, потребительские свойства, а также документ, подтверждающий факт и условия покупки указанного товара. В остальном, отношения между продавцом и покупателем<br> регулируются', 'You have the right to refuse the goods at any time prior to its transfer, and after the transfer of the goods - within seven days if its presentation, consumer properties, as well as a document confirming the fact and conditions of purchase of the specified goods are preserved. Otherwise, the relationship between seller and buyer is regulated.'),
('f090145e653626d24d3958040bd3ab88', 'Поиск более 100 000 товаров', 'Search over 100,000 products'),
('f0be1ecc916d154a274e11f289ce3fa5', 'Мобильный телефон Vertex S107', 'Vertex S107 mobile phone'),
('f1e0209e4825d9afe3d9c2c25659f12c', 'Шаг 3 из 3', 'Step 3 of 3'),
('f240da6fd490733d835c80e0ebbc5978', 'Смартфон Xiaomi Redmi 6A 2/16GB', 'Xiaomi Redmi 6A 2 / 16GB Smartphone'),
('f3f3eb7e89a7833e6530fde9fe3df39c', 'Наш интернет магазин приветствует вас! Добро пожаловать!', 'Our online store welcomes you! Welcome!'),
('f490b86156968b0c43cbf28feefacd33', 'Восстановление пароля', 'Password recovery'),
('f5a89eaaf4dab1b6ef559b26aadd7d34', 'Смартфон Xiaomi Mi A2 4/64GB', 'Xiaomi Mi A2 4 / 64GB Smartphone'),
('f5bed5e875f6d1d80220bca634f989af', 'Покупая в нашем магазине, вы будете всегда счастливы и рады вернуться к нам снова.', 'Buying in our store, you will always be happy and happy to come back to us again.'),
('f61dc030389ca1110e1b22325c73f72f', 'Корзина товаров', 'Shopping basket'),
('f67c701b34022c89172090c6dfdc7d19', 'Для оплаты товара необходимо:', 'To pay for the goods you need:'),
('f6bc1d045790a1ca67ad8400474ce065', '<p>Диагональ&nbsp; 5.99 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 4 Гб</p>\r\n', '<p> 5.99 inch diagonal. </ p>\r\n\r\n<p> Number of SIM cards 2 </ p>\r\n\r\n<p> 4 GB RAM </ p>'),
('f7cbdf6b05affb7097538ac0b07ed390', 'Оформление заказа по телефону.</b> Хотите получить консультацию по телефону? Позвоните по<br> бесплатному телефону 8 (800) 333-12-43, и оператор интернет-магазина поможет сделать выбор и оформить заказ.', 'Ordering by phone. </ B> Want to get advice by phone? Call us at the toll-free number 8 (800) 333-12-43, and the operator of the online store will help you make a choice and place your order.'),
('f927be40e241860b19fd7c9dbb99b0b6', 'Смартфон Apple iPhone 6S 32Gb', 'Smartphone Apple iPhone 6S 32Gb'),
('f9c9fc9da0e0f5448a620c6de8b92752', 'Нравится', 'Like'),
('f9d83c77fd9977d7865b35057ba618f3', 'Смартфон Samsung Galaxy A9 (2018) ', 'Smartphone Samsung Galaxy A9 (2018)'),
('fae41453a4c054bf77f921b771a27e2a', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android 7.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>168 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>76.16x160.62x7.8 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>попеременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной IPS, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>6 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>2160x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>402</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>16 млн пикс., светодиодная вспышка (фронтальная и тыльная)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры</td>\r\n			<td>автофокус, режим макросъемки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Макс. разрешение видео</td>\r\n			<td>3840x2160</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 20 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV, WMA, FM-радио</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11ac, Wi-Fi Direct, Bluetooth 4.1, USB, NFC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS/ГЛОНАСС/BeiDou</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A Cat. 4</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>Qualcomm Snapdragon 630</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>64 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор</td>\r\n			<td>Adreno 508</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>4 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>3300 мА&sdot;ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Время работы в режиме прослушивания музыки</td>\r\n			<td>96 ч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Громкая связь (встроенный динамик)</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>освещенности, приближения, гироскоп, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Дополнительная информация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Особенности</td>\r\n			<td>двойная фронтальная + двойная тыльная камера</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Дата анонсирования</td>\r\n			<td>2018-02-28</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Комплектация</td>\r\n			<td>смартфон, кабель Micro USB, скрепка для извлечения Sim, блок питания USB</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, кабель Micro USB, скрепка для извлечения Sim, блок питания USB, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна производства</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия</td>\r\n			<td>12 мес.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>EAN код</td>\r\n			<td>4712900925494</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p> <strong> General Features </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Type </ td>\r\n<td> smartphone </ td>\r\n</ tr>\r\n<tr>\r\n<td> Operating System </ td>\r\n<td> Android 7.1 </ td>\r\n</ tr>\r\n<tr>\r\n<td> Chassis Type </ td>\r\n<td> classic </ td>\r\n</ tr>\r\n<tr>\r\n<td> SIM Type </ td>\r\n<td> nano SIM </ td>\r\n</ tr>\r\n<tr>\r\n<td> Number of SIM cards </ td>\r\n<td> 2 </ td>\r\n</ tr>\r\n<tr>\r\n<td> Weight </ td>\r\n<td> 168 g </ td>\r\n</ tr>\r\n<tr>\r\n<td> Dimensions (WxHxT) </ td>\r\n<td> 76.16x160.62x7.8 mm </ td>\r\n</ tr>\r\n<tr>\r\n<td> Multi-SIM Mode </ td>\r\n<td> alternate </ td>\r\n</ tr>\r\n<tr>\r\n<td> Platform </ td>\r\n<td> Android </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Screen </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Screen Type </ td>\r\n<td> color IPS, touch </ td>\r\n</ tr>\r\n<tr>\r\n<td> Touchscreen Type </ td>\r\n<td> multitouch, capacitive </ td>\r\n</ tr>\r\n<tr>\r\n<td> Diagonal </ td>\r\n<td> 6 in. </ td>\r\n</ tr>\r\n<tr>\r\n<td> Image Size </ td>\r\n<td> 2160x1080 </ td>\r\n</ tr>\r\n<tr>\r\n<td> Auto Rotate </ td>\r\n<td> is </ td>\r\n</ tr>\r\n<tr>\r\n<td> Number of pixels per inch (PPI) </ td>\r\n<td> 402 </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Multimedia Features </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Camera </ td>\r\n<td> 16 million pixels., LED flash (front and rear) </ td>\r\n</ tr>\r\n<tr>\r\n<td> Camera Features </ td>\r\n<td> autofocus, macro mode </ td>\r\n</ tr>\r\n<tr>\r\n<td> Video Recording </ td>\r\n<td> is </ td>\r\n</ tr>\r\n<tr>\r\n<td> max. video resolution </ td>\r\n<td> 3840x2160 </ td>\r\n</ tr>\r\n<tr>\r\n<td> Front Camera </ td>\r\n<td> is, 20 million pixels. </ td>\r\n</ tr>\r\n<tr>\r\n<td> Audio </ td>\r\n<td> MP3, AAC, WAV, WMA, FM Radio </ td>\r\n</ tr>\r\n<tr>\r\n<td> Headphone Jack </ td>\r\n<td> 3.5 mm </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Communication </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Interfaces </ td>\r\n<td> Wi-Fi 802.11ac, Wi-Fi Direct, Bluetooth 4.1, USB, NFC </ td>\r\n</ tr>\r\n<tr>\r\n<td> Satellite Navigation </ td>\r\n<td> GPS / GLONASS / BeiDou </ td>\r\n</ tr>\r\n<tr>\r\n<td> A-GPS System </ td>\r\n<td> is </ td>\r\n</ tr>\r\n<tr>\r\n<td> Standard </ td>\r\n<td> GSM 900/1800/1900, 3G, 4G LTE, LTE-A Cat. 4 </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Memory and processor </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Processor </ td>\r\n<td> Qualcomm Snapdragon 630 </ td>\r\n</ tr>\r\n<tr>\r\n<td> Built-in Memory </ td>\r\n<td> 64 GB </ td>\r\n</ tr>\r\n<tr>\r\n<td> Memory Card Slot </ td>\r\n<td> is </ td>\r\n</ tr>\r\n<tr>\r\n<td> Number of processor cores </ td>\r\n<td> 8 </ td>\r\n</ tr>\r\n<tr>\r\n<td> Video Processor </ td>\r\n<td> Adreno 508 </ td>\r\n</ tr>\r\n<tr>\r\n<td> RAM </ td>\r\n<td> 4 GB </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Power </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Battery Capacity </ td>\r\n<td> 3300 mA & sdot; h </ td>\r\n</ tr>\r\n<tr>\r\n<td> Music listening time </ td>\r\n<td> 96 h </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Other Functions </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Speakerphone (built-in speaker) </ td>\r\n<td> is </ td>\r\n</ tr>\r\n<tr>\r\n<td> Manage </ td>\r\n<td> voice dialing, voice control </ td>\r\n</ tr>\r\n<tr>\r\n<td> Sensors </ td>\r\n<td> light, approximation, gyroscope, compass, fingerprint reading </ td>\r\n</ tr>\r\n<tr>\r\n<td> Flight Mode </ td>\r\n<td> is </ td>\r\n</ tr>\r\n<tr>\r\n<td> Flashlight </ td>\r\n<td> is </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Additional Information </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Features </ td>\r\n<td> dual front + dual rear camera </ td>\r\n</ tr>\r\n<tr>\r\n<td> Announcement Date </ td>\r\n<td> 2018-02-28 </ td>\r\n</ tr>\r\n<tr>\r\n<td> Package </ td>\r\n<td> smartphone, Micro USB cable, Sim eject clip, USB power adapter </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Bundle </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Package </ td>\r\n<td> Smartphone, Micro USB cable, Sim extraction clip, USB power adapter, documentation </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>\r\n\r\n<p> <strong> Warranty and Certification </ strong> </ p>\r\n\r\n<hr />\r\n<table style = \"width: 645.6px\">\r\n<tbody>\r\n<tr>\r\n<td> Country of Production </ td>\r\n<td> China </ td>\r\n</ tr>\r\n<tr>\r\n<td> Warranty </ td>\r\n<td> 12 months </ td>\r\n</ tr>\r\n<tr>\r\n<td> EAN code </ td>\r\n<td> 4712900925494 </ td>\r\n</ tr>\r\n</ tbody>\r\n</ table>'),
('fc44c403ff0b52c5ac5467d34fa927af', 'После оформления заказа нажать на кнопку «Оплатить».', 'After placing the order, click on the \"Pay\" button.'),
('fc46d8f6225838582272dd337cb5d393', 'Смартфон Meizu 15 Lite', 'Smartphone Meizu 15 Lite'),
('fd80b40109c0191aa8a88f0dd64df147', 'Изменение профиля', 'Profile change'),
('fde185532e4be98fb9ee4436d314cb13', 'Написать отзыв о товаре', 'Write a product review'),
('fe6728430c1e8cbed6984ee70a103351', 'АИС \"Всегда на связи\"', 'AIS \"Always online\"'),
('fe6f2cc5013c66a221d2e87d33b8b8fd', 'Смартфон Meizu M8c цвет чёрный', 'Smartphone Meizu M8c color black'),
('fec7a83915c957420aff1238cbe3fda3', 'Все модели', 'All models'),
('fed4ee89d09b7d542e84f75bf06977b9', 'От А до Я', 'From A to Z'),
('ff17dd95c435ad65ce808c49cf26ed52', 'Смартфон Asus Zenfone G552KL', 'Smartphone Asus Zenfone G552KL'),
('ff525040b2a300378596affbfd06bb9b', 'Мобильный телефон', 'Mobile phone'),
('ff9a5f7623601726ca68b193191675f5', 'В корзине товаров нет! Заполните пожалуйста корзину', 'No items in the shopping cart! Please fill the cart');
INSERT INTO `localization` (`id`, `ru`, `en`) VALUES
('ffa54a5b14c7cbf26fc08bc22eeb9e27', '<p>Смартфон Meizu 15 Lite 4/32GB - умное устройство! Благодаря восьмиядерному процессору и операционной системе Android вам будет доступно множество игр, приложений и программ на любой вкус. Объема встроенной памяти в 32 Гб будет достаточно, чтобы сохранить всю необходимую информацию. Смотрите любимые фильмы и видеоролики на ярком 5,46-дюймовом дисплее! Благодаря высокому разрешению 1920x1080 изображение будет четким. С 4G связью веб-страницы открываются очень быстро.</p>\r\n', '<p> The Meizu 15 Lite 4 / 32GB smartphone is a smart device! Thanks to the eight-core processor and the Android operating system, you will be available to many games, applications and programs for every taste. The amount of internal memory of 32 GB will be enough to save all the necessary information. Watch your favorite movies and videos on the bright 5.46-inch display! Due to the high resolution of 1920x1080, the image will be clear. With a 4G connection, web pages open very quickly. </ P>');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `date`) VALUES
(1, 'Бонус на счет при покупке смартфонов Nokia', 'Купите акционный смартфон Nokia и получите на свой счет до 1000 рублей!', '2013-08-23'),
(2, 'Бонус на счет при покупке планшета с 3G-модулем', 'Получите до 1000 бонусных рублей на счет при покупке планшета в МТС!', '2013-08-23'),
(6, '10 советов, как сделать крутое фото на Хеллоуин', '1. Позаботьтесь об освещении\r\n2. Зарядите селфи-палку\r\n3. Снимайте на основную камеру\r\n4. Снимайте на фронталку\r\n', '2018-10-11'),
(8, 'Знакомство с Honor 10', 'У Honor 10 сочетание цены и качества получилось настолько сбалансированным, что при выборе смартфона этой ценовой категории в 2018 году пройти мимо модели никак нельзя.', '2018-10-21');

-- --------------------------------------------------------

--
-- Структура таблицы `ok_autodialog`
--

CREATE TABLE `ok_autodialog` (
  `ip_user` bigint(12) NOT NULL,
  `id_operator` smallint(6) NOT NULL,
  `message` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ok_blacklist`
--

CREATE TABLE `ok_blacklist` (
  `ip_user` bigint(12) NOT NULL,
  `id_operator` smallint(6) NOT NULL,
  `add_date` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ok_files`
--

CREATE TABLE `ok_files` (
  `file_id` int(12) NOT NULL,
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(12) NOT NULL,
  `file_date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ok_group`
--

CREATE TABLE `ok_group` (
  `group_id` smallint(6) NOT NULL,
  `group_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ok_group`
--

INSERT INTO `ok_group` (`group_id`, `group_name`) VALUES
(1, 'ÐžÑ‚Ð´ÐµÐ» Ð¿Ñ€Ð¾Ð´Ð°Ð¶'),
(2, 'ÐžÑ‚Ð´ÐµÐ» Ð¿Ð¾ Ð²Ñ‹Ð±Ð¾Ñ€Ñƒ Ñ‚Ð¾Ð²Ð°Ñ€Ð° Ð¿Ð¾ ÐºÐ°Ñ‡ÐµÑÑ‚Ð²Ñƒ');

-- --------------------------------------------------------

--
-- Структура таблицы `ok_messages`
--

CREATE TABLE `ok_messages` (
  `id_mess` int(20) NOT NULL,
  `id_user` int(10) NOT NULL,
  `is_for` int(10) NOT NULL,
  `wr_date` int(10) NOT NULL,
  `messages` text COLLATE utf8_unicode_ci NOT NULL,
  `is_from` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ok_messages`
--

INSERT INTO `ok_messages` (`id_mess`, `id_user`, `is_for`, `wr_date`, `messages`, `is_from`) VALUES
(3, 2, 1, 1554720522, 'askfgsdigzuihilhzsuihizdsughklshgkzshvlzhlzkhilhildhvlhzdulgholhohg', '1'),
(4, 2, 1, 1554720572, 'xcbdfbdfhdfbdf', '2'),
(5, 2, 1, 1554998281, 'Ð¿Ñ€Ð¸Ð²ÐµÑ‚', '1'),
(6, 2, 1, 1554998465, 'Ð¿Ñ€Ð¸Ð²ÐµÑ‚', '1'),
(7, 2, 1, 1554998508, 'ÐµÑÑ‚ÑŒ Ð²Ð¾Ð¿Ñ€Ð¾Ñ Ð½Ð° ÑÑ‡Ñ‘Ñ‚ Ñ‚Ð¾Ð²Ð°Ñ€Ð°. ÐœÐ¾Ð¶ÐµÑ‚Ðµ Ð¿Ð¾Ð¼Ð¾Ñ‡ÑŒ?', '1'),
(8, 2, 1, 1554998645, 'Ð·Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ!', '1'),
(9, 2, 1, 1554998926, 'Ð’Ñ‹ Ñ‚ÑƒÑ‚?', '1'),
(10, 2, 1, 1554999630, 'Ð”Ð°, ÐºÐ¾Ð½ÐµÑ‡Ð½Ð¾', '2'),
(11, 2, 1, 1554999713, 'Ð¾Ñ‚Ð»Ð¸Ñ‡Ð½Ð¾', '1'),
(12, 2, 2, 1555002396, 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ! ÐœÐ¾Ð¶Ð½Ð¾ Ñƒ Ð²Ð°Ñ ÑÐ¿Ñ€Ð¾ÑÐ¸Ñ‚ÑŒ?', '1'),
(13, 2, 2, 1555002519, 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ! Ð”Ð°, Ñ‡Ñ‚Ð¾ Ð’Ð°Ñ Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÑƒÐµÑ‚?', '2'),
(14, 2, 2, 1555002611, 'Ð¡Ð¼Ð°Ñ€Ñ‚Ñ„Ð¾Ð½ ZTE Nubia Z 17 MiniS\'', '1'),
(15, 2, 2, 1555002955, 'Ð¾Ð½ Ð¸Ð¼ÐµÐµÑ‚ÑÑ Ñƒ Ð½Ð°Ñ. ÐŸÑ€Ð¾Ñ…Ð¾Ð´Ð¸Ñ‚Ðµ, Ð¿Ð¾ÑÐ¼Ð¾Ñ‚Ñ€Ð¸Ñ‚Ðµ', '2'),
(16, 3, 1, 1555003202, 'ÐŸÐ¾Ð»', '1'),
(17, 3, 1, 1555003230, 'ÐµÑ€Ð°Ñ€Ð¿Ð°', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `ok_moving`
--

CREATE TABLE `ok_moving` (
  `user_ip` bigint(12) NOT NULL,
  `page` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `page_title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `at_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ok_moving`
--

INSERT INTO `ok_moving` (`user_ip`, `page`, `page_title`, `at_time`) VALUES
(2999921101, 'https://spravka.000webhostapp.com/index.php', 'ÐÐ˜Ð¡ \"Ð’ÑÐµÐ³Ð´Ð° Ð½Ð° ÑÐ²ÑÐ·Ð¸\" ', '1555239937'),
(2999921101, 'https://spravka.000webhostapp.com/index.php', 'ÐÐ˜Ð¡ \"Ð’ÑÐµÐ³Ð´Ð° Ð½Ð° ÑÐ²ÑÐ·Ð¸\" ', '1555240007');

-- --------------------------------------------------------

--
-- Структура таблицы `ok_online`
--

CREATE TABLE `ok_online` (
  `user_ip` bigint(12) NOT NULL,
  `ctime` int(10) NOT NULL,
  `ltime` int(10) NOT NULL,
  `user_info` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `country` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ok_online`
--

INSERT INTO `ok_online` (`user_ip`, `ctime`, `ltime`, `user_info`, `country`) VALUES
(2999921101, 1555239937, 1555240007, 'a:13:{s:2:\"ip\";s:14:\"178.207.41.205\";s:7:\"country\";s:12:\"Ð Ð¾ÑÑÐ¸Ñ\";s:4:\"code\";s:2:\"RU\";s:4:\"city\";s:12:\"ÐšÐ°Ð·Ð°Ð½ÑŒ\";s:11:\"region_name\";s:39:\"Ð ÐµÑÐ¿ÑƒÐ±Ð»Ð¸ÐºÐ° Ð¢Ð°Ñ‚Ð°Ñ€ÑÑ‚Ð°Ð½\";s:8:\"timezone\";s:13:\"Europe/Samara\";s:7:\"browser\";s:6:\"Chrome\";s:7:\"version\";s:13:\"72.0.3626.121\";s:2:\"os\";N;s:9:\"is_finder\";b:0;s:7:\"referer\";s:1:\"/\";s:6:\"visits\";i:28;s:10:\"last_visit\";s:19:\"2019-04-12 08-32-26\";}', 'RU');

-- --------------------------------------------------------

--
-- Структура таблицы `ok_operators`
--

CREATE TABLE `ok_operators` (
  `operator_id` smallint(6) NOT NULL,
  `operator_login` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `operator_password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `operator_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `operator_surname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `operator_limit` tinyint(100) NOT NULL DEFAULT 99,
  `operator_rating` decimal(10,0) DEFAULT 0,
  `operator_photo` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `operator_otdel` smallint(6) NOT NULL,
  `operator_online` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '0',
  `operator_connected` tinyint(100) NOT NULL DEFAULT 0,
  `operator_messages` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ, Ð¼Ð¾Ð³Ñƒ Ñ Ð’Ð°Ð¼ Ñ‡ÐµÐ¼ Ñ‚Ð¾ Ð¿Ð¾Ð¼Ð¾Ñ‡ÑŒ?',
  `operator_ltime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ok_operators`
--

INSERT INTO `ok_operators` (`operator_id`, `operator_login`, `operator_password`, `operator_name`, `operator_surname`, `operator_limit`, `operator_rating`, `operator_photo`, `operator_otdel`, `operator_online`, `operator_connected`, `operator_messages`, `operator_ltime`) VALUES
(1, 'ÐÐ³ÐµÐ½Ñ‚_007', 'b57cb0b0bfdc13e892f2db13409b19c2', 'ÐœÐ°Ñ€Ð¸Ñ', 'ÐšÐ¸Ñ€ÐµÐµÐ²Ð°', 99, NULL, '1540239476.jpg', 1, '0', 0, 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ! Ð§ÐµÐ¼ Ð¼Ð¾Ð³Ñƒ Ð²Ð°Ð¼ Ð¿Ð¾Ð¼Ð¾Ñ‡ÑŒ?', 1555239971),
(2, 'yana_burmak_my_sun', '8354985c9b5fa36cee26e6f731ff18ab', 'Ð¯Ð½Ð°', 'Ð‘ÑƒÑ€Ð¼Ð°Ðº', 99, NULL, '1540271362.jpg', 2, '0', 0, 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ! Ð§ÐµÐ¼ Ð¼Ð¾Ð³Ñƒ Ð²Ð°Ð¼ Ð¿Ð¾Ð¼Ð¾Ñ‡ÑŒ?', 1555239994);

-- --------------------------------------------------------

--
-- Структура таблицы `ok_operators_chat`
--

CREATE TABLE `ok_operators_chat` (
  `id_mess` int(9) NOT NULL,
  `id_operator` smallint(6) NOT NULL,
  `wr_date` int(10) NOT NULL,
  `messages` varchar(4000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ok_phrases`
--

CREATE TABLE `ok_phrases` (
  `id_phrases` int(10) NOT NULL,
  `id_operator` smallint(6) NOT NULL,
  `phrases` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ok_typing`
--

CREATE TABLE `ok_typing` (
  `id_user` int(10) NOT NULL,
  `t_mess` varchar(1500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ok_url`
--

CREATE TABLE `ok_url` (
  `id_user` int(10) NOT NULL,
  `url` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ok_users`
--

CREATE TABLE `ok_users` (
  `user_id` int(10) NOT NULL,
  `user_ip` bigint(12) NOT NULL,
  `user_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ÐšÐ»Ð¸ÐµÐ½Ñ‚',
  `user_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_online` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ok_users`
--

INSERT INTO `ok_users` (`user_id`, `user_ip`, `user_name`, `user_date`, `user_online`) VALUES
(2, 2999898205, 'Dkflbvbh', '1554998280', '0'),
(3, 2999898205, 'Ð’Ð»Ð°Ð´Ð¸Ð¼Ð¸Ñ€', '1555003202', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `ok_users_chat`
--

CREATE TABLE `ok_users_chat` (
  `id_user` int(10) NOT NULL,
  `id_operator` smallint(6) NOT NULL,
  `new_message_user` tinyint(10) NOT NULL DEFAULT 0,
  `new_message_operator` tinyint(10) NOT NULL DEFAULT 0,
  `write_user` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `write_operator` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ok_voting`
--

CREATE TABLE `ok_voting` (
  `id_operator` smallint(6) NOT NULL,
  `id_user` int(10) NOT NULL,
  `voting` enum('0','1') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ok_voting`
--

INSERT INTO `ok_voting` (`id_operator`, `id_user`, `voting`) VALUES
(1, 2, '1'),
(1, 3, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_datetime` datetime NOT NULL,
  `order_confirmed` varchar(10) NOT NULL,
  `order_dostavka` varchar(255) NOT NULL,
  `order_pay` varchar(50) DEFAULT NULL,
  `order_type_pay` varchar(100) DEFAULT NULL,
  `order_fio` text NOT NULL,
  `order_address` text NOT NULL,
  `order_phone` varchar(50) NOT NULL,
  `order_note` text NOT NULL,
  `order_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `order_datetime`, `order_confirmed`, `order_dostavka`, `order_pay`, `order_type_pay`, `order_fio`, `order_address`, `order_phone`, `order_note`, `order_email`) VALUES
(4, '2019-03-04 15:16:19', 'yes', 'Курьерам', 'accepted', NULL, 'Быков Владимир Олегович', 'г. Бугульма, Советская 58-4', '89372965695', 'позвоните ближе к 6', 'vladimir-bykov-1999@mail.ru'),
(5, '2019-03-11 13:38:10', 'yes', 'По почте', 'accepted', NULL, 'Быков Владимир ', 'г. Бугульма', '89372965695', 'gfjgj', 'vladimir-bykov-1999@mail.ru'),
(9, '2019-04-08 10:25:24', 'yes', 'Курьером', 'accepted', NULL, 'Иванов Иван Иванович', 'г. Москва, ул Интузиастов д 18, кв 58', '8 950 100 12 34', 'yjtgjyytgyjg', 'ivanov@mail.ru'),
(20, '2019-04-12 03:57:04', 'yes', 'По почте', 'accepted', NULL, 'Быков Владимир Олегович', 'г. Бугульма, Советская 58-4', '89373661167', 'sdvsdvc', 'vladimir-bykov-1999@mail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `reg_admin`
--

CREATE TABLE `reg_admin` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `fio` text NOT NULL,
  `role` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `view_orders` int(11) NOT NULL DEFAULT 0,
  `accept_orders` int(11) NOT NULL DEFAULT 0,
  `delete_orders` int(11) NOT NULL DEFAULT 0,
  `add_tovar` int(11) NOT NULL DEFAULT 0,
  `edit_tovar` int(11) NOT NULL DEFAULT 0,
  `delete_tovar` int(11) NOT NULL DEFAULT 0,
  `accept_reviews` int(11) NOT NULL DEFAULT 0,
  `delete_reviews` int(11) NOT NULL DEFAULT 0,
  `view_clients` int(11) NOT NULL DEFAULT 0,
  `delete_clients` int(11) NOT NULL DEFAULT 0,
  `add_news` int(11) NOT NULL DEFAULT 0,
  `delete_news` int(11) NOT NULL DEFAULT 0,
  `add_category` int(11) NOT NULL DEFAULT 0,
  `delete_category` int(11) NOT NULL DEFAULT 0,
  `view_admin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reg_admin`
--

INSERT INTO `reg_admin` (`id`, `login`, `pass`, `fio`, `role`, `email`, `phone`, `view_orders`, `accept_orders`, `delete_orders`, `add_tovar`, `edit_tovar`, `delete_tovar`, `accept_reviews`, `delete_reviews`, `view_clients`, `delete_clients`, `add_news`, `delete_news`, `add_category`, `delete_category`, `view_admin`) VALUES
(2, 'Vladimir', 'mb03foo513a9c22625ad6b3994b461e342c3f02b0qj2jjdp9', 'Быков Владимир Олегович', 'Администратор', 'vladimir-bykov-1999@mail.ru', '89372965695', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(5, 'Агент_007', 'mb03foo512c91b90431bd2f298e31cdfb0b0bc75bqj2jjdp9', 'Киреева Мария Александровна', 'Старший менеджер', 'maria.eskabar@mail.ru', '89533143320', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(6, 'yana_burmak_my_sun', 'mb03foo51bb8a5d4a982077bcfacc85fd68babba2qj2jjdp9', 'Бурмак Яна Алексеевна', 'Старший менеджер', 'yana.burmak@mail.ru', '89867178039', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `reg_user`
--

CREATE TABLE `reg_user` (
  `id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `patronymic` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `datetime` datetime NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reg_user`
--

INSERT INTO `reg_user` (`id`, `login`, `pass`, `surname`, `name`, `patronymic`, `email`, `phone`, `address`, `datetime`, `ip`) VALUES
(15, 'Агент_007', '9nm2rv8q68d3438669c5f7d4544af26359cc9d1f2yo6z', 'Киреева', 'Мария', 'Александровна', 'maria.eskabar@mail.ru', '89533143320', 'г. Калуга, ул. Тарусская 8, д. 9', '2018-10-20 18:52:38', '176.59.35.244'),
(51, 'voldemar', '9nm2rv8q3a9c22625ad6b3994b461e342c3f02b02yo6z', 'Быков', 'Владимир', 'Олегович', 'vladimir-bykov-1999@mail.ru', '89373661167', 'г. Бугульма, Советская 58-4', '2019-04-11 17:30:40', '178.206.208.93');

-- --------------------------------------------------------

--
-- Структура таблицы `table_products`
--

CREATE TABLE `table_products` (
  `products_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `seo_words` text NOT NULL,
  `seo_description` text NOT NULL,
  `mini_description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `mini_features` text NOT NULL,
  `features` text NOT NULL,
  `datetime` datetime NOT NULL,
  `new` int(11) NOT NULL DEFAULT 0,
  `leader` int(11) NOT NULL DEFAULT 0,
  `sale` int(11) NOT NULL DEFAULT 0,
  `visible` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `type_tovara` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `yes_like` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `table_products`
--

INSERT INTO `table_products` (`products_id`, `title`, `price`, `brand`, `seo_words`, `seo_description`, `mini_description`, `image`, `description`, `mini_features`, `features`, `datetime`, `new`, `leader`, `sale`, `visible`, `count`, `type_tovara`, `brand_id`, `yes_like`) VALUES
(53, 'Смартфон Apple iPhone 6S ', 26990, 'Apple', 'Apple iPhone 6S, Apple', 'Смартфон Apple iPhone 6S 32GB – возможности поражают! Наслаждайтесь просмотром фильмов и видеороликов на ярком 4,7-дюймовом экране! Вы по достоинству оцените четкое изображение с сочными красками. Apple iPhone 6S 32GB снабжен мощным процессором Apple A9 с 64-битной архитектурой. Объёма встроенной памяти в 32 Гб хватит для создания собственной мультимедийной библиотеки. Сенсорный дисплей с поддержкой технологии 3D Touch распознает силу нажатия, предоставляя быстрый доступ к самым разным функциям.', '<p>Смартфон Apple iPhone 6S 32GB &ndash; возможности поражают! Наслаждайтесь просмотром фильмов и видеороликов на ярком 4,7-дюймовом экране! Вы по достоинству оцените четкое изображение с сочными красками. Apple iPhone 6S 32GB снабжен мощным процессором Apple A9 с 64-битной архитектурой. Объёма встроенной памяти в 32 Гб хватит для создания собственной мультимедийной библиотеки. Сенсорный дисплей с поддержкой технологии 3D Touch распознает силу нажатия, предоставляя быстрый доступ к самым разным функциям.</p>\r\n', 'mobile-5341.png', '<p>Смартфон Apple iPhone 6S 32GB &ndash; возможности поражают!</p>\r\n\r\n<p><strong>Потрясающая графика</strong></p>\r\n\r\n<p>Наслаждайтесь просмотром фильмов и видеороликов на ярком 4,7-дюймовом экране!</p>\r\n\r\n<p>Дисплей создан на базе высокотехнологичной матрицы Retina &ndash; вы по достоинству оцените четкое изображение с сочными красками и оптимальным уровнем контрастности. Фильмы и игры станут еще более реалистичными и впечатляющими.</p>\r\n\r\n<p><strong>Отличная производительность</strong></p>\r\n\r\n<p>Apple iPhone 6S 32GB снабжен мощным процессором Apple A9 с 64-битной архитектурой.</p>\r\n\r\n<p>В нём также используется дополнительный чип M9, который выполняет фоновые задачи, значительно уменьшая энергопотребление. Благодаря этому ёмкости аккумулятора хватает на 10&ndash;14 часов активного использования девайса или на 10 дней работы в режиме ожидания.</p>\r\n\r\n<p>Оптимизированная операционная система подстраивается под предпочтения пользователя, ускоряя запуск различных приложений.</p>\r\n\r\n<p>Объёма встроенной памяти в 32 Гб хватит для создания собственной мультимедийной библиотеки.</p>\r\n\r\n<p><strong>Удобное управление</strong></p>\r\n\r\n<p>Устройство снабжено сканером отпечатка пальца, совмещённым с кнопкой Home. Он позволяет подтверждать электронные платежи одни прикосновением, ускоряет разблокировку экрана и надёжно защищает личные данные пользователя.</p>\r\n\r\n<p>Сенсорный дисплей с поддержкой технологии 3D Touch распознает силу нажатия, предоставляя быстрый доступ к самым разным функциям.</p>\r\n\r\n<p><strong>Профессиональная съемка</strong></p>\r\n\r\n<p>12-мегапиксельная камера iPhone получила BSI-сенсор с повышенной светочувствительностью, а также высококлассную оптику с сапфировой линзой и инфракрасным фильтром. Она может делать чёткие реалистичные фотографии, записывать видео с разрешением 4K, а также создавать уникальные снимки Live Photo, запечатлевающие лучшие моменты жизни в динамике.</p>\r\n', '<p>Диагональ&nbsp; &nbsp;4.7 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; &nbsp;1</p>\r\n\r\n<p>Объем встроенной памяти&nbsp; &nbsp;32 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>iOS 9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>143 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>67.1x138.3x7.1 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>алюминий</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>механические кнопки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>iOS</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной IPS, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>4.7 дюйма</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>1334x750</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>326</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>12 млн пикс</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Макс. разрешение видео</td>\r\n			<td>3840x2160</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Макс. частота кадров видео</td>\r\n			<td>60 кадров/с</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Geo Tagging</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 5 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диктофон</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Игры</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11ac, Bluetooth 4.2, USB, NFC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS/ГЛОНАСС</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A, VoLTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка диапазонов LTE</td>\r\n			<td>модель A1633: Bands 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29, 30; модель A1688: Bands 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>Apple A9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>32 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>нет</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип аккумулятора</td>\r\n			<td>Li-Ion</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аккумулятор</td>\r\n			<td>несъемный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Время работы в режиме прослушивания музыки</td>\r\n			<td>50 ч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Громкая связь (встроенный динамик)</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>освещенности, приближения, гироскоп, компас, барометр, считывание отпечатка пальца</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Дополнительная информация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Особенности</td>\r\n			<td>дисплей - стекло Ion-X; функция распознавания силы нажатия на экран 3D Touch; новое поколение дактилоскопического сканера Touch ID; опция Retina Flash - в момент съемки селфи увеличивается яркость экрана в три раза для создания виртуальной вспышки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Дата анонсирования</td>\r\n			<td>2015-09-09</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Дата начала продаж</td>\r\n			<td>2015-09-25</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Комплектация</td>\r\n			<td>смартфон, наушники EarPods с разъёмом 3,5 мм, кабель Lightning/USB, адаптер питания USB</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, наушники EarPods с разъёмом 3,5 мм, кабель Lightning/USB, адаптер питания USB, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна производства</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 05:54:15', 1, 0, 0, 1, 7, 'mobile', 51, 2),
(54, 'Смартфон Apple iPhone 6S', 26990, 'Apple', 'Apple iPhone 6S, Apple', 'Смартфон Apple iPhone 6S 32GB – возможности поражают! Наслаждайтесь просмотром фильмов и видеороликов на ярком 4,7-дюймовом экране! Вы по достоинству оцените четкое изображение с сочными красками. Apple iPhone 6S 32GB снабжен мощным процессором Apple A9 с 64-битной архитектурой. Объёма встроенной памяти в 32 Гб хватит для создания собственной мультимедийной библиотеки. Сенсорный дисплей с поддержкой технологии 3D Touch распознает силу нажатия, предоставляя быстрый доступ к самым разным функциям.', '<p>Смартфон Apple iPhone 6S 32GB &ndash; возможности поражают! Наслаждайтесь просмотром фильмов и видеороликов на ярком 4,7-дюймовом экране! Вы по достоинству оцените четкое изображение с сочными красками. Apple iPhone 6S 32GB снабжен мощным процессором Apple A9 с 64-битной архитектурой. Объёма встроенной памяти в 32 Гб хватит для создания собственной мультимедийной библиотеки. Сенсорный дисплей с поддержкой технологии 3D Touch распознает силу нажатия, предоставляя быстрый доступ к самым разным функциям.</p>\r\n', 'mobile-5494.png', '<p>Смартфон Apple iPhone 6S 32GB &ndash; возможности поражают!</p>\r\n\r\n<p><strong>Потрясающая графика</strong></p>\r\n\r\n<p>Наслаждайтесь просмотром фильмов и видеороликов на ярком 4,7-дюймовом экране!</p>\r\n\r\n<p>Дисплей создан на базе высокотехнологичной матрицы Retina &ndash; вы по достоинству оцените четкое изображение с сочными красками и оптимальным уровнем контрастности. Фильмы и игры станут еще более реалистичными и впечатляющими.</p>\r\n\r\n<p><strong>Отличная производительность</strong></p>\r\n\r\n<p>Apple iPhone 6S 32GB снабжен мощным процессором Apple A9 с 64-битной архитектурой.</p>\r\n\r\n<p>В нём также используется дополнительный чип M9, который выполняет фоновые задачи, значительно уменьшая энергопотребление. Благодаря этому ёмкости аккумулятора хватает на 10&ndash;14 часов активного использования девайса или на 10 дней работы в режиме ожидания.</p>\r\n\r\n<p>Оптимизированная операционная система подстраивается под предпочтения пользователя, ускоряя запуск различных приложений.</p>\r\n\r\n<p>Объёма встроенной памяти в 32 Гб хватит для создания собственной мультимедийной библиотеки.</p>\r\n\r\n<p><strong>Удобное управление</strong></p>\r\n\r\n<p>Устройство снабжено сканером отпечатка пальца, совмещённым с кнопкой Home. Он позволяет подтверждать электронные платежи одни прикосновением, ускоряет разблокировку экрана и надёжно защищает личные данные пользователя.</p>\r\n\r\n<p>Сенсорный дисплей с поддержкой технологии 3D Touch распознает силу нажатия, предоставляя быстрый доступ к самым разным функциям.</p>\r\n\r\n<p><strong>Профессиональная съемка</strong></p>\r\n\r\n<p>12-мегапиксельная камера iPhone получила BSI-сенсор с повышенной светочувствительностью, а также высококлассную оптику с сапфировой линзой и инфракрасным фильтром. Она может делать чёткие реалистичные фотографии, записывать видео с разрешением 4K, а также создавать уникальные снимки Live Photo, запечатлевающие лучшие моменты жизни в динамике.</p>\r\n', '<p>Диагональ&nbsp; &nbsp;4.7 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 1</p>\r\n\r\n<p>Объем встроенной памяти&nbsp; 32 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>iOS 9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>143 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>67.1x138.3x7.1 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>алюминий</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>механические кнопки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>iOS</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной IPS, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>4.7 дюйма</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>1334x750</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>326</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>12 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Макс. разрешение видео</td>\r\n			<td>3840x2160</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Макс. частота кадров видео</td>\r\n			<td>60 кадров/с</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Geo Tagging</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 5 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11ac, Bluetooth 4.2, USB, NFC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS/ГЛОНАСС</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A, VoLTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка диапазонов LTE</td>\r\n			<td>модель A1633: Bands 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29, 30; модель A1688: Bands 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 27, 28, 29</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>Apple A9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>32 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>нет</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип аккумулятора</td>\r\n			<td>Li-Ion</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аккумулятор</td>\r\n			<td>несъемный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Время работы в режиме прослушивания музыки</td>\r\n			<td>50 ч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Громкая связь (встроенный динамик)</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>освещенности, приближения, гироскоп, компас, барометр, считывание отпечатка пальца</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Дополнительная информация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Особенности</td>\r\n			<td>дисплей - стекло Ion-X; функция распознавания силы нажатия на экран 3D Touch; новое поколение дактилоскопического сканера Touch ID; опция Retina Flash - в момент съемки селфи увеличивается яркость экрана в три раза для создания виртуальной вспышки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Дата анонсирования</td>\r\n			<td>2015-09-09</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Дата начала продаж</td>\r\n			<td>2015-09-25</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Комплектация</td>\r\n			<td>смартфон, наушники EarPods с разъёмом 3,5 мм, кабель Lightning/USB, адаптер питания USB</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, наушники EarPods с разъёмом 3,5 мм, кабель Lightning/USB, адаптер питания USB, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна производства</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 06:17:49', 1, 0, 0, 1, 14, 'mobile', 51, 2),
(55, 'Смартфон Samsung Galaxy A9', 29990, 'Samsung', 'Samsung Galaxy A9', 'Samsung Galaxy A9 (2018) - возможности поражают! 4 камеры - широкоформатная, телефотографическая, основная камера 24 Мп и портретная камера - позволяют делать максимально реалистичные фотографии. Samsung Galaxy A9 (2018) оснащен 6,3-дюймовым безграничным FHD+ экраном с более четким контрастом и насыщенными цветами, чтобы вы смогли максимально погрузиться в происходящее. С восьмиядерным процессором и операционной системой Android современные игры принесут настоящее удовольствие, а работать в программах будет комфортно.', '<p>Samsung Galaxy A9 (2018) - возможности поражают! 4 камеры - широкоформатная, телефотографическая, основная камера 24 Мп и портретная камера - позволяют делать максимально реалистичные фотографии. Samsung Galaxy A9 (2018) оснащен 6,3-дюймовым безграничным FHD+ экраном с более четким контрастом и насыщенными цветами, чтобы вы смогли максимально погрузиться в происходящее. С восьмиядерным процессором и операционной системой Android современные игры принесут настоящее удовольствие, а работать в программах будет комфортно.</p>\r\n', 'mobile-5596.png', '<p>Смартфон Samsung Galaxy A9 (2018) - возможности поражают!</p>\r\n\r\n<p>Благодаря плавным закругленным линиям корпуса смартфоном удобно пользоваться даже одной рукой, а задняя стеклянная панель с эффектом 3D подчеркивает единство формы и функциональности.</p>\r\n\r\n<p><strong>Четыре камеры</strong></p>\r\n\r\n<p>4 камеры - широкоформатная, телефотографическая, основная камера 24 Мп и портретная камера - позволяют делать максимально реалистичные фотографии. А с функциями оптимизации изображения и распознавания дефектов каждый ваш снимок станет идеальным.</p>\r\n\r\n<p><strong>Безграничное удовольствие от просмотра</strong></p>\r\n\r\n<p>Теперь мир на вашем экране такой же, как в реальной жизни. Samsung Galaxy A9 (2018) оснащен 6,3-дюймовым безграничным FHD+ Super AMOLED экраном с более четким контрастом и насыщенными цветами, чтобы вы смогли максимально погрузиться в происходящее.</p>\r\n\r\n<p><strong>Всегда активный экран</strong></p>\r\n\r\n<p>Всегда оставайтесь в курсе нужной вам информации. Samsung Galaxy A9 (2018) представляет всегда активный экран, на котором так удобно просматривать уведомления, оповещения, узнавать время, прогноз погоды и всё, что вам необходимо.</p>\r\n\r\n<p><strong>Мощность на высоте</strong></p>\r\n\r\n<p>С восьмиядерным процессором и операционной системой Android современные игры принесут настоящее удовольствие, а работать в программах будет комфортно. А за счет оперативной памяти в 6 Гб смартфон моментально выполнит сразу несколько сложных задач.</p>\r\n\r\n<p>Объем встроенного накопителя составляет 128 Гб - вы сохраните всю необходимую информацию. Для увеличения вместимости устройства можно воспользоваться карточкой памяти.</p>\r\n', '<p>Диагональ&nbsp; 6.3 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 6 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android 8.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>77x162.5x7.8 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>металлическая рамка</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Конструкция</td>\r\n			<td>моноблок</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>одновременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>сенсорное</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной Super AMOLED, 16.78 млн цветов, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>6.3 дюйма</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>1080x2220</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>24/5/10/8 МП</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры</td>\r\n			<td>угол обзора 120&deg;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Распознавание</td>\r\n			<td>лиц, улыбок</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диктофон</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Игры</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>mini jack 3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>Qualcomm SDM660 (4x2.2 ГГц и 4х1.8ГГц)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>128 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>6 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объём карты памяти</td>\r\n			<td>512 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>3800 мА&sdot;ч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Громкая связь (встроенный динамик)</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Дополнительная информация</p>\r\n\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Особенности</td>\r\n			<td>сканер отпечатков пальцев, распознавания лица</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Дата анонсирования (г-м-д)</td>\r\n			<td>2018-10-11</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, USB-кабель, адаптер питания, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 06:26:02', 1, 1, 0, 1, 5, 'mobile', 52, 1),
(56, 'Смартфон Samsung Galaxy A6', 15990, 'Samsung', 'Samsung Galaxy A6', 'Смартфон Samsung Galaxy A6 32GB подарит большие возможности! Samsung Galaxy A6 32GB оснащен большим и практически безрамочным sAMOLED экраном высокого разрешения с удивительно высокой контрастностью. Samsung Galaxy A6 32GB обладает режимом разделенного экрана, который позволяет запускать одновременно два приложения. Технология распознавания лица гарантирует доступ к телефону только его владельцу, благодаря чему ваши личные данные никогда не попадут в чужие руки.', '<p>Смартфон Samsung Galaxy A6 32GB подарит большие возможности! Samsung Galaxy A6 32GB оснащен большим и практически безрамочным sAMOLED экраном высокого разрешения с удивительно высокой контрастностью. Samsung Galaxy A6 32GB обладает режимом разделенного экрана, который позволяет запускать одновременно два приложения. Технология распознавания лица гарантирует доступ к телефону только его владельцу, благодаря чему ваши личные данные никогда не попадут в чужие руки.</p>\r\n', 'mobile-5631.png', '<p>Смартфон Samsung Galaxy A6 32GB подарит большие возможности!</p>\r\n\r\n<p><strong>Экран с эффектом погружения</strong></p>\r\n\r\n<p>Samsung Galaxy A6 32GB оснащен большим и практически безрамочным sAMOLED экраном высокого разрешения с удивительно высокой контрастностью. Теперь вы можете погрузиться в любимый фильм будто смотрите его в кинотеатре.</p>\r\n\r\n<p><strong>Три уровня яркости вспышки</strong></p>\r\n\r\n<p>Добавьте яркости вашим снимкам!</p>\r\n\r\n<p>Три уровня яркости фронтальной вспышки камеры смартфона позволяют устранить нежелательный эффект высветления лиц при съемке селфи.</p>\r\n\r\n<p><strong>Яркие снимки даже ночью</strong></p>\r\n\r\n<p>Убедитесь в том, что фотографии получаются яркими и четкими при съемке в любых условиях!</p>\r\n\r\n<p>Samsung Galaxy A6 32GB оснащен 16 MП камерой со светосильным (F1.9) объективом, позволяющим снимать даже при низком уровне освещения.</p>\r\n\r\n<p><strong>Многозадачность</strong><strong>? Легко!</strong></p>\r\n\r\n<p>Работайте в режиме многозадачности легко и эффективно!</p>\r\n\r\n<p>Samsung Galaxy A6 32GB обладает режимом разделенного экрана, который позволяет запускать одновременно два приложения. Более того, вы можете добавить необходимые сочетания приложений на главный экран и они быстро будут открываться вместе в режиме разделенного экрана.</p>\r\n\r\n<p><strong>Персонифицированная защита</strong></p>\r\n\r\n<p>Теперь вы можете разблокировать смартфон просто поднеся его к лицу!</p>\r\n\r\n<p>Технология распознавания лица гарантирует доступ к телефону только его владельцу, благодаря чему ваши личные данные никогда не попадут в чужие руки.</p>\r\n', '<p>Диагональ&nbsp; 5.6 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 3 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>162 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>70.8x149.9x7.7 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>металл и пластик</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>попеременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>экранные кнопки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной AMOLED, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>5.6 дюйма</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>720x1480</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>294</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>16 млн пикс</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 16 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Игры</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11n, Bluetooth 4.2, USB, ANT+, NFC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Зарядка от USB</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS/ГЛОНАСС/BeiDou</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Доступ в интернет</td>\r\n			<td>4G</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A Cat. 6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка диапазонов LTE</td>\r\n			<td>2100, 1800, 850, 2600, 900, 800</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>1600 МГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>32 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>3 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти</td>\r\n			<td>microSD, microSDHC, microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объём карты памяти</td>\r\n			<td>256 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>3000 мА&sdot;ч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Громкая связь (встроенный динамик)</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>освещенности, приближения, Холла, гироскоп, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Дополнительная информация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Дата анонсирования</td>\r\n			<td>2018-05-03</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Дата начала продаж</td>\r\n			<td>2018-05-14</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, USB-кабель, зарядное устройство, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 06:31:43', 0, 0, 1, 1, 9, 'mobile', 52, 1),
(57, 'Смартфон Meizu M8c', 6690, 'Meizu', 'Meizu M8c', 'Смартфон Meizu M8c - стильное и мощное устройство! С четырехъядерным процессором и операционной системой Android современные игры и приложения будут загружаться мгновенно. На встроенной памяти объемом 16 Гб вы сохраните все необходимые данные. Вы в полной мере насладитесь просмотром фильмов и чтением электронных книг на ярком 5,45-дюймовом экране! Вы по достоинству оцените естественную цветопередачу и улучшенную глубину. С 4G вы всегда будете оставаться на связи.', '<p>Смартфон Meizu M8c - стильное и мощное устройство! С четырехъядерным процессором и операционной системой Android современные игры и приложения будут загружаться мгновенно. На встроенной памяти объемом 16 Гб вы сохраните все необходимые данные. Вы в полной мере насладитесь просмотром фильмов и чтением электронных книг на ярком 5,45-дюймовом экране! Вы по достоинству оцените естественную цветопередачу и улучшенную глубину. С 4G вы всегда будете оставаться на связи.</p>\r\n', 'mobile-5760.png', '<p>Смартфон Meizu M8c - стильное и мощное устройство!</p>\r\n\r\n<p><strong>Производительность</strong></p>\r\n\r\n<p>С четырехъядерным процессором и операционной системой Android современные игры и приложения будут загружаться мгновенно.</p>\r\n\r\n<p>На встроенной памяти объемом 16 Гб вы сохраните все необходимые данные. А увеличить вместимость устройства можно при помощи карты памяти.</p>\r\n\r\n<p><strong>Отличная графика</strong></p>\r\n\r\n<p>Вы в полной мере насладитесь просмотром фильмов и чтением электронных книг на ярком 5,45-дюймовом экране! Вы по достоинству оцените естественную цветопередачу и улучшенную глубину.</p>\r\n\r\n<p><strong>Доступ в Интернет</strong></p>\r\n\r\n<p>С 4G вы всегда будете оставаться на связи!</p>\r\n\r\n<p>Стандарт GPS точно определит ваше местоположение, и вы не заблудитесь в незнакомой местности.</p>\r\n\r\n<p><strong>Завораживающие кадры</strong></p>\r\n\r\n<p>С 13-мегапиксельной камерой вы сделаете замечательные фотографии и не упустите интересные моменты вашей жизни.</p>\r\n\r\n<p>Фронтальная 8-мегапиксельная камера даст возможность совершать видеозвонки через Skype.</p>\r\n\r\n<p><strong>2 SIM-карты</strong></p>\r\n\r\n<p>С поддержкой 2 SIM-карт у вас будет возможность без труда разделять личные и рабочие звонки.</p>\r\n', '<p>Диагональ&nbsp; 5.45 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 2 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>140 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>70x146.4x8.5 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>попеременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>5.45 дюйма</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>1440x720</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>295</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>13 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 8 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диктофон</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Игры</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11n, Bluetooth 4.1, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка диапазонов LTE</td>\r\n			<td>TD-LTE: band 40; FDD-LTE band: 1, 3, 5, 7, 8, 20</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>Qualcomm Snapdragon 425 MSM8917, 1400 МГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>16 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор</td>\r\n			<td>Adreno 308</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>2 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объём карты памяти</td>\r\n			<td>128 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>3070 мА&sdot;ч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>освещенности, приближения</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, USB-кабель, адаптер питания, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна производства</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 06:38:53', 1, 0, 1, 1, 12, 'mobile', 53, 1),
(58, 'Смартфон Meizu 15 Lite', 14990, 'Meizu', 'Meizu 15 Lite', 'Смартфон Meizu 15 Lite 4/32GB - умное устройство! Благодаря восьмиядерному процессору и операционной системе Android вам будет доступно множество игр, приложений и программ на любой вкус. Объема встроенной памяти в 32 Гб будет достаточно, чтобы сохранить всю необходимую информацию. Смотрите любимые фильмы и видеоролики на ярком 5,46-дюймовом дисплее! Благодаря высокому разрешению 1920x1080 изображение будет четким. С 4G связью веб-страницы открываются очень быстро.', '<p>Смартфон Meizu 15 Lite 4/32GB - умное устройство! Благодаря восьмиядерному процессору и операционной системе Android вам будет доступно множество игр, приложений и программ на любой вкус. Объема встроенной памяти в 32 Гб будет достаточно, чтобы сохранить всю необходимую информацию. Смотрите любимые фильмы и видеоролики на ярком 5,46-дюймовом дисплее! Благодаря высокому разрешению 1920x1080 изображение будет четким. С 4G связью веб-страницы открываются очень быстро.</p>\r\n', 'mobile-5875.png', '<p>Смартфон Meizu 15 Lite 4/32GB - умное устройство!</p>\r\n\r\n<p><strong>Производительность</strong></p>\r\n\r\n<p>Благодаря восьмиядерному процессору и операционной системе Android вам будет доступно множество игр, приложений и программ на любой вкус. А за счет оперативной памяти в 4 Гб вы будете с комфортом работать в режиме многозадачности.</p>\r\n\r\n<p>Объема встроенной памяти в 32 Гб будет достаточно, чтобы сохранить всю необходимую информацию. А расширить вместимость устройства не составит труда при помощи карточки памяти.</p>\r\n\r\n<p><strong>Непревзойденное качество</strong></p>\r\n\r\n<p>Смотрите любимые фильмы и видеоролики на ярком 5,46-дюймовом дисплее!</p>\r\n\r\n<p>Благодаря высокому разрешению 1920x1080 изображение будет максимально четким, и вы не пропустите ни одной детали происходящего.</p>\r\n\r\n<p><strong>Просторы сети Интернет</strong></p>\r\n\r\n<p>Общайтесь с друзьями в социальных сетях, следите за последними новостями, загружайте нужный контент - с 4G связью веб-страницы открываются очень быстро.</p>\r\n\r\n<p>Стандарт GPS точно определит ваше местоположение, и вы не потеряетесь в незнакомой местности.</p>\r\n\r\n<p><strong>Камера всегда под рукой</strong></p>\r\n\r\n<p>С 12-мегапиксельной камерой вы создадите качественные снимки, и значимые события вашей жизни навсегда останутся в памяти.</p>\r\n\r\n<p>Фронтальная 20-мегапиксельная камера даст возможность делать потрясающие селфи.</p>\r\n\r\n<p><strong>Поддержка 2 SIM-карт</strong></p>\r\n\r\n<p>Разделять личные и рабочие звонки не составит труда с поддержкой 2 SIM-карт.</p>\r\n', '<p>Диагональ&nbsp; 5.46 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 4 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>145 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>72.38x143.62x7.45 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>металл, стекло</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>попеременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной IPS, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>5.46 дюйма</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>1920x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>403</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>12 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 20 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диктофон</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Игры</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11n, Bluetooth 4.2, IRDA, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Зарядка от USB</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS/ГЛОНАСС/BeiDou</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Доступ в интернет</td>\r\n			<td>4G</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка диапазонов LTE</td>\r\n			<td>TD-LTE: bands 38, 39, 40, 41; FDD-LTE: 1, 3, 4, 5, 8, 20</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>Qualcomm Snapdragon 626 MSM8953Pro, 2200 МГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>32 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор</td>\r\n			<td>Adreno 506</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>4 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти</td>\r\n			<td>microSD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объём карты памяти</td>\r\n			<td>128 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>3000 мА&sdot;ч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>освещенности, приближения, Холла, гироскоп, компас, барометр, считывание отпечатка пальца</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Дополнительная информация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Особенности</td>\r\n			<td>разблокировка по распознаванию лица</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, USB-кабель, зарядное устройство, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна производства</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 06:45:52', 1, 0, 0, 1, 11, 'mobile', 53, 1);
INSERT INTO `table_products` (`products_id`, `title`, `price`, `brand`, `seo_words`, `seo_description`, `mini_description`, `image`, `description`, `mini_features`, `features`, `datetime`, `new`, `leader`, `sale`, `visible`, `count`, `type_tovara`, `brand_id`, `yes_like`) VALUES
(59, 'Смартфон Honor 8X ', 19990, 'Honor', ' Honor 8X 4/128GB', 'Смартфон Honor 8X 4/128GB поразит своей мощью! Благодаря восьмиядерному процессору с частотой 2200 МГц и операционной системе Android современные игры и приложения будут загружаться моментально. На встроенной памяти в 128 Гб вы сохраните множество файлов. Смотреть фильмы и видеоролики на ярком 6,5-дюймовом экране - одно наслаждение! Высокое разрешение 2340x1080 гарантирует очень четкое и детализированное изображение. С двойной 20/2-мегапиксельной камерой вы сделаете превосходные фотографии.', '<p>Смартфон Honor 8X 4/128GB поразит своей мощью! Благодаря восьмиядерному процессору с частотой 2200 МГц и операционной системе Android современные игры и приложения будут загружаться моментально. На встроенной памяти в 128 Гб вы сохраните множество файлов. Смотреть фильмы и видеоролики на ярком 6,5-дюймовом экране - одно наслаждение! Высокое разрешение 2340x1080 гарантирует очень четкое и детализированное изображение. С двойной 20/2-мегапиксельной камерой вы сделаете превосходные фотографии.</p>\r\n', 'mobile-5937.png', '<p>Смартфон Honor 8X 4/128GB поразит своей мощью!</p>\r\n\r\n<p><strong>Умное устройство</strong></p>\r\n\r\n<p>Благодаря восьмиядерному процессору с частотой&nbsp;2200 МГц&nbsp;и операционной системе Android современные игры и приложения будут загружаться моментально. За счет оперативной памяти в 4 Гб вы будете с комфортом работать в режиме многозадачности.</p>\r\n\r\n<p>На встроенной памяти в 128 Гб вы сохраните множество файлов. А расширить вместимость устройства можно с легкостью при помощи карточки памяти.</p>\r\n\r\n<p><strong>Богатство деталей</strong></p>\r\n\r\n<p>Смотреть фильмы и видеоролики на ярком 6,5-дюймовом экране - одно наслаждение!</p>\r\n\r\n<p>Высокое разрешение&nbsp;2340x1080&nbsp;гарантирует очень четкое и детализированное изображение.</p>\r\n\r\n<p><strong>Создавайте шедевры</strong></p>\r\n\r\n<p>С двойной 20/2-мегапиксельной камерой вы сделаете превосходные фотографии и не упустите интересные события вашей жизни.</p>\r\n\r\n<p>Фронтальная камера на 16 мегапикселей даст возможность создавать восхитительные селфи.</p>\r\n\r\n<p><strong>2 SIM-карты</strong></p>\r\n\r\n<p>С поддержкой 2 SIM-карт вы больше не ограничены в выборе оператора или тарифа и значительно сэкономите на звонках.</p>\r\n', '<p>Диагональ&nbsp; 6.5 дюйм.</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 4 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>175 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>76.6x160.4x7.8 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>стекло</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>попеременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>сенсорные кнопки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>6.5 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>2340x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>396</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Звонки</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Виброзвонок</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>20 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры</td>\r\n			<td>автофокус, режим макросъемки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Макс. разрешение видео</td>\r\n			<td>1920x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 16 МП</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV, WMA, FM-радио</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диктофон</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11ac, Wi-Fi Direct, Bluetooth 4.2, USB, NFC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Зарядка от USB</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS/ГЛОНАСС/BeiDou</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Использование в качестве USB-накопителя</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A Cat. 4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка диапазонов LTE</td>\r\n			<td>LTE FDD: bands 1/3/7/8/20</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>HiSilicon Kirin 710, 2200 МГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>128 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор</td>\r\n			<td>Mali-G51 MP4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>4 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти</td>\r\n			<td>micro SD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объём карты памяти</td>\r\n			<td>400 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>3750 мА&sdot;ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аккумулятор</td>\r\n			<td>несъемный</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Громкая связь (встроенный динамик)</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>освещенности, приближения, гироскоп, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Записная книжка и органайзер</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Поиск по книжке</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Обмен между SIM-картой и внутренней памятью</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Дополнительная информация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Дата анонсирования</td>\r\n			<td>2018-09-05</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Комплектация</td>\r\n			<td>смартфон, зарядное устройство, USB-кабель, инструмент для извлечения карт, термополиуретановый защитный чехол</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, зарядное устройство, USB-кабель, инструмент для извлечения карт, термополиуретановый защитный чехол, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 07:04:52', 0, 0, 0, 1, 6, 'mobile', 55, 1),
(60, 'Смартфон Honor 7A Pro', 8970, 'Honor', 'Honor 7A Pro', 'Смартфон Honor 7A Pro – умное устройство! Игры, приложения и программы будут загружаться моментально благодаря восьмиядерному процессору и операционной системе Android 8.0. Объем встроенного накопителя составляет 16 Гб - Honor 7A Pro послужит надежным хранилищем информации. Смотрите фильмы и видеоролики на ярком экране в 5,7 дюйма! Вы по достоинству оцените богатую палитру цветов и исключительную глубину. С 4G связью вы сможете выходить в сеть, где бы вы не были.', '<p>Смартфон Honor 7A Pro &ndash; умное устройство! Игры, приложения и программы будут загружаться моментально благодаря восьмиядерному процессору и операционной системе Android 8.0. Объем встроенного накопителя составляет 16 Гб - Honor 7A Pro послужит надежным хранилищем информации. Смотрите фильмы и видеоролики на ярком экране в 5,7 дюйма! Вы по достоинству оцените богатую палитру цветов и исключительную глубину. С 4G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n', 'mobile-6013.png', '<p>Смартфон Honor 7A Pro &ndash; умное устройство!</p>\r\n\r\n<p><strong>Мощность</strong></p>\r\n\r\n<p>Игры, приложения и программы будут загружаться моментально благодаря восьмиядерному процессору и операционной системе Android 8.0.</p>\r\n\r\n<p>Объем встроенного накопителя составляет 16 Гб - Honor 7A Pro послужит надежным хранилищем информации. Кроме того, у вас будет возможность воспользоваться картой памяти.</p>\r\n\r\n<p><strong>Радует глаз</strong></p>\r\n\r\n<p>Смотрите фильмы и видеоролики на ярком экране в 5,7 дюйма! Вы по достоинству оцените богатую палитру цветов и исключительную глубину.</p>\r\n\r\n<p><strong>Выход в сеть</strong></p>\r\n\r\n<p>С 4G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n\r\n<p>Стандарт GPS позволит использовать смартфон в качестве навигатора.</p>\r\n\r\n<p><strong>Камера всегда под рукой</strong></p>\r\n\r\n<p>С камерой на 13 мегапикселей вы сделаете качественные снимки и не упустите важный момент.</p>\r\n\r\n<p>Фронтальная камера на 8 мегапикселей даст возможность общаться с родными и близкими через Skype.</p>\r\n\r\n<p><strong>Поддержка 2 SIM-карт</strong></p>\r\n\r\n<p>Разделять личные и рабочие звонки не составит труда с поддержкой 2 SIM-карт.</p>\r\n', '<p>Диагональ&nbsp; 5.7 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 2 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>155 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>73x152.4x7.8 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>попеременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>5.7 дюйма</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>1440x720</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>282</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>13 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Макс. разрешение видео</td>\r\n			<td>1920x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 8 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диктофон</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Игры</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.2, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Зарядка от USB</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS/ГЛОНАСС</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Доступ в интернет</td>\r\n			<td>4G</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A Cat. 4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка диапазонов LTE</td>\r\n			<td>band 1, 3, 5, 7, 8, 20, 40</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>Qualcomm Snapdragon 430 MSM8937</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>16 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор</td>\r\n			<td>Adreno 505</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>2 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти</td>\r\n			<td>microSD, microSDHC, microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объём карты памяти</td>\r\n			<td>256 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>3000 мА&sdot;ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аккумулятор</td>\r\n			<td>несъемный</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Громкая связь (встроенный динамик)</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>освещенности, приближения, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Дополнительная информация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Особенности</td>\r\n			<td>разблокировка распознаванием лица</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Дата анонсирования</td>\r\n			<td>2018-04-17</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Дата начала продаж</td>\r\n			<td>2018-04-26</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Комплектация</td>\r\n			<td>смартфон, зарядное устройство, USB-кабель, инструмент для извлечения карт, защитная пленка на экран</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, USB-кабель, зарядное устройство, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна производства</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 07:12:47', 1, 0, 1, 1, 13, 'mobile', 55, 1),
(61, 'Смартфон Huawei Mate 20 Pro', 59990, 'Huawei', 'Huawei Mate 20 Pro', 'Стремительное развитие технологий все активнее размывает границы между мечтой и реальностью. Сила безграничного воображения послужила вдохновением при создании HUAWEI Mate 20 Pro. ', '<p>Стремительное развитие технологий все активнее размывает границы между мечтой и реальностью. Сила безграничного воображения послужила вдохновением при создании HUAWEI Mate 20 Pro.&nbsp;</p>\r\n', 'mobile-6124.png', '<p>Стремительное развитие технологий все активнее размывает границы между мечтой и реальностью. Сила безграничного воображения послужила вдохновением при создании HUAWEI Mate 20 Pro. Тройная камера Leica со вспышкой HUAWEI Mate 20 Pro симметрично расположена посередине задней панели корпуса смартфона. Такое решение отличает индивидуальный дизайн устройств серии Mate. Откройте окно в окружающий мир через линзы камеры.</p>\r\n\r\n<p>HUAWEI Mate 20 Pro.<br />\r\nУтонченный дизайн корпуса подчеркивает закаленное 3D стекло экрана, что создает симфонию тактильных и визуальных ощущений.<br />\r\nЖизнь заключается в постоянных открытиях. Не бойтесь пользоваться HUAWEI Mate 20 Pro на пляже или во время дождя. Со степенью защиты IP68 смартфону не страшны брызги, пролитая жидкость и даже погружение в воду.</p>\r\n\r\n<p>Длительное время работы от аккумулятора &mdash; неизменный признак смартфонов серии Mate. Благодаря аккумулятору 4 200 мА*ч и системе оптимизации энергопотребления на основе искусственного интеллекта заряда батареи будет хватать как на рабочие задачи, так и на развлечения.</p>\r\n', '<p>Диагональ&nbsp; 6.39 дюйма</p>\r\n\r\n<p>Количество SIM-карт 2</p>\r\n\r\n<p>Объем оперативной памяти 6 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android 9.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>189 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>72.3x157.8x8.6 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>металл и стекло</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Конструкция</td>\r\n			<td>водозащита</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>попеременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>сенсорное</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной OLED, 16.78 млн цветов, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>6.39 дюйма</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>3120x1440</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>538</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>40 МП, 20 МП, 8 МП</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры</td>\r\n			<td>автофокус, оптическая стабилизация, режим макросъемки, оптический Zoom 3x</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Макс. разрешение видео</td>\r\n			<td>3840x2160</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 24 МП</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV, WMA, стереодинамики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диктофон</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Игры</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>mini jack 3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11ac, Wi-Fi Direct, Bluetooth 5.0, IRDA, USB, NFC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS/ГЛОНАСС/BeiDou</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A Cat. 13</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка диапазонов LTE</td>\r\n			<td>TD-LTE: bands 34, 38, 39, 40. LTE FDD: bands 1 - 9, 12, 17 - 20, 26, 28</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>HiSilicon Kirin 980</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>128 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор</td>\r\n			<td>Mali-G76 MP10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>6 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объём карты памяти</td>\r\n			<td>256 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>4200 мА&sdot;ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аккумулятор</td>\r\n			<td>несъемный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функция беспроводной зарядки</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Громкая связь (встроенный динамик)</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>освещенности, приближения, Холла, гироскоп, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Дополнительная информация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Особенности</td>\r\n			<td>совместим только с картами памяти HUAWEI NM; основная тройная камера - Leica 40 МП + 20 МП + 8МП; система распознавания лица</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Дата анонсирования</td>\r\n			<td>2018-10-16</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Комплектация</td>\r\n			<td>смартфон, зарядное устройство, инструмент для извлечения карт, наушники Type-C, usb-кабель Type-C, адаптер Type-C/выход 3 5 мм для наушников</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, зарядное устройство, инструмент для извлечения карт, наушники Type-C, usb-кабель Type-C, адаптер Type-C/выход 3 5 мм для наушников, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна производства</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 07:22:45', 0, 1, 0, 1, 10, 'mobile', 57, 1),
(62, 'Смартфон Huawei Y6', 8790, 'Huawei', 'Huawei Y6', 'Huawei Y6 (2018) подарит большие возможности! Четырехъядерный процессор и операционная система Android 8.0 обеспечат моментальную загрузку современных игр, приложений и программ. Объем встроенного накопителя составляет 16 Гб - этого будет достаточно, чтобы сохранить всю необходимую информацию. Смотреть любимые фильмы и видеоролики на ярком 5,7-дюймовом экране - одно наслаждение! Huawei Y6 (2018) отличается прекрасными цветами и эффектным объемом. С 4G связью вы сможете выходить в сеть, где бы вы не были.', '<p>Huawei Y6 (2018) подарит большие возможности! Четырехъядерный процессор и операционная система Android 8.0 обеспечат моментальную загрузку современных игр, приложений и программ. Объем встроенного накопителя составляет 16 Гб - этого будет достаточно, чтобы сохранить всю необходимую информацию. Смотреть любимые фильмы и видеоролики на ярком 5,7-дюймовом экране - одно наслаждение! Huawei Y6 (2018) отличается прекрасными цветами и эффектным объемом. С 4G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n', 'mobile-6213.png', '<p>Смартфон Huawei Y6 (2018) подарит большие возможности!</p>\r\n\r\n<p><strong>Мощная начинка</strong></p>\r\n\r\n<p>Четырехъядерный процессор и операционная система Android 8.0 обеспечат моментальную загрузку современных игр, приложений и программ.</p>\r\n\r\n<p>Объем встроенного накопителя составляет 16 Гб - этого будет достаточно, чтобы сохранить всю необходимую информацию. Для расширения вместимости устройства можно воспользоваться картой памяти.</p>\r\n\r\n<p><strong>Волшебные кадры</strong></p>\r\n\r\n<p>Смотреть любимые фильмы и видеоролики на ярком 5,7-дюймовом экране - одно наслаждение!</p>\r\n\r\n<p>Huawei Y6 (2018) отличается прекрасными цветами и эффектным объемом.</p>\r\n\r\n<p><strong>Безграничные ресурсы</strong></p>\r\n\r\n<p>С 4G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n\r\n<p>Стандарт GPS позволит использовать смартфон в качестве навигатора.</p>\r\n\r\n<p><strong>Ловите момент</strong></p>\r\n\r\n<p>С камерой на 13 мегапикселей вы создадите качественные фотографии, и ни одна важная деталь не будет упущена.</p>\r\n\r\n<p>Фронтальная камера на 5 мегапикселей даст возможность совершать видеозвонки через Skype.</p>\r\n\r\n<p><strong>Поддержка 2 SIM-карт</strong></p>\r\n\r\n<p>Аппарат оснащен слотом на 2 SIM-карты, и вы сможете значительно экономить на звонках и еще дольше разговаривать с родными и близкими.</p>\r\n', '<p>Диагональ&nbsp; 5.7 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 2 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>150 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>73x152.4x7.8 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>металл и пластик</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>попеременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>5.7 дюйма</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>1440x720</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>282</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>13 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 5 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Игры</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi, Wi-Fi Direct, Bluetooth, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Зарядка от USB</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS/ГЛОНАСС</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Доступ в интернет</td>\r\n			<td>4G</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>Qualcomm Snapdragon 425 MSM8917</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>16 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор</td>\r\n			<td>Adreno 308</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>2 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти</td>\r\n			<td>microSD, microSDHC, microSDXC</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>3000 мА&sdot;ч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>освещенности, приближения</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Дополнительная информация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Особенности</td>\r\n			<td>NFC - только в модели ATU-L11</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Комплектация</td>\r\n			<td>смартфон, зарядное устройство, кабель USB, шпилька для извлечения Sim, защитная пленка</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, USB-кабель, зарядное устройство, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна производства</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 07:27:44', 0, 0, 1, 1, 17, 'mobile', 57, 1),
(63, 'Смартфон Vertex Impress Game', 4316, 'Vertex', 'Vertex Impress Game', 'Смартфон Vertex Impress Game откроет перед вами большие возможности и позволит сэкономить семейный бюджет. Благодаря четырехъядерному процессору и операционной системе Android 7.0 современные игры принесут настоящее удовольствие, а работать в программах будет комфортно. Объем встроенной памяти составляет 8 Гб - Vertex Impress Game послужит надежным хранилищем информации. Смотрите фильмы и видеоролики на ярком экране в 5 дюймов! Вы по достоинству оцените естественную цветопередачу и улучшенную глубину.', '<p>Смартфон Vertex Impress Game откроет перед вами большие возможности и позволит сэкономить семейный бюджет. Благодаря четырехъядерному процессору и операционной системе Android 7.0 современные игры принесут настоящее удовольствие, а работать в программах будет комфортно. Объем встроенной памяти составляет 8 Гб - Vertex Impress Game послужит надежным хранилищем информации. Смотрите фильмы и видеоролики на ярком экране в 5 дюймов! Вы по достоинству оцените естественную цветопередачу и улучшенную глубину.</p>\r\n', 'mobile-6348.png', '<p>Смартфон Vertex Impress Game откроет перед вами большие возможности и позволит сэкономить семейный бюджет.</p>\r\n\r\n<p><strong>Умное устройство</strong></p>\r\n\r\n<p>Благодаря четырехъядерному процессору и операционной системе Android 7.0 современные игры принесут настоящее удовольствие, а работать в программах будет комфортно.</p>\r\n\r\n<p>Объем встроенной памяти составляет 8 Гб - Vertex Impress Game послужит надежным хранилищем информации. Кроме того, у вас будет возможность воспользоваться карточкой памяти.</p>\r\n\r\n<p><strong>Радует глаз</strong></p>\r\n\r\n<p>Смотрите фильмы и видеоролики на ярком экране в 5 дюймов! Вы по достоинству оцените естественную цветопередачу и улучшенную глубину.</p>\r\n\r\n<p><strong>Доступ в сеть</strong></p>\r\n\r\n<p>С 3G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n\r\n<p>Стандарт GPS с точностью определит ваше местоположение, и вы не заблудитесь в незнакомой местности.</p>\r\n\r\n<p><strong>Ловите момент</strong></p>\r\n\r\n<p>С камерой на&nbsp;13/0.3&nbsp;мегапикселей вы сделаете превосходные фотографии, и важные события вашей жизни навсегда останутся в памяти.</p>\r\n\r\n<p>Фронтальная 5-мегапиксельная камера даст возможность общаться с родными и близкими по видеосвязи.</p>\r\n\r\n<p><strong>Поддержка 2 SIM-карт</strong></p>\r\n\r\n<p>С поддержкой 2 SIM-карт у вас будет возможность без труда разделять личные и рабочие звонки.</p>\r\n', '<p>Диагональ&nbsp; 5 дюймов</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 1 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>172 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>73x146x10.3 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>попеременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>сенсорные кнопки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной TN, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>5 дюймов</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>854x480</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>196</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>13 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры</td>\r\n			<td>двойная 13/0.3 МП</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 5 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV, WMA, FM-радио</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Игры</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.0, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Зарядка от USB</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Доступ в интернет</td>\r\n			<td>3G</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>MediaTek MT6580M, 1200 МГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>8 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор</td>\r\n			<td>Mali-400 MP1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>1 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти</td>\r\n			<td>micro SD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объём карты памяти</td>\r\n			<td>32 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип аккумулятора</td>\r\n			<td>Li-polymer</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>2200 мА&sdot;ч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>считывание отпечатка пальца</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Дополнительная информация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Особенности</td>\r\n			<td>двойная тыловая камера - 13МП+0.3МП, двойная фронтальная камера - 5МП+0.3МП</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Комплектация</td>\r\n			<td>смартфон, аккумуляторная батарея, USB кабель, зарядное устройство</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, USB-кабель, зарядное устройство, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна производства</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 07:39:08', 0, 0, 1, 1, 6, 'mobile', 58, 1),
(64, 'Смартфон Xiaomi Redmi 6A 2/16GB', 7490, 'Xiaomi', 'Xiaomi Redmi 6A', 'Смартфон Xiaomi Redmi 6A 2/16GB – ваш изящный помощник! Четырехъядерный процессор с частотой 2000 МГц и операционная система Android позаботятся о моментальной загрузке игр, приложений и программ. На встроенном накопителе в 16 Гб вы сохраните все необходимые данные. Смотрите любимые фильмы и видеоролики на ярком 5,45-дюймовом дисплее! Благодаря хорошему разрешению 1440x720 изображение будет четким, и вы не пропустите ни одной детали происходящего. С 4G связью веб-страницы открываются очень быстро.', '<p>Смартфон Xiaomi Redmi 6A 2/16GB &ndash; ваш изящный помощник! Четырехъядерный процессор с частотой 2000 МГц и операционная система Android позаботятся о моментальной загрузке игр, приложений и программ. На встроенном накопителе в 16 Гб вы сохраните все необходимые данные. Смотрите любимые фильмы и видеоролики на ярком 5,45-дюймовом дисплее! Благодаря хорошему разрешению 1440x720 изображение будет четким, и вы не пропустите ни одной детали происходящего. С 4G связью веб-страницы открываются очень быстро.</p>\r\n', 'mobile-6442.png', '<p>Смартфон Xiaomi Redmi 6A 2/16GB &ndash; ваш изящный помощник!</p>\r\n\r\n<p><strong>Мощная начинка</strong></p>\r\n\r\n<p>Четырехъядерный процессор с частотой&nbsp;2000 МГц&nbsp;и операционная система Android позаботятся о моментальной загрузке игр, приложений и программ.</p>\r\n\r\n<p>На встроенном накопителе в 16 Гб вы сохраните все необходимые данные. А расширить вместимость устройства можно при помощи карточки памяти.</p>\r\n\r\n<p><strong>Волшебные кадры</strong></p>\r\n\r\n<p>Смотрите любимые фильмы и видеоролики на ярком 5,45-дюймовом дисплее!</p>\r\n\r\n<p>Благодаря хорошему разрешению&nbsp;1440x720&nbsp;изображение будет четким, и вы не пропустите ни одной детали происходящего.</p>\r\n\r\n<p><strong>Море контента</strong></p>\r\n\r\n<p>Общайтесь с друзьями в социальных сетях, следите за последними новостями, загружайте нужный контент - с 4G связью веб-страницы открываются очень быстро.</p>\r\n\r\n<p>Стандарт GPS с точностью определит ваше местоположение, и вы не заблудитесь в незнакомой местности.</p>\r\n\r\n<p><strong>Завораживающие кадры</strong></p>\r\n\r\n<p>С камерой на 13 мегапикселей вы сделаете замечательные снимки, и ни один интересный момент не будет забыт.</p>\r\n\r\n<p>Фронтальная 5-мегапиксельная камера даст возможность общаться с родными и друзьями через Skype.</p>\r\n\r\n<p><strong>Поддержка 2 SIM-карт</strong></p>\r\n\r\n<p>С поддержкой 2 SIM-карт вы сможете с легкостью разделять личные и рабочие звонки.</p>\r\n', '<p>Диагональ&nbsp; 5.45 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 2 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>145 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>71.5x147.5x8.3 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>попеременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>5.45 дюйма</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>1440x720</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>295</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>13 млн пикс., тыльная светодиодная вспышка</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры</td>\r\n			<td>автофокус</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Макс. разрешение видео</td>\r\n			<td>1920x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Макс. частота кадров видео</td>\r\n			<td>30 кадров/с</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 5 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.2, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS/ГЛОНАСС/BeiDou</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>MediaTek Helio A22, 2000 МГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>16 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор</td>\r\n			<td>IMG PowerVR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>2 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>3000 мА&sdot;ч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>освещенности, приближения</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Дополнительная информация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Дата анонсирования</td>\r\n			<td>2018-06-12</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, зарядное устройство, кабель USB, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна производства</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 07:48:41', 1, 1, 1, 1, 12, 'mobile', 59, 1);
INSERT INTO `table_products` (`products_id`, `title`, `price`, `brand`, `seo_words`, `seo_description`, `mini_description`, `image`, `description`, `mini_features`, `features`, `datetime`, `new`, `leader`, `sale`, `visible`, `count`, `type_tovara`, `brand_id`, `yes_like`) VALUES
(65, 'Смартфон ZTE Nubia Z17 MiniS', 13770, 'ZTE', 'ZTE Nubia Z17', 'Смартфон ZTE Nubia Z17 MiniS - умное устройство! Восьмиядерный процессор и операционная система Android 8.1 позаботятся о мгновенной загрузке игр и приложений. А за счет оперативной памяти в 6 Гб вы будете с комфортом работать в режиме многозадачности. На встроенной памяти в 64 Гб вы сохраните множество данных. Просмотр любимых фильмов на ярком 5,2-дюймовом дисплее принесет настоящее наслаждение! Высокое разрешение 1920x1080 гарантирует впечатляющую четкость и детализированность.', '<p>Смартфон ZTE Nubia Z17 MiniS - умное устройство! Восьмиядерный процессор и операционная система Android 8.1 позаботятся о мгновенной загрузке игр и приложений. А за счет оперативной памяти в 6 Гб вы будете с комфортом работать в режиме многозадачности. На встроенной памяти в 64 Гб вы сохраните множество данных. Просмотр любимых фильмов на ярком 5,2-дюймовом дисплее принесет настоящее наслаждение! Высокое разрешение 1920x1080 гарантирует впечатляющую четкость и детализированность.</p>\r\n', 'mobile-6542.png', '<p>Смартфон ZTE Nubia Z17 MiniS - умное устройство!</p>\r\n\r\n<p><strong>Отличная производительность</strong></p>\r\n\r\n<p>Восьмиядерный процессор и операционная система Android 8.1 позаботятся о мгновенной загрузке игр и приложений. А за счет оперативной памяти в 6 Гб вы будете с комфортом работать в режиме многозадачности.</p>\r\n\r\n<p>На встроенной памяти в 64 Гб вы сохраните множество данных.</p>\r\n\r\n<p><strong>Прекрасная графика</strong></p>\r\n\r\n<p>Просмотр любимых фильмов на ярком 5,2-дюймовом дисплее принесет настоящее наслаждение!</p>\r\n\r\n<p>Высокое разрешение 1920x1080 гарантирует впечатляющую четкость и детализированность.</p>\r\n\r\n<p><strong>Необозримые ресурсы</strong></p>\r\n\r\n<p>Общайтесь с друзьями в социальных сетях, проверяйте электронную почту, загружайте нужный контент - с 4G связью веб-страницы открываются очень быстро.</p>\r\n\r\n<p>Стандарт GPS с точностью определит ваше местоположение, и вы не потеряетесь в незнакомой местности.</p>\r\n\r\n<p><strong>Камера всегда под рукой</strong></p>\r\n\r\n<p>С двойной&nbsp;13/13-мегапиксельной камерой вы сделаете замечательные снимки, и важные события вашей жизни навсегда останутся в памяти.</p>\r\n\r\n<p>Фронтальная 16-мегапиксельная камера даст возможность создавать потрясающие селфи.</p>\r\n\r\n<p><strong>2 SIM-карты</strong></p>\r\n\r\n<p>С поддержкой 2 SIM-карт вы больше не ограничены в выборе оператора или тарифа и значительно сэкономите на звонках.</p>\r\n', '<p>Диагональ&nbsp; 5.2 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 6 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android 7.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>155 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>71.2x147.5x7.6 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>металл и стекло</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>попеременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной TFT, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>5.2 дюйма</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>1920x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Устойчивое к царапинам стекло</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>424</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>двойная 13/13 МП</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры</td>\r\n			<td>автофокус, режим макросъемки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 16 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диктофон</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Игры</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>mini jack 3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11ac, Bluetooth 4.1, USB, NFC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS/ГЛОНАСС</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>Qualcomm Snapdragon 653 MSM8976Pro</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>64 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор</td>\r\n			<td>Adreno 510</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>6 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти</td>\r\n			<td>microSD, microSDHC, microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объём карты памяти</td>\r\n			<td>200 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип аккумулятора</td>\r\n			<td>Li-polymer</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>3200 мА&sdot;ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аккумулятор</td>\r\n			<td>несъемный</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Громкая связь (встроенный динамик)</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>приближения, гироскоп, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Дополнительная информация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Особенности</td>\r\n			<td>стекло Gorilla Glass 3; двойная тыловая камера 13МП+13МП, двойная фронтальная камера 16МП+5МП</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Дата анонсирования</td>\r\n			<td>2017-10-12</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Дата начала продаж</td>\r\n			<td>2017-10-19</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Комплектация</p>\r\n\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, USB-кабель, зарядное устройство, скрепка для извлечения слота SIM-карты, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна производства</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 07:59:35', 1, 0, 0, 1, 5, 'mobile', 60, 1),
(68, 'Смартфон Vertex Impress Funk', 3190, 'Vertex', 'Vertex Impress Funk, Vertex', 'Vertex Impress Funk порадует широким функционалом. С четырехъядерным процессором и операционной системой Android 8.1 вам будет доступно множество игр, приложений и программ на любой вкус. Объем встроенной памяти составляет 8Гб - этого хватит, чтобы сохранить самые необходимые данные. Просмотр видеороликов на ярком экране в 3,97 дюйма принесет настоящее наслаждение! Vertex Impress Funk отличается сказочной цветопередачей и несравненным контрастом. С 3G связью вы сможете выходить в сеть, где бы вы не были.', '<p>Vertex Impress Funk порадует широким функционалом. С четырехъядерным процессором и операционной системой Android 8.1 вам будет доступно множество игр, приложений и программ на любой вкус. Объем встроенной памяти составляет 8Гб - этого хватит, чтобы сохранить самые необходимые данные. Просмотр видеороликов на ярком экране в 3,97 дюйма принесет настоящее наслаждение! Vertex Impress Funk отличается сказочной цветопередачей и несравненным контрастом. С 3G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n', 'mobile-68100.png', '<p>Смартфон Vertex Impress Funk порадует широким функционалом и позволит сэкономить семейный бюджет.</p>\r\n\r\n<p><strong>Умное устройство</strong></p>\r\n\r\n<p>С четырехъядерным процессором и операционной системой Android 8.1 вам будет доступно множество игр, приложений и программ на любой вкус.</p>\r\n\r\n<p>Объем встроенной памяти составляет 8Гб - этого хватит, чтобы сохранить самые необходимые данные. Также вы сможете воспользоваться карточкой памяти.</p>\r\n\r\n<p><strong>Насыщенность красок</strong></p>\r\n\r\n<p>Просмотр видеороликов на ярком экране в 3,97 дюйма принесет настоящее наслаждение! Vertex Impress Funk отличается сказочной цветопередачей и несравненным контрастом.</p>\r\n\r\n<p><strong>Увлекательный контент</strong></p>\r\n\r\n<p>С 3G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n\r\n<p>Стандарт GPS с точностью определит ваше местоположение, и вы не потеряетесь даже в чужом городе.</p>\r\n\r\n<p><strong>Камера всегда под рукой</strong></p>\r\n\r\n<p>С 5-мегапиксельной камерой вы сделаете хорошие снимки, и важные события вашей жизни навсегда останутся в памяти.</p>\r\n\r\n<p>Фронтальная 2-мегапиксельная камера даст возможность общаться с родными и близкими по видеосвязи.</p>\r\n\r\n<p><strong>Поддержка 2 SIM-карт</strong></p>\r\n\r\n<p>С поддержкой 2 SIM-карт у вас будет возможность значительно экономить на звонках и еще дольше общаться с родными и друзьями.</p>\r\n', '<p>Диагональ&nbsp; 3.97 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 512 Мб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android 8.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>micro SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>110 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>65x124x10.1 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>пластик</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>3.97 дюйма</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>800x480</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>5 млн пикс., 2592x1944, светодиодная вспышка</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры</td>\r\n			<td>автофокус</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Макс. разрешение видео</td>\r\n			<td>1280x720</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Макс. частота кадров видео</td>\r\n			<td>30 кадров/с</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 2 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11 b/g/n, Bluetooth 4.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Зарядка от USB</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Доступ в интернет</td>\r\n			<td>3G</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>1300 МГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>8 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор</td>\r\n			<td>MTK6580M</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>512 Мб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Формат карты памяти</td>\r\n			<td>micro SD, micro SDHC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объём карты памяти</td>\r\n			<td>32 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>1600 мА&sdot;ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аккумулятор</td>\r\n			<td>съемный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Время разговора</td>\r\n			<td>19 ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Время ожидания</td>\r\n			<td>290 ч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, USB-кабель, адаптер питания, аккумулятор, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна производства</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия</td>\r\n			<td>12 мес.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 14:47:18', 0, 0, 1, 1, 9, 'mobile', 58, 1),
(69, 'Смартфон Xiaomi Redmi Note 6 Pro ', 16990, 'Xiaomi', 'Xiaomi Redmi Note 6 Pro, Xiaomi', 'Xiaomi Redmi Note 6 Pro 3/32GB - мощное устройство! Современные игры принесут настоящее удовольствие, а работать в программах вы будете с комфортом благодаря восьмиядерному процессору и операционной системе Android. Объем встроенной памяти составляет 32 Гб - Xiaomi Redmi Note 6 Pro 3/32GB послужит надежным хранилищем информации. Вы в полной мере насладитесь просмотром любимых фильмов на ярком дисплее в 6,25 дюйма! Изображение будет максимально четким, и вы увидите малейшую деталь происходящего благодаря высокому разрешению 2280x1080.', '<p>Xiaomi Redmi Note 6 Pro 3/32GB - мощное устройство! Современные игры принесут настоящее удовольствие, а работать в программах вы будете с комфортом благодаря восьмиядерному процессору и операционной системе Android. Объем встроенной памяти составляет 32 Гб - Xiaomi Redmi Note 6 Pro 3/32GB послужит надежным хранилищем информации. Вы в полной мере насладитесь просмотром любимых фильмов на ярком дисплее в 6,25 дюйма! Изображение будет максимально четким, и вы увидите малейшую деталь происходящего благодаря высокому разрешению 2280x1080.</p>\r\n', 'mobile-6940.png', '<p>Смартфон Xiaomi Redmi Note 6 Pro 3/32GB - мощное устройство!</p>\r\n\r\n<p><strong>Отличная производительность</strong></p>\r\n\r\n<p>Современные игры принесут настоящее удовольствие, а работать в программах вы будете с комфортом благодаря восьмиядерному процессору и операционной системе Android. За счет оперативной памяти в 3 Гб смартфон моментально выполнит сразу несколько сложных задач.</p>\r\n\r\n<p>Объем встроенной памяти составляет 32 Гб - Xiaomi Redmi Note 6 Pro 3/32GB послужит надежным хранилищем информации. Для расширения вместимости устройства можно воспользоваться карточкой памяти.</p>\r\n\r\n<p><strong>Потрясающая графика</strong></p>\r\n\r\n<p>Вы в полной мере насладитесь просмотром любимых фильмов и чтением электронных книг на ярком дисплее в 6,25 дюйма!</p>\r\n\r\n<p>Изображение будет максимально четким, и вы увидите малейшую деталь происходящего благодаря высокому разрешению&nbsp;2280x1080.</p>\r\n\r\n<p><strong>Просторы сети Интернет</strong></p>\r\n\r\n<p>С 4G связью вы сможете выходить в сеть, где бы вы не были.</p>\r\n\r\n<p>Стандарт GPS с точностью определит ваши координаты, и вы не заблудитесь даже в чужом городе.</p>\r\n\r\n<p><strong>Создавайте шедевры</strong></p>\r\n\r\n<p>С двойной камерой на&nbsp;12/5&nbsp;мегапикселей вы сделаете качественные фотографии и не упустите важные события вашей жизни.</p>\r\n\r\n<p>Фронтальная камера на 20 мегапикселей даст возможность делать потрясающие селфи.</p>\r\n\r\n<p><strong>Длительная работа</strong></p>\r\n\r\n<p>Аккумулятор емкостью 4000 мАч позволит смартфону работать длительное время без подзарядки.</p>\r\n\r\n<p><strong>2 SIM-карты</strong></p>\r\n\r\n<p>С поддержкой 2 SIM-карт у вас будет возможность значительно экономить на разговорах и еще дольше общаться с близкими и родными.</p>\r\n', '<p>Диагональ&nbsp; 6.25 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 3 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>182 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>76.4x157.9x8.26 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>металл</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Конструкция</td>\r\n			<td>моноблок</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>попеременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>сенсорное</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>6.25 дюйма</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>2280x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Устойчивое к царапинам стекло</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>404</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>двойная 12/5 МП</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры</td>\r\n			<td>автофокус, светодиодная вспышка</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Распознавание</td>\r\n			<td>лиц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 20 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диктофон</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Игры</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11ac, Wi-Fi Direct, Bluetooth 5.0, IRDA, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Зарядка от USB</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS/ГЛОНАСС/BeiDou</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка диапазонов LTE</td>\r\n			<td>LTE FDD: B1/2/3/4/5/7/8/28; LTE TDD: B38/40</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>Qualcomm Snapdragon 636</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>32 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор</td>\r\n			<td>Adreno 509</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>3 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти</td>\r\n			<td>microSD, microSDHC, microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Формат карты памяти</td>\r\n			<td>microSD, microSDHC, microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объём карты памяти</td>\r\n			<td>256 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Питание</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип аккумулятора</td>\r\n			<td>Li-Pol</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>4000 мА&sdot;ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аккумулятор</td>\r\n			<td>несъемный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Время разговора</td>\r\n			<td>30 ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Время ожидания</td>\r\n			<td>100 ч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Громкая связь (встроенный динамик)</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>освещенности, приближения, Холла, гироскоп, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Дополнительная информация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Особенности</td>\r\n			<td>двойная фронтальная камера 20МП+2МП</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Комплектация</td>\r\n			<td>смартфон, зарядное устройство, USB 2.0 кабель, чехол, скрепка для извлечения SIM карты</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, кабель для синхронизации, зарядное устройство, скрепка для извлечения СИМ-карты, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна производства</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия</td>\r\n			<td>12 мес.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 14:52:45', 1, 0, 0, 1, 16, 'mobile', 59, 1),
(70, 'Смартфон ZTE Nubia Z17 mini', 15888, 'ZTE', 'ZTE Nubia Z17 mini 4, ZTE', 'Смартфон ZTE Nubia Z17 mini 4/64GB - возможности без границ! Современные игры принесут настоящее удовольствие, а приложения помогут справиться с повседневными задачами благодаря восьмиядерному процессору и операционной системе Android 6.0. Объем встроенной памяти составляет 64 Гб – вы сохраните множество данных. Смотреть фильмы и видеоролики на ярком экране в 5,2 дюйма - одно наслаждение! Благодаря высокому разрешению 1920x1080 изображение будет четким, и вы заметите малейшую деталь происходящего.', '<p>Смартфон ZTE Nubia Z17 mini 4/64GB - возможности без границ! Современные игры принесут настоящее удовольствие, а приложения помогут справиться с повседневными задачами благодаря восьмиядерному процессору и операционной системе Android 6.0. Объем встроенной памяти составляет 64 Гб &ndash; вы сохраните множество данных. Смотреть фильмы и видеоролики на ярком экране в 5,2 дюйма - одно наслаждение! Благодаря высокому разрешению 1920x1080 изображение будет четким, и вы заметите малейшую деталь происходящего.</p>\r\n', 'mobile-7030.png', '<p>Смартфон ZTE Nubia Z17 mini 4/64GB - возможности без границ!</p>\r\n\r\n<p><strong>Производительность</strong></p>\r\n\r\n<p>Современные игры принесут настоящее удовольствие, а приложения помогут справиться с повседневными задачами благодаря восьмиядерному процессору и операционной системе Android 6.0. За счет оперативной памяти в 4 Гб вы будете с комфортом работать в режиме многозадачности.</p>\r\n\r\n<p>Объем встроенной памяти составляет 64 Гб &ndash; вы сохраните множество данных. Также вы сможете воспользоваться карточкой памяти.</p>\r\n\r\n<p><strong>Приятного просмотра</strong></p>\r\n\r\n<p>Смотреть фильмы и видеоролики на ярком экране в 5,2 дюйма - одно наслаждение!</p>\r\n\r\n<p>Благодаря высокому разрешению 1920x1080 изображение будет четким, и вы заметите малейшую деталь происходящего.</p>\r\n\r\n<p><strong>Доступ в Интернет</strong></p>\r\n\r\n<p>С 4G связью веб-страницы открываются очень быстро.</p>\r\n\r\n<p>Используйте ваш смартфон в качестве навигатора - гаджет поддерживает стандарт GPS.</p>\r\n\r\n<p><strong>Создавайте шедевры</strong></p>\r\n\r\n<p>С двойной камерой на&nbsp;13/13&nbsp;мегапикселей вы создадите качественные снимки, и важные моменты вашей жизни навсегда останутся в памяти.</p>\r\n\r\n<p>Фронтальная 16-мегапиксельная камера даст возможность делать потрясающие селфи.</p>\r\n\r\n<p><strong>2 SIM-карты</strong></p>\r\n\r\n<p>Разделять личные и рабочие звонки легко и просто с поддержкой 2 SIM-карт.</p>\r\n', '<p>Диагональ&nbsp; 5.2 дюйма</p>\r\n\r\n<p>Количество SIM-карт&nbsp; 2</p>\r\n\r\n<p>Объем оперативной памяти&nbsp; 6 Гб</p>\r\n', '<p><strong>Общие характеристики</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android 7.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип корпуса</td>\r\n			<td>классический</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>155 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размеры (ШxВxТ)</td>\r\n			<td>71.2x147.5x7.6 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>металл и стекло</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Конструкция</td>\r\n			<td>моноблок</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим работы нескольких SIM-карт</td>\r\n			<td>попеременный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>сенсорное</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Платформа</td>\r\n			<td>Android</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Экран</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана</td>\r\n			<td>цветной TFT, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсорного экрана</td>\r\n			<td>мультитач, емкостный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>5.2 дюйма</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения</td>\r\n			<td>1920x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Устойчивое к царапинам стекло</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Число пикселей на дюйм (PPI)</td>\r\n			<td>424</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Мультимедийные возможности</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера</td>\r\n			<td>двойная 13/13 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры</td>\r\n			<td>автофокус, режим макросъемки, светодиодная вспышка, цифровой зум, панорамная съёмка</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>есть, 16 млн пикс.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диктофон</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Игры</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>mini jack 3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Связь</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Интерфейсы</td>\r\n			<td>Wi-Fi 802.11ac, Bluetooth 4.1, USB, NFC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Зарядка от USB</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>GPS/ГЛОНАСС</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Память и процессор</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор</td>\r\n			<td>Qualcomm Snapdragon 653 MSM8976Pro</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>64 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Слот карт памяти</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор</td>\r\n			<td>Adreno 510</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>6 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти</td>\r\n			<td>microSD, microSDHC, microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Формат карты памяти</td>\r\n			<td>microSD, microSDHC, microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объём карты памяти</td>\r\n			<td>200 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип аккумулятора</td>\r\n			<td>Li-polymer</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Емкость аккумулятора</td>\r\n			<td>3200 мА&sdot;ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аккумулятор</td>\r\n			<td>несъемный</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Другие функции</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Громкая связь (встроенный динамик)</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Управление</td>\r\n			<td>голосовой набор, голосовое управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики</td>\r\n			<td>приближения, гироскоп, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Режим полета</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фонарик</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Дополнительная информация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Особенности</td>\r\n			<td>стекло Gorilla Glass 3; двойная тыловая камера 13МП+13МП, двойная фронтальная камера 16МП+5МП</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Дата анонсирования</td>\r\n			<td>2017-10-12</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Дата начала продаж</td>\r\n			<td>2017-10-19</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Комплектация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Комплект поставки</td>\r\n			<td>Смартфон, USB-кабель, зарядное устройство, скрепка для извлечения слота SIM-карты, документация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Гарантия и сертификация</strong></p>\r\n\r\n<hr />\r\n<table style=\"width:645.6px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна производства</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия</td>\r\n			<td>12 мес.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-03-04 15:00:01', 1, 0, 0, 1, 18, 'mobile', 60, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `table_reviews`
--

CREATE TABLE `table_reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `good_reviews` text NOT NULL,
  `bad_reviews` text NOT NULL,
  `comment` text NOT NULL,
  `date` date NOT NULL,
  `moderat` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `table_reviews`
--

INSERT INTO `table_reviews` (`reviews_id`, `products_id`, `name`, `good_reviews`, `bad_reviews`, `comment`, `date`, `moderat`) VALUES
(41, 54, 'Александр', 'Хороший смартфон. Экран яркий, сканер отпечатка пальцев работает быстро, функционал хороший, удобное меню, в руке лежит хорошо. Заряжается быстро, правда на день заряда не хватит. Камера тоже отличная.', 'Смартфон может выключится на холоде, но это небольшой минус, так как это сделано для защиты батареи.', 'Недавно приобрёл этот смартфон. Телефон стоит своих денег. Качественный, все-таки это Аpple.', '2019-03-04', 1),
(42, 56, 'Наталья', 'В руках очень удобно и приятно держать, как влитой.', 'Единственное, что не понравилось - это наушники в комплекте, уж больно допотопные и неудобные.', 'Начну с того, что семейством Самсунгов уже пользуюсь лет 6, и линейка А радует каждый раз. До этого смартфона был A5 (2016), но у техники есть срок годности, пришлось бежать за новым телефончиком. Дизайн данной модели чем то напоминает Айфон, опять же порадовала фронтальная вспышка для селфи, её раньше очень не хватало. Так же металлический корпус - это определенно  , т.к. имею привычку ронять свои телефоны. Диагональ экрана не слишком отличается от модели моего предыдущего смартфона, но нет кнопок на экране, что опять же большой  . Внутренняя память 32G - это прям подарок для меня, я поклонница больших количеств приложений, вечно не достаёт внутри памяти, а тут прям как надо. В руках очень удобно и приятно держать, как влитой. Зарядку может держать до двух суток, что тоже огромный плюс. Единственное, что не понравилось - это наушники в комплекте, уж больно допотопные и неудобные. А так шикарный смартфон.', '2019-03-04', 1),
(43, 57, 'Екатерина', 'Удобно держать в руке. Громкий. Яркий дисплей. Неплохая камера.', 'Нет возможности на каждый контакт установить мелодию и фото. Но это не страшно.', 'Телефон покупала для мамы! Она довольна. Телефон довольно простой в обращении. Но хотелось бы установить мелодию и фото на некоторые контакты.', '2019-03-04', 1),
(44, 57, 'Владимир', 'Отличный телефон, покупал сыну на новый год. Производительный процессор, батарея хорошо держит заряд, сочные краски экрана. Самое главное - адекватная цена.', 'Нет. Пока все устраивает.', 'Выполняет свои функции на отлично.', '2019-03-04', 1),
(45, 57, 'Вадим', 'Батарея, камера, процессор. Обновления пошли на пользу, думаю модель станет одной из самых ходовых. Достаточно просто и со вкусом', '-', 'Доволен своим выбором, телефон бюджетный, но очень качественный, никаких претензий к сборке, все замечательно. Прочный корпус, не утяжеляет, приличный имеет вид', '2019-03-04', 1),
(46, 58, 'Ришат', 'Отсутствие рамок по бокам, хороший динамик, звук в наушниках(аудиочип), качественный дисплей, телефон вообще не греется, небольшие габариты несмотря на дисплей 5,5', 'Камера хоть и хорошо снимает, но только 12мп, как по мне основной недостаток это цена, но только на данный момент если бы он стоил 17 или 18, то лично для меня был бы лучшим', 'Если хотите взять именно его то лучше подождать', '2019-03-04', 1),
(47, 58, 'Виолетта Никола', 'Низкая цена, очень классный большой экран, мгновенный сканер отпечатков, шикарный звук.', 'Не выявлено.', 'Отличный недорогой аппарат, который, по сути, является младшим флагманом. Стоит адекватных денег, железа хватит для любых задач.', '2019-03-04', 1),
(48, 60, 'Ильнур', 'Красивый эргономичный дизайн. Отдельный слот для флешки. Яркий дисплей. Низкая цена.', 'Не нашел.', 'Купите телефон. Отличный, недорогой вариант.', '2019-03-04', 1),
(49, 60, 'Иван', 'Хороший телефон, громкий динамик, удобен.', 'Слегка бывает подтормаживает.', 'В целом, отличный аппарат. Прекрасное соотношение цена/качество. Сразу идет с защитным стеклом (мне попался такой). Сканер отпечатка пальца работает на ура. Так же понравилась функция распознавания лица - срабатывает быстро.', '2019-03-04', 1),
(50, 62, 'Ришат', 'Хороший смартфон. Отличный, почти безрамочный экран. В антуту набирает рейтинг около 50 000. Неплохие камеры за такие деньги. Экран яркий. Не лагает.', 'Не обнаружил.', 'Пользуюсь уже 3 месяца.', '2019-03-04', 1),
(51, 62, 'Наталья', 'Прост в использовании,четкость снимков. Металлический корпус ,достаточно легкий, тонкий. На задней части телефона присутствует сканер отпечатка пальца', 'пока не нашли', 'Долго выбирали,консультанты посоветовали именно эту модель. Не ошиблись,громкий звук. Качество снимков супер!', '2019-03-04', 1),
(52, 63, 'Круиз', 'Камера,не плохой дисплей.', 'Отк и вкл сам,скрипит задняя панель и тд Очень глючный.', 'Принес в магазин после недели использования.Не советую к покупке.', '2019-03-04', 1),
(53, 64, 'Ксения', 'Осталась всем довольна. Качественный и мощный смартфон. Функциональность, быстродействие, стабильность системы и постоянные обновления, удобен в использовании. Быстрый. Хорошие: батарея, камера, звук, цветопередача.', 'Пока не обнаружено.', 'Отличный смартфон, недостатков нет.', '2019-03-04', 1),
(54, 64, 'Наталья', 'Мне очень понравились: дизайн и качество изображения. Также минимальные рамки вокруг экрана. Аппарат вполне комфортно ощущается в руках. Пользоваться им очень удобно. Мощный процессор и хорошее качество фотографий и видео съемки меня определённо радуют.', 'Пока не обнаружила.', 'Довольна.', '2019-03-04', 1),
(55, 64, 'Эдуард', 'Хороший телефон за эту сумму, дисплей с хорошей передачей цветов под углами не бликует. Памяти, правда, маловато, но зато есть отдельный лоток под флешку и для двух сим карт. Есть разблокировка по лицу.', 'Не хватает мощности для хороших игр.', 'А так доволен покупкой, мне понравился данный смартфон.', '2019-03-04', 1),
(56, 64, 'Дмитрий', 'Относительно за небольшую цену, телефон достойный для своих средств, производительности вполне хватает для повседневных нетребовательных задач, игры и приложения работают отлично, зарядки хватает примерно на сутки.', 'Плохая камера с самыми примитивными настройками, глючащий датчик приближения, куча не стираемых ненужных приложений.', 'Лучше, чем Самсунг в этой ценовой категории.', '2019-03-04', 1),
(57, 69, 'Иван', 'Отличный телефон', 'Нет.', '1. Камеры - как основная, так и фронтальная, просто шикарные. Стабилизация в видео. Видеозаписи получаются как на профессиональную камеру. 2. Батарея. Долгоиграющая батарея, хватает на 2-е суток. 3. Процессор. Шустрый телефон, все летает, не тормозит и не зависает. 4. Звук. Отличное качество звучания как в наушниках, так и в динамике. 5. Система MIUI. Постоянные обновления. МIUI к марту обновится до Android 9.0. Отличный телефон.', '2019-03-04', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uploads_images`
--

CREATE TABLE `uploads_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uploads_images`
--

INSERT INTO `uploads_images` (`id`, `products_id`, `image`) VALUES
(1, 12, 'mobile-160.png'),
(2, 12, 'mobile-227.png'),
(3, 12, 'mobile-156.png'),
(4, 13, 'mobile-376.png'),
(5, 13, 'mobile-308.png'),
(6, 13, 'mobile-486.png'),
(7, 13, 'mobile-422.png'),
(8, 13, 'mobile-186.png'),
(9, 13, 'mobile-393.png'),
(10, 13, 'mobile-381.png'),
(11, 13, 'mobile-431.png'),
(12, 14, 'mobile-288.png'),
(13, 14, 'mobile-297.png'),
(14, 14, 'mobile-302.png'),
(15, 15, 'mobile-285.png'),
(16, 15, 'mobile-227.png'),
(17, 16, 'mobile-340.png'),
(18, 16, 'mobile-216.png'),
(19, 17, 'mobile-199.png'),
(20, 17, 'mobile-291.png'),
(21, 18, 'notebook-360.png'),
(22, 18, 'notebook-235.png'),
(23, 18, 'notebook-140.png'),
(24, 18, 'notebook-381.png'),
(25, 18, 'notebook-487.png'),
(26, 18, 'notebook-172.png'),
(27, 19, 'notebook-466.png'),
(28, 19, 'notebook-183.png'),
(29, 19, 'notebook-393.png'),
(30, 20, 'mobile-166.png'),
(31, 20, 'mobile-264.png'),
(32, 20, 'mobile-132.png'),
(33, 20, 'mobile-422.png'),
(34, 20, 'mobile-144.png'),
(39, 21, 'mobile-278.png'),
(40, 21, 'mobile-208.png'),
(41, 21, 'mobile-343.png'),
(42, 21, 'mobile-101.png'),
(43, 22, 'mobile-256.png'),
(44, 22, 'mobile-257.png'),
(45, 22, 'mobile-410.png'),
(46, 23, 'mobile-267.png'),
(47, 23, 'mobile-433.png'),
(48, 23, 'mobile-447.png'),
(49, 23, 'mobile-496.png'),
(50, 24, 'mobile-311.png'),
(51, 24, 'mobile-214.png'),
(52, 24, 'mobile-221.png'),
(53, 25, 'mobile-139.png'),
(54, 25, 'mobile-193.png'),
(55, 26, 'mobile-405.png'),
(56, 26, 'mobile-458.png'),
(57, 26, 'mobile-421.png'),
(58, 26, 'mobile-236.png'),
(59, 27, 'mobile-423.png'),
(60, 27, 'mobile-126.png'),
(61, 27, 'mobile-393.png'),
(62, 27, 'mobile-433.png'),
(63, 27, 'mobile-130.png'),
(64, 27, 'mobile-146.png'),
(65, 28, 'mobile-301.png'),
(66, 28, 'mobile-187.png'),
(67, 28, 'mobile-387.png'),
(68, 28, 'mobile-159.png'),
(69, 28, 'mobile-178.png'),
(70, 28, 'mobile-348.png'),
(71, 28, 'mobile-174.png'),
(72, 28, 'mobile-394.png'),
(73, 28, 'mobile-305.png'),
(74, 29, 'mobile-235.png'),
(75, 29, 'mobile-400.png'),
(76, 29, 'mobile-383.png'),
(77, 29, 'mobile-152.png'),
(78, 30, 'mobile-480.png'),
(79, 30, 'mobile-493.png'),
(80, 30, 'mobile-111.png'),
(81, 31, 'mobile-438.png'),
(82, 31, 'mobile-377.png'),
(83, 31, 'mobile-477.png'),
(84, 31, 'mobile-406.png'),
(85, 31, 'mobile-353.png'),
(86, 31, 'mobile-452.png'),
(87, 31, 'mobile-354.png'),
(88, 32, 'mobile-355.png'),
(89, 32, 'mobile-264.png'),
(90, 32, 'mobile-250.png'),
(91, 32, 'mobile-265.png'),
(92, 32, 'mobile-368.png'),
(93, 33, 'mobile-298.png'),
(94, 33, 'mobile-174.png'),
(95, 33, 'mobile-361.png'),
(96, 34, 'mobile-342.png'),
(97, 34, 'mobile-332.png'),
(98, 34, 'mobile-354.png'),
(99, 35, 'mobile-483.png'),
(100, 35, 'mobile-130.png'),
(101, 35, 'mobile-329.png'),
(102, 35, 'mobile-176.png'),
(103, 36, 'mobile-290.png'),
(104, 36, 'mobile-483.png'),
(105, 37, 'mobile-154.png'),
(106, 37, 'mobile-444.png'),
(107, 37, 'mobile-249.png'),
(108, 37, 'mobile-473.png'),
(109, 38, 'mobile-143.png'),
(110, 38, 'mobile-187.png'),
(111, 38, 'mobile-340.png'),
(112, 38, 'mobile-206.png'),
(113, 38, 'mobile-367.png'),
(114, 38, 'mobile-168.png'),
(115, 38, 'mobile-488.png'),
(116, 39, 'mobile-362.png'),
(117, 40, 'mobile-214.png'),
(118, 40, 'mobile-199.png'),
(119, 40, 'mobile-158.png'),
(120, 40, 'mobile-475.png'),
(121, 40, 'mobile-389.png'),
(122, 41, 'mobile-142.png'),
(123, 41, 'mobile-349.png'),
(124, 42, 'mobile-179.png'),
(125, 42, 'mobile-159.png'),
(126, 42, 'mobile-310.png'),
(127, 42, 'mobile-458.png'),
(128, 42, 'mobile-116.png'),
(129, 42, 'mobile-330.png'),
(130, 42, 'mobile-236.png'),
(131, 42, 'mobile-368.png'),
(132, 42, 'mobile-147.png'),
(133, 42, 'mobile-196.png'),
(134, 42, 'mobile-479.png'),
(135, 42, 'mobile-188.png'),
(136, 43, 'mobile-162.png'),
(137, 44, 'mobile-402.png'),
(138, 0, 'mobile-243.png'),
(139, 0, 'mobile-177.png'),
(140, 0, 'mobile-407.png'),
(141, 0, 'mobile-303.png'),
(142, 0, 'mobile-143.png'),
(143, 0, 'mobile-440.png'),
(144, 0, 'mobile-215.png'),
(145, 0, 'mobile-451.png'),
(146, 0, 'mobile-103.png'),
(147, 0, 'mobile-208.png'),
(148, 0, 'mobile-483.png'),
(149, 0, 'mobile-209.png'),
(155, 53, 'mobile-289.png'),
(156, 53, 'mobile-455.png'),
(157, 53, 'mobile-180.png'),
(158, 53, 'mobile-117.png'),
(159, 53, 'mobile-332.png'),
(160, 54, 'mobile-394.png'),
(161, 54, 'mobile-173.png'),
(162, 54, 'mobile-326.png'),
(163, 54, 'mobile-446.png'),
(164, 54, 'mobile-460.png'),
(165, 54, 'mobile-280.png'),
(166, 54, 'mobile-339.png'),
(167, 55, 'mobile-343.png'),
(168, 55, 'mobile-433.png'),
(169, 55, 'mobile-496.png'),
(170, 55, 'mobile-177.png'),
(171, 56, 'mobile-438.png'),
(172, 56, 'mobile-358.png'),
(173, 56, 'mobile-246.png'),
(174, 56, 'mobile-187.png'),
(175, 56, 'mobile-399.png'),
(176, 57, 'mobile-353.png'),
(177, 57, 'mobile-219.png'),
(178, 58, 'mobile-151.png'),
(179, 58, 'mobile-161.png'),
(180, 58, 'mobile-164.png'),
(181, 58, 'mobile-286.png'),
(182, 59, 'mobile-333.png'),
(183, 59, 'mobile-142.png'),
(184, 59, 'mobile-444.png'),
(185, 59, 'mobile-216.png'),
(186, 59, 'mobile-210.png'),
(187, 59, 'mobile-309.png'),
(188, 59, 'mobile-152.png'),
(189, 60, 'mobile-351.png'),
(190, 60, 'mobile-497.png'),
(191, 60, 'mobile-399.png'),
(192, 60, 'mobile-396.png'),
(193, 60, 'mobile-336.png'),
(194, 61, 'mobile-303.png'),
(195, 61, 'mobile-378.png'),
(196, 61, 'mobile-275.png'),
(197, 61, 'mobile-195.png'),
(198, 61, 'mobile-214.png'),
(199, 61, 'mobile-155.png'),
(200, 61, 'mobile-312.png'),
(201, 61, 'mobile-470.png'),
(202, 61, 'mobile-164.png'),
(203, 61, 'mobile-496.png'),
(204, 61, 'mobile-149.png'),
(205, 62, 'mobile-167.png'),
(206, 62, 'mobile-279.png'),
(207, 62, 'mobile-119.png'),
(208, 63, 'mobile-351.png'),
(209, 63, 'mobile-401.png'),
(210, 63, 'mobile-248.png'),
(211, 63, 'mobile-347.png'),
(212, 63, 'mobile-176.png'),
(213, 64, 'mobile-307.png'),
(214, 64, 'mobile-172.png'),
(215, 0, 'mobile-480.png'),
(216, 0, 'mobile-361.png'),
(217, 0, 'mobile-412.png'),
(218, 0, 'mobile-456.png'),
(219, 0, 'mobile-199.png'),
(220, 65, 'mobile-270.png'),
(221, 65, 'mobile-445.png'),
(222, 65, 'mobile-483.png'),
(223, 65, 'mobile-449.png'),
(224, 65, 'mobile-209.png'),
(225, 66, 'mobile-146.png'),
(226, 66, 'mobile-346.png'),
(227, 66, 'mobile-241.png'),
(228, 66, 'mobile-299.png'),
(229, 66, 'mobile-365.png'),
(230, 66, 'mobile-300.png'),
(231, 66, 'mobile-242.png'),
(232, 66, 'mobile-320.png'),
(233, 66, 'mobile-383.png'),
(234, 67, 'mobile-367.png'),
(235, 67, 'mobile-280.png'),
(236, 67, 'mobile-444.png'),
(237, 67, 'mobile-400.png'),
(238, 67, 'mobile-310.png'),
(239, 67, 'mobile-351.png'),
(240, 67, 'mobile-412.png'),
(241, 67, 'mobile-370.png'),
(242, 67, 'mobile-361.png'),
(243, 67, 'mobile-352.png'),
(244, 67, 'mobile-218.png'),
(245, 68, 'mobile-468.png'),
(246, 69, 'mobile-403.png'),
(247, 70, 'mobile-445.png'),
(248, 70, 'mobile-130.png'),
(249, 70, 'mobile-284.png'),
(250, 70, 'mobile-311.png');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `buy_products`
--
ALTER TABLE `buy_products`
  ADD PRIMARY KEY (`buy_id`),
  ADD KEY `buy_id_order` (`buy_id_order`),
  ADD KEY `buy_id_product` (`buy_id_product`);

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id_products` (`cart_id_products`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `localization`
--
ALTER TABLE `localization`
  ADD PRIMARY KEY (`id`) KEY_BLOCK_SIZE=64 USING BTREE COMMENT 'MD5 хеш для строки на языке по умолчанию (русский)';

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ok_blacklist`
--
ALTER TABLE `ok_blacklist`
  ADD KEY `ip_user` (`ip_user`);

--
-- Индексы таблицы `ok_files`
--
ALTER TABLE `ok_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Индексы таблицы `ok_group`
--
ALTER TABLE `ok_group`
  ADD PRIMARY KEY (`group_id`);

--
-- Индексы таблицы `ok_messages`
--
ALTER TABLE `ok_messages`
  ADD PRIMARY KEY (`id_mess`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `is_for` (`is_for`),
  ADD KEY `wr_date` (`wr_date`);

--
-- Индексы таблицы `ok_moving`
--
ALTER TABLE `ok_moving`
  ADD KEY `user_ip` (`user_ip`);

--
-- Индексы таблицы `ok_online`
--
ALTER TABLE `ok_online`
  ADD PRIMARY KEY (`user_ip`);

--
-- Индексы таблицы `ok_operators`
--
ALTER TABLE `ok_operators`
  ADD PRIMARY KEY (`operator_id`),
  ADD KEY `operator_otdel` (`operator_id`);

--
-- Индексы таблицы `ok_operators_chat`
--
ALTER TABLE `ok_operators_chat`
  ADD PRIMARY KEY (`id_mess`);

--
-- Индексы таблицы `ok_phrases`
--
ALTER TABLE `ok_phrases`
  ADD PRIMARY KEY (`id_phrases`);

--
-- Индексы таблицы `ok_typing`
--
ALTER TABLE `ok_typing`
  ADD PRIMARY KEY (`id_user`);

--
-- Индексы таблицы `ok_url`
--
ALTER TABLE `ok_url`
  ADD PRIMARY KEY (`id_user`);

--
-- Индексы таблицы `ok_users`
--
ALTER TABLE `ok_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_ip` (`user_ip`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `reg_admin`
--
ALTER TABLE `reg_admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reg_user`
--
ALTER TABLE `reg_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `table_products`
--
ALTER TABLE `table_products`
  ADD PRIMARY KEY (`products_id`);

--
-- Индексы таблицы `table_reviews`
--
ALTER TABLE `table_reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Индексы таблицы `uploads_images`
--
ALTER TABLE `uploads_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `buy_products`
--
ALTER TABLE `buy_products`
  MODIFY `buy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `ok_files`
--
ALTER TABLE `ok_files`
  MODIFY `file_id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ok_group`
--
ALTER TABLE `ok_group`
  MODIFY `group_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `ok_messages`
--
ALTER TABLE `ok_messages`
  MODIFY `id_mess` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `ok_operators`
--
ALTER TABLE `ok_operators`
  MODIFY `operator_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `ok_operators_chat`
--
ALTER TABLE `ok_operators_chat`
  MODIFY `id_mess` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ok_phrases`
--
ALTER TABLE `ok_phrases`
  MODIFY `id_phrases` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ok_users`
--
ALTER TABLE `ok_users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `reg_admin`
--
ALTER TABLE `reg_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `reg_user`
--
ALTER TABLE `reg_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `table_products`
--
ALTER TABLE `table_products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT для таблицы `table_reviews`
--
ALTER TABLE `table_reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `uploads_images`
--
ALTER TABLE `uploads_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
