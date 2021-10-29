-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 24 2020 г., 11:24
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ta19vfedotov`
--

-- --------------------------------------------------------

--
-- Структура таблицы `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `lang` varchar(3) NOT NULL,
  `code` tinytext NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `terms`
--

INSERT INTO `terms` (`id`, `lang`, `code`, `title`) VALUES
(1, 'ENG', 'getStarted', 'Get Started'),
(2, 'EST', 'getStarted', 'Alustame'),
(3, 'RUS', 'getStarted', 'Начнём'),
(4, 'ENG', 'aboutUs', 'About us'),
(5, 'EST', 'aboutUs', 'Meist'),
(6, 'RUS', 'aboutUs', 'О нас'),
(7, 'ENG', 'siteHome', 'Home'),
(8, 'RUS', 'siteHome', 'На главную'),
(9, 'EST', 'siteHome', 'Esileht'),
(10, 'ENG', 'serVice', 'Services'),
(11, 'RUS', 'serVice', 'Сервисы'),
(12, 'EST', 'serVice', 'Teenused'),
(13, 'ENG', 'portFolio', 'Portfolio'),
(14, 'EST', 'portFolio', 'Portfell'),
(15, 'RUS', 'portFolio', 'Портфолио'),
(16, 'ENG', 'teAm', 'Team'),
(17, 'RUS', 'teAm', 'Команда'),
(18, 'EST', 'teAm', 'Võistkond'),
(19, 'ENG', 'bloG', 'Blog'),
(20, 'RUS', 'bloG', 'Блог'),
(21, 'EST', 'bloG', 'Blogi'),
(22, 'ENG', 'contacT', 'Contact'),
(23, 'RUS', 'contacT', 'Контакты'),
(24, 'EST', 'contacT', 'Kontaktid'),
(25, 'ENG', 'textHero1', 'Bettter digital experience with Presento'),
(26, 'EST', 'textHero1', 'Parem digitaalne kogemus Presentoga'),
(27, 'RUS', 'textHero1', 'Лучший цифровой опыт с Presento'),
(28, 'RUS', 'textHero2', 'Мы команда талантливых дизайнеров, создающих сайты на Bootstrap.'),
(29, 'ENG', 'textHero2', 'We are team of talanted designers making websites with Bootstrap'),
(30, 'EST', 'textHero2', 'Oleme andekate disainerite meeskond, kes teeb Bootstrapiga veebisaite'),
(31, 'ENG', 'happyClients', 'Happy Clients'),
(32, 'RUS', 'happyClients', 'Остались довольны'),
(33, 'EST', 'happyClients', 'rahulolevad kliendid'),
(34, 'ENG', 'proJ', 'Projects'),
(35, 'RUS', 'proJ', 'Проекты'),
(36, 'EST', 'proJ', 'Projektid'),
(37, 'EST', 'houRS', 'Tundi toetust'),
(38, 'ENG', 'houRS', 'Hours Of Support'),
(39, 'RUS', 'houRS', 'Часы поддержки'),
(40, 'RUS', 'rabotjagi', 'Работяги'),
(41, 'ENG', 'rabotjagi', 'Hard Workers'),
(42, 'EST', 'rabotjagi', 'Kõvad töötajad'),
(43, 'RUS', 'testim', 'Отзывы'),
(44, 'ENG', 'testim', 'Testimonials'),
(45, 'EST', 'testim', 'Kirjeldused'),
(46, 'EST', 'pricing', 'Hind'),
(47, 'ENG', 'pricing', 'Pricing'),
(48, 'RUS', 'pricing', 'Цены'),
(49, 'RUS', 'perm', '/ в месяц'),
(50, 'EST', 'perm', '/ kuu'),
(51, 'ENG', 'perm', '/ per month'),
(52, 'ENG', 'buyNow', 'Buy Now'),
(53, 'RUS', 'buyNow', 'Купить сейчас'),
(54, 'EST', 'buyNow', 'Osta praegu'),
(55, 'RUS', 'quesT', 'Часто задаваемые вопросы'),
(56, 'ENG', 'quesT', 'FREQUENTLY ASKED QUESTIONS'),
(57, 'EST', 'quesT', 'KORDUMA KIPPUVAD KÜSIMUSED'),
(58, 'ENG', 'messs', 'Send Message'),
(59, 'RUS', 'messs', 'Отправить сообщение'),
(60, 'EST', 'messs', 'Saada sõnum'),
(61, 'ENG', 'adres', 'Our Address'),
(62, 'RUS', 'adres', 'Наш адрес'),
(63, 'EST', 'adres', 'Meie aadress'),
(64, 'RUS', 'emaail', 'Наш э-майл'),
(65, 'EST', 'emaail', 'Meie e-post'),
(66, 'ENG', 'emaail', 'Our e-mail'),
(67, 'RUS', 'numnum', 'Наш номер'),
(68, 'ENG', 'numnum', 'Our number'),
(69, 'EST', 'numnum', 'Meie number'),
(70, 'ENG', 'subscribE', 'Subscribe'),
(71, 'RUS', 'subscribE', 'Подписаться'),
(72, 'EST', 'subscribE', 'Telli'),
(73, 'ENG', 'joiN', 'Join Our Newsletter'),
(74, 'RUS', 'joiN', 'Присоединись к нашим новостям'),
(75, 'EST', 'joiN', 'Liituge meie uudiskirjaga'),
(76, 'RUS', 'linkS', 'Полезные ссылки'),
(77, 'ENG', 'linkS', 'Useful links'),
(78, 'EST', 'linkS', 'Kasulikud lingid'),
(79, 'EST', 'kasutuS', 'Kasutustingimused'),
(80, 'ENG', 'kasutuS', 'Terms of service'),
(81, 'RUS', 'kasutuS', 'Условия использования'),
(82, 'RUS', 'polIce', 'Политика конфиденциальности'),
(83, 'ENG', 'polIce', 'Privacy policy'),
(84, 'EST', 'polIce', 'Privaatsuspoliitika'),
(85, 'EST', 'veeB', 'Veebikujundus'),
(86, 'ENG', 'veeB', 'Web Design'),
(87, 'RUS', 'veeB', 'Веб-дизайн'),
(88, 'RUS', 'develOP', 'Веб-разработка'),
(89, 'ENG', 'develOP', 'Web development'),
(90, 'EST', 'develOP', 'Veebiarendus'),
(91, 'EST', 'manaGE', 'Tootehaldus'),
(92, 'ENG', 'manaGE', 'Product Management'),
(93, 'RUS', 'manaGE', 'Управление продуктом'),
(94, 'RUS', 'markeTing', 'Маркетинг'),
(95, 'EST', 'markeTing', 'Turundus'),
(96, 'ENG', 'markeTing', 'Marketing'),
(97, 'EST', 'disaiN', 'Graafiline disain'),
(98, 'ENG', 'disaiN', 'Graphic Design'),
(99, 'RUS', 'disaiN', 'Графический дизайн'),
(100, 'ENG', 'naMe', 'Name'),
(101, 'RUS', 'naMe', 'Имя'),
(102, 'EST', 'naMe', 'Nimi'),
(103, 'ENG', 'lastName', 'Last Name'),
(104, 'EST', 'lastName', 'Perekonnanimi'),
(105, 'RUS', 'lastName', 'Фамилия'),
(106, 'ENG', 'eMail', 'Email'),
(107, 'EST', 'eMail', 'E-post'),
(108, 'RUS', 'eMail', 'Э-майл'),
(109, 'ENG', 'texT1', 'Description'),
(110, 'RUS', 'texT1', 'Описание'),
(111, 'EST', 'texT1', 'Kirjeldus'),
(112, 'ENG', 'aLL', 'All'),
(113, 'RUS', 'aLL', 'Всё'),
(114, 'EST', 'aLL', 'Kõik');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
