-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: mysite
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add 个人信息',6,'add_userprofile'),(22,'Can change 个人信息',6,'change_userprofile'),(23,'Can delete 个人信息',6,'delete_userprofile'),(24,'Can view 个人信息',6,'view_userprofile'),(25,'Can add 博客',7,'add_blog'),(26,'Can change 博客',7,'change_blog'),(27,'Can delete 博客',7,'delete_blog'),(28,'Can view 博客',7,'view_blog'),(29,'Can add 博客类型',8,'add_blogtype'),(30,'Can change 博客类型',8,'change_blogtype'),(31,'Can delete 博客类型',8,'delete_blogtype'),(32,'Can view 博客类型',8,'view_blogtype'),(33,'Can add 博客轮播图',9,'add_bolgbanner'),(34,'Can change 博客轮播图',9,'change_bolgbanner'),(35,'Can delete 博客轮播图',9,'delete_bolgbanner'),(36,'Can view 博客轮播图',9,'view_bolgbanner'),(37,'Can add 首页轮播图',10,'add_homebanner'),(38,'Can change 首页轮播图',10,'change_homebanner'),(39,'Can delete 首页轮播图',10,'delete_homebanner'),(40,'Can view 首页轮播图',10,'view_homebanner'),(41,'Can add 博客类型',11,'add_personcard'),(42,'Can change 博客类型',11,'change_personcard'),(43,'Can delete 博客类型',11,'delete_personcard'),(44,'Can view 博客类型',11,'view_personcard'),(45,'Can add Bookmark',12,'add_bookmark'),(46,'Can change Bookmark',12,'change_bookmark'),(47,'Can delete Bookmark',12,'delete_bookmark'),(48,'Can view Bookmark',12,'view_bookmark'),(49,'Can add User Setting',13,'add_usersettings'),(50,'Can change User Setting',13,'change_usersettings'),(51,'Can delete User Setting',13,'delete_usersettings'),(52,'Can view User Setting',13,'view_usersettings'),(53,'Can add User Widget',14,'add_userwidget'),(54,'Can change User Widget',14,'change_userwidget'),(55,'Can delete User Widget',14,'delete_userwidget'),(56,'Can view User Widget',14,'view_userwidget'),(57,'Can add log entry',15,'add_log'),(58,'Can change log entry',15,'change_log'),(59,'Can delete log entry',15,'delete_log'),(60,'Can view log entry',15,'view_log');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `response_count` int(11) NOT NULL,
  `click_number` int(11) NOT NULL,
  `blog_url` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  KEY `blog_blog_user_id_0e1a17e5_fk_blog_userprofile_id` (`user_id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`),
  CONSTRAINT `blog_blog_user_id_0e1a17e5_fk_blog_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `blog_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (1,'知乎','苹果公司下调 2019 第一财季业绩指导，预计收入约 840 亿美元，传递出哪些信息？','我太高兴了。跌的不够狠，还应该再跌。厨子大约是个不见棺材不落泪的人。希望下一代产品降价，手机，平板，mac全都有。手机这定价趋势我倒想知道明年能卖出去几台。ipad新的涨价，老款维持原价这是人干的事？新的边框还粗了，结构强度还变差了，笔也涨价了，书写延迟和一代居然没有区别？笔尖可以通用？您在逗我吗？新出的air是个什么玩意？一万块买个金色还是买个logo？要轻薄，没有，要性能，没有，要屏幕，还是没有。老air还是五代u吧？999刀？新老air全是电子垃圾，air在英语里是垃圾的意思吗？带bar pro卖的死贵，贵就算了，t2芯片是人用的？不带bar的不更新，还是吊打air，年中指不定还要一刀砍了怕air没人买。————————希望手机原配至少18w pd快充充电头和usb3.1线，出一个边框不粗于xs的lcd版本，或者把se弄成全面屏。大幅更新设计配置功能什么的，再说。ipad赶紧出个能用的特供ios，不求支持鼠标了，至少来个finder吧。现在的这系统怕不在逗我，也配叫pro？a12x就给这么个废物垃圾系统，暴殄天物。mac我也不指望啥了，就把12寸的给更新了吧，我想买个打打字。\r\n\r\n作者：你叫我改成什么好\r\n链接：https://www.zhihu.com/question/307815279/answer/565439538\r\n来源：知乎\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。','2019-01-04 11:05:00.000000','','2019-01-04 11:05:00.000000',0,0,NULL,2,1),(2,'知乎','苹果公司下调 2019 第一财季业绩指导，预计收入约 840 亿美元，传递出哪些信息？','作者：太平洋电脑网\r\n链接：https://www.zhihu.com/question/307815279/answer/565776358\r\n来源：知乎\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\r\n\r\n这个问题在知乎上依然挺热的，反正不算流量惨淡，在几个月前，苹果刚好破万亿市值的时候写下了答案。（想不到现在股价大跌）我的答案的观点是这样的：相信很多人跟我一样，依然认为iPhone是最强的手机或者说是综合实力最强的手机。只不过，因为手机行业成熟，整个行业都遇到了瓶颈。在基础学科和研究没有巨大突破之前，整个行业可能会陷入缓慢的创新之中。同时，iPhone对比安卓阵容的领先程度已经大不如前，甚至在某些领域已经被某些安卓品牌超越了。与此同时，人类在这个时刻刚好碰上了可能是第四次工业革命：以人工智能，清洁能源，机器人技术，量子信息技术，虚拟现实以及生物技术为主的全新技术革命。苹果的副总裁表示，苹果正在向人工智能转变。那就意味着，苹果主要的竞争对手从手机等硬件厂商变成谷歌、百度等做人工智能、自动驾驶等厂商。在智能手机领域上，苹果依然有着最强的综合实力。虽然苹果嘴上说转型人工智能，但是目前来看，智能手机依然占据它大部分的收入。所以我认为苹果并没有走下坡路。毕竟它依然是智能手机的王者。但，无可否认的是，它跟安卓的距离越来越近了。库克在公开信中表明“iPhone以外的类别(服务、Mac、iPad、可穿戴设备/家庭/配件)同比增长近19%。”“包括服务、可穿戴产品和Mac营收创出历史新高。”库克知道，iPhone被追上是无可避免的，所以要多元化发展。可惜，这也暴漏了苹果过分依赖iPhone的问题。苹果是否会衰落？关键的一战就在于苹果是否能够成功转型。在外界看来，苹果的人工智能技术是落后于国际一线的公司（例如谷歌）。虽然库克口硬说是苹果低调......至于是否成功，就让时间给出答案。iPhone会卖乖吗?相信大家对今年iPhone的“标配祖传5W充电头”、阉割iPhoneXS系列的128G版本、历史新高售价等等颇有怨言。从这一季度的财报来看，苹果确实吃了点苦头，成为了2019年美股开始第一炸。但是，我并不认为苹果明年会把快充头、最受欢迎容量等等东西全都一次性放送给大家。因为折叠屏等技术还没有成熟，iPhoneXSS（原谅我猜不到下一代iPhone旗舰的名字）的外形变化可能不大。可能要继续使用两三年。那么，库克不可能一次性把全部需求释放。同时，iPhone还是综合实力最强的手机，库克大可以明年定价低一点，吸引大家来“真香”。库克在公开信表示“iPhone以外的类别(服务、Mac、iPad、可穿戴设备/家庭/配件)同比增长近19%。”可见，配件业务对于未来的苹果来说非常重要。这么快把快充头标配，充电头配件业务怎么做？还不如降价促销。换电池的价格降低确实对新iPhone造成一点的影响。但是在今年秋季之后，这些影响会明显降低，库克对iPhone的销售信心会增加一些。我们说到，苹果正在转型人工智能。苹果需要掠夺利润投入到人工智能的研究之中去，所以苹果会以利润为向导，从新调整战略。iPhoneXSS降价的同时一次性配备大家喜欢的东西（标配快充头、大电池、当年最受欢迎容量等等）可能不太现实。库克可能还会选择挤牙膏，只不过这一次挤牙膏力度大一点.....从我个人来看，我挺为喜欢苹果的。只不过，想苹果卖一个好好的价格，不要把我们当成韭菜，能割一把是一把。这是我的个人看法，欢迎大家在评论区发表您们的意见。','2019-01-04 11:15:00.000000','','2019-01-04 11:15:00.000000',0,0,NULL,2,1),(3,'豆瓣','蜘蛛侠：平行宇宙 Spider-Man: Into the Spider-Verse','迈尔斯（沙梅克·摩尔 配音）的父亲是一位一板一眼的警官，而他的母亲则是一名工作勤奋的护士。慈爱的父母对于孩子的成就非常自豪，也希望他能够融入新加入的这所优秀的学校，在这里取得成功。然而迈尔斯的生活因为一次意外变得更加复杂。他被一只放射性蜘蛛咬伤，并因此获得了毒液冲击、伪装隐藏、蜘蛛爬行、超凡听力、蜘蛛感应等一系列超能力。与此同时，这座城市里最臭名昭着的犯罪头目金并（列维·施瑞博尔 配音）已经建立起一台高度隐秘的超级对撞机，这台对撞机开启了通往其他宇宙的时空通道，来自其他宇宙、不同版本的蜘蛛侠（包括中年彼得·帕克、女蜘蛛侠格温、暗影蜘蛛侠、蜘猪侠和潘妮·帕克）也来到了迈尔斯所在的世界。在这些新老角色的帮助下，迈尔斯慢慢学习、逐渐接受挑战，也学会了作为一名超级英雄所要承担的责任。他最终意识到，任何人都可以戴上超级英雄的面具，为正义而战……','2019-01-04 11:16:00.000000','homeblogimage/2019/01/蜘蛛侠.webp','2019-01-04 11:16:00.000000',0,0,NULL,4,1),(4,'知乎','万字长文深度解析Python装饰器','Python 中的装饰器是你进入 Python 大门的一道坎，不管你跨不跨过去它都在那里。\r\n\r\n为什么需要装饰器\r\n我们假设你的程序实现了 say_hello () 和 say_goodbye () 两个函数。\r\n\r\ndef say_hello():\r\n   print \"hello!\"\r\n\r\ndef say_goodbye():\r\n   print \"hello!\"  # bug here\r\n\r\nif __name__ == \'__main__\':\r\n   say_hello()\r\n   say_goodbye()\r\n但是在实际调用中，我们发现程序出错了，上面的代码打印了两个 hello 。经过调试你发现是 say_goodbye () 出错了。老板要求调用每个方法前都要记录进入函数的时间和名称，比如这样：\r\n\r\n[DEBUG] 2016 - 10 - 27 11:11:11 - Enter say_hello()\r\nHello!\r\n\r\n[DEBUG] 2016 - 10 - 27 11:11:11 - Enter say_goodbye()\r\nGoodbye!\r\n好，小 A 是个毕业生，他是这样实现的。\r\n\r\ndef say_hello():\r\n   print \"[DEBUG]: enter say_hello()\"\r\n   print \"hello!\"\r\n\r\ndef say_goodbye():\r\n   print \"[DEBUG]: enter say_goodbye()\"\r\n   print \"hello!\"\r\n\r\nif __name__ == \'__main__\':\r\n   say_hello()\r\n   say_goodbye()\r\n很 low 吧？ 嗯是的。小 B 工作有一段时间了，他告诉小 A 应该这样写。\r\n\r\ndef debug():\r\n   import inspect\r\n   caller_name = inspect.stack()[1][3]    \r\n   print \"[DEBUG]: enter {}()\".format(caller_name)\r\n\r\ndef say_hello():\r\n   debug()    \r\n   print \"hello!\"\r\n\r\ndef say_goodbye():\r\n   debug()    \r\n   print \"goodbye!\"\r\n\r\nif __name__ == \'__main__\':\r\n   say_hello()\r\n   say_goodbye()\r\n是不是好一点？那当然，但是每个业务函数里都要调用一下 debug () 函数，是不是很难受？万一老板说 say 相关的函数不用 debug ， do 相关的才需要呢？\r\n\r\n那么装饰器这时候应该登场了。\r\n\r\n装饰器本质上是一个 Python 函数，它可以让其他函数在不需要做任何代码变动的前提下增加额外功能，装饰器的返回值也是一个函数对象。它经常用于有切面需求的场景，比如：插入日志、性能测试、事务处理、缓存、权限校验等场景。装饰器是解决这类问题的绝佳设计，有了装饰器，我们就可以抽离出大量与函数功能本身无关的雷同代码并继续重用。\r\n概括的讲，装饰器的作用就是为已经存在的函数或对象添加额外的功能。\r\n\r\n怎么写一个装饰器\r\n在早些时候 \\ ( Python Version < 2.4，2004年以前 \\ )，为一个函数添加额外功能的写法是这样的。\r\n\r\ndef debug(func):\r\n   def wrapper():\r\n       print \"[DEBUG]: enter {}()\".format(func.__name__)        \r\n       return func()    \r\n   return wrapper\r\n\r\ndef say_hello():\r\n   print \"hello!\"\r\n   \r\nsay_hello = debug(say_hello)  # 添加功能并保持原函数名不变\r\n上面的 debug 函数其实已经是一个装饰器了，它对原函数做了包装并返回了另外一个函数，额外添加了一些功能。因为这样写实在不太优雅， [email\r\nprotected]，下面代码等同于早期的写法。\r\n\r\ndef debug(func):\r\n   def wrapper():\r\n       print \"[DEBUG]: enter {}()\".format(func.__name__)        \r\n       return func()    \r\n   return wrapper\r\n\r\n@debug\r\ndef say_hello():\r\n   print \"hello!\"\r\n这是最简单的装饰器，但是有一个问题，如果被装饰的函数需要传入参数，那么这个装饰器就坏了。因为返回的函数并不能接受参数，你可以指定装饰器函数 wrapper 接受和原函数一样的参数，比如：\r\n\r\ndef debug(func):\r\n   def wrapper(something):  # 指定一毛一样的参数\r\n       print \"[DEBUG]: enter {}()\".format(func.__name__)        \r\n       return func(something)    \r\n   return wrapper  # 返回包装过函数\r\n\r\n@debug\r\ndef say(something):\r\n   print \"hello {}!\".format(something)\r\n这样你就解决了一个问题，但又多了 N 个问题。因为函数有千千万，你只管你自己的函数，别人的函数参数是什么样子，鬼知道？还好 Python 提供了可变参数 * args 和关键字参数 ** kwargs ，有了这两个参数，装饰器就可以用于任意目标函数了。','2019-01-04 11:22:00.000000','','2019-01-04 11:22:00.000000',0,0,NULL,1,1);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogtype`
--

DROP TABLE IF EXISTS `blog_blogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blogtype_user_id_735fe7dc_fk_blog_userprofile_id` (`user_id`),
  CONSTRAINT `blog_blogtype_user_id_735fe7dc_fk_blog_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `blog_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogtype`
--

LOCK TABLES `blog_blogtype` WRITE;
/*!40000 ALTER TABLE `blog_blogtype` DISABLE KEYS */;
INSERT INTO `blog_blogtype` VALUES (1,'Python','Blog_type/2019/01/python.jpg',1),(2,'转载','Blog_type/2019/01/转载.jpg',1),(3,'随笔','Blog_type/2019/01/随笔.jpg',1),(4,'影视','Blog_type/2019/01/教父.jpg',1),(5,'独白','Blog_type/2019/01/独白.jpg',1);
/*!40000 ALTER TABLE `blog_blogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_bolgbanner`
--

DROP TABLE IF EXISTS `blog_bolgbanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_bolgbanner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_bolgbanner`
--

LOCK TABLES `blog_bolgbanner` WRITE;
/*!40000 ALTER TABLE `blog_bolgbanner` DISABLE KEYS */;
INSERT INTO `blog_bolgbanner` VALUES (1,'','2012','blog_banner/2019/01/674067.jpg',100,'2019-01-02 20:22:00.000000'),(2,'','Batman v Superman: Dawn of Justice','blog_banner/2019/01/682810.jpg',101,'2019-01-02 20:23:00.000000'),(3,'','The Bourne Identity','blog_banner/2019/01/706925.jpg',102,'2019-01-02 20:25:00.000000');
/*!40000 ALTER TABLE `blog_bolgbanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_homebanner`
--

DROP TABLE IF EXISTS `blog_homebanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_homebanner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_homebanner`
--

LOCK TABLES `blog_homebanner` WRITE;
/*!40000 ALTER TABLE `blog_homebanner` DISABLE KEYS */;
INSERT INTO `blog_homebanner` VALUES (1,'陈奕迅','有人问我 我就会讲 但是无人来','homebanner/2018/12/chen.jpg',NULL,100,'2018-12-23 20:04:00.000000'),(2,'Jay Chou','为你弹奏肖邦的夜曲  纪念我死去的爱情','homebanner/2018/12/jaychou.jpg',NULL,101,'2018-12-24 22:04:00.000000'),(3,'Jay Chou','荣耀的背后刻著一道孤独','homebanner/2018/12/taile.jpg',NULL,102,'2018-12-24 22:04:00.000000');
/*!40000 ALTER TABLE `blog_homebanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_personcard`
--

DROP TABLE IF EXISTS `blog_personcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_personcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_url` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_personcard_user_id_8a7a5693_fk_blog_userprofile_id` (`user_id`),
  CONSTRAINT `blog_personcard_user_id_8a7a5693_fk_blog_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `blog_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_personcard`
--

LOCK TABLES `blog_personcard` WRITE;
/*!40000 ALTER TABLE `blog_personcard` DISABLE KEYS */;
INSERT INTO `blog_personcard` VALUES (1,'知乎','我的知乎首页','https://www.zhihu.com/people/lonelyguang-hui/activities',1),(2,'CSDN','csdn技术博客','https://blog.csdn.net/qq_40965177',1);
/*!40000 ALTER TABLE `blog_personcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_userprofile`
--

DROP TABLE IF EXISTS `blog_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `text1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text2` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text3` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_userprofile`
--

LOCK TABLES `blog_userprofile` WRITE;
/*!40000 ALTER TABLE `blog_userprofile` DISABLE KEYS */;
INSERT INTO `blog_userprofile` VALUES (1,'pbkdf2_sha256$120000$Eu0R49Ct89kc$UsSaJfOKUU03KjtuFFK3FtGHgaQMri6MNOjcZvKU/k4=','2019-01-02 20:54:00.000000',1,'root','zbc','awda','1075605131@qq.com',1,1,'2019-01-02 18:54:00.000000','善自嘲而不嘲人','一个文笔不好的程序员的读写博客。学习之余，我运用了自己的专业知识做了这个博客。前端页面是网上找的，后端用Django框架。时间总会过的，所以我需要找个地方写点东西。这里就是我写字的地方。','个人兴趣爱好广泛，书籍，电音，电影，动漫，NBA都有接触，不喜欢社交活动。个人在这些艺术作品中能够找到令人思考的东西，远比一群人在高谈阔论的要多。但我又不否认社交活动的必要性。不知道什么时候开始，自己就不喜欢人多的地方，而是喜欢自己一个人静静地思考，阅读，或者是欣赏一部好的电影。天下之大，终有伯乐。','myself/2019/01/author.png');
/*!40000 ALTER TABLE `blog_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_userprofile_groups`
--

DROP TABLE IF EXISTS `blog_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_userprofile_groups_userprofile_id_group_id_06da97e7_uniq` (`userprofile_id`,`group_id`),
  KEY `blog_userprofile_groups_group_id_4a6ba027_fk_auth_group_id` (`group_id`),
  CONSTRAINT `blog_userprofile_gro_userprofile_id_9f24437d_fk_blog_user` FOREIGN KEY (`userprofile_id`) REFERENCES `blog_userprofile` (`id`),
  CONSTRAINT `blog_userprofile_groups_group_id_4a6ba027_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_userprofile_groups`
--

LOCK TABLES `blog_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `blog_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `blog_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_userprofile_user_pe_userprofile_id_permissio_5e2f216e_uniq` (`userprofile_id`,`permission_id`),
  KEY `blog_userprofile_use_permission_id_a2a440ee_fk_auth_perm` (`permission_id`),
  CONSTRAINT `blog_userprofile_use_permission_id_a2a440ee_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `blog_userprofile_use_userprofile_id_72c0b386_fk_blog_user` FOREIGN KEY (`userprofile_id`) REFERENCES `blog_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_userprofile_user_permissions`
--

LOCK TABLES `blog_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `blog_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_blog_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_blog_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `blog_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(7,'blog','blog'),(8,'blog','blogtype'),(9,'blog','bolgbanner'),(10,'blog','homebanner'),(11,'blog','personcard'),(6,'blog','userprofile'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(12,'xadmin','bookmark'),(15,'xadmin','log'),(13,'xadmin','usersettings'),(14,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-01-02 14:24:47.682122'),(2,'contenttypes','0002_remove_content_type_name','2019-01-02 14:24:48.509341'),(3,'auth','0001_initial','2019-01-02 14:24:52.509210'),(4,'auth','0002_alter_permission_name_max_length','2019-01-02 14:24:53.030847'),(5,'auth','0003_alter_user_email_max_length','2019-01-02 14:24:53.072745'),(6,'auth','0004_alter_user_username_opts','2019-01-02 14:24:53.111521'),(7,'auth','0005_alter_user_last_login_null','2019-01-02 14:24:53.146898'),(8,'auth','0006_require_contenttypes_0002','2019-01-02 14:24:53.174036'),(9,'auth','0007_alter_validators_add_error_messages','2019-01-02 14:24:53.214259'),(10,'auth','0008_alter_user_username_max_length','2019-01-02 14:24:53.248289'),(11,'auth','0009_alter_user_last_name_max_length','2019-01-02 14:24:53.287340'),(12,'auth','0010_auto_20181223_1916','2019-01-02 14:24:53.317165'),(13,'blog','0001_initial','2019-01-02 14:25:01.161054'),(14,'admin','0001_initial','2019-01-02 14:25:02.566954'),(15,'admin','0002_logentry_remove_auto_add','2019-01-02 14:25:02.612406'),(16,'admin','0003_logentry_add_action_flag_choices','2019-01-02 14:25:02.669020'),(17,'sessions','0001_initial','2019-01-02 14:25:03.187368'),(18,'xadmin','0001_initial','2019-01-02 14:25:06.195101'),(19,'xadmin','0002_log','2019-01-02 14:25:07.500987'),(20,'xadmin','0003_auto_20160715_0100','2019-01-02 14:25:08.082660'),(21,'blog','0002_auto_20190102_1859','2019-01-02 18:59:42.051226'),(22,'blog','0003_auto_20190102_2006','2019-01-02 20:06:37.133216'),(23,'blog','0004_auto_20190102_2028','2019-01-02 20:31:37.167988'),(24,'blog','0005_auto_20190102_2031','2019-01-02 20:31:37.222708'),(25,'blog','0006_auto_20190102_2112','2019-01-02 21:12:31.890095'),(26,'blog','0007_auto_20190104_1112','2019-01-04 11:12:59.163329');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('e7trckxiukqnyp5uaguf3xhcg9jrd7sw','MjRkZWQ0MmYzMGM5YTk0Y2VhNTIxM2Y4ODIzOTk4NWQ3NTI2MzU5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNzc4ZjJjYmZmNmU3YTI5MDMyYjUwYzg5NzFjZDY2ZDQzYzIzY2Y2IiwiTElTVF9RVUVSWSI6W1siYmxvZyIsImJsb2ciXSwiIl19','2019-01-18 11:23:54.088508'),('q4mslmi9hltyfkssvypq63tsb6gedvdp','NGU3YTdjMDBmZmY0MzQxNTJjZTUwMmY4NzQ5NGZhMGUzYTMzNDkwMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNzc4ZjJjYmZmNmU3YTI5MDMyYjUwYzg5NzFjZDY2ZDQzYzIzY2Y2IiwiTElTVF9RVUVSWSI6W1siYmxvZyIsInVzZXJwcm9maWxlIl0sIiJdfQ==','2019-01-18 09:20:23.411876');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_blog_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_blog_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `blog_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_blog_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_blog_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `blog_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2019-01-02 19:57:12.151917','127.0.0.1','1','Python','create','已添加。',8,1),(2,'2019-01-02 19:57:58.632715','127.0.0.1','2','转载','create','已添加。',8,1),(3,'2019-01-02 19:58:36.696443','127.0.0.1','3','随笔','create','已添加。',8,1),(4,'2019-01-02 20:00:41.593419','127.0.0.1','4','影视','create','已添加。',8,1),(5,'2019-01-02 20:02:23.368398','127.0.0.1','5','独白','create','已添加。',8,1),(6,'2019-01-02 20:12:58.403095','127.0.0.1','4','影视','change','修改 image',8,1),(7,'2019-01-02 20:19:39.233443','127.0.0.1','1','root','create','已添加。',11,1),(8,'2019-01-02 20:20:24.800428','127.0.0.1','2','root','create','已添加。',11,1),(9,'2019-01-02 20:23:30.999099','127.0.0.1','1','2012(位于第100)','create','已添加。',9,1),(10,'2019-01-02 20:25:08.617233','127.0.0.1','2','Batman v Superman: Dawn of Justice(位于第101)','create','已添加。',9,1),(11,'2019-01-02 20:26:18.759954','127.0.0.1','3','The Bourne Identity(位于第102)','create','已添加。',9,1),(12,'2019-01-02 20:39:04.520012','127.0.0.1','1','root','change','修改 last_login，first_name，last_name，email，text1，text2，text3 和 image',6,1),(13,'2019-01-02 20:55:56.735406','127.0.0.1','1','root','change','修改 last_login 和 image',6,1),(14,'2019-01-02 21:30:09.931609','127.0.0.1','1','root','change','修改 text1 和 text2',6,1),(15,'2019-01-03 22:12:29.320355','127.0.0.1','1','root','change','修改 text1，text2 和 text3',6,1),(16,'2019-01-04 08:24:00.275873','127.0.0.1','1','root','change','修改 text3',6,1),(17,'2019-01-04 08:24:20.866779','127.0.0.1','5','独白','change','没有字段被修改。',8,1),(18,'2019-01-04 10:52:45.415684','127.0.0.1','1','root','change','修改 text1 和 text2',6,1),(19,'2019-01-04 10:59:57.115181','127.0.0.1','4','影视','change','修改 image',8,1),(20,'2019-01-04 11:15:36.652704','127.0.0.1','1','第1篇苹果公司下调 2019 第一财季业绩指导，预计收入约 840 亿美元，传递出哪些信息？博客','create','已添加。',7,1),(21,'2019-01-04 11:16:27.258494','127.0.0.1','2','第2篇苹果公司下调 2019 第一财季业绩指导，预计收入约 840 亿美元，传递出哪些信息？博客','create','已添加。',7,1),(22,'2019-01-04 11:16:40.083938','127.0.0.1','2','第2篇苹果公司下调 2019 第一财季业绩指导，预计收入约 840 亿美元，传递出哪些信息？博客','change','修改 author',7,1),(23,'2019-01-04 11:19:56.345220','127.0.0.1','3','第3篇蜘蛛侠：平行宇宙 Spider-Man: Into the Spider-Verse博客','create','已添加。',7,1),(24,'2019-01-04 11:23:53.855832','127.0.0.1','4','第4篇万字长文深度解析Python装饰器博客','create','已添加。',7,1);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_blog_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_blog_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `blog_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_blog_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_blog_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `blog_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-04 15:37:22
