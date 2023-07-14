-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- 主机: localhost:3306
-- 生成日期: 2023 年 07 月 15 日 04:08
-- 服务器版本: 5.6.43-log
-- PHP 版本: 5.6.33

-- 找到数据库agent_allowed_family表单导入，由于php有缓存，24小时后生效
-- 该agent_allowed_family表只写入libtorrent 2.0.7.0以上版本支持，无需清空表，直接原有表覆盖导入即可
-- 立即更新缓存命令：service memcached restart
-- 这个版本更新libtorrent支持（特别注意，pikpak离线下载使用了libtorrent作为服务端，如果导入该数据库，用户提交种子文件给pikpak后，会被对方服务器离线下载成功，因为有站长联系说想把pt全站种子备份到网盘永久保存所以提供了这个sql）

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `www`
--

-- --------------------------------------------------------

--
-- 表的结构 `agent_allowed_family`
--

CREATE TABLE IF NOT EXISTS `agent_allowed_family` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `family` varchar(50) NOT NULL DEFAULT '',
  `start_name` varchar(100) NOT NULL DEFAULT '',
  `peer_id_pattern` varchar(200) NOT NULL,
  `peer_id_match_num` tinyint(3) unsigned NOT NULL,
  `peer_id_matchtype` enum('dec','hex') NOT NULL DEFAULT 'dec',
  `peer_id_start` varchar(20) NOT NULL,
  `agent_pattern` varchar(200) NOT NULL,
  `agent_match_num` tinyint(3) unsigned NOT NULL,
  `agent_matchtype` enum('dec','hex') NOT NULL DEFAULT 'dec',
  `agent_start` varchar(100) NOT NULL,
  `exception` enum('yes','no') NOT NULL DEFAULT 'no',
  `allowhttps` enum('yes','no') NOT NULL DEFAULT 'no',
  `comment` varchar(200) NOT NULL DEFAULT '',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `agent_allowed_family`
--

INSERT INTO `agent_allowed_family` (`id`, `family`, `start_name`, `peer_id_pattern`, `peer_id_match_num`, `peer_id_matchtype`, `peer_id_start`, `agent_pattern`, `agent_match_num`, `agent_matchtype`, `agent_start`, `exception`, `allowhttps`, `comment`, `hits`) VALUES
(null, 'libtorrent 2.00', 'libtorrent 2.0.7.0', '/^-LT2([0-9])([0-9A-Z])([0-9])-/', 3, 'dec', '-LT2070-', '/^libtorrent\\/2\\.([0-9])\\.([0-9]+)\\.([0-9])/', 3, 'dec', 'libtorrent/2.0.7.0', 'no', 'yes', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
