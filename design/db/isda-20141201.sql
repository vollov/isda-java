-- MySQL dump 10.13  Distrib 5.5.40, for Win64 (x86)
--
-- Host: localhost    Database: isda
-- ------------------------------------------------------
-- Server version	5.5.40

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Kitchener','482 Steepleridge ST','n2p2w3',''),(2,'Kitchener','284 Purple Sage CR','N2e4g6','');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BIRTH_DATE` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(60) NOT NULL,
  `LAST_NAME` varchar(40) NOT NULL,
  `PHOTO` longblob,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `code` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `content` text,
  PRIMARY KEY (`code`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES ('page.about','en','about'),('page.about','zh','<p>联邦移民安置与发展协会（简：华安会）是一个由加拿大联邦政府管辖下注册，并由多伦多各界精英名流自发组织的华人与西人协会，目的是帮助本地社区居民及刚登陆新移民尽快适应加拿大本地生活，并在金融，地产，税务，法律，安家，交通，教育，投资咨询，子女入学等方面提供全方位的服务。</p>\r\n\r\n<p>希望通过我们专业人士的努力，给新移民创造一个安心，舒适，无忧的加拿大中国新移民生活。协会会员服务宗旨：任何时候，只要你需要我们，我们就一直会在你身边！不敢说最好，但一定会更好！</p>\r\n\r\n<p>我们协会成立5年来，立志于服务加拿 大华人社区的高端客户。不同于一般的移民安家服务。我们协会除了帮助中国投资移民客户落户加拿大外，更注重发展落地后的后续发展。如投资移民在加 国的再次投资，如农业，地产，矿业，石油，天然气，教育，医疗，科技，政府基础设施建设等，以及在加拿大无与伦比的高质量休闲生活安排，如“打猎 俱乐部”，“游艇俱乐部”，\"女子击剑俱乐部““VIP高端会所”等. 真正做到投资移民客户全方位的美好加国生活。在我们的协会里，即使投资者不会英语，也不感到孤独与烦闷，因为我们有自己的专业团队，如专业律师，税务专家，金融专家，美容 专家，饮食专家，教育专家，地产专家，投资专家等，为投资移民客户解答生活中遇到的一切问题！</p>\r\n\r\n<p>目前我们协会正在与加拿大安大略省省政府紧密合作，依托强大的项目基金公司，再为中国有意来加拿大安大略省投资移民的客户提供更多的机会. 目前通过与中国国内的移民公司合作，我们已经成功的将20多位中国投资移民成功登录加拿大。但这只是开始，我们希望尽我们的力量，帮助更多的中国投资移民客户来到加拿大。</p>'),('page.activities','en','Social Activities'),('page.activities','zh','协会活动'),('page.education','en','Some Content - enxxx'),('page.education','zh','<p>安大略(Ontario 简称安省)是全国经济最发达的地区,。安大略省的面积为106万多平方公里，人口约1141万人，首府为全国第一大城市多伦多。本省的城市化水平为全国之最，有加拿大首都渥太华、汽车城温莎、钢铁城哈密尔顿等。</p>\r\n\r\n<p>关于安大略省高中毕业证书的要求：</p>\r\n<p>由于加拿大教育是由各个省份的教育局规划的，所以不同省份的教育体系由一定的区别。安大略省教育部规定，学生必须修满30个规定学分才能获得安大略省高中毕业证书。在这30个学分中，有18个学分为必修学分，其余学分可从教育部课程大纲或学校自己开设的课程中选修。每门课含110个学时（修满一门110个学时的课程并得到50％以上的期末评定成绩可获得1个学分）。期末评定成绩由平时成绩（占70％份额）和期末考试成绩（占30％）构成，这是加拿大大学特别是名牌大学录取新生的重要考量指标。除了修满30个学分外，学生还需完成40个学时的社区服务并通过安大略省教育部统一制定的全省英语语文统考。我国学生在高中任何年级阶段均可申请进入安大略省的高中课程。但按照安大略省教育部的规定，国际学生高中毕业后的所有学分可以折算成安大略省高中的24个学分，其余6个学分可以根据加拿大大学普遍要求的科目修读。而我国高中毕业学生读的大学预科课程，主要指这6个学分的课程。其大学预科必修课程包括：11年级大学预备学术英语、12年级大学预备学术英语、高等函数与微积分、几何学，商科，另外还有一些选修课程.</p>\r\n\r\n<p>加拿大最多大学的省份也是安大略，其中名校林立，如多伦多大学、麦克马斯特大学、西安大略大学、滑铁卢大学和女皇大学等都是一流的高等学府，各具独特的成就，像多伦多大学的医科、麦克马斯特大学的化学、西安大略大学的商科、女皇大学的工程和滑铁卢大学的电脑，都是世界闻名的学科。虽然安省的学费较高，不少留学生仍然到这里读书，如果视读书为投资的一种，这种投资绝对值得。</p>\r\n\r\n<p>除了多伦多和渥太华外，安省其他地区的生活费都不算高，多数是人口不多的小城市，生活宁静闲适，是读书的好地方。</p>\r\n\r\n<p>安省主要大学有：</p>\r\n<ul>\r\n<li>多伦多大学(University of Toronto)</li>\r\n<li>麦克马斯特大学(McMaster University)</li>\r\n<li>西安大略大学(University of Western Ontario)</li>\r\n<li>滑铁卢大学(University of Waterloo)</li>\r\n<li>女皇大学(Queen‘s University)</li>\r\n<li>布罗克大学(Brock University)</li>\r\n<li>卡尔顿大学(Carleton University)</li>\r\n<li>贵湖大学(University of Guelph)</li>\r\n<li>湖首大学(Lakehead University)</li>\r\n<li>萨德伯里大学(University of Sudbury)</li>\r\n<li>渥太华大学(University of Ottawa)</li>\r\n<li>维雅逊理工大学(Ryerson Polytechnic University)</li>\r\n<li>特伦特大学(Trent University)</li>\r\n<li>罗理尔大学(Wilfred Laurier University)</li>\r\n<li>温莎大学(University of Windsor)</li>\r\n<ul>'),('page.events','en','Events'),('page.events','zh','协会动态'),('page.home','en','home'),('page.home','zh','首页'),('page.investments','en','Investments'),('page.investments','zh','<p>移民团队简介：</p>\r\n\r\n<p>联邦移民安置与发展协会与加拿大本地移民留学法律中心合作， 目前合作方是在加拿大安大略省注册的移民留学法律服务机构，总部位于多伦多市，在中国，萨省及曼省有合作分公司。其团队包括注册律师、注册会计师、资深教育顾问、银行和投资公司、加拿大和美国的大学、学院、公立和私立学校、语言学校等。确保案例成功。</p>\r\n<br\\>\r\n<h4>一．安省商业移民项目简介:</h4>\r\n<p>2011年下半年加拿大安大略省政府推出了一个快速移民提名计划：加拿大境外的投资者或投资公司只要投入安省被批准项目的三分之一，并能雇佣加拿大当地人员五名，主申请者就可即可获得加拿大身份，同时可有15个名额申请加拿大工签并后期申请移民，但有附加条件：在申请每一名外籍人员前，必须先雇佣一位当地人员。该项目的基本要求是投资额在300万加币以上(企业至少300万加币起，个人100万加币起)并提供至少五名以上的当地就业职位。凡是符合此计划的申请人都能在相对短的时间内进到该省从事商业活动，从而促进该省经济发展，与此同时申请人全家也移民落户在加拿大。</p>\r\n\r\n<p>该项目的特点时申请时间短，对资金来源要求不严格，条件简单。1年到1年半间就可以获得移民身份。</p>\r\n<br\\>\r\n<h4>二. 安大略省投资类移民申请要求:</h4>\r\n<p>外国投资公司要求:<p>\r\n<ol>\r\n<li>公司净资产超过所要投资的数额; 投资数额取决于需要的提名名额, 和所投资的项目所创造的就业总量。</li>\r\n<li>投资文件上需要写明不可以在一定时间后退出, 投资目的不能仅为了获得利息, 分红或资产增值。</li>\r\n<li>确认被提名的人员和所要求的提名岗位, 被提名的人员可以不是本公司员工。</li>\r\n</ol>\r\n被提名人的要求:\r\n<ol>\r\n<li>大专或以上的学历;</li>\r\n<li>在管理, 特殊专业, 或技术岗位上工作了至少两年;</li>\r\n<li>无需英语;</li>\r\n<li>如果是公司投资，无须解释个人的资产来源;</li>\r\n<li>如果投资主体是个人, 需要解释个人资产的合法来源;</li>\r\n</ol>\r\n<br\\>\r\n<h4>三：现就此类投资移民的优势做如下分享：</h4>\r\n<ol>\r\n<li>项目投资额度较高，投资申请通过安省移民局的初步审核后，还必须交由相关政府部门进行严格审核并被副厅长签字后方可生效并获取省提名配额，高审核门槛确保了项目的真实性和高质量。</li>\r\n<li>项目以投资的公司为主体，投资公司前期的投资、立项申请、审核和获批立项及提名配额的过程中无需被提名人的参与，确认获得提名配额后才开始招收符合条件的被提名人，已经获批的名额确保了移民申请的安全性和成功率。\r\n<li>移民申请人在获得提名名额后可立即递交申请材料至安省移民局，根据安省移民局规定90天内即可获得安省提名证书，再转至联邦移民局14个月左右即可获得联邦移民纸，官方的时间限定确保了移民申请的时限性。</li>\r\n<li>移民申请人在递交材料获得安省提名证书前，资金一直在国内，万一发生提名申请被拒的情况，资金并无风险，成功后转款的模式确保了移民申请人的资金安全。</li>\r\n</ol>'),('page.services','en','services'),('page.services','zh','<p>联邦移民安置与发展协会目前主要致力于安省的商业投资移民服务，通过与政府部分的紧密合作，确保以最高质量，最短的时间帮助到客户成功投资安省移民。现合作领域包括：</p>\r\n<ol>\r\n<li>农业及食品加工</li>\r\n<li>绿色能源及技术</li>\r\n<li>生命科学</li>\r\n<li>基础设施建设</li>\r\n<li>矿业</li>\r\n<li>地产</li>\r\n<li>旅游</li>\r\n</ol>\r\n\r\n<h4>1. 商业移民项目评估</h4>\r\n<p>整体项目评估包括：1. 劳动力成本 2. 商业回报. 3. 风险评估. 4. 物流管理. 5. 税务财务综合报表.</p>\r\n\r\n<h4>2. 投资移民文件准备</h4>\r\n<p>协会会由具备加拿大移民律师顾问执照的专业人士专门根据特定合作投资项目及申请人背景来为申请人度身定制符合申请人的材料：包括申请人相关资料，资金证明，学历证明，工作证明等</p>\r\n\r\n<h4>3. 项目动态跟踪</h4>\r\n<p>全程跟踪项目审批过和程，及时与客户进行沟通与反馈, 确保高效，及时，力求做到万无一失！</p>\r\n\r\n<h4>4. 后续安家服务</h4>\r\n<p>我们会安排协会中各行各业的精英人土，专业负责以上领域：如买车， 租车服务， 办理新移民及访加旅客紧急旅游保险， 买房， 租房服务， 专业金融理财服务， 法律，会计服务.</p>\r\n\r\n<p>更多咨询，请联系我们。</p>');
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `eventTime` tinyblob,
  `address_id` bigint(20) DEFAULT NULL,
  `event_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8wxm9i34wepsu094jo54sys6l` (`address_id`),
  CONSTRAINT `FK_8wxm9i34wepsu094jo54sys6l` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'','tea party',NULL,1,'2014-11-23 22:30:00'),(2,'','boat club',NULL,2,'2014-11-03 10:30:00');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picture` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `display_id` int(11) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_17q4o9083wta11kmw6tv3j23u` (`address_id`),
  CONSTRAINT `FK_17q4o9083wta11kmw6tv3j23u` FOREIGN KEY (`address_id`) REFERENCES `event` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `display_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'jerryzhang@isda.ca','Jerry','Zhang','647-975-2503','会长','',1),(2,'xiupinwang@isda.ca','绣萍','王','416-522-6808','副会长','',2),(3,'roganmo@isda.ca','Rogan','Mo','519-781-8735','副会长','',3),(4,'judyxie@isda.ca','Judy','Xie','647-712-6858','副会长','',4),(5,'jacknan@isda.ca','Jack','Nan','416-818-6852','副会长兼协会地产部主席','',5),(6,'cathyshen@isda.ca','Cathy','Shen','519-319-1833','大学生与青年服务部部长','',6),(7,'felixdu@isda.ca','Felix','Du','647-505-2347','银行咨询与服务部部长','',7),(8,'vanessazhang@isda.ca','Vanessa','Zhang','647-627-0388','大学生与青年市场开发部部长','',8);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-01 20:40:04
