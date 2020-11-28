-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- 主机: localhost:3306
-- 生成日期: 2020 年 05 月 31 日 05:40
-- 服务器版本: 5.6.48-log
-- PHP 版本: 5.6.40

-- 找到数据库agent_allowed_family表单导入，由于php有缓存，24小时后生效
-- 建议导入前清空agent_allowed_family表单表单，然后在执行导入，不要用覆盖方式
-- 立即更新缓存命令：service memcached restart
-- 这个版本更新Transmission 3.00支持

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- 转存表中的数据 `agent_allowed_family`
--

INSERT INTO `agent_allowed_family` (`id`, `family`, `start_name`, `peer_id_pattern`, `peer_id_match_num`, `peer_id_matchtype`, `peer_id_start`, `agent_pattern`, `agent_match_num`, `agent_matchtype`, `agent_start`, `exception`, `allowhttps`, `comment`, `hits`) VALUES
(null, 'Azureus 4.0', 'Azureus 4.9.0.0', '/^-AZ4([0-9])([0-9])([0-9])-/', 3, 'dec', '-AZ4900-', '/^Azureus 4\\.([0-9])\\.([0-9])\\.([0-9])/', 3, 'dec', 'Azureus 4.9.0.0;Windows Server 2012;Java 1.6.0_45', 'no', 'yes', '', 0),
(null, 'Azureus 5.0', 'Azureus 5.7.6.0', '/^-AZ5([0-9])([0-9])([0-9])-/', 3, 'dec', '-AZ5760-', '/^Azureus 5\\.([0-9])\\.([0-9])\\.([0-9])/', 3, 'dec', 'Azureus 5.7.6.0;Windows NT (unknown);Java 1.8.0_121', 'no', 'yes', '', 0),
(null, 'BitComet 1.58', 'BitComet 1.58.7.6', '/^-BC015([8-9])-/', 1, 'dec', '-BC0158-', '/^BitComet\\/1\\.5([8-9])/', 1, 'dec', 'BitComet/1.58.7.6', 'no', 'yes', '', 0),
(null, 'BitComet 1.61', 'BitComet 1.61.11.2', '/^-BC01([6-9])([0-9])-/', 2, 'dec', '-BC0161-', '/^BitComet\\/1\\.([6-9])([0-9])/', 2, 'dec', 'BitComet/1.61.11.2', 'no', 'yes', '', 0),
(null, 'Bittorrent 6.0', 'Bittorrent 6.0.1', '/^M6-([0-9])-([0-9])--/', 2, 'dec', 'M6-0-1--', '/^BitTorrent\\/6([0-9])([0-9])([0-9])/', 3, 'dec', 'BitTorrent/6010', 'no', 'yes', '', 0),
(null, 'Bittorrent 7.0', 'Bittorrent 7.10.5', '/^-BT7([0-9A-Za-z])([0-9A-Za-z])([0-9A-Za-z])-/', 3, 'dec', '-BT7a5S-', '/^BitTorrent\\/7([0-9])([0-9])([0-9])/', 3, 'dec', 'BitTorrent/7105(256618814)(45374)', 'no', 'yes', '', 0),
(null, 'Deluge 1.3.9', 'Deluge 1.3.9', '/^-DE1([0-9])([0-9])([0-9])-/', 3, 'dec', '-DE1390-', '/^Deluge 1\\.([0-9])\\.([0-9])/', 2, 'dec', 'Deluge 1.3.9', 'no', 'yes', '', 0),
(null, 'Deluge 1.3.15', 'Deluge 1.3.15', '/^-DE1([0-9])([0-9A-F])([0-9])-/', 3, 'dec', '-DE13F0-', '/^Deluge 1\\.([0-9])\\.([1-9])([0-9])/', 3, 'dec', 'Deluge 1.3.15', 'no', 'yes', '', 0),
(null, 'Deluge 2.0.3', 'Deluge 2.0.3', '/^-DE2([0-9])([0-9])s-/', 2, 'dec', '-DE203s-', '/^Deluge\\/2\\.([0-9])\\.([0-9])/', 2, 'dec', 'Deluge/2.0.3 libtorrent/1.1.13.0', 'no', 'yes', '', 0),
(null, 'qBittorrent 3.0', 'qBittorrent 3.3.16', '/^-qB3([0-9])([0-9A-G])([0-9])-/', 3, 'hex', '-qB33G0-', '/^qBittorrent\\/3\\.([0-9])\\.([0-9]+)/', 2, 'dec', 'qBittorrent/3.3.16', 'no', 'yes', '', 0),
(null, 'qBittorrent 4.0', 'qBittorrent 4.1.9.1', '/^-qB4([0-9])([0-9A-Z])([0-9])-/', 3, 'hex', '-qB4000-', '/^qBittorrent\\/4\\.([0-9])\\.([0-9]+)/', 2, 'dec', 'qBittorrent/4.0.0.0', 'no', 'yes', '', 0),
(null, 'Transmission 2.0', 'Transmission 2.84', '/^-TR2([0-9])([0-9])([0-9])-/', 3, 'dec', '-TR2840-', '/^Transmission\\/2\\.([0-9])([0-9])/', 2, 'dec', 'Transmission/2.84', 'no', 'yes', '', 0),
(null, 'Transmission 3.0', 'Transmission 3.00', '/^-TR3([0-9])([0-9])([0-9])-/', 3, 'dec', '-TR3000-', '/^Transmission\\/3\\.([0-9])([0-9])/', 2, 'dec', 'Transmission/3.00', 'no', 'yes', '', 0),
(null, 'uTorrent 2.0', 'uTorrent 2.0.0.0', '/^-UT2([0-9])([0-9])([0-9])-/', 3, 'dec', '-UT2000-', '/^uTorrent\\/2([0-9])([0-9])([0-9])/', 3, 'dec', 'uTorrent/2000', 'no', 'yes', '', 0),
(null, 'uTorrent 3.0', 'uTorrent 3.0.0.0', '/^-UT3([0-9])([0-9])([0-9])-/', 3, 'dec', '-UT3000-', '/^uTorrent\\/3([0-9])([0-9])([0-9])/', 3, 'dec', 'uTorrent/3000', 'no', 'yes', '', 0),
(null, 'uTorrent 3.4', 'uTorrent 3.4.2', '/^-UT34([0-9])([0-9])-/', 2, 'dec', '-UT3420-', '/^uTorrent\\/34([0-9])/', 1, 'dec', 'uTorrent/342', 'no', 'yes', '', 0),
(null, 'uTorrent 3.5', 'uTorrent 3.5.0', '/^-UT35[0-9][0-9A-Za-z]-/', 2, 'dec', '-UT3500-', '/^uTorrent\\/35([0-9])/', 1, 'dec', 'uTorrent/350', 'no', 'yes', '', 0),
(null, 'uTorrentMac 1.0', 'uTorrentMac 1.0.0.0', '/^-UM1([0-9])([0-9])([0-9B])-/', 3, 'dec', '-UM1000-', '/^uTorrentMac\\/1([0-9])([0-9])([0-9B])/', 3, 'dec', 'uTorrentMac/1000', 'no', 'yes', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
