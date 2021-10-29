-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 06 2020 г., 22:28
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
-- База данных: `a2b_projects`
--

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `code` tinytext NOT NULL,
  `lang` varchar(3) NOT NULL,
  `listOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `code`, `lang`, `listOrder`) VALUES
(1, 'RUS', 'RUS', 1),
(2, 'EST', 'EST', 2),
(3, 'ENG', 'ENG', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `code` tinytext NOT NULL,
  `value` text NOT NULL,
  `link` mediumtext NOT NULL,
  `listOrder` int(11) NOT NULL,
  `lang` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `code`, `value`, `link`, `listOrder`, `lang`) VALUES
(1, 'esiLeht', 'Esileht', 'link', 1, 'EST'),
(2, 'esiLeht', 'Домой', 'link', 2, 'RUS'),
(3, 'esiLeht', 'Home', '#', 3, 'ENG'),
(4, 'teeNused', 'Teenused', '#', 4, 'EST'),
(5, 'teeNused', 'Services', '#', 5, 'ENG'),
(6, 'teeNused', 'Услуги', '#', 6, 'RUS'),
(7, 'aboutUs', 'About Us', '#about_us', 7, 'ENG'),
(8, 'aboutUs', 'О нас', '#about_us', 8, 'RUS'),
(9, 'aboutUs', 'Meist', '#about_us', 9, 'EST'),
(10, 'telliDa', 'Tellida', '#order', 10, 'EST'),
(11, 'telliDa', 'Заказать', '#order', 11, 'RUS'),
(12, 'telliDa', 'Order', '#order', 12, 'ENG');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `code` tinytext NOT NULL,
  `title` tinytext NOT NULL,
  `lead` mediumtext NOT NULL,
  `theText` text NOT NULL,
  `listOrder` int(11) NOT NULL,
  `photo` text NOT NULL,
  `lang` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `code`, `title`, `lead`, `theText`, `listOrder`, `photo`, `lang`) VALUES
(1, 'service1', 'Съёмка и продюссирование ваших проектов', 'Съёмка и продюссирование ваших проектов', 'Представляем вам услугу', 1, 'service1.jpg', 'RUS'),
(2, 'service1', 'Filming and producing your projects', 'Filming and producing your projects', 'We present you a service', 1, 'service1.jpg', 'ENG'),
(3, 'service1', 'Oma projektide filmimine ja tootmine', 'Oma projektide filmimine ja tootmine', 'Pakume teile teenust', 1, 'service1.jpg', 'EST'),
(4, 'service2', 'Filming and producing your projects', 'Filming and producing your projects', 'We present you a service', 2, 'service1.jpg', 'ENG'),
(5, 'service2', 'Oma projektide filmimine ja tootmine', 'Oma projektide filmimine ja tootmine', 'Pakume teile teenust', 2, 'service1.jpg', 'EST'),
(6, 'service2', 'Съёмка и продюссирование ваших проектов', 'Съёмка и продюссирование ваших проектов', 'Представляем вам услугу', 2, 'service1.jpg', 'RUS');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `code` tinytext NOT NULL,
  `value` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `code`, `value`) VALUES
(1, 'a2bLogo', 'loGo3.png'),
(2, 'a2bShapka', 'logo.jpg'),
(3, 'a2bShapka2', 'shapka.jpg'),
(4, 'a2bgif', 'video1.gif'),
(5, 'a2bgif', 'video2.gif'),
(6, 'holiDays', 'holidays.gif'),
(7, 'terminator', 'terminator.jpg'),
(8, 'romelus', 'romelus.jpg'),
(9, 'sanja', 'sanja.jpg'),
(10, 'capcHA', 'captcha.php'),
(11, 'tEAM', 'team.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `code` tinytext NOT NULL,
  `value` mediumtext NOT NULL,
  `lang` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `terms`
--

INSERT INTO `terms` (`id`, `code`, `value`, `lang`) VALUES
(4, 'teeNused2', 'Teenused', 'EST'),
(5, 'teeNused2', 'Услуги', 'RUS'),
(6, 'teeNused2', 'Services', 'ENG'),
(7, 'loeEdasi', 'Подробнее...', 'RUS'),
(8, 'loeEdasi', 'Loe edasi...', 'EST'),
(9, 'loeEdasi', 'More details...', 'ENG'),
(10, 'aboutUs2', 'About us', 'ENG'),
(11, 'aboutUs2', 'О нас', 'RUS'),
(12, 'aboutUs2', 'Meist', 'EST'),
(13, 'perehod', 'Перейти по ссылке...', 'RUS'),
(14, 'perehod', 'Follow the link...', 'ENG'),
(15, 'perehod', 'Järgige linki ...', 'EST'),
(16, 'ourTeam', 'Our team:', 'ENG'),
(17, 'ourTeam', 'Наша команда:', 'RUS'),
(18, 'ourTeam', 'Meie võistkond:', 'EST'),
(19, 'teamText', 'A2B PROJECTS team - это проект издательства любительского художественного контента в составе самых обыкновенных любителей кинематографа.\r\n  С нашим творчеством можно ознакомиться подробнее по переходу по ссылке.', 'RUS'),
(20, 'teamText', 'A2B PROJECTS meeskond on amatöörkunsti sisu kirjastuse projekt, mis koosneb kõige tavalisematest filmisõpradest.\r\n   Meie töö kohta saate lisateavet lingile klõpsates.', 'EST'),
(21, 'teamText', 'The A2B PROJECTS team is a project of an amateur art content publishing house made up of the most ordinary film lovers. You can learn more about our work by clicking on the link.', 'ENG'),
(22, 'mainNames', '                                                                            Aleksei Stsigartsov        Ilya Habarov     Alekasnder Pozdnyakov  \r\n                                                                         Главный режиссер-продюссер  Оператор-монтажёр  Младший основатель', 'RUS'),
(23, 'mainNames', '                                                                            Aleksei Stsigartsov        Ilya Habarov     Alekasnder Pozdnyakov  \r\n                                                                         Main director-producer Operator-editor Junior founder                                                                            ', 'eng'),
(24, 'mainNames', '\r\nAleksei Stsigartsov Ilja Habarov Alekasnder Pozdnyakov\r\n                                                                          Fotograafia peaprodutsentdirektor Peatoimetaja noorem asutaja', 'EST'),
(26, 'founDers', 'Основатели:', 'RUS'),
(27, 'founDers', 'Asutajad:', 'EST'),
(28, 'founDers', 'Founders:', 'ENG'),
(29, 'form12', 'Для дальнейшего сотрудничества, отправьте нам свою заявку', 'RUS'),
(30, 'form12', 'Edasiseks koostööks saatke meile oma taotlus', 'EST'),
(31, 'form12', 'For further cooperation, send us your application', 'ENG'),
(32, 'naMe', 'Имя и Фамилия', 'RUS'),
(33, 'naMe', 'Eesnimi ja Perekonnanimi', 'EST'),
(34, 'naMe', 'First name and Last name', 'ENG'),
(35, 'phoneNum', 'Phone number', 'ENG'),
(36, 'phoneNum', 'Номер телефона', 'RUS'),
(37, 'phoneNum', 'Telefoninumber', 'EST'),
(38, 'comMent', 'Comment', 'ENG'),
(39, 'comMent', 'Комментарий', 'RUS'),
(40, 'comMent', 'Kommenteerida', 'EST'),
(41, 'saaDa', 'Saada', 'EST'),
(42, 'saaDa', 'Послать', 'RUS'),
(43, 'saaDa', 'Send', 'ENG'),
(44, 'enterCode', 'Enter the code from the image', 'ENG'),
(45, 'enterCode', 'Введите код с картинки', 'RUS'),
(46, 'enterCode', 'Sisestage pildil olev kood', 'EST'),
(47, 'kontaKT', 'Наши контактные данные:', 'RUS'),
(48, 'kontaKT', 'Meie kontaktandmed:', 'EST'),
(49, 'kontaKT', 'Our contact details:', 'ENG'),
(50, 'inFO', 'Uus-Sadama 19/8             Tallinn/Studio\r\n+372666666                     Our contact num\r\n122222332                         Reg.nr.\r\nUus-Sadama 19/8             Tallinn/Studio\r\n+372666667                     Our contact num 2\r\n122222333                         Reg.nr.2 \r\nUus-Sadama 19/9            Tartu/Studio\r\n+372666668                     Our contact num 3\r\n122222334                         Reg.nr.3 ', 'ENG'),
(51, 'inFO', 'Uus-Sadama 19/8             Tallinn/Studio\r\n+372666666                     Our contact num\r\n122222332                         Reg.nr.\r\nUus-Sadama 19/8             Tallinn/Studio\r\n+372666667                     Our contact num 2\r\n122222333                         Reg.nr.2 \r\nUus-Sadama 19/9            Tartu/Studio\r\n+372666668                     Our contact num 3\r\n122222334                         Reg.nr.3 ', 'EST'),
(52, 'inFO', 'Uus-Sadama 19/8             Tallinn/Studio\r\n+372666666                     Our contact num\r\n122222332                         Reg.nr.\r\nUus-Sadama 19/8             Tallinn/Studio\r\n+372666667                     Our contact num 2\r\n122222333                         Reg.nr.2 \r\nUus-Sadama 19/9            Tartu/Studio\r\n+372666668                     Our contact num 3\r\n122222334                         Reg.nr.3 ', 'RUS');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`) USING HASH;

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang` (`lang`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang` (`lang`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang` (`lang`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
