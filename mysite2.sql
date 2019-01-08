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
  `title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (1,'知乎','苹果公司下调 2019 第一财季业绩指导，预计收入约 840 亿美元，传递出哪些信息？','我太高兴了。跌的不够狠，还应该再跌。厨子大约是个不见棺材不落泪的人。希望下一代产品降价，手机，平板，mac全都有。手机这定价趋势我倒想知道明年能卖出去几台。ipad新的涨价，老款维持原价这是人干的事？新的边框还粗了，结构强度还变差了，笔也涨价了，书写延迟和一代居然没有区别？笔尖可以通用？您在逗我吗？新出的air是个什么玩意？一万块买个金色还是买个logo？要轻薄，没有，要性能，没有，要屏幕，还是没有。老air还是五代u吧？999刀？新老air全是电子垃圾，air在英语里是垃圾的意思吗？带bar pro卖的死贵，贵就算了，t2芯片是人用的？不带bar的不更新，还是吊打air，年中指不定还要一刀砍了怕air没人买。————————希望手机原配至少18w pd快充充电头和usb3.1线，出一个边框不粗于xs的lcd版本，或者把se弄成全面屏。大幅更新设计配置功能什么的，再说。ipad赶紧出个能用的特供ios，不求支持鼠标了，至少来个finder吧。现在的这系统怕不在逗我，也配叫pro？a12x就给这么个废物垃圾系统，暴殄天物。mac我也不指望啥了，就把12寸的给更新了吧，我想买个打打字。\r\n\r\n作者：你叫我改成什么好\r\n链接：https://www.zhihu.com/question/307815279/answer/565439538\r\n来源：知乎\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。','2019-01-04 11:05:00.000000','','2019-01-04 11:05:00.000000',0,0,NULL,2,1),(2,'知乎','苹果公司下调 2019 第一财季业绩指导，预计收入约 840 亿美元，传递出哪些信息？','`\r\n\r\n    abbr {\r\n    	font-family: \"roboto-bold\", sans-serif;\r\n    	font-variant: small-caps;\r\n    	text-transform: lowercase;\r\n    	letter-spacing: .05rem;\r\n    	color: #2b2b2b;\r\n    }\r\n    var, kbd, samp, code, pre {\r\n    	font-family: Consolas, \"Andale Mono\", Courier, \"Courier New\", monospace;\r\n    }\r\n    pre {\r\n    	padding: 2.4rem 3rem 3rem;\r\n    	background: #EAEAEA;\r\n    	margin: 4.2rem 0;\r\n    }\r\n    code {\r\n    	font-size: 1.4rem;\r\n    	margin: 0 .2rem;\r\n    	padding: .3rem .6rem;\r\n    	/*white-space: nowrap;*/\r\n    	background: #EAEAEA;\r\n    }`','2019-01-04 11:15:00.000000','','2019-01-04 11:15:00.000000',0,0,NULL,2,1),(3,'豆瓣','蜘蛛侠：平行宇宙 Spider-Man: Into the Spider-Verse','迈尔斯（沙梅克·摩尔 配音）的父亲是一位一板一眼的警官，而他的母亲则是一名工作勤奋的护士。慈爱的父母对于孩子的成就非常自豪，也希望他能够融入新加入的这所优秀的学校，在这里取得成功。然而迈尔斯的生活因为一次意外变得更加复杂。他被一只放射性蜘蛛咬伤，并因此获得了毒液冲击、伪装隐藏、蜘蛛爬行、超凡听力、蜘蛛感应等一系列超能力。与此同时，这座城市里最臭名昭着的犯罪头目金并（列维·施瑞博尔 配音）已经建立起一台高度隐秘的超级对撞机，这台对撞机开启了通往其他宇宙的时空通道，来自其他宇宙、不同版本的蜘蛛侠（包括中年彼得·帕克、女蜘蛛侠格温、暗影蜘蛛侠、蜘猪侠和潘妮·帕克）也来到了迈尔斯所在的世界。在这些新老角色的帮助下，迈尔斯慢慢学习、逐渐接受挑战，也学会了作为一名超级英雄所要承担的责任。他最终意识到，任何人都可以戴上超级英雄的面具，为正义而战……\r\n\r\n```python\r\nprint(\'hello world\')\r\n```','2019-01-04 22:25:00.000000','homeblogimage/2019/01/蜘蛛侠.webp','2019-01-04 22:25:00.000000',0,0,NULL,4,1),(4,'知乎','知乎','```python\r\nimport datetime\r\n\r\nfrom django.forms.utils import flatatt, pretty_name\r\nfrom django.forms.widgets import Textarea, TextInput\r\nfrom django.utils.functional import cached_property\r\nfrom django.utils.html import conditional_escape, format_html, html_safe\r\nfrom django.utils.safestring import mark_safe\r\nfrom django.utils.translation import gettext_lazy as _\r\n\r\n__all__ = (\'BoundField\',)\r\n\r\n\r\n@html_safe\r\nclass BoundField:\r\n    \"A Field plus data\"\r\n    def __init__(self, form, field, name):\r\n        self.form = form\r\n        self.field = field\r\n        self.name = name\r\n        self.html_name = form.add_prefix(name)\r\n        self.html_initial_name = form.add_initial_prefix(name)\r\n        self.html_initial_id = form.add_initial_prefix(self.auto_id)\r\n        if self.field.label is None:\r\n            self.label = pretty_name(name)\r\n        else:\r\n            self.label = self.field.label\r\n        self.help_text = field.help_text or \'\'\r\n\r\n    def __str__(self):\r\n        \"\"\"Render this field as an HTML widget.\"\"\"\r\n        if self.field.show_hidden_initial:\r\n            return self.as_widget() + self.as_hidden(only_initial=True)\r\n        return self.as_widget()\r\n\r\n    @cached_property\r\n    def subwidgets(self):\r\n        \"\"\"\r\n        Most widgets yield a single subwidget, but others like RadioSelect and\r\n        CheckboxSelectMultiple produce one subwidget for each choice.\r\n\r\n        This property is cached so that only one database query occurs when\r\n        rendering ModelChoiceFields.\r\n        \"\"\"\r\n        id_ = self.field.widget.attrs.get(\'id\') or self.auto_id\r\n        attrs = {\'id\': id_} if id_ else {}\r\n        attrs = self.build_widget_attrs(attrs)\r\n        return [\r\n            BoundWidget(self.field.widget, widget, self.form.renderer)\r\n            for widget in self.field.widget.subwidgets(self.html_name, self.value(), attrs=attrs)\r\n        ]\r\n\r\n    def __bool__(self):\r\n        # BoundField evaluates to True even if it doesn\'t have subwidgets.\r\n        return True\r\n\r\n    def __iter__(self):\r\n        return iter(self.subwidgets)\r\n\r\n    def __len__(self):\r\n        return len(self.subwidgets)\r\n\r\n    def __getitem__(self, idx):\r\n        # Prevent unnecessary reevaluation when accessing BoundField\'s attrs\r\n        # from templates.\r\n        if not isinstance(idx, (int, slice)):\r\n            raise TypeError\r\n        return self.subwidgets[idx]\r\n\r\n    @property\r\n    def errors(self):\r\n        \"\"\"\r\n        Return an ErrorList (empty if there are no errors) for this field.\r\n        \"\"\"\r\n        return self.form.errors.get(self.name, self.form.error_class())\r\n\r\n    def as_widget(self, widget=None, attrs=None, only_initial=False):\r\n        \"\"\"\r\n        Render the field by rendering the passed widget, adding any HTML\r\n        attributes passed as attrs. If a widget isn\'t specified, use the\r\n        field\'s default widget.\r\n        \"\"\"\r\n        widget = widget or self.field.widget\r\n        if self.field.localize:\r\n            widget.is_localized = True\r\n        attrs = attrs or {}\r\n        attrs = self.build_widget_attrs(attrs, widget)\r\n        if self.auto_id and \'id\' not in widget.attrs:\r\n            attrs.setdefault(\'id\', self.html_initial_id if only_initial else self.auto_id)\r\n        return widget.render(\r\n            name=self.html_initial_name if only_initial else self.html_name,\r\n            value=self.value(),\r\n            attrs=attrs,\r\n            # renderer=self.form.renderer,\r\n        )\r\n\r\n    def as_text(self, attrs=None, **kwargs):\r\n        \"\"\"\r\n        Return a string of HTML for representing this as an <input type=\"text\">.\r\n        \"\"\"\r\n        return self.as_widget(TextInput(), attrs, **kwargs)\r\n\r\n    def as_textarea(self, attrs=None, **kwargs):\r\n        \"\"\"Return a string of HTML for representing this as a <textarea>.\"\"\"\r\n        return self.as_widget(Textarea(), attrs, **kwargs)\r\n\r\n    def as_hidden(self, attrs=None, **kwargs):\r\n        \"\"\"\r\n        Return a string of HTML for representing this as an <input type=\"hidden\">.\r\n        \"\"\"\r\n        return self.as_widget(self.field.hidden_widget(), attrs, **kwargs)\r\n\r\n    @property\r\n    def data(self):\r\n        \"\"\"\r\n        Return the data for this BoundField, or None if it wasn\'t given.\r\n        \"\"\"\r\n        return self.field.widget.value_from_datadict(self.form.data, self.form.files, self.html_name)\r\n\r\n    def value(self):\r\n        \"\"\"\r\n        Return the value for this BoundField, using the initial value if\r\n        the form is not bound or the data otherwise.\r\n        \"\"\"\r\n        data = self.initial\r\n        if self.form.is_bound:\r\n            data = self.field.bound_data(self.data, data)\r\n        return self.field.prepare_value(data)\r\n\r\n    def label_tag(self, contents=None, attrs=None, label_suffix=None):\r\n        \"\"\"\r\n        Wrap the given contents in a <label>, if the field has an ID attribute.\r\n        contents should be mark_safe\'d to avoid HTML escaping. If contents\r\n        aren\'t given, use the field\'s HTML-escaped label.\r\n\r\n        If attrs are given, use them as HTML attributes on the <label> tag.\r\n\r\n        label_suffix overrides the form\'s label_suffix.\r\n        \"\"\"\r\n        contents = contents or self.label\r\n        if label_suffix is None:\r\n            label_suffix = (self.field.label_suffix if self.field.label_suffix is not None\r\n                            else self.form.label_suffix)\r\n        # Only add the suffix if the label does not end in punctuation.\r\n        # Translators: If found as last label character, these punctuation\r\n        # characters will prevent the default label_suffix to be appended to the label\r\n        if label_suffix and contents and contents[-1] not in _(\':?.!\'):\r\n            contents = format_html(\'{}{}\', contents, label_suffix)\r\n        widget = self.field.widget\r\n        id_ = widget.attrs.get(\'id\') or self.auto_id\r\n        if id_:\r\n            id_for_label = widget.id_for_label(id_)\r\n            if id_for_label:\r\n                attrs = {**(attrs or {}), \'for\': id_for_label}\r\n            if self.field.required and hasattr(self.form, \'required_css_class\'):\r\n                attrs = attrs or {}\r\n                if \'class\' in attrs:\r\n                    attrs[\'class\'] += \' \' + self.form.required_css_class\r\n                else:\r\n                    attrs[\'class\'] = self.form.required_css_class\r\n            attrs = flatatt(attrs) if attrs else \'\'\r\n            contents = format_html(\'<label{}>{}</label>\', attrs, contents)\r\n        else:\r\n            contents = conditional_escape(contents)\r\n        return mark_safe(contents)\r\n\r\n    def css_classes(self, extra_classes=None):\r\n        \"\"\"\r\n        Return a string of space-separated CSS classes for this field.\r\n        \"\"\"\r\n        if hasattr(extra_classes, \'split\'):\r\n            extra_classes = extra_classes.split()\r\n        extra_classes = set(extra_classes or [])\r\n        if self.errors and hasattr(self.form, \'error_css_class\'):\r\n            extra_classes.add(self.form.error_css_class)\r\n        if self.field.required and hasattr(self.form, \'required_css_class\'):\r\n            extra_classes.add(self.form.required_css_class)\r\n        return \' \'.join(extra_classes)\r\n\r\n    @property\r\n    def is_hidden(self):\r\n        \"\"\"Return True if this BoundField\'s widget is hidden.\"\"\"\r\n        return self.field.widget.is_hidden\r\n\r\n    @property\r\n    def auto_id(self):\r\n        \"\"\"\r\n        Calculate and return the ID attribute for this BoundField, if the\r\n        associated Form has specified auto_id. Return an empty string otherwise.\r\n        \"\"\"\r\n        auto_id = self.form.auto_id  # Boolean or string\r\n        if auto_id and \'%s\' in str(auto_id):\r\n            return auto_id % self.html_name\r\n        elif auto_id:\r\n            return self.html_name\r\n        return \'\'\r\n\r\n    @property\r\n    def id_for_label(self):\r\n        \"\"\"\r\n        Wrapper around the field widget\'s `id_for_label` method.\r\n        Useful, for example, for focusing on this field regardless of whether\r\n        it has a single widget or a MultiWidget.\r\n        \"\"\"\r\n        widget = self.field.widget\r\n        id_ = widget.attrs.get(\'id\') or self.auto_id\r\n        return widget.id_for_label(id_)\r\n\r\n    @cached_property\r\n    def initial(self):\r\n        data = self.form.get_initial_for_field(self.field, self.name)\r\n        # If this is an auto-generated default date, nix the microseconds for\r\n        # standardized handling. See #22502.\r\n        if (isinstance(data, (datetime.datetime, datetime.time)) and\r\n                not self.field.widget.supports_microseconds):\r\n            data = data.replace(microsecond=0)\r\n        return data\r\n\r\n    def build_widget_attrs(self, attrs, widget=None):\r\n        widget = widget or self.field.widget\r\n        attrs = dict(attrs)  # Copy attrs to avoid modifying the argument.\r\n        if widget.use_required_attribute(self.initial) and self.field.required and self.form.use_required_attribute:\r\n            attrs[\'required\'] = True\r\n        if self.field.disabled:\r\n            attrs[\'disabled\'] = True\r\n        return attrs\r\n\r\n\r\n@html_safe\r\nclass BoundWidget:\r\n    \"\"\"\r\n    A container class used for iterating over widgets. This is useful for\r\n    widgets that have choices. For example, the following can be used in a\r\n    template:\r\n\r\n    {% for radio in myform.beatles %}\r\n      <label for=\"{{ radio.id_for_label }}\">\r\n        {{ radio.choice_label }}\r\n        <span class=\"radio\">{{ radio.tag }}</span>\r\n      </label>\r\n    {% endfor %}\r\n    \"\"\"\r\n    def __init__(self, parent_widget, data, renderer):\r\n        self.parent_widget = parent_widget\r\n        self.data = data\r\n        self.renderer = renderer\r\n\r\n    def __str__(self):\r\n        return self.tag(wrap_label=True)\r\n\r\n    def tag(self, wrap_label=False):\r\n        context = {\'widget\': {**self.data, \'wrap_label\': wrap_label}}\r\n        return self.parent_widget._render(self.template_name, context, self.renderer)\r\n\r\n    @property\r\n    def template_name(self):\r\n        if \'template_name\' in self.data:\r\n            return self.data[\'template_name\']\r\n        return self.parent_widget.template_name\r\n\r\n    @property\r\n    def id_for_label(self):\r\n        return \'id_%s_%s\' % (self.data[\'name\'], self.data[\'index\'])\r\n\r\n    @property\r\n    def choice_label(self):\r\n        return self.data[\'label\']\r\n\r\n```','2019-01-04 11:22:00.000000','','2019-01-04 11:22:00.000000',0,0,NULL,1,1),(5,'博主','Ubuntu18.04搜狗输入法选词面板乱码','Ubuntu18.04装了搜狗输入法之后，输入法选词面板经常出现乱码，之前一直都是\r\n\r\n```\r\ncd ~/.config\r\nrm -rf SogouPY* sogou*\r\n```\r\n这样处理，但是过几天之后，又不行了，又重新出现。\r\n\r\n后来找到新的方法直接输入命令就可以，这样不用重启系统。\r\n```\r\nfcitx -r\r\n```\r\n这个命令是重启fcitx框架。\r\n或者执行以下三条：\r\n执行下面的命令时，可能会出现一些大型程序闪退。比如我的`pycharm`就是这样.\r\n```\r\npidof fcitx|xargs kill\r\n\r\nfcitx &\r\n\r\nsogou-qimpanel &\r\n```\r\n\r\n或者是出现其它问题[更多方法](https://www.findhao.net/res/786)','2019-01-07 16:45:00.000000','','2019-01-07 16:45:00.000000',0,0,NULL,1,1),(6,'其他','markdown开源编辑器','```python\r\n# 博客轮播图\r\nclass BolgBanner(models.Model):\r\n	def test():\r\n		print(\"hello world\")\r\n					author = models.CharField(max_length=30, verbose_name=\'作者\', blank=True)\r\n			title = models.CharField(max_length=100, verbose_name=\'标题\', blank=True)\r\n    image = models.ImageField(upload_to=\'blog_banner/%Y/%m\', verbose_name=\'博客轮播图\', max_length=100, blank=True)\r\n    index = models.IntegerField(default=100, verbose_name=\'顺序\')\r\n    add_time = models.DateTimeField(default=datetime.now, verbose_name=\'添加时间\')\r\n```','2019-01-07 18:07:00.000000','','2019-01-07 18:07:00.000000',0,0,NULL,2,1);
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
INSERT INTO `blog_userprofile` VALUES (1,'pbkdf2_sha256$120000$Eu0R49Ct89kc$UsSaJfOKUU03KjtuFFK3FtGHgaQMri6MNOjcZvKU/k4=','2019-01-05 21:53:17.514939',1,'root','zbc','awda','1075605131@qq.com',1,1,'2019-01-02 18:54:00.000000','善自嘲而不嘲人','一个文笔不好的程序员的读写博客。学习之余，我运用了自己的专业知识做了这个博客。前端页面是网上找的，后端用Django框架。时间总会过的，所以我需要找个地方写点东西。这里就是我写字的地方。','个人兴趣爱好广泛，书籍，电音，电影，动漫，NBA都有接触，不喜欢社交活动。个人在这些艺术作品中能够找到令人思考的东西，远比一群人在高谈阔论的要多。但我又不否认社交活动的必要性。不知道什么时候开始，自己就不喜欢人多的地方，而是喜欢自己一个人静静地思考，阅读，或者是欣赏一部好的电影。天下之大，终有伯乐。','myself/2019/01/author.png');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-01-02 14:24:47.682122'),(2,'contenttypes','0002_remove_content_type_name','2019-01-02 14:24:48.509341'),(3,'auth','0001_initial','2019-01-02 14:24:52.509210'),(4,'auth','0002_alter_permission_name_max_length','2019-01-02 14:24:53.030847'),(5,'auth','0003_alter_user_email_max_length','2019-01-02 14:24:53.072745'),(6,'auth','0004_alter_user_username_opts','2019-01-02 14:24:53.111521'),(7,'auth','0005_alter_user_last_login_null','2019-01-02 14:24:53.146898'),(8,'auth','0006_require_contenttypes_0002','2019-01-02 14:24:53.174036'),(9,'auth','0007_alter_validators_add_error_messages','2019-01-02 14:24:53.214259'),(10,'auth','0008_alter_user_username_max_length','2019-01-02 14:24:53.248289'),(11,'auth','0009_alter_user_last_name_max_length','2019-01-02 14:24:53.287340'),(12,'auth','0010_auto_20181223_1916','2019-01-02 14:24:53.317165'),(13,'blog','0001_initial','2019-01-02 14:25:01.161054'),(14,'admin','0001_initial','2019-01-02 14:25:02.566954'),(15,'admin','0002_logentry_remove_auto_add','2019-01-02 14:25:02.612406'),(16,'admin','0003_logentry_add_action_flag_choices','2019-01-02 14:25:02.669020'),(17,'sessions','0001_initial','2019-01-02 14:25:03.187368'),(18,'xadmin','0001_initial','2019-01-02 14:25:06.195101'),(19,'xadmin','0002_log','2019-01-02 14:25:07.500987'),(20,'xadmin','0003_auto_20160715_0100','2019-01-02 14:25:08.082660'),(21,'blog','0002_auto_20190102_1859','2019-01-02 18:59:42.051226'),(22,'blog','0003_auto_20190102_2006','2019-01-02 20:06:37.133216'),(23,'blog','0004_auto_20190102_2028','2019-01-02 20:31:37.167988'),(24,'blog','0005_auto_20190102_2031','2019-01-02 20:31:37.222708'),(25,'blog','0006_auto_20190102_2112','2019-01-02 21:12:31.890095'),(26,'blog','0007_auto_20190104_1112','2019-01-04 11:12:59.163329'),(27,'blog','0008_auto_20190107_1700','2019-01-07 17:00:26.011976');
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
INSERT INTO `django_session` VALUES ('e7trckxiukqnyp5uaguf3xhcg9jrd7sw','MjRkZWQ0MmYzMGM5YTk0Y2VhNTIxM2Y4ODIzOTk4NWQ3NTI2MzU5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNzc4ZjJjYmZmNmU3YTI5MDMyYjUwYzg5NzFjZDY2ZDQzYzIzY2Y2IiwiTElTVF9RVUVSWSI6W1siYmxvZyIsImJsb2ciXSwiIl19','2019-01-21 20:28:59.711933'),('q4mslmi9hltyfkssvypq63tsb6gedvdp','NGU3YTdjMDBmZmY0MzQxNTJjZTUwMmY4NzQ5NGZhMGUzYTMzNDkwMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNzc4ZjJjYmZmNmU3YTI5MDMyYjUwYzg5NzFjZDY2ZDQzYzIzY2Y2IiwiTElTVF9RVUVSWSI6W1siYmxvZyIsInVzZXJwcm9maWxlIl0sIiJdfQ==','2019-01-18 09:20:23.411876'),('z3eeq8vpjb284mqqd9x9u1w7dyyokv9m','NGU3YTdjMDBmZmY0MzQxNTJjZTUwMmY4NzQ5NGZhMGUzYTMzNDkwMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNzc4ZjJjYmZmNmU3YTI5MDMyYjUwYzg5NzFjZDY2ZDQzYzIzY2Y2IiwiTElTVF9RVUVSWSI6W1siYmxvZyIsInVzZXJwcm9maWxlIl0sIiJdfQ==','2019-01-19 21:53:33.141398');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2019-01-02 19:57:12.151917','127.0.0.1','1','Python','create','已添加。',8,1),(2,'2019-01-02 19:57:58.632715','127.0.0.1','2','转载','create','已添加。',8,1),(3,'2019-01-02 19:58:36.696443','127.0.0.1','3','随笔','create','已添加。',8,1),(4,'2019-01-02 20:00:41.593419','127.0.0.1','4','影视','create','已添加。',8,1),(5,'2019-01-02 20:02:23.368398','127.0.0.1','5','独白','create','已添加。',8,1),(6,'2019-01-02 20:12:58.403095','127.0.0.1','4','影视','change','修改 image',8,1),(7,'2019-01-02 20:19:39.233443','127.0.0.1','1','root','create','已添加。',11,1),(8,'2019-01-02 20:20:24.800428','127.0.0.1','2','root','create','已添加。',11,1),(9,'2019-01-02 20:23:30.999099','127.0.0.1','1','2012(位于第100)','create','已添加。',9,1),(10,'2019-01-02 20:25:08.617233','127.0.0.1','2','Batman v Superman: Dawn of Justice(位于第101)','create','已添加。',9,1),(11,'2019-01-02 20:26:18.759954','127.0.0.1','3','The Bourne Identity(位于第102)','create','已添加。',9,1),(12,'2019-01-02 20:39:04.520012','127.0.0.1','1','root','change','修改 last_login，first_name，last_name，email，text1，text2，text3 和 image',6,1),(13,'2019-01-02 20:55:56.735406','127.0.0.1','1','root','change','修改 last_login 和 image',6,1),(14,'2019-01-02 21:30:09.931609','127.0.0.1','1','root','change','修改 text1 和 text2',6,1),(15,'2019-01-03 22:12:29.320355','127.0.0.1','1','root','change','修改 text1，text2 和 text3',6,1),(16,'2019-01-04 08:24:00.275873','127.0.0.1','1','root','change','修改 text3',6,1),(17,'2019-01-04 08:24:20.866779','127.0.0.1','5','独白','change','没有字段被修改。',8,1),(18,'2019-01-04 10:52:45.415684','127.0.0.1','1','root','change','修改 text1 和 text2',6,1),(19,'2019-01-04 10:59:57.115181','127.0.0.1','4','影视','change','修改 image',8,1),(20,'2019-01-04 11:15:36.652704','127.0.0.1','1','第1篇苹果公司下调 2019 第一财季业绩指导，预计收入约 840 亿美元，传递出哪些信息？博客','create','已添加。',7,1),(21,'2019-01-04 11:16:27.258494','127.0.0.1','2','第2篇苹果公司下调 2019 第一财季业绩指导，预计收入约 840 亿美元，传递出哪些信息？博客','create','已添加。',7,1),(22,'2019-01-04 11:16:40.083938','127.0.0.1','2','第2篇苹果公司下调 2019 第一财季业绩指导，预计收入约 840 亿美元，传递出哪些信息？博客','change','修改 author',7,1),(23,'2019-01-04 11:19:56.345220','127.0.0.1','3','第3篇蜘蛛侠：平行宇宙 Spider-Man: Into the Spider-Verse博客','create','已添加。',7,1),(24,'2019-01-04 11:23:53.855832','127.0.0.1','4','第4篇万字长文深度解析Python装饰器博客','create','已添加。',7,1),(25,'2019-01-06 15:11:15.597794','127.0.0.1','4','第4篇万字长文深度解析Python装饰器博客','change','修改 content',7,1),(26,'2019-01-06 15:11:45.385893','127.0.0.1','4','第4篇万字长文深度解析Python装饰器\r\nawdada\r\n\r\nawdad\r\nas\r\ndada博客','change','修改 title',7,1),(27,'2019-01-06 15:12:33.281339','127.0.0.1','4','第4篇万字长文深度解析Python装饰器博客','change','修改 title',7,1),(28,'2019-01-06 17:53:55.328890','127.0.0.1','4','第4篇dwadad\r\n[========]\r\n2019-01-06 17:53:02 星期日$$博客','change','修改 title',7,1),(29,'2019-01-06 19:37:30.944961','127.0.0.1','4','第4篇知乎博客','change','修改 title 和 content',7,1),(30,'2019-01-06 22:24:28.474348','127.0.0.1','3','第3篇蜘蛛侠：平行宇宙 Spider-Man: Into the Spider-Verse![蜘蛛侠](/media/markdown/蜘蛛侠_1546784640510.webp \"蜘蛛侠\")博客','change','修改 title',7,1),(31,'2019-01-06 22:26:03.927084','127.0.0.1','3','第3篇蜘蛛侠：平行宇宙 Spider-Man: Into the Spider-Verse博客','change','修改 title，content，created_time 和 last_updated_time',7,1),(32,'2019-01-07 16:48:32.135513','127.0.0.1','5','第5篇Ubuntu18.04搜狗输入法选词面板乱码博客','create','已添加。',7,1),(33,'2019-01-07 17:05:28.638391','127.0.0.1','3','第3篇蜘蛛侠：平行宇宙 Spider-Man: Into the Spider-Verse博客','change','修改 content',7,1),(34,'2019-01-07 17:07:23.491390','127.0.0.1','3','第3篇蜘蛛侠：平行宇宙 Spider-Man: Into the Spider-Verse博客','change','修改 content',7,1),(35,'2019-01-07 17:08:27.813433','127.0.0.1','3','第3篇蜘蛛侠：平行宇宙 Spider-Man: Into the Spider-Verse博客','change','修改 content',7,1),(36,'2019-01-07 17:12:44.481174','127.0.0.1','2','第2篇苹果公司下调 2019 第一财季业绩指导，预计收入约 840 亿美元，传递出哪些信息？博客','change','没有字段被修改。',7,1),(37,'2019-01-07 17:19:49.400134','127.0.0.1','3','第3篇蜘蛛侠：平行宇宙 Spider-Man: Into the Spider-Verse博客','change','修改 content',7,1),(38,'2019-01-07 17:20:09.814774','127.0.0.1','3','第3篇蜘蛛侠：平行宇宙 Spider-Man: Into the Spider-Verse博客','change','没有字段被修改。',7,1),(39,'2019-01-07 17:21:18.344353','127.0.0.1','2','第2篇苹果公司下调 2019 第一财季业绩指导，预计收入约 840 亿美元，传递出哪些信息？博客','change','修改 content',7,1),(40,'2019-01-07 17:55:16.229032','127.0.0.1','3','第3篇蜘蛛侠：平行宇宙 Spider-Man: Into the Spider-Verse博客','change','没有字段被修改。',7,1),(41,'2019-01-07 18:07:44.882834','127.0.0.1','3','第3篇蜘蛛侠：平行宇宙 Spider-Man: Into the Spider-Verse博客','change','修改 content',7,1),(42,'2019-01-07 18:08:17.229742','127.0.0.1','6','第6篇markdown开源编辑器博客','create','已添加。',7,1),(43,'2019-01-07 18:17:26.840945','127.0.0.1','6','第6篇markdown开源编辑器博客','change','修改 content',7,1),(44,'2019-01-07 19:32:36.612979','127.0.0.1','6','第6篇markdown开源编辑器博客','change','修改 content',7,1),(45,'2019-01-07 19:33:46.307865','127.0.0.1','6','第6篇markdown开源编辑器博客','change','修改 content',7,1),(46,'2019-01-07 19:34:45.104196','127.0.0.1','6','第6篇markdown开源编辑器博客','change','修改 content',7,1),(47,'2019-01-07 19:36:04.386757','127.0.0.1','6','第6篇markdown开源编辑器博客','change','修改 content',7,1),(48,'2019-01-07 20:25:06.305308','127.0.0.1','2','第2篇苹果公司下调 2019 第一财季业绩指导，预计收入约 840 亿美元，传递出哪些信息？博客','change','修改 content',7,1),(49,'2019-01-07 20:28:59.571873','127.0.0.1','2','第2篇苹果公司下调 2019 第一财季业绩指导，预计收入约 840 亿美元，传递出哪些信息？博客','change','修改 content',7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1),(2,'site-theme','/static/xadmin/css/themes/bootstrap-xadmin.css',1);
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

-- Dump completed on 2019-01-08 21:09:41
