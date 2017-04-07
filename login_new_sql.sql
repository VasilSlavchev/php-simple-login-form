-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 
-- Версия на сървъра: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Структура на таблица `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
`id` int(10) NOT NULL,
  `username` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `messages`
--

INSERT INTO `messages` (`id`, `username`, `time`, `message`) VALUES
(4, 'asd', '2017-04-06 12:26:01', '111111'),
(11, 'asd', '2017-04-06 12:25:58', 'saddasd'),
(18, 'sss', '2015-12-14 13:46:35', 'test'),
(21, 'test', '2015-12-14 13:48:25', ' xaxaxa'),
(22, 'test', '2015-12-14 13:48:30', ' eheh :D\r\n'),
(23, 'test', '2015-12-14 13:49:16', ' eheh :D\r\n'),
(24, 'test', '2015-12-14 13:52:43', ' asdadaxa'),
(25, 'test', '2017-04-06 09:32:19', ' asdad'),
(26, 'test', '2017-04-06 09:32:24', ' asdadsad'),
(27, 'test', '2017-04-06 09:32:22', ' asdadad'),
(28, 'test', '2017-04-06 09:32:26', 'asdadasd'),
(29, 'test', '2017-04-06 09:32:28', ' asdadas'),
(30, 'test', '2015-12-14 13:59:30', ' asda'),
(32, 'test', '2015-12-14 14:20:18', ' asda3233'),
(33, 'test', '2017-04-06 14:40:57', 'asda'),
(34, 'test', '2017-04-06 14:40:51', 'sasas'),
(35, 'test', '2017-04-06 09:32:31', ' asdadasd'),
(36, 'test', '2017-04-06 14:40:44', 'asda'),
(37, 'test', '2017-04-06 09:32:33', 'asdadasd'),
(42, 'test', '2015-12-15 12:58:45', ' 222'),
(43, 'test', '2015-12-15 12:59:23', ' 222'),
(44, 'test', '2015-12-15 13:00:20', ' 222'),
(46, 'test', '2015-12-15 13:02:48', ' 222'),
(47, 'test', '2016-02-08 10:33:15', ' xaxaxa'),
(48, 'test', '2017-04-06 14:40:33', 'asdad'),
(49, 'test', '2017-04-06 14:41:31', 'saad'),
(50, 'test', '2017-04-06 14:41:35', 'sadad'),
(51, 'test', '2017-04-06 14:41:40', 'assadad'),
(52, '', '2017-04-07 07:33:46', 'aaaaaaaaaaa3'),
(53, '', '2017-04-07 07:34:49', 'aaaaaaaaaaa3'),
(54, '', '2017-04-07 07:35:16', 'aaaaaaaaaaa3'),
(55, '', '2017-04-07 07:35:36', 'aaaaaaaaaaa3'),
(56, '', '2017-04-07 07:35:38', 'aaaaaaaaaaa3'),
(57, '', '2017-04-07 07:35:50', 'aaaaaaaaaaa3'),
(58, '', '2017-04-07 07:36:29', 'aaaaaaaaaaa3'),
(59, '', '2017-04-07 07:36:56', 'aaaaaaaaaaa3'),
(60, '', '2017-04-07 07:37:04', 'aaaaaaaaaaa3'),
(61, '', '2017-04-07 07:38:01', 'ssssssssssssssssss5'),
(62, '', '2017-04-07 07:39:01', 'ssssssssssssssssss5'),
(63, '', '2017-04-07 07:39:20', 'ssssssssssssssssss5'),
(64, '', '2017-04-07 07:39:36', 'ssssssssssssssssss5'),
(65, '', '2017-04-07 07:39:42', 'ssssssssssssssssss5'),
(66, '', '2017-04-07 07:40:21', 'ssssssssssssssssss5'),
(67, '', '2017-04-07 07:40:31', 'ssssssssssssssssss5'),
(68, '', '2017-04-07 07:40:35', 'ssssssssssssssssss5'),
(69, '', '2017-04-07 07:40:38', 'ssssssssssssssssss5'),
(70, '', '2017-04-07 07:40:51', 'ssssssssssssssssss5'),
(71, '', '2017-04-07 07:41:36', 'ssssssssssssssssss5'),
(72, '', '2017-04-07 07:41:43', 'ssssssssssssssssss5'),
(73, '', '2017-04-07 07:41:54', 'ssssssssssssssssss5'),
(74, '', '2017-04-07 07:42:09', 'ssssssssssssssssss5'),
(75, '', '2017-04-07 07:42:12', 'ssssssssssssssssss5'),
(76, '', '2017-04-07 07:42:15', 'ssssssssssssssssss5'),
(77, '', '2017-04-07 07:42:18', 'ssssssssssssssssss5'),
(78, '', '2017-04-07 07:42:21', 'ssssssssssssssssss5'),
(79, '', '2017-04-07 07:42:24', 'ssssssssssssssssss5'),
(80, '', '2017-04-07 07:42:41', 'ssssssssssssssssss5'),
(81, '', '2017-04-07 07:43:31', 'axxxxxxxxxxxxxxxxxxxxxxxx'),
(82, '', '2017-04-07 07:44:00', 'axxxxxxxxxxxxxxxxxxxxxxxx'),
(83, '', '2017-04-07 07:44:13', 'axxxxxxxxxxxxxxxxxxxxxxxx'),
(84, '', '2017-04-07 07:44:36', 'axxxxxxxxxxxxxxxxxxxxxxxx'),
(85, '', '2017-04-07 07:44:45', 'axxxxxxxxxxxxxxxxxxxxxxxx'),
(86, '', '2017-04-07 07:44:57', 'axxxxxxxxxxxxxxxxxxxxxxxx'),
(87, 'testweee', '2017-04-07 07:45:11', 'axxxxxxxxxxxxxxxxxxxxxxxx'),
(88, 'testweee', '2017-04-07 07:45:19', 'axxxxxxxxxxxxxxxxxxxxxxxx'),
(89, 'testweee', '2017-04-07 07:45:39', 'axxxxxxxxxxxxxxxxxxxxxxxx'),
(90, 'testweee', '2017-04-07 07:45:45', 'axxxxxxxxxxxxxxxxxxxxxxxx'),
(91, 'testweee', '2017-04-07 07:46:35', 'axxxxxxxxxxxxxxxxxxxxxxxx'),
(92, 'testweee', '2017-04-07 07:46:43', 'axxxxxxxxxxxxxxxxxxxxxxxx'),
(93, 'testweee', '2017-04-07 07:47:00', 'axxxxxxxxxxxxxxxxxxxxxxxx'),
(94, 'testweee', '2017-04-07 07:47:03', 'axxxxxxxxxxxxxxxxxxxxxxxx'),
(95, 'testweee', '2017-04-07 07:47:28', 'sssssssss'),
(96, 'testweee', '2017-04-07 07:47:52', 'sssssssss'),
(97, '', '2017-04-07 07:50:22', '33333333333333'),
(98, '', '2017-04-07 07:51:03', 'test55555'),
(99, '', '2017-04-07 07:51:50', 'test55555'),
(100, '', '2017-04-07 07:51:59', 'test55555'),
(101, '', '2017-04-07 07:52:04', 'test55555'),
(102, '', '2017-04-07 07:52:09', 'test55555'),
(103, '', '2017-04-07 07:52:29', 'test55555'),
(104, '', '2017-04-07 07:52:54', 'test55555'),
(105, '', '2017-04-07 07:55:14', 'oooooooooooooo'),
(106, '', '2017-04-07 07:55:36', 'oooooooooooooo'),
(107, '', '2017-04-07 07:55:52', 'oooooooooooooo'),
(108, '', '2017-04-07 07:56:03', 'oooooooooooooo'),
(109, '', '2017-04-07 07:56:16', 'oooooooooooooo'),
(110, '', '2017-04-07 07:56:39', 'oooooooooooooo'),
(111, '', '2017-04-07 07:57:00', 'nnnnnnnnnnnn'),
(112, 'test', '2017-04-07 07:57:26', 'nnnnnnnnnnnn'),
(113, 'test', '2017-04-07 07:57:35', 'nnnnnnnnnnnn'),
(114, 'test', '2017-04-07 07:57:38', 'nnnnnnnnnnnn'),
(115, 'test', '2017-04-07 07:57:44', 'nnnnnnnnnnnn'),
(116, 'test', '2017-04-07 07:57:52', 'nnnnnnnnnnnn'),
(117, 'test', '2017-04-07 07:57:57', 'nnnnnnnnnnnn'),
(118, 'test', '2017-04-07 07:58:10', 'cccccccccc'),
(119, 'test', '2017-04-07 08:00:04', 'vvvvvv'),
(120, 'test', '2017-04-07 08:00:20', 'wwwwwwww'),
(121, 'test', '2017-04-07 08:00:26', 'wwwwwwww'),
(122, 'test', '2017-04-07 08:00:40', 'wwwwwwww'),
(123, 'test', '2017-04-07 08:00:45', 'wwwwwwww'),
(124, 'test', '2017-04-07 08:00:51', 'wwwwwwww'),
(125, 'test', '2017-04-07 08:00:54', 'wwwwwwww'),
(126, '', '2017-04-07 08:07:13', '44444444'),
(127, '', '2017-04-07 08:26:29', '11111111'),
(128, '', '2017-04-07 08:28:46', 'ssssssssssss'),
(129, '', '2017-04-07 08:31:50', '3333'),
(130, '', '2017-04-07 08:35:44', '44444'),
(131, '', '2017-04-07 08:36:02', '44444'),
(132, '', '2017-04-07 09:18:10', 'aaaaaaaaaaa3'),
(133, '', '2017-04-07 12:40:40', 'ssss'),
(134, '', '2017-04-07 12:53:35', 'ssss'),
(135, '', '2017-04-07 12:53:54', 'ssss'),
(136, '', '2017-04-07 12:54:05', 'ssss'),
(137, '', '2017-04-07 12:54:15', 'aaaa'),
(138, '', '2017-04-07 12:54:46', 'aaaa'),
(139, '', '2017-04-07 12:55:06', 'aaaa'),
(140, '', '2017-04-07 12:55:12', 'aaaa'),
(141, '', '2017-04-07 12:55:29', 'aaaa'),
(142, '', '2017-04-07 12:55:43', 'aaaa'),
(143, '', '2017-04-07 12:56:05', 'aaaa'),
(144, '', '2017-04-07 12:56:39', 'aaaa'),
(145, 'test', '2017-04-07 12:56:56', 'aaaa'),
(146, 'test', '2017-04-07 12:57:06', 'aaaa'),
(147, 'test', '2017-04-07 12:57:21', 'aaaa'),
(148, 'test', '2017-04-07 12:58:45', '77777777');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `usertype` set('0','1','2','3','4','5','6') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `usertype`, `time`) VALUES
(1, 'test', 'test', 'test@test.test', '0', '2017-04-07 11:54:54'),
(2, 'admin', 'admin', 'test@test.test', '0', '2017-04-07 12:20:52'),
(3, 'vasko', 'vasko', 'test@test.test', '0', '2017-04-07 12:20:54'),
(4, 'vaseto', 'cf51b056d2ff621', '', '0', '2017-04-07 12:43:57'),
(5, 'vaseto', 'cf51b056d2ff621', '', '0', '2017-04-07 12:44:34'),
(6, 'vaseto', 'cf51b056d2ff621', '', '0', '2017-04-07 12:44:51'),
(7, 'vaseto', 'cf51b056d2ff621', '', '0', '2017-04-07 12:45:01'),
(8, 'vaseto', 'cf51b056d2ff621', '', '0', '2017-04-07 12:45:06'),
(9, 'vaseto', 'cf51b056d2ff621', '', '0', '2017-04-07 12:45:06'),
(10, 'vaseto', 'cf51b056d2ff621', '', '0', '2017-04-07 12:45:07'),
(11, 'vaseto', 'cf51b056d2ff621', '', '0', '2017-04-07 12:45:30'),
(12, 'vaseto', 'cf51b056d2ff621', '', '0', '2017-04-07 12:45:34'),
(13, 'vaseto', 'cf51b056d2ff621', '', '0', '2017-04-07 12:45:42'),
(14, 'vaseto', 'cf51b056d2ff621', '', '0', '2017-04-07 12:45:48'),
(15, 'vaseto', '6d4dfee6b86e609', '', '0', '2017-04-07 12:46:11'),
(16, 'vaseto', '6d4dfee6b86e609', '', '0', '2017-04-07 12:46:13'),
(17, 'vaseto', 'vaseto', '', '0', '2017-04-07 12:46:25'),
(18, 'vaseto', 'vaseto', '', '0', '2017-04-07 12:46:39'),
(19, 'vaseto', 'vaseto', '', '0', '2017-04-07 12:46:49'),
(20, 'vaseto', 'vaseto', '', '0', '2017-04-07 12:47:28'),
(21, 'vaseto', 'vaseto', '', '0', '2017-04-07 12:48:29'),
(22, 'vaseto', 'vaseto', '', '0', '2017-04-07 12:48:36'),
(23, 'vaseto', 'vaseto', '', '0', '2017-04-07 12:48:51'),
(24, 'vaseto', 'vaseto', '', '0', '2017-04-07 12:49:07'),
(25, 'vaseto', 'vaseto', '', '0', '2017-04-07 12:49:13'),
(26, 'vaseto', 'vaseto', '', '0', '2017-04-07 12:49:39'),
(27, 'admin', 'admin', '', '0', '2017-04-07 12:49:48'),
(28, 'admin', 'admin', '', '0', '2017-04-07 12:49:49'),
(29, 'admin', 'admin', '', '0', '2017-04-07 12:49:50'),
(30, 'admin', 'admin', '', '0', '2017-04-07 12:49:59'),
(31, 'vaseto', 'vaseto', 'vasetoadmin5', '0', '2017-04-07 12:51:20'),
(32, 'vaseto', 'vaseto', 'vasetoadmin5', '0', '2017-04-07 12:51:51'),
(33, 'vaseto', 'vaseto', 'vasetoadmin5', '0', '2017-04-07 12:52:02'),
(34, 'vaseto', 'vaseto', 'vaseto@vaseto.vaseto', '0', '2017-04-07 12:52:09'),
(35, 'vaseto', 'vaseto', 'vaseto@vaseto.vaseto', '0', '2017-04-07 12:52:35'),
(36, 'vaseto', 'vaseto', 'vaseto@vaseto.vaseto', '0', '2017-04-07 12:52:40'),
(37, 'vaseto', 'vaseto', 'vaseto@vaseto.vaseto', '0', '2017-04-07 12:52:58'),
(38, 'vaseto', 'vaseto', 'vaseto@vaseto.vaseto', '0', '2017-04-07 12:53:04'),
(39, 'vaseto', 'vaseto', 'vaseto@vaseto.vaseto', '0', '2017-04-07 12:53:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`id`), ADD KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
