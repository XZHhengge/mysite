-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： localhost:3306
-- 生成日期： 2018-12-30 16:55:15
-- 服务器版本： 5.7.24-0ubuntu0.18.04.1
-- PHP 版本： 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `mysite`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `auth_permission`
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
(25, 'Can add Bookmark', 7, 'add_bookmark'),
(26, 'Can change Bookmark', 7, 'change_bookmark'),
(27, 'Can delete Bookmark', 7, 'delete_bookmark'),
(28, 'Can view Bookmark', 7, 'view_bookmark'),
(29, 'Can add User Setting', 8, 'add_usersettings'),
(30, 'Can change User Setting', 8, 'change_usersettings'),
(31, 'Can delete User Setting', 8, 'delete_usersettings'),
(32, 'Can view User Setting', 8, 'view_usersettings'),
(33, 'Can add User Widget', 9, 'add_userwidget'),
(34, 'Can change User Widget', 9, 'change_userwidget'),
(35, 'Can delete User Widget', 9, 'delete_userwidget'),
(36, 'Can view User Widget', 9, 'view_userwidget'),
(37, 'Can add log entry', 10, 'add_log'),
(38, 'Can change log entry', 10, 'change_log'),
(39, 'Can delete log entry', 10, 'delete_log'),
(40, 'Can view log entry', 10, 'view_log'),
(41, 'Can add home banner', 11, 'add_homebanner'),
(42, 'Can change home banner', 11, 'change_homebanner'),
(43, 'Can delete home banner', 11, 'delete_homebanner'),
(44, 'Can view home banner', 11, 'view_homebanner'),
(45, 'Can add 个人介绍', 12, 'add_myself'),
(46, 'Can change 个人介绍', 12, 'change_myself'),
(47, 'Can delete 个人介绍', 12, 'delete_myself'),
(48, 'Can view 个人介绍', 12, 'view_myself'),
(49, 'Can add 博客', 13, 'add_blog'),
(50, 'Can change 博客', 13, 'change_blog'),
(51, 'Can delete 博客', 13, 'delete_blog'),
(52, 'Can view 博客', 13, 'view_blog'),
(53, 'Can add 博客类型', 14, 'add_blogtype'),
(54, 'Can change 博客类型', 14, 'change_blogtype'),
(55, 'Can delete 博客类型', 14, 'delete_blogtype'),
(56, 'Can view 博客类型', 14, 'view_blogtype');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$R91slgQv22YJ$GrPOmqpNOrD9FdhGuXodm/FWRAWRsN+Sa6lSqpigyJ8=', '2018-12-24 19:34:28.500792', 1, 'root', '', '', '', 1, 1, '2018-12-23 18:36:19.125542');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `blog_blog`
--

CREATE TABLE `blog_blog` (
  `created_time` datetime(6) NOT NULL,
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `response_count` int(11) NOT NULL,
  `blog_url` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_type_id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `click_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `blog_blog`
--

INSERT INTO `blog_blog` (`created_time`, `id`, `title`, `content`, `author`, `last_updated_time`, `response_count`, `blog_url`, `blog_type_id`, `image`, `click_number`) VALUES
('2018-12-23 22:37:00.000000', 1, 'Nature, in the broadest sense, is the natural, physical, or material world or universe.', 'In the broadest sense, is the natural, physical, or material world or universe...', '博主', '2018-12-24 13:40:07.488328', 5, NULL, 4, 'homeblogimage/2018/12/4.jpg', 0),
('2018-12-23 22:41:00.000000', 2, '如何评价 22 岁 MIT 博士生曹原获评 Nature 2018 年度十大人物之一，并居榜单首位？', '曹原的青少年时期异于常人。18岁时，他不仅已经高中毕业，还从中国科学技术大学拿到了本科学位，并前往美国开始攻读博士。此后，曹原再接再厉，先后发表了两篇关于原子厚度碳片层奇异行为的论文，开启了物理学的一个全新领域。曹原承认自己的情况有别于常人，但是说自己并不特殊。毕竟他还是用四年时间读完的大学本科：“我只是跳过了中学里一些无趣的部分。”2014年，曹原加入了Pablo Jarillo-Herrero在麻省理工学院的团队，该团队当时已经开始进行将碳片层堆叠和旋转至不同角度的尝试。曹原的主要工作是考察在堆叠的双层石墨烯中，如果将其中一层相对另一层旋转极小的角度后会发生什么。根据一种理论预测，这种扭曲会极大地改变石墨烯的行为，但许多物理学家对此持怀疑态度。曹原决心创造出这种以微妙角度扭曲的双层石墨烯，并发现了一些奇异的现象。对石墨烯施加微弱的电场并冷却至绝对零度以上1.7度时，会让能导电的石墨烯变成绝缘体（Y. Cao et al. Nature 556, 80–84; 2018）。这一发现本身不可谓不令人惊讶。\r\n\r\n\r\nhttps://www.zhihu.com/question/306192676/answer/556812600', '知乎', '2018-12-24 13:39:49.815215', 5, 'https://www.zhihu.com/question/306192676/answer/55', 5, 'homeblogimage/2018/12/2.jpg', 0),
('2018-12-23 22:41:00.000000', 3, '《春江花月夜》为何被誉为“孤篇压全唐”？', '张若虚的《春江花月夜》之所以被人誉为“孤篇压全唐”，跟下面两位学者的评论有关。清末学者王闿运评其曰：“张若虚《春江花月夜》用《西洲》格调，孤篇横绝，竟为大家。李贺、商隐，挹其鲜润；宋词、元诗，尽其支流。宫体之巨澜也。”后人经常引用的“孤篇横绝,竟为大家”即出自此处。这也是第一次有人承认张若虚在古典诗歌中的地位，而且“大家”这种称呼，将张的地位拔到极高的程度。即：他的诗出乎于初唐四杰，又超过了四杰的成就。而近代的闻一多在《宫体诗的自赎》一书中称它为“诗中的诗，顶峰上的顶峰”。闻一多先生的点评后面还有一句： “至于那一百年间梁、陈、隋、唐四代宫廷所遗下的那份最黑暗的罪孽，有了《春江花月夜》这样一首宫体诗，不也就洗净了吗？向前替宫体诗赎清了百年的罪，因此，向后也就和另一个顶峰陈子昂分工合作，清除了盛唐的路，——张若虚的功绩是无从估计的。”其实，王闿运的“孤篇横绝”，不是指横绝整个唐诗，而是相对于齐梁以来流行的宫体诗。而闻一多的“诗中的诗，顶峰上的顶峰”，也是指相对于齐梁隋唐以来的宫体诗。所以，“孤篇压倒全唐”这种说法，其实是对“孤篇横绝,竟为大家”及“诗中的诗，顶峰上的顶峰”的误解和断章取义。当然，事情并非这么简单。程千帆老师认为王闿运和闻一多把《春江花月夜》划入“宫体诗”的范畴，是一种误解。王闿运称张的《春江花月夜》为“宫体诗巨澜”，是没有依据的。其徒弟陈兆奎对这句话的解读为：“奎案：昌谷五言不如七言，义山七言不如五言，一以涩练为奇，一以纤绮为巧，均思自树一帜，然皆原宫体。宫体倡于《艳歌》、《陇西》诸篇。子建、繁钦，大其波澜，梁代父子，始成格律。相沿弥永，久而愈新。以其寄意闺闼，感发易明，故独优于诸格。后之学者，已莫揣其本矣。”如果真是这种认知，那么显然就把爱情诗的源流当作宫体诗的源流，既没有文献根据，也不符合历史事实。', '知乎', '2018-12-24 13:39:38.945354', 50, 'https://www.zhihu.com/question/301477404', 5, 'homeblogimage/2018/12/1.jpg', 0),
('2018-12-27 15:46:00.000000', 4, '孙悟空为什么不找如来报仇？', '作者：斯巴达克斯\r\n链接：https://www.zhihu.com/question/43344428/answer/492527800\r\n来源：知乎\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\r\n\r\n我叫如来，五百年前我曾压了一只猴子。那只猴子本领并不平庸，可是在我们这些人看来也谈不上出色，全身上下唯一能让我刮目相看的就是一身傲气，毕竟我们活了这么久早已经习惯了和和气气的生活。“皇帝轮流坐，今年到我家，我要诛灭你们这些假仁假义的神佛。”这是刚见面他就对我说的话，我一愣，与我还是王子的时候何其相似，可是不知他能走到哪一步。“你诛灭了我们，然后呢，和你的六个兄长一起建立妖国吗？”我笑着问。他愣住了，然后盘算了一会儿，“正是如此。”“那你们最后也会变成新的神佛，等着别人来推翻。”“我有七十二变，我有筋斗云，我有金箍棒，我……”他细数了自己的本领，我听着很耳熟，那些都是我玩过儿的，可是说到最后他自己也说不下去，显然，他成了玉帝后会有别的猴子，豹子，或者狮子老虎来推翻他，哪怕是跳蚤都有可能。“我知道了，我可以公平地对待每一个人，这样他们就不会推翻我。”那只猴子挠了挠头，他觉得自己是一只很好的猴子，必然不会和现在的神仙一样，对他这样本领高强的人熟视无睹。“玉帝对你不公平吗？”我疑惑，他曾是个很厚到的人。“他不让我参加蟠桃会。”猴子把金箍棒砸在了地上。“哦，原来是这样，太白金星在天庭做了五百年的官后玉帝准许他可以每年都来，赤脚大仙七百年，太上老君倒是老早就可以了，可是他会炼丹，贡献比较大。你这样的一般两百年就可以参加蟠桃会。”“我等不了，我本领高强，可澄清万里玉宇。”猴子听到两百年立刻开始抓狂，但其实那是个很小的数字，对我们这样的人来说。“可是他不需要你如此啊，又没有妖精让你去平定，立不了功就只能多等些时候，不然对那些同样吃不起蟠桃的人不公平。”“他可以把蟠桃都拿出来，小家子气。”“我记得你看过蟠桃园，里面有多少棵树？”我问。“九千棵。”猴子听土地唠叨过，这么多树，让花果山吃几年都可以。“可是漫天神佛仙人近百万，所以他对你很公平。”我叹了口气，其实什么都不够，蟠桃不够，仙丹不够，西天那里更穷，趁手的宝物都分不了几个人。', '知乎', '2018-12-27 15:44:00.000000', 5, NULL, 5, '', 0),
('2018-12-29 13:58:00.000000', 5, '2qeq2q4eq', 'q24qrafdasdawd', '博主', '2018-12-29 13:58:00.000000', 5, NULL, 1, '', 0),
('2018-12-29 13:58:00.000000', 6, 'awafsegterw12', '1241tfsd', '博主', '2018-12-29 13:58:00.000000', 5, NULL, 2, '', 0),
('2018-12-29 13:58:00.000000', 7, '2q3trfwqrw2', 'q2rqt34t3', '博主', '2018-12-29 13:58:00.000000', 5, NULL, 3, '', 0),
('2018-12-29 13:58:00.000000', 8, 'wgtef3qwrqw', 'hjyjgytjgyjfhtf', '博主', '2018-12-29 13:58:00.000000', 5, NULL, 2, '', 0),
('2018-12-29 13:59:00.000000', 9, 'gfthfgewsafwq', 'q2werq3r3werAQWD', '博主', '2018-12-29 13:59:00.000000', 5, NULL, 3, '', 0),
('2018-12-29 15:26:00.000000', 10, '2018 年 12 月 27 日中国宣布北斗三号基本系统完成建设，将提供全球服务，这具有怎样的意义?', '作者：王佳伟\r\n链接：https://www.zhihu.com/question/307171591/answer/562041695\r\n来源：知乎\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\r\n\r\n前几天论文刚写完，数据是在27号前测的，不然实验结果会更好。回到正题，在做实验时就发现，用于RTK(实时载波相位)差分定位(用于厘米级定位的一种技术)时，北斗的可观测卫星数量就多于GPS。使用BDS(北斗)生成浮动定位解和固定定位解的速度明显快于GPS，GPS很多时间甚至都不能生成固定解而只能单点定位。根据我的实验结果，BDS的水平方向精确度可以达到0.03m，准确度0.05m，优于GPS，在中国范围内使用BDS绝对是定位精度最好的选择。差分服务目前千寻位置提供的比较好，但就是费用相对普通用户有点高。不然就是像我们这样自己搭建基准站来做实验。另外也需要接受设备支持解算差分数据，这类设备一般体积庞大，所以也就是为什么咱们手机不能用厘米定位了。不过随着国内一众板卡设计厂商华测、南方、司南导航、中海达等，相信以后板卡可以做得更小。不过厘米级服务是否向民间开放就不知道了，我们现在是用于道路施工中。从11月19号发射两颗MEO后，其实北斗三号基本系统就已经完成，同等条件下，BDS的可观测卫星都是多于GPS的，虽然目前我们为了提高精度，用BDS/GPS多，到最后只用BDS也是完全可以的。这次的官宣，北斗开始全球范围提供服务，彰显了我国的硬实力，要为祖国疯狂打call啊！', '知乎', '2018-12-29 15:26:00.000000', 5, NULL, 5, '', 0),
('2018-12-29 15:28:00.000000', 11, '2018-2019 跨年，你会怎么过呢？', '在18年最后几秒吃颗糖，这样19年刚开始就尝到了甜头哈哈哈~\r\n\r\n（也只能这样占占生活的便宜了）', '博主', '2018-12-29 15:28:00.000000', 5, NULL, 5, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `blog_blogtype`
--

CREATE TABLE `blog_blogtype` (
  `id` int(11) NOT NULL,
  `type_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `blog_blogtype`
--

INSERT INTO `blog_blogtype` (`id`, `type_name`) VALUES
(1, 'Python'),
(2, '感悟'),
(3, '随笔'),
(4, 'Mark Sanders'),
(5, '转载');

-- --------------------------------------------------------

--
-- 表的结构 `blog_homebanner`
--

CREATE TABLE `blog_homebanner` (
  `id` int(11) NOT NULL,
  `author` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `blog_homebanner`
--

INSERT INTO `blog_homebanner` (`id`, `author`, `title`, `image`, `url`, `index`, `add_time`) VALUES
(1, '陈奕迅', '有人问我 我就会讲 但是无人来', 'homebanner/2018/12/Eason_Chan_UVvj2fC.jpg', NULL, 100, '2018-12-23 20:04:00.000000'),
(2, 'Jay Chou', '为你弹奏肖邦的夜曲  纪念我死去的爱情', 'homebanner/2018/12/十月的肖邦_CC1zliG.jpeg', NULL, 101, '2018-12-24 22:04:00.000000'),
(3, 'Jay Chou', '荣耀的背后刻著一道孤独', 'homebanner/2018/12/4.叶惠美_75bIdIJ.jpg', NULL, 102, '2018-12-24 22:04:00.000000');

-- --------------------------------------------------------

--
-- 表的结构 `blog_myself`
--

CREATE TABLE `blog_myself` (
  `id` int(11) NOT NULL,
  `text1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text2` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text3` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `csdn_url` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(13, 'blog', 'blog'),
(14, 'blog', 'blogtype'),
(11, 'blog', 'homebanner'),
(12, 'blog', 'myself'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'xadmin', 'bookmark'),
(10, 'xadmin', 'log'),
(8, 'xadmin', 'usersettings'),
(9, 'xadmin', 'userwidget');

-- --------------------------------------------------------

--
-- 表的结构 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-12-23 18:30:17.151746'),
(2, 'auth', '0001_initial', '2018-12-23 18:30:37.245717'),
(3, 'admin', '0001_initial', '2018-12-23 18:30:40.738265'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-12-23 18:30:40.818682'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2018-12-23 18:30:40.904340'),
(6, 'contenttypes', '0002_remove_content_type_name', '2018-12-23 18:30:43.526420'),
(7, 'auth', '0002_alter_permission_name_max_length', '2018-12-23 18:30:45.362738'),
(8, 'auth', '0003_alter_user_email_max_length', '2018-12-23 18:30:45.731717'),
(9, 'auth', '0004_alter_user_username_opts', '2018-12-23 18:30:45.833900'),
(10, 'auth', '0005_alter_user_last_login_null', '2018-12-23 18:30:47.493687'),
(11, 'auth', '0006_require_contenttypes_0002', '2018-12-23 18:30:47.563025'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2018-12-23 18:30:47.671614'),
(13, 'auth', '0008_alter_user_username_max_length', '2018-12-23 18:30:50.315198'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2018-12-23 18:30:52.581214'),
(15, 'sessions', '0001_initial', '2018-12-23 18:30:54.598719'),
(16, 'xadmin', '0001_initial', '2018-12-23 18:31:15.091758'),
(17, 'xadmin', '0002_log', '2018-12-23 18:31:21.791630'),
(18, 'xadmin', '0003_auto_20160715_0100', '2018-12-23 18:31:24.427024'),
(19, 'auth', '0010_auto_20181223_1916', '2018-12-23 19:23:02.426845'),
(20, 'blog', '0001_initial', '2018-12-23 19:23:02.831257'),
(21, 'blog', '0002_auto_20181223_1927', '2018-12-23 19:27:19.935610'),
(22, 'blog', '0003_auto_20181223_1947', '2018-12-23 19:47:50.934392'),
(23, 'blog', '0004_auto_20181223_2032', '2018-12-23 20:32:30.253476'),
(24, 'blog', '0005_auto_20181223_2227', '2018-12-23 22:27:32.623177'),
(25, 'blog', '0006_auto_20181223_2229', '2018-12-23 22:29:46.240070'),
(26, 'blog', '0007_auto_20181223_2236', '2018-12-23 22:36:30.136663'),
(27, 'blog', '0008_blog_image', '2018-12-24 13:37:34.992827'),
(28, 'blog', '0009_auto_20181224_2142', '2018-12-24 21:42:18.104063'),
(29, 'blog', '0010_auto_20181227_1539', '2018-12-27 15:39:50.119155'),
(30, 'blog', '0011_auto_20181229_1655', '2018-12-29 16:55:21.106470');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('eil3pik1ni85ocisjjgnzuclgwfu0ipz', 'MzRiNGQxYzY1YjQyNzhkN2U2YjJmY2I3NTVmZTUyN2MwZDQ0YmY5Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MDE1NDgzMjUxZjg5NjcwOGRiNWYyOWJhMDMxM2E1MDhiN2YzOGI4IiwiTElTVF9RVUVSWSI6W1siYmxvZyIsImhvbWViYW5uZXIiXSwiIl19', '2019-01-07 22:08:21.509758'),
('x3xskr1pv9e4hdxelgcl77kv3vsnrw8g', 'NDE5OWVjNDg3YmEzZDk5ZTQyMTE3MDVhZDE0YmU2ZjFmN2YwZjYwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MDE1NDgzMjUxZjg5NjcwOGRiNWYyOWJhMDMxM2E1MDhiN2YzOGI4IiwiTElTVF9RVUVSWSI6W1siYmxvZyIsImJsb2ciXSwiIl19', '2019-01-12 13:59:15.154331'),
('x71oyb8wpvnh4g8zeqoe41j6i3lgo06m', 'MmUwMDRkMzU1NTMxNjE1ZDU0Zjg4OWUwNzIxNzIwMTBlZTRmMDg3ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MDE1NDgzMjUxZjg5NjcwOGRiNWYyOWJhMDMxM2E1MDhiN2YzOGI4IiwiTElTVF9RVUVSWSI6W1siYmxvZyIsImJsb2d0eXBlIl0sIiJdfQ==', '2019-01-13 15:13:11.342420'),
('yns2x5mvg94qlnc43328gtf9hywuicx5', 'NDE5OWVjNDg3YmEzZDk5ZTQyMTE3MDVhZDE0YmU2ZjFmN2YwZjYwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MDE1NDgzMjUxZjg5NjcwOGRiNWYyOWJhMDMxM2E1MDhiN2YzOGI4IiwiTElTVF9RVUVSWSI6W1siYmxvZyIsImJsb2ciXSwiIl19', '2019-01-07 13:49:32.210191');

-- --------------------------------------------------------

--
-- 表的结构 `xadmin_bookmark`
--

CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `xadmin_log`
--

CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `xadmin_log`
--

INSERT INTO `xadmin_log` (`id`, `action_time`, `ip_addr`, `object_id`, `object_repr`, `action_flag`, `message`, `content_type_id`, `user_id`) VALUES
(1, '2018-12-23 20:04:39.522511', '127.0.0.1', '1', '有人问我 我就会讲 但是无人来(位于第100)', 'create', '已添加。', 11, 1),
(2, '2018-12-23 21:05:52.454095', '127.0.0.1', '1', '有人问我 我就会讲 但是无人来(位于第100)', 'change', '修改 image', 11, 1),
(3, '2018-12-23 22:30:32.523062', '127.0.0.1', '1', 'Python', 'create', '已添加。', 14, 1),
(4, '2018-12-23 22:30:35.968241', '127.0.0.1', '2', '感悟', 'create', '已添加。', 14, 1),
(5, '2018-12-23 22:30:38.558868', '127.0.0.1', '3', '随笔', 'create', '已添加。', 14, 1),
(6, '2018-12-23 22:37:11.252560', '127.0.0.1', '4', 'Mark Sanders', 'create', '已添加。', 14, 1),
(7, '2018-12-23 22:38:13.015534', '127.0.0.1', '1', '<Blog: Nature, in the broadest sense, is the natural, physical, or material world or universe.>', 'create', '已添加。', 13, 1),
(8, '2018-12-23 22:40:00.874247', '127.0.0.1', '5', '转载', 'create', '已添加。', 14, 1),
(9, '2018-12-23 22:41:10.831722', '127.0.0.1', '2', '<Blog: 如何评价 22 岁 MIT 博士生曹原获评 Nature 2018 年度十大人物之一，并居榜单首位？>', 'create', '已添加。', 13, 1),
(10, '2018-12-23 22:42:38.380399', '127.0.0.1', '3', '<Blog: 《春江花月夜》为何被誉为“孤篇压全唐”？>', 'create', '已添加。', 13, 1),
(11, '2018-12-24 13:39:38.946651', '127.0.0.1', '3', '<Blog: 《春江花月夜》为何被誉为“孤篇压全唐”？>', 'change', '修改 image', 13, 1),
(12, '2018-12-24 13:39:49.816491', '127.0.0.1', '2', '<Blog: 如何评价 22 岁 MIT 博士生曹原获评 Nature 2018 年度十大人物之一，并居榜单首位？>', 'change', '修改 image', 13, 1),
(13, '2018-12-24 13:40:07.490549', '127.0.0.1', '1', '<Blog: Nature, in the broadest sense, is the natural, physical, or material world or universe.>', 'change', '修改 image', 13, 1),
(14, '2018-12-24 21:42:44.744086', '127.0.0.1', '1', '有人问我 我就会讲 但是无人来(位于第100)', 'change', '修改 image 和 url', 11, 1),
(15, '2018-12-24 22:04:47.623602', '127.0.0.1', '2', '为你弹奏肖邦的夜曲  纪念我死去的爱情(位于第101)', 'create', '已添加。', 11, 1),
(16, '2018-12-24 22:07:41.958941', '127.0.0.1', '3', '荣耀的背后刻著一道孤独(位于第102)', 'create', '已添加。', 11, 1),
(17, '2018-12-24 22:08:21.325790', '127.0.0.1', '2', '为你弹奏肖邦的夜曲  纪念我死去的爱情(位于第101)', 'change', '修改 image', 11, 1),
(18, '2018-12-24 22:48:00.058740', '127.0.0.1', '2', '为你弹奏肖邦的夜曲  纪念我死去的爱情(位于第101)', 'change', '修改 image', 11, 1),
(19, '2018-12-24 22:48:17.984291', '127.0.0.1', '3', '荣耀的背后刻著一道孤独(位于第102)', 'change', '修改 image', 11, 1),
(20, '2018-12-24 23:03:52.003097', '127.0.0.1', '2', '为你弹奏肖邦的夜曲  纪念我死去的爱情(位于第101)', 'change', '修改 image', 11, 1),
(21, '2018-12-24 23:05:28.080107', '127.0.0.1', '3', '荣耀的背后刻著一道孤独(位于第102)', 'change', '修改 image', 11, 1),
(22, '2018-12-27 15:47:01.077307', '127.0.0.1', '4', '<Blog: 孙悟空为什么不找如来报仇？>', 'create', '已添加。', 13, 1),
(23, '2018-12-29 13:58:35.559678', '127.0.0.1', '5', '<Blog: 2qeq2q4eq>', 'create', '已添加。', 13, 1),
(24, '2018-12-29 13:58:45.116444', '127.0.0.1', '6', '<Blog: awafsegterw12>', 'create', '已添加。', 13, 1),
(25, '2018-12-29 13:58:53.575130', '127.0.0.1', '7', '<Blog: 2q3trfwqrw2>', 'create', '已添加。', 13, 1),
(26, '2018-12-29 13:59:02.592635', '127.0.0.1', '8', '<Blog: wgtef3qwrqw>', 'create', '已添加。', 13, 1),
(27, '2018-12-29 13:59:12.670794', '127.0.0.1', '9', '<Blog: gfthfgewsafwq>', 'create', '已添加。', 13, 1),
(28, '2018-12-29 15:28:04.294041', '127.0.0.1', '10', '第10篇2018 年 12 月 27 日中国宣布北斗三号基本系统完成建设，将提供全球服务，这具有怎样的意义?博客', 'create', '已添加。', 13, 1),
(29, '2018-12-29 15:28:42.770197', '127.0.0.1', '11', '第11篇2018-2019 跨年，你会怎么过呢？博客', 'create', '已添加。', 13, 1);

-- --------------------------------------------------------

--
-- 表的结构 `xadmin_usersettings`
--

CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL,
  `key` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `xadmin_usersettings`
--

INSERT INTO `xadmin_usersettings` (`id`, `key`, `value`, `user_id`) VALUES
(1, 'dashboard:home:pos', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `xadmin_userwidget`
--

CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL,
  `page_id` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 表的索引 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- 表的索引 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- 表的索引 `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 表的索引 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- 表的索引 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- 表的索引 `blog_blog`
--
ALTER TABLE `blog_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`);

--
-- 表的索引 `blog_blogtype`
--
ALTER TABLE `blog_blogtype`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `blog_homebanner`
--
ALTER TABLE `blog_homebanner`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `blog_myself`
--
ALTER TABLE `blog_myself`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- 表的索引 `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- 表的索引 `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- 表的索引 `xadmin_bookmark`
--
ALTER TABLE `xadmin_bookmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  ADD KEY `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` (`user_id`);

--
-- 表的索引 `xadmin_log`
--
ALTER TABLE `xadmin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `xadmin_log_user_id_bb16a176_fk_auth_user_id` (`user_id`);

--
-- 表的索引 `xadmin_usersettings`
--
ALTER TABLE `xadmin_usersettings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` (`user_id`);

--
-- 表的索引 `xadmin_userwidget`
--
ALTER TABLE `xadmin_userwidget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- 使用表AUTO_INCREMENT `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `blog_blog`
--
ALTER TABLE `blog_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `blog_blogtype`
--
ALTER TABLE `blog_blogtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `blog_homebanner`
--
ALTER TABLE `blog_homebanner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `blog_myself`
--
ALTER TABLE `blog_myself`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用表AUTO_INCREMENT `xadmin_bookmark`
--
ALTER TABLE `xadmin_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xadmin_log`
--
ALTER TABLE `xadmin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 使用表AUTO_INCREMENT `xadmin_usersettings`
--
ALTER TABLE `xadmin_usersettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `xadmin_userwidget`
--
ALTER TABLE `xadmin_userwidget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 限制导出的表
--

--
-- 限制表 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 限制表 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 限制表 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `blog_blog`
--
ALTER TABLE `blog_blog`
  ADD CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`);

--
-- 限制表 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `xadmin_bookmark`
--
ALTER TABLE `xadmin_bookmark`
  ADD CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `xadmin_log`
--
ALTER TABLE `xadmin_log`
  ADD CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `xadmin_usersettings`
--
ALTER TABLE `xadmin_usersettings`
  ADD CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `xadmin_userwidget`
--
ALTER TABLE `xadmin_userwidget`
  ADD CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
