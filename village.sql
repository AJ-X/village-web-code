-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-11 14:43:28
-- 服务器版本： 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `village`
--

-- --------------------------------------------------------

--
-- 表的结构 `village_admin`
--

CREATE TABLE `village_admin` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `village_admin`
--

INSERT INTO `village_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin1', 'admin1'),
(3, 'admin2', 'admin2'),
(4, 'admin3', 'admin3');

-- --------------------------------------------------------

--
-- 表的结构 `village_complain`
--

CREATE TABLE `village_complain` (
  `id` tinyint(4) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `message` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `village_complain`
--

INSERT INTO `village_complain` (`id`, `username`, `message`, `time`) VALUES
(2, '小亮', '小区绿化不美观', 0),
(4, '小方', '小区老停水', 0);

-- --------------------------------------------------------

--
-- 表的结构 `village_message`
--

CREATE TABLE `village_message` (
  `id` tinyint(4) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `message` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `village_message`
--

INSERT INTO `village_message` (`id`, `username`, `message`, `time`) VALUES
(1, '小李', '小区路灯怎么不亮了呀？', 0),
(3, '小潘', '小区车道被占用了哦！', 0);

-- --------------------------------------------------------

--
-- 表的结构 `village_parking`
--

CREATE TABLE `village_parking` (
  `id` tinyint(4) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `number` int(11) NOT NULL,
  `iscar` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `village_parking`
--

INSERT INTO `village_parking` (`id`, `username`, `number`, `iscar`, `time`) VALUES
(2, '小张', 1234, '是', 1522682205),
(4, '小潘', 1121, '否', 1522715508);

-- --------------------------------------------------------

--
-- 表的结构 `village_paying`
--

CREATE TABLE `village_paying` (
  `id` tinyint(4) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `number` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `village_paying`
--

INSERT INTO `village_paying` (`id`, `username`, `title`, `number`, `time`) VALUES
(1, '小王', '水费', 100, 1522715485),
(4, '小潘', '物业费', 500, 1522685992);

-- --------------------------------------------------------

--
-- 表的结构 `village_repair`
--

CREATE TABLE `village_repair` (
  `id` tinyint(4) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `money` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `village_repair`
--

INSERT INTO `village_repair` (`id`, `username`, `title`, `money`, `time`) VALUES
(1, '小李', '水管', 200, 1522715495),
(4, '小潘', '修煤气', 300, 1522686034);

-- --------------------------------------------------------

--
-- 表的结构 `village_user`
--

CREATE TABLE `village_user` (
  `id` tinyint(4) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `phone` varchar(20) NOT NULL,
  `isparking` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `village_user`
--

INSERT INTO `village_user` (`id`, `username`, `sex`, `address`, `phone`, `isparking`) VALUES
(1, '小王', '男', '一单元一零一室', '13812341234', '有'),
(4, '小李', '女', '1121', '123123123123', '有');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `village_admin`
--
ALTER TABLE `village_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `village_complain`
--
ALTER TABLE `village_complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `village_message`
--
ALTER TABLE `village_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `village_parking`
--
ALTER TABLE `village_parking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `village_paying`
--
ALTER TABLE `village_paying`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `village_repair`
--
ALTER TABLE `village_repair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `village_user`
--
ALTER TABLE `village_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `village_admin`
--
ALTER TABLE `village_admin`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `village_complain`
--
ALTER TABLE `village_complain`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `village_message`
--
ALTER TABLE `village_message`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `village_parking`
--
ALTER TABLE `village_parking`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `village_paying`
--
ALTER TABLE `village_paying`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `village_repair`
--
ALTER TABLE `village_repair`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `village_user`
--
ALTER TABLE `village_user`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
