-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 23 2016 г., 12:29
-- Версия сервера: 5.5.50
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Forum-test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `categorie_id` int(11) DEFAULT NULL,
  `pubdate` datetime DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `categorie_id`, `pubdate`, `views`) VALUES
(1, 'Gatebox: персональная жена-робот из Японии', 'Gatebox — это уникальный в своем роде, полностью автономный виртуальный домашний робот. Фактически, это полноценный имитатор электронной жены, который предназначен в первую очередь для одиноких мужчин. Как известно, современная культура Японии во многом ориентирована на создание образа «идеальной» женщины, поэтому, вне всякого сомнения, этот продукт очень быстро разовьется до полноценной индустрии.\r\nВасилий Макаров  2 дня назад в 17:00\r\nGatebox — это уникальный в своем роде, полностью автономный виртуальный домашний робот. Фактически, это полноценный имитатор электронной жены, который предназначен в первую очередь для одиноких мужчин. Как известно, современная культура Японии во многом ориентирована на создание образа «идеальной» женщины, поэтому, вне всякого сомнения, этот продукт очень быстро разовьется до полноценной индустрии. \r\n\r\n«Робо-вайфу» совмещает в себе функции помощника и ежедневника: с помощью подключения к сети она может общаться с владельцем через его электронные устройства, при этом покупателю предлагается выбрать одну из множества персональностей с широким спектром настроек, так что в будущем жену можно будет буквально подгонять под себя. Увы, из своего пластикового плена цифровая женщина выбраться не сможет, так что остается надеяться, что здоровый половой инстинкт хотя бы ненадолго отсрочит повсеместное наступление эпохи сожительства с роботизированными женщинами.', 1, '2016-12-19 22:59:00', 0),
(2, 'Первая доставка посылки с помощью дрона', 'В качестве испытания дрон вылетел из секретной лаборатории «Амазона» в Кембридже и доставил посылку некоему Ричарду Б. Все путешествие отняло 13 минут от запуска до получения товара.\r\n\r\nЕстественно, весь процесс был снят на видео и смонтирован в довольно пафосный ролик.\r\n«Амазон» говорит, что у него есть центры для дронов в США, Великобритании, Австрии и Израиле, но даже после этой удачной доставки остается еще немало деталей, которые предстоит проработать. К тому же окончательный дизайн дронов еще не разработан, а доставка может производиться только при ясной погоде: при низком ветре, хорошей видимости, без дождя или снега.\r\n\r\nТак что, несмотря на крайний оптимизм в ролике, у программы еще немало технических проблем, и до того, как дроны станут доставлять товары всем подряд, пройдет еще немало лет.', 4, '2016-12-20 00:00:00', 0),
(3, 'Инженеры сделали Wi-Fi, который тратит в 10 000 раз меньше электроэнергии', 'Как сделать так, чтобы беспроводное интернет-соединение...', 5, '2016-12-20 00:11:02', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `articles_categories`
--

CREATE TABLE IF NOT EXISTS `articles_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles_categories`
--

INSERT INTO `articles_categories` (`id`, `title`) VALUES
(1, 'Техника'),
(2, 'Разработка'),
(3, 'Администрирование'),
(4, 'Разное'),
(5, 'Программирование');

-- --------------------------------------------------------

--
-- Структура таблицы `Comments`
--

CREATE TABLE IF NOT EXISTS `Comments` (
  `id` int(11) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `text` text NOT NULL,
  `pubdate` datetime NOT NULL,
  `articles_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Comments`
--

INSERT INTO `Comments` (`id`, `author`, `text`, `pubdate`, `articles_id`) VALUES
(1, 'Alex stiell', 'Wow this is a beautiful!!!', '2016-12-19 23:55:45', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `Comments`
--
ALTER TABLE `Comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
