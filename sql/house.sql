-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-01-10 09:20:31
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `house`
--

-- --------------------------------------------------------

--
-- 資料表結構 `house_ad`
--

CREATE TABLE `house_ad` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `house_ad`
--

INSERT INTO `house_ad` (`id`, `text`, `sh`) VALUES
(2, '轉知臺北教育大學與臺灣師大合辦第11屆麋研齋全國硬筆書法比賽活動', 1),
(3, '轉知:法務部辦理「第五屆法規知識王網路闖關競賽辦法', 1),
(4, '轉知2012年全國青年水墨創作大賽活動', 1),
(5, '欣榮圖書館101年悅讀達人徵文比賽，歡迎全校師生踴躍投稿參加', 1),
(6, '轉知:教育是人類升沉的樞紐-2013教師生命成長營', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `house_admin`
--

CREATE TABLE `house_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `acc` text NOT NULL,
  `pw` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `house_admin`
--

INSERT INTO `house_admin` (`id`, `acc`, `pw`) VALUES
(1, 'admin', '1234'),
(4, 'kitty', '1234'),
(5, 'Bob', '1234'),
(6, 'Marry', '4789');

-- --------------------------------------------------------

--
-- 資料表結構 `house_bottom`
--

CREATE TABLE `house_bottom` (
  `id` int(10) NOT NULL,
  `bottom` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `house_bottom`
--

INSERT INTO `house_bottom` (`id`, `bottom`) VALUES
(1, '頁尾版權2023');

-- --------------------------------------------------------

--
-- 資料表結構 `house_image`
--

CREATE TABLE `house_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `house_image`
--

INSERT INTO `house_image` (`id`, `img`, `sh`) VALUES
(2, '01D09.jpg', 1),
(3, '01D02.jpg', 1),
(4, '01D03.jpg', 1),
(5, '01D04.jpg', 1),
(6, '01D05.jpg', 1),
(7, '01D07.jpg', 1),
(8, '01D08.jpg', 0),
(9, '01D09.jpg', 0),
(10, '01D10.jpg', 0),
(11, '01D06.jpg', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `house_menu`
--

CREATE TABLE `house_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `href` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `menu_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `house_menu`
--

INSERT INTO `house_menu` (`id`, `text`, `href`, `sh`, `menu_id`) VALUES
(1, '管理登入', 'index.php?do=login', 1, 0),
(2, '網站首頁', 'index.php', 1, 0),
(33, '更多內容', 'https://www.google.com.tw', 1, 1),
(35, 'subtest', 'subtest.com', 1, 34),
(36, 'subtest', 'subtest.com', 1, 34);

-- --------------------------------------------------------

--
-- 資料表結構 `house_mvim`
--

CREATE TABLE `house_mvim` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `house_mvim`
--

INSERT INTO `house_mvim` (`id`, `img`, `sh`) VALUES
(1, '01C01.gif', 1),
(2, '01C02.gif', 1),
(3, '01C03.gif', 1),
(4, '01C04.gif', 1),
(5, '01C05.gif', 1),
(8, '01C06.gif', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `house_news`
--

CREATE TABLE `house_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `house_news`
--

INSERT INTO `house_news` (`id`, `text`, `sh`) VALUES
(2, '教師研習「世界公民生命園丁國內研習會」\r\n1.主辦單位：世界展望會\r\n2.研習日期：101年11月14日（三）～15日（四）\r\n3.詳情請參考：\r\nhttp://gc.worldvision.org.tw/seed.html。\r\n請線上報名。', 1),
(3, '公告綜合高中一年級英數補救教學時間\r\n上課日期:10/27.11/3.11/10.11/24共計四次\r\n上課時間:早上8:00~11:50半天\r\n費用:全程免費\r\n參加同學:綜合科一年級第一次段考成績需加強者\r\n已將名單送交各班及導師\r\n參加同學請帶紙筆.課本.第一次段考考卷\r\n並將家長通知單給家長\r\n若有任何疑問\r\n請洽綜合高中學程主任', 1),
(4, '102年全國大專校院運動會\r\n「主題標語及吉祥物命名」\r\n網路票選活動\r\n一、活動期間：自10月25日起至11月4日止。\r\n二、相關訊息請上宜蘭大學首頁連結「102全大運在宜大」\r\n活動網址：http://102niag.niu.edu.tw/', 1),
(5, '台灣亞洲藝術文化教育交流學會第一屆年會國際研討會\r\n活動日期：101年3月3～4日(六、日)\r\n活動主題：創造力、文化、全人教育\r\n有意參加者請至http://www.caaetaiwan.org下載報名表', 1),
(6, '11月23日(星期五)將於彰化縣田尾鄉菁芳園休閒農場\r\n舉辦「高中職生涯輔導知能研習」\r\n中區學校每校至多2名\r\n以普通科、專業類科教師優先報名參加\r\n生涯規劃教師次之，參加人員公差假\r\n並核實派代課\r\n當天還有專車接送(8:35前在員林火車站集合)\r\n如此好康的機會，怎能錯過？！\r\n熱烈邀請師長們向輔導室(分機234)報名\r\n名額有限，動作要快！！\r\n報名截止日期：本周四 10月25日17:00前！', 1),
(7, '台視百萬大明星節目辦理海選活動\r\n時間:101年10月27日下午13時\r\n地點:彰化', 1),
(8, '國立故宮博物院辦理\r\n「商王武丁與后婦好 殷商盛世文化藝術特展」暨\r\n「赫赫宗周 西周文化特展」', 1),
(9, '財團法人漢光教育基金會\r\n辦理2012「舊愛新歡-古典詩詞譜曲創作暨歌唱表演競賽」\r\n參賽獎金豐厚!!', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `house_titles`
--

CREATE TABLE `house_titles` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `text` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `house_titles`
--

INSERT INTO `house_titles` (`id`, `img`, `text`, `sh`) VALUES
(1, '01B01.jpg', '新莊校區資訊管理', 0),
(2, '01B02.jpg', '泰山校區資訊管理', 0),
(3, '01B03.jpg', '五股校區資訊管理', 1),
(4, '01B04.jpg', '基隆校區資訊管理', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `house_total`
--

CREATE TABLE `house_total` (
  `id` int(10) NOT NULL,
  `total` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `house_total`
--

INSERT INTO `house_total` (`id`, `total`) VALUES
(1, 503),
(2, 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `house_ad`
--
ALTER TABLE `house_ad`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `house_admin`
--
ALTER TABLE `house_admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `house_bottom`
--
ALTER TABLE `house_bottom`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `house_image`
--
ALTER TABLE `house_image`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `house_menu`
--
ALTER TABLE `house_menu`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `house_mvim`
--
ALTER TABLE `house_mvim`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `house_news`
--
ALTER TABLE `house_news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `house_titles`
--
ALTER TABLE `house_titles`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `house_total`
--
ALTER TABLE `house_total`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `house_ad`
--
ALTER TABLE `house_ad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `house_admin`
--
ALTER TABLE `house_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `house_bottom`
--
ALTER TABLE `house_bottom`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `house_image`
--
ALTER TABLE `house_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `house_menu`
--
ALTER TABLE `house_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `house_mvim`
--
ALTER TABLE `house_mvim`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `house_news`
--
ALTER TABLE `house_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `house_titles`
--
ALTER TABLE `house_titles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `house_total`
--
ALTER TABLE `house_total`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
