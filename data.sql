/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.5.38 : Database - xannad
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xannad` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xannad`;

/*Table structure for table `ad` */

DROP TABLE IF EXISTS `ad`;

CREATE TABLE `ad` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `adType` smallint(5) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `linkUrl` varchar(255) DEFAULT NULL,
  `imgW` smallint(5) DEFAULT NULL,
  `imgH` int(10) DEFAULT NULL,
  `catalogId` int(10) DEFAULT NULL,
  `content` text,
  `title` varchar(255) DEFAULT NULL,
  `moditime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK_Ad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `ad` */

insert  into `ad`(`id`,`adType`,`photo`,`linkUrl`,`imgW`,`imgH`,`catalogId`,`content`,`title`,`moditime`) values (16,1,'/images/ibanner-1.jpg','',0,0,2,'“如果不能改变弹子石的特色，就要规划弹子石发展方向”。经过10年的发展，弹子石中央商务区从诞生、发展成渐趋成熟，具备了发展总部经济、金融商务、文化创意产业和高品质住宅区的良好条件，形成了相当的产业规模。','泽科弹子石中心','2016-05-24 15:19:33'),(17,1,'/images/ibanner-1.jpg','',0,0,2,'“如果不能改变弹子石的特色，就要规划弹子石发展方向”。经过10年的发展，弹子石中央商务区从诞生、发展成渐趋成熟，具备了发展总部经济、金融商务、文化创意产业和高品质住宅区的良好条件，形成了相当的产业规模。','泽科弹子石中心','2016-05-24 15:19:16'),(18,1,'/images/ibanner-1.jpg','',0,0,2,'“如果不能改变弹子石的特色，就要规划弹子石发展方向”。经过10年的发展，弹子石中央商务区从诞生、发展成渐趋成熟，具备了发展总部经济、金融商务、文化创意产业和高品质住宅区的良好条件，形成了相当的产业规模。','泽科弹子石中心','2016-05-24 15:21:13'),(26,1,'/images/ad_01.jpg','',0,0,5,NULL,'底左','2016-05-24 15:22:12'),(27,1,'/images/ad_02.jpg','',0,0,5,'','底中','2016-05-24 15:23:16'),(28,1,'/images/ad_03.jpg','',0,0,5,'','底右','2016-05-24 15:22:58');

/*Table structure for table `catalogs` */

DROP TABLE IF EXISTS `catalogs`;

CREATE TABLE `catalogs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `catalogs` */

insert  into `catalogs`(`id`,`title`) values (2,'首页焦点图1920*850'),(5,'首页底部图片广告640*360');

/*Table structure for table `catalogs_link` */

DROP TABLE IF EXISTS `catalogs_link`;

CREATE TABLE `catalogs_link` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `catalogs_link` */

insert  into `catalogs_link`(`id`,`title`) values (14,'图片链接'),(15,'文字链接');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `cateid` int(10) NOT NULL AUTO_INCREMENT,
  `catename` varchar(50) DEFAULT NULL,
  `catedir` varchar(50) DEFAULT NULL,
  `followid` int(10) DEFAULT NULL,
  `depth` int(10) DEFAULT NULL,
  `sonid` varchar(255) DEFAULT NULL,
  `parentid` varchar(255) DEFAULT NULL,
  `orderID` int(10) DEFAULT NULL,
  `cateType` int(10) DEFAULT NULL,
  `modelType` int(10) DEFAULT NULL,
  `OutLinkUrl` varchar(200) DEFAULT NULL,
  `content` text,
  `isHome` bit(1) NOT NULL,
  `Hits` int(10) DEFAULT NULL,
  `defaultpicurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dynamicUrl` varchar(255) DEFAULT NULL,
  `staticUrl` varchar(255) DEFAULT NULL,
  `dirpath` varchar(255) DEFAULT NULL,
  `cateName_en` varchar(255) DEFAULT NULL,
  UNIQUE KEY `cateid` (`cateid`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`cateid`,`catename`,`catedir`,`followid`,`depth`,`sonid`,`parentid`,`orderID`,`cateType`,`modelType`,`OutLinkUrl`,`content`,`isHome`,`Hits`,`defaultpicurl`,`title`,`dynamicUrl`,`staticUrl`,`dirpath`,`cateName_en`) values (214,'首页','shouye',0,1,'214','214',0,3,0,'/',NULL,'',NULL,'',NULL,'/','/','shouye/',''),(228,'项目','xiangmu',0,1,'228,231,232,233,234,235,236,237,238,239','228',2,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=228','/html/xiangmu/index.html','xiangmu/',''),(229,'云平台','yunpingtai',0,1,'229','229',3,3,0,'#',NULL,'',NULL,'',NULL,'#','#','yunpingtai/',''),(230,'关于我们','guanyuwomen',0,1,'230','230',4,3,0,'#',NULL,'',NULL,'',NULL,'#','#','guanyuwomen/',''),(231,'创意设计','chuangyisheji',228,2,'231,234,235,236,237,238,239','231,228',1,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=231','/html/chuangyisheji/index.html','xiangmu/chuangyisheji/',''),(232,'规划设计','guihuasheji',228,2,'232','232,228',2,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=232','/html/guihuasheji/index.html','xiangmu/guihuasheji/',''),(233,'一级分类','yijifenlei',228,2,'233','233,228',4,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=233','/html/yijifenlei/index.html','xiangmu/yijifenlei/',''),(234,'建筑工程','jianzhugongcheng',231,3,'234,237,238,239','234,231,228',1,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=234','/html/jianzhugongcheng/index.html','xiangmu/chuangyisheji/jianzhugongcheng/',''),(235,'工业工程','gongyegongcheng',231,3,'235','235,231,228',2,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=235','/html/gongyegongcheng/index.html','xiangmu/chuangyisheji/gongyegongcheng/',''),(236,'市政工程','shizhenggongcheng',231,3,'236','236,231,228',3,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=236','/html/shizhenggongcheng/index.html','xiangmu/chuangyisheji/shizhenggongcheng/',''),(237,'住宅/公寓/宿舍','zhuzhai/gongyu/sushe',234,4,'237','237,234,231,228',1,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=237','/html/zhuzhai/gongyu/sushe/index.html','xiangmu/chuangyisheji/jianzhugongcheng/zhuzhai/gongyu/sushe/',''),(238,'商业/办公建筑','shangye/bangongjianzhu',234,4,'238','238,234,231,228',2,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=238','/html/shangye/bangongjianzhu/index.html','xiangmu/chuangyisheji/jianzhugongcheng/shangye/bangongjianzhu/',''),(239,'学校/科研建筑','xuexiao/keyanjianzhu',234,4,'239','239,234,231,228',3,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=239','/html/xuexiao/keyanjianzhu/index.html','xiangmu/chuangyisheji/jianzhugongcheng/xuexiao/keyanjianzhu/','');

/*Table structure for table `category_c` */

DROP TABLE IF EXISTS `category_c`;

CREATE TABLE `category_c` (
  `cateid` int(10) NOT NULL AUTO_INCREMENT,
  `catename` varchar(50) DEFAULT NULL,
  `catedir` varchar(50) DEFAULT NULL,
  `followid` int(10) DEFAULT NULL,
  `depth` int(10) DEFAULT NULL,
  `sonid` varchar(255) DEFAULT NULL,
  `parentid` varchar(255) DEFAULT NULL,
  `orderID` int(10) DEFAULT NULL,
  `cateType` int(10) DEFAULT NULL,
  `modelType` int(10) DEFAULT NULL,
  `OutLinkUrl` varchar(200) DEFAULT NULL,
  `content` text,
  `isHome` bit(1) NOT NULL,
  `Hits` int(10) DEFAULT NULL,
  `defaultpicurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dynamicUrl` varchar(255) DEFAULT NULL,
  `staticUrl` varchar(255) DEFAULT NULL,
  `dirpath` varchar(255) DEFAULT NULL,
  `cateName_en` varchar(255) DEFAULT NULL,
  UNIQUE KEY `cateid` (`cateid`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

/*Data for the table `category_c` */

insert  into `category_c`(`cateid`,`catename`,`catedir`,`followid`,`depth`,`sonid`,`parentid`,`orderID`,`cateType`,`modelType`,`OutLinkUrl`,`content`,`isHome`,`Hits`,`defaultpicurl`,`title`,`dynamicUrl`,`staticUrl`,`dirpath`,`cateName_en`) values (214,'首页','shouye',0,1,'214','214',0,3,0,'/',NULL,'',NULL,'',NULL,'/','/','shouye/',''),(228,'项目','xiangmu',0,1,'228,231,232,233,234,235,236,237,238,239','228',2,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=228','/html/xiangmu/index.html','xiangmu/',''),(229,'云平台','yunpingtai',0,1,'229','229',3,3,0,'#',NULL,'',NULL,'',NULL,'#','#','yunpingtai/',''),(230,'关于我们','guanyuwomen',0,1,'230','230',4,3,0,'#',NULL,'',NULL,'',NULL,'#','#','guanyuwomen/',''),(231,'创意设计','chuangyisheji',228,2,'231,234,235,236,237,238,239','231,228',1,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=231','/html/chuangyisheji/index.html','xiangmu/chuangyisheji/',''),(232,'规划设计','guihuasheji',228,2,'232','232,228',2,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=232','/html/guihuasheji/index.html','xiangmu/guihuasheji/',''),(233,'一级分类','yijifenlei',228,2,'233','233,228',4,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=233','/html/yijifenlei/index.html','xiangmu/yijifenlei/',''),(234,'建筑工程','jianzhugongcheng',231,3,'234,237,238,239','234,231,228',1,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=234','/html/jianzhugongcheng/index.html','xiangmu/chuangyisheji/jianzhugongcheng/',''),(235,'工业工程','gongyegongcheng',231,3,'235','235,231,228',2,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=235','/html/gongyegongcheng/index.html','xiangmu/chuangyisheji/gongyegongcheng/',''),(236,'市政工程','shizhenggongcheng',231,3,'236','236,231,228',3,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=236','/html/shizhenggongcheng/index.html','xiangmu/chuangyisheji/shizhenggongcheng/',''),(237,'住宅/公寓/宿舍','zhuzhai/gongyu/sushe',234,4,'237','237,234,231,228',1,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=237','/html/zhuzhai/gongyu/sushe/index.html','xiangmu/chuangyisheji/jianzhugongcheng/zhuzhai/gongyu/sushe/',''),(238,'商业/办公建筑','shangye/bangongjianzhu',234,4,'238','238,234,231,228',2,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=238','/html/shangye/bangongjianzhu/index.html','xiangmu/chuangyisheji/jianzhugongcheng/shangye/bangongjianzhu/',''),(239,'学校/科研建筑','xuexiao/keyanjianzhu',234,4,'239','239,234,231,228',3,1,0,'',NULL,'',NULL,'',NULL,'news.asp?id=239','/html/xuexiao/keyanjianzhu/index.html','xiangmu/chuangyisheji/jianzhugongcheng/xuexiao/keyanjianzhu/','');

/*Table structure for table `catepage` */

DROP TABLE IF EXISTS `catepage`;

CREATE TABLE `catepage` (
  `cateid` int(10) NOT NULL AUTO_INCREMENT,
  `catename` varchar(50) DEFAULT NULL,
  `catedir` varchar(200) DEFAULT NULL,
  `followid` int(10) DEFAULT NULL,
  `depth` int(10) DEFAULT NULL,
  `sonid` varchar(255) DEFAULT NULL,
  `parentid` varchar(255) DEFAULT NULL,
  `orderID` int(10) DEFAULT NULL,
  `cateType` int(10) DEFAULT NULL,
  `modelType` int(10) DEFAULT NULL,
  `OutLinkUrl` varchar(200) DEFAULT NULL,
  `content` text,
  `isHome` bit(1) NOT NULL,
  `Hits` int(10) DEFAULT NULL,
  `defaultpicurl` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  UNIQUE KEY `cateid` (`cateid`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

/*Data for the table `catepage` */

insert  into `catepage`(`cateid`,`catename`,`catedir`,`followid`,`depth`,`sonid`,`parentid`,`orderID`,`cateType`,`modelType`,`OutLinkUrl`,`content`,`isHome`,`Hits`,`defaultpicurl`,`url`) values (1,'网站架构',NULL,0,1,'1,2,3','1',0,1,0,'',NULL,'',NULL,'',NULL),(2,'添加栏目',NULL,1,2,'2','2,1',0,3,0,'category/companyadd.asp',NULL,'',NULL,'',NULL),(3,'栏目管理',NULL,1,2,'3','3,1',1,3,0,'category/companyall.asp',NULL,'',NULL,'',NULL),(4,'信息管理',NULL,0,1,'4,5,6,48,49,84,89','4',1,1,0,'',NULL,'',NULL,'',NULL),(5,'信息管理',NULL,4,2,'5','5,4',2,3,0,'News/CompanyAll.asp',NULL,'',NULL,'',NULL),(6,'回收站',NULL,4,2,'6','6,4',5,3,0,'news/news_manage_recycle.asp',NULL,'',NULL,'',NULL),(7,'会员系统',NULL,0,1,'7,8,79,80,85','7',3,1,0,'',NULL,'\0',NULL,'',NULL),(8,'学生管理',NULL,7,2,'8','8,7',0,3,0,'Member/UserManage.asp',NULL,'',NULL,'',NULL),(9,'留言/反馈管理',NULL,0,1,'9,10','9',4,1,0,'',NULL,'\0',NULL,'',NULL),(10,'留言/反馈管理',NULL,9,2,'10','10,9',0,3,0,'GuestBook/Book_index3.asp',NULL,'',NULL,'',NULL),(11,'人才招聘',NULL,0,1,'11,12,13,14,45','11',5,1,0,'',NULL,'\0',NULL,'',NULL),(12,'招聘管理',NULL,11,2,'12','12,11',0,3,0,'Hr_Man/Manage_Job.asp',NULL,'',NULL,'',NULL),(13,'发布招聘',NULL,11,2,'13','13,11',1,3,0,'Hr_Man/Manage_JobAdd.asp',NULL,'',NULL,'',NULL),(14,'在线报名表单',NULL,11,2,'14','14,11',2,3,0,'Hr_Man/Manage_JobBook.asp',NULL,'\0',NULL,'',NULL),(15,'友情链接',NULL,0,1,'15,16,47','15',6,1,0,'',NULL,'\0',NULL,'',NULL),(16,'链接管理',NULL,15,2,'16','16,15',0,3,0,'link/manage_link.asp',NULL,'',NULL,'',NULL),(17,'广告系统',NULL,0,1,'17,18,19,20,50','17',7,1,0,'',NULL,'',NULL,'',NULL),(18,'广告分类',NULL,17,2,'18','18,17',0,3,0,'ad/ad_sort.asp',NULL,'',NULL,'',NULL),(19,'发布广告',NULL,17,2,'19','19,17',1,3,0,'ad/ad_add.asp',NULL,'',NULL,'',NULL),(20,'广告管理',NULL,17,2,'20','20,17',2,3,0,'ad/ad_manage.asp',NULL,'',NULL,'',NULL),(21,'投票管理',NULL,0,1,'21,22,23','21',8,1,0,'',NULL,'\0',NULL,'',NULL),(22,'添加投票',NULL,21,2,'22','22,21',0,3,0,'vote/VoteAdd.asp',NULL,'',NULL,'',NULL),(23,'投票管理',NULL,21,2,'23','23,21',1,3,0,'vote/VoteManage.asp',NULL,'',NULL,'',NULL),(24,'管理员管理',NULL,0,1,'24,25,26','24',9,1,0,'',NULL,'',NULL,'',NULL),(25,'管理员管理',NULL,24,2,'25','25,24',0,3,0,'manager/Manage_Admin.asp',NULL,'',NULL,'',NULL),(26,'管理员分组',NULL,24,2,'26','26,24',1,3,0,'manager/ad_sort.asp',NULL,'',NULL,'',NULL),(28,'系统管理',NULL,0,1,'28,29,30,76,77','28',10,1,0,'',NULL,'',NULL,'',NULL),(29,'备份数据库',NULL,28,2,'29','29,28',0,3,0,'admin_db_bak.asp',NULL,'\0',NULL,'',NULL),(30,'数据库压缩',NULL,28,2,'30','30,28',1,3,0,'admin_db_ys.asp',NULL,'\0',NULL,'',NULL),(31,'系统配置',NULL,0,1,'31,32,33','31',11,1,0,'',NULL,'',NULL,'',NULL),(32,'查看',NULL,31,2,'32','32,31',0,3,0,'config/admin_main.asp',NULL,'',NULL,'',NULL),(33,'网站配置',NULL,31,2,'33','33,31',1,3,0,'config/SiteConfig.asp',NULL,'',NULL,'',NULL),(36,'内刊管理',NULL,0,1,'36,37,44','36',1,1,0,'',NULL,'\0',NULL,'',NULL),(37,'内刊维护',NULL,36,2,'37','37,36',0,3,0,'publish/News_Manage.asp',NULL,'',NULL,'',NULL),(38,'表单管理',NULL,0,1,'38,39,40,55,56','38',5,1,0,'',NULL,'\0',NULL,'',NULL),(39,'在线预约',NULL,38,2,'39','39,38',0,3,0,'form/intention.asp',NULL,'\0',NULL,'',NULL),(40,'导出数据',NULL,38,2,'40','40,38',0,3,0,'Order_Man/excel.asp',NULL,'\0',NULL,'',NULL),(44,'发布内刊',NULL,36,2,'44','44,36',0,3,0,'publish/News_add.asp',NULL,'',NULL,'',NULL),(45,'上传简历管理',NULL,11,2,'45','45,11',4,3,0,'hr_man/Manage_JobBook3.asp',NULL,'',NULL,'',NULL),(47,'链接分类管理',NULL,15,2,'47','47,15',1,3,0,'link/ad_sort.asp',NULL,'\0',NULL,'',NULL),(48,'添加信息',NULL,4,2,'48','48,4',0,3,0,'news/news_add.asp',NULL,'',NULL,'',NULL),(49,'所有信息',NULL,4,2,'49','49,4',4,3,0,'news/news_manage.asp',NULL,'',NULL,'',NULL),(50,'广告类别',NULL,17,2,'50','50,17',0,3,0,'ad/ad_sort.asp',NULL,'\0',NULL,'',NULL),(51,'生成静态',NULL,0,1,'51,52,53,54','51',2,1,0,'',NULL,'\0',NULL,'',NULL),(52,'生成单页',NULL,51,2,'52','52,51',2,3,0,'create_html/c_company.asp',NULL,'',NULL,'',NULL),(53,'生成信息详情页',NULL,51,2,'53','53,51',4,3,0,'create_html/c_readnews.asp',NULL,'',NULL,'',NULL),(54,'生成首页',NULL,51,2,'54','54,51',0,3,0,'create_html/c_index.asp',NULL,'',NULL,'',NULL),(55,'申请开户',NULL,38,2,'55','55,38',0,3,0,'form/user_reg.asp?types=1',NULL,'',NULL,'',NULL),(56,'申请模拟',NULL,38,2,'56','56,38',1,3,0,'form/user_reg.asp?types=0',NULL,'',NULL,'',NULL),(57,'产品管理',NULL,0,1,'57,58,59,60,61,81','57',2,1,0,'',NULL,'\0',NULL,'',NULL),(58,'添加产品',NULL,57,2,'58','58,57',0,3,0,'news2/news_add.asp',NULL,'',NULL,'',NULL),(59,'产品列表',NULL,57,2,'59','59,57',1,3,0,'news2/news_manage.asp?cateid=37',NULL,'',NULL,'',NULL),(60,'添加相关评论',NULL,57,2,'60','60,57',3,3,0,'new3/news_add.asp?cateid=49',NULL,'\0',NULL,'',NULL),(61,'评论管理',NULL,57,2,'61','61,57',4,3,0,'new3/news_manage.asp?cateid=49',NULL,'\0',NULL,'',NULL),(62,'订单管理',NULL,0,1,'62,63,82,83','62',4,1,0,'',NULL,'\0',NULL,'',NULL),(63,'查看订单',NULL,62,2,'63','63,62',0,3,0,'order_man/Manage_Eshop.asp',NULL,'',NULL,'',NULL),(77,'sqlserver备分',NULL,28,2,'77','77,28',3,3,0,'databak/admin_sqldb_bak.asp',NULL,'',NULL,'',NULL),(79,'添加学生',NULL,7,2,'79','79,7',0,3,0,'Member/Useradd.asp',NULL,'',NULL,'',NULL),(80,'会员等级',NULL,7,2,'80','80,7',3,3,0,'member/ad_sort.asp',NULL,'\0',NULL,'',NULL),(81,'产品属性',NULL,57,2,'81','81,57',4,3,0,'goods/goods_property.asp',NULL,'\0',NULL,'',NULL),(82,'导出Excel',NULL,62,2,'82','82,62',5,3,0,'order_man/excel.asp',NULL,'',NULL,'',NULL),(83,'产品统计',NULL,62,2,'83','83,62',10,3,0,'order_man/goodsSale.asp',NULL,'',NULL,'',NULL),(84,'附件清理',NULL,4,2,'84','84,4',8,3,0,'news/file_manage.asp',NULL,'',NULL,'',NULL),(85,'导入数据',NULL,7,2,'85','85,7',5,3,0,'member/upload.asp',NULL,'',NULL,'',NULL),(86,'项目管理',NULL,0,1,'86,87,88','86',4,1,0,'',NULL,'',NULL,'',NULL),(87,'项目管理',NULL,86,2,'87','87,86',1,3,0,'news2/news_manage.asp',NULL,'',NULL,'',NULL),(88,'添加项目',NULL,86,2,'88','88,86',2,3,0,'news2/news_add.asp',NULL,'',NULL,'',NULL),(89,'首页关键词',NULL,4,2,'89','89,4',10,3,0,'news2/keywords.asp',NULL,'\0',NULL,'',NULL),(90,'数据管理',NULL,0,1,'90,91','90',1,1,0,'',NULL,'\0',NULL,'',NULL),(91,'数据管理',NULL,90,2,'91','91,90',0,3,0,'db/index.asp',NULL,'',NULL,'',NULL);

/*Table structure for table `catepage_c` */

DROP TABLE IF EXISTS `catepage_c`;

CREATE TABLE `catepage_c` (
  `cateid` int(10) NOT NULL AUTO_INCREMENT,
  `catename` varchar(50) DEFAULT NULL,
  `catedir` varchar(200) DEFAULT NULL,
  `followid` int(10) DEFAULT NULL,
  `depth` int(10) DEFAULT NULL,
  `sonid` varchar(255) DEFAULT NULL,
  `parentid` varchar(255) DEFAULT NULL,
  `orderID` int(10) DEFAULT NULL,
  `cateType` int(10) DEFAULT NULL,
  `modelType` int(10) DEFAULT NULL,
  `OutLinkUrl` varchar(200) DEFAULT NULL,
  `content` text,
  `isHome` bit(1) NOT NULL,
  `Hits` int(10) DEFAULT NULL,
  `defaultpicurl` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  UNIQUE KEY `cateid` (`cateid`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

/*Data for the table `catepage_c` */

insert  into `catepage_c`(`cateid`,`catename`,`catedir`,`followid`,`depth`,`sonid`,`parentid`,`orderID`,`cateType`,`modelType`,`OutLinkUrl`,`content`,`isHome`,`Hits`,`defaultpicurl`,`url`) values (1,'网站架构',NULL,0,1,'1,2,3','1',0,1,0,'',NULL,'',NULL,'',NULL),(2,'添加栏目',NULL,1,2,'2','2,1',0,3,0,'category/companyadd.asp',NULL,'',NULL,'',NULL),(3,'栏目管理',NULL,1,2,'3','3,1',1,3,0,'category/companyall.asp',NULL,'',NULL,'',NULL),(4,'信息管理',NULL,0,1,'4,5,6,48,49,84,89','4',1,1,0,'',NULL,'',NULL,'',NULL),(5,'信息管理',NULL,4,2,'5','5,4',2,3,0,'News/CompanyAll.asp',NULL,'',NULL,'',NULL),(6,'回收站',NULL,4,2,'6','6,4',5,3,0,'news/news_manage_recycle.asp',NULL,'',NULL,'',NULL),(8,'学生管理',NULL,7,2,'8','8,7',0,3,0,'Member/UserManage.asp',NULL,'',NULL,'',NULL),(10,'留言/反馈管理',NULL,9,2,'10','10,9',0,3,0,'GuestBook/Book_index3.asp',NULL,'',NULL,'',NULL),(12,'招聘管理',NULL,11,2,'12','12,11',0,3,0,'Hr_Man/Manage_Job.asp',NULL,'',NULL,'',NULL),(13,'发布招聘',NULL,11,2,'13','13,11',1,3,0,'Hr_Man/Manage_JobAdd.asp',NULL,'',NULL,'',NULL),(16,'链接管理',NULL,15,2,'16','16,15',0,3,0,'link/manage_link.asp',NULL,'',NULL,'',NULL),(17,'广告系统',NULL,0,1,'17,18,19,20,50','17',7,1,0,'',NULL,'',NULL,'',NULL),(18,'广告分类',NULL,17,2,'18','18,17',0,3,0,'ad/ad_sort.asp',NULL,'',NULL,'',NULL),(19,'发布广告',NULL,17,2,'19','19,17',1,3,0,'ad/ad_add.asp',NULL,'',NULL,'',NULL),(20,'广告管理',NULL,17,2,'20','20,17',2,3,0,'ad/ad_manage.asp',NULL,'',NULL,'',NULL),(22,'添加投票',NULL,21,2,'22','22,21',0,3,0,'vote/VoteAdd.asp',NULL,'',NULL,'',NULL),(23,'投票管理',NULL,21,2,'23','23,21',1,3,0,'vote/VoteManage.asp',NULL,'',NULL,'',NULL),(24,'管理员管理',NULL,0,1,'24,25,26','24',9,1,0,'',NULL,'',NULL,'',NULL),(25,'管理员管理',NULL,24,2,'25','25,24',0,3,0,'manager/Manage_Admin.asp',NULL,'',NULL,'',NULL),(26,'管理员分组',NULL,24,2,'26','26,24',1,3,0,'manager/ad_sort.asp',NULL,'',NULL,'',NULL),(28,'系统管理',NULL,0,1,'28,29,30,76,77','28',10,1,0,'',NULL,'',NULL,'',NULL),(31,'系统配置',NULL,0,1,'31,32,33','31',11,1,0,'',NULL,'',NULL,'',NULL),(32,'查看',NULL,31,2,'32','32,31',0,3,0,'config/admin_main.asp',NULL,'',NULL,'',NULL),(33,'网站配置',NULL,31,2,'33','33,31',1,3,0,'config/SiteConfig.asp',NULL,'',NULL,'',NULL),(37,'内刊维护',NULL,36,2,'37','37,36',0,3,0,'publish/News_Manage.asp',NULL,'',NULL,'',NULL),(44,'发布内刊',NULL,36,2,'44','44,36',0,3,0,'publish/News_add.asp',NULL,'',NULL,'',NULL),(45,'上传简历管理',NULL,11,2,'45','45,11',4,3,0,'hr_man/Manage_JobBook3.asp',NULL,'',NULL,'',NULL),(48,'添加信息',NULL,4,2,'48','48,4',0,3,0,'news/news_add.asp',NULL,'',NULL,'',NULL),(49,'所有信息',NULL,4,2,'49','49,4',4,3,0,'news/news_manage.asp',NULL,'',NULL,'',NULL),(52,'生成单页',NULL,51,2,'52','52,51',2,3,0,'create_html/c_company.asp',NULL,'',NULL,'',NULL),(53,'生成信息详情页',NULL,51,2,'53','53,51',4,3,0,'create_html/c_readnews.asp',NULL,'',NULL,'',NULL),(54,'生成首页',NULL,51,2,'54','54,51',0,3,0,'create_html/c_index.asp',NULL,'',NULL,'',NULL),(55,'申请开户',NULL,38,2,'55','55,38',0,3,0,'form/user_reg.asp?types=1',NULL,'',NULL,'',NULL),(56,'申请模拟',NULL,38,2,'56','56,38',1,3,0,'form/user_reg.asp?types=0',NULL,'',NULL,'',NULL),(58,'添加产品',NULL,57,2,'58','58,57',0,3,0,'news2/news_add.asp',NULL,'',NULL,'',NULL),(59,'产品列表',NULL,57,2,'59','59,57',1,3,0,'news2/news_manage.asp?cateid=37',NULL,'',NULL,'',NULL),(63,'查看订单',NULL,62,2,'63','63,62',0,3,0,'order_man/Manage_Eshop.asp',NULL,'',NULL,'',NULL),(77,'sqlserver备分',NULL,28,2,'77','77,28',3,3,0,'databak/admin_sqldb_bak.asp',NULL,'',NULL,'',NULL),(79,'添加学生',NULL,7,2,'79','79,7',0,3,0,'Member/Useradd.asp',NULL,'',NULL,'',NULL),(82,'导出Excel',NULL,62,2,'82','82,62',5,3,0,'order_man/excel.asp',NULL,'',NULL,'',NULL),(83,'产品统计',NULL,62,2,'83','83,62',10,3,0,'order_man/goodsSale.asp',NULL,'',NULL,'',NULL),(84,'附件清理',NULL,4,2,'84','84,4',8,3,0,'news/file_manage.asp',NULL,'',NULL,'',NULL),(85,'导入数据',NULL,7,2,'85','85,7',5,3,0,'member/upload.asp',NULL,'',NULL,'',NULL),(86,'项目管理',NULL,0,1,'86,87,88','86',4,1,0,'',NULL,'',NULL,'',NULL),(87,'项目管理',NULL,86,2,'87','87,86',1,3,0,'news2/news_manage.asp',NULL,'',NULL,'',NULL),(88,'添加项目',NULL,86,2,'88','88,86',2,3,0,'news2/news_add.asp',NULL,'',NULL,'',NULL),(91,'数据管理',NULL,90,2,'91','91,90',0,3,0,'db/index.asp',NULL,'',NULL,'',NULL);

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ParentID` int(10) DEFAULT NULL,
  `ComName` varchar(200) DEFAULT NULL,
  `Content` text,
  `Hits` int(10) DEFAULT NULL,
  `IsHome` int(10) DEFAULT NULL,
  `OrderID` int(10) DEFAULT NULL,
  `IsOutLink` int(10) DEFAULT NULL,
  `OutLinkUrl` varchar(200) DEFAULT NULL,
  `ChildNum` int(10) DEFAULT NULL,
  `IsIndex` bit(1) NOT NULL,
  `isNews` bit(1) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `company` */

/*Table structure for table `goods_property` */

DROP TABLE IF EXISTS `goods_property`;

CREATE TABLE `goods_property` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `propertyName` varchar(50) NOT NULL,
  `cateID` int(10) DEFAULT NULL,
  `orderid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK_goods_property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `goods_property` */

insert  into `goods_property`(`id`,`propertyName`,`cateID`,`orderid`) values (1,'六方',0,1),(2,'是否带附轴',0,2),(3,'是否装配',0,3);

/*Table structure for table `goods_propertyvalues` */

DROP TABLE IF EXISTS `goods_propertyvalues`;

CREATE TABLE `goods_propertyvalues` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `goodsID` int(10) DEFAULT NULL,
  `propertyID` int(10) DEFAULT NULL,
  `propertyValue` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK_goods_propertyValues` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `goods_propertyvalues` */

insert  into `goods_propertyvalues`(`id`,`goodsID`,`propertyID`,`propertyValue`) values (1,4,1,'23'),(2,4,1,'32'),(3,4,2,'带附轴'),(4,4,2,'整体轴'),(5,4,3,'装配总成'),(6,4,3,'不装配总成');

/*Table structure for table `goods_proprices` */

DROP TABLE IF EXISTS `goods_proprices`;

CREATE TABLE `goods_proprices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `goodsProvalueIDs` int(10) DEFAULT NULL,
  `goodsID` int(10) DEFAULT NULL,
  `price` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK_goods_proPrices` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods_proprices` */

/*Table structure for table `goodssale_c` */

DROP TABLE IF EXISTS `goodssale_c`;

CREATE TABLE `goodssale_c` (
  `goodsId` varchar(20) DEFAULT NULL,
  `goodsname` varchar(60) DEFAULT NULL,
  `goodsnum` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goodssale_c` */

insert  into `goodssale_c`(`goodsId`,`goodsname`,`goodsnum`) values ('12','三片四组旱地刀/32六方/整体轴/未装配',6),('13','三片四组旱地刀/32六方/整体轴/装配',5),('41','金刀峡两江假日酒店－－双人豪华间',3),('42','金刀峡两江假日酒店－－标间',2),('43','金刀峡门票',5),('6','三片四组刀',158),('8','四片四组刀',20);

/*Table structure for table `intention` */

DROP TABLE IF EXISTS `intention`;

CREATE TABLE `intention` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `xm` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lxdh` varchar(255) DEFAULT NULL,
  `ad` varchar(255) DEFAULT NULL,
  `room_class` varchar(255) DEFAULT NULL,
  `showtimes` varchar(255) DEFAULT NULL,
  `d1` varchar(255) DEFAULT NULL,
  `d2` varchar(255) DEFAULT NULL,
  `p_num` varchar(255) DEFAULT NULL,
  `content` text,
  `addtime` timestamp NULL DEFAULT NULL,
  `isdel` bit(1) NOT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `ac` varchar(255) DEFAULT NULL,
  `tt` varchar(255) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `intention` */

insert  into `intention`(`ID`,`xm`,`email`,`lxdh`,`ad`,`room_class`,`showtimes`,`d1`,`d2`,`p_num`,`content`,`addtime`,`isdel`,`flag`,`ac`,`tt`) values (4,'34er','男','','','','','第一次购买','','重庆','',NULL,'','尚未处理',NULL,NULL),(5,'ererw',NULL,'erwer','','ew','werwer',NULL,'erwerwer@erew.com','重庆','',NULL,'','尚未处理',NULL,NULL),(6,'ererw',NULL,'erwer','','ew','werwer',NULL,'erwerwer@erew.com','重庆','','2013-07-11 10:23:25','','尚未处理',NULL,NULL),(7,'43',NULL,'','','','',NULL,'','重庆','','2013-07-11 11:09:11','','尚未处理',NULL,NULL),(8,'werer',NULL,'243423','','','',NULL,'324234@eerwr.com','重庆','','2013-07-11 11:35:41','','尚未处理',NULL,NULL),(18,'ewrwer',NULL,'243423','','','','2013-10-10','','ewrer','','2013-10-10 10:34:45','','已经处理','save','19点前'),(19,'ererw',NULL,'13452080657','帝豪西城店','小包厢','晚场','2013-10-11','2013-10-11','2','请电话联系','2013-10-10 10:47:14','','已经处理','save','19点前'),(22,'erwer','324234@eerwr.com','13452080657','请选择您就近的校区','请选择您希望学习的科目',NULL,NULL,NULL,NULL,NULL,'2013-10-16 12:08:00','\0','已经处理','save',NULL),(23,'erewrwer',NULL,'13452080657','A校区','围棋培训',NULL,NULL,NULL,NULL,NULL,'2013-10-17 10:58:26','\0','尚未处理','save',NULL),(24,'43',NULL,'13452080657','A校区','围棋培训',NULL,NULL,NULL,NULL,NULL,'2013-10-17 11:01:07','\0','尚未处理','save',NULL);

/*Table structure for table `job` */

DROP TABLE IF EXISTS `job`;

CREATE TABLE `job` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Duix` varchar(50) DEFAULT NULL,
  `Rens` varchar(50) DEFAULT NULL,
  `Did` varchar(50) DEFAULT NULL,
  `Daiy` varchar(50) DEFAULT NULL,
  `Yaoq` text,
  `Qix` varchar(50) DEFAULT NULL,
  `Time` timestamp NULL DEFAULT NULL,
  `bumen` varchar(20) DEFAULT NULL,
  `workyear` varchar(20) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `isschool` bit(1) NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

/*Data for the table `job` */

insert  into `job`(`ID`,`Duix`,`Rens`,`Did`,`Daiy`,`Yaoq`,`Qix`,`Time`,`bumen`,`workyear`,`city`,`isschool`) values (74,'质检员','2','重庆陈家坪','023—47269118/15213130882','1、年龄30—45岁，高中以上文化程度，吃苦耐劳，有责任；\r\n2、具有一年以上的相关工作经验和熟悉电线电缆产品检验标准者优先；\r\n3、包吃住，转正后购买五险。\r\n\r\n工作地址：江津双福\r\n','30','2014-10-27 00:00:00','质检部','大专以上',NULL,'\0'),(76,'挤塑工','2','江津双福','023-47269118\\023-68664220','1、男，25到40岁，5年及以上工作经验；\r\n2、熟悉掌握45、75机、90机的操作（电线电缆）；\r\n3、有上进心、能吃苦耐劳，有电线电缆厂相关的工作经验。','30','2014-11-07 00:00:00','生产%','高中及以上',NULL,'\0'),(77,'成缆机手','2','江津双福','023-47269118/15213130882','1、男，25到40岁，3年及以上工作经验，岗位职责；\r\n2、能操作1.25米成缆，完成上级交待的其他任务；\r\n3、思想品德好、有2年工作经验  身体健康，吃苦耐劳，忠诚敬业。','30','2014-11-07 00:00:00','生产%','高中及以上',NULL,'\0'),(78,'销售经理（渠道类）','1','重庆陈家坪','023-47269118/15213130882','1、男，25-40岁，市场营销等相关专业，3年及以上渠道销售工作经验；\r\n2、负责大重庆区县市场的开发，负责组织协调区域内渠道客户售前、售中、售后服务工作，负责区域销售业务管理，巩固传统市场，不断开拓新的市场；\r\n3、有市场渠道开拓及管理工作经验，有团队管理工作经验，业绩优秀；\r\n4、具有独立的分析和解决问题的能力，市场感觉敏锐，有良好的沟通技巧和组织能力；\r\n5、能承担较大压力。','30','2014-11-07 00:00:00','销售','大专及以上',NULL,'\0'),(79,'&#21150;&#20844;&#23460;&#20869;&#21220;','1','&#37325;&#24198;&#38472;&#23478;&#22378;','023-47269118/15213130882','&#19968;&#65307;&#20219;&#32844;&#36164;&#26684;&#65306;\r\n1&#12289;&#30007;&#22899;&#19981;&#38480;&#65292;23-35&#23681;&#65292;&#24418;&#35937;&#27668;&#36136;&#22909;&#65292;&#31649;&#29702;&#30456;&#20851;&#19987;&#19994;&#26412;&#31185;&#20197;&#19978;&#23398;&#21382;&#65307;\r\n2&#12289;&#33391;&#22909;&#30340;&#22242;&#38431;&#21327;&#20316;&#31934;&#31070;&#65292;&#24037;&#20316;&#32454;&#33268;&#35748;&#30495;&#65292;&#35880;&#24910;&#32454;&#24515;&#65292;&#36131;&#20219;&#24515;&#24378;&#65307;\r\n3&#12289; &#29087;&#24713;&#24120;&#29992;&#21150;&#20844;&#36719;&#20214;&#65288;word&#12289;excel&#12289;ppt&#65289;&#65292;&#20855;&#26377;&#19968;&#23450;&#30340;&#25991;&#23383;&#21151;&#24213;&#65307;\r\n4&#12289; &#33021;&#25215;&#21463;&#36739;&#22823;&#24037;&#20316;&#21387;&#21147;&#65292;&#21892;&#20110;&#23398;&#20064;&#65307;\r\n5&#12289; &#33021;&#36805;&#36895;&#25484;&#25569;&#19982;&#20844;&#21496;&#19994;&#21153;&#26377;&#20851;&#30340;&#21508;&#31181;&#30693;&#35782;&#65307;\r\n6&#12289;&#30693;&#35782;&#32467;&#26500;&#36739;&#20840;&#38754;&#65292;&#20855;&#26377;&#19968;&#23450;&#30340;&#31649;&#29702;&#32463;&#39564;&#65307;\r\n7&#12289;&#26377;&#39550;&#39542;&#35777;&#20214;&#20248;&#20808;&#12290;\r\n&#20108;&#12289;&#23703;&#20301;&#32844;&#36131;&#65306;\r\n1&#12289;&#36981;&#32426;&#23432;&#27861;&#65292;&#36981;&#23432;&#20844;&#21496;&#21508;&#39033;&#35268;&#31456;&#21046;&#24230;&#65292;&#26381;&#20174;&#39046;&#23548;&#65292;&#20445;&#23432;&#20844;&#21496;&#31192;&#23494;&#12290;\r\n2&#12289;&#20570;&#22909;&#20844;&#21496;&#21450;&#20013;&#24515;&#36164;&#20135;&#30340;&#20351;&#29992;&#31649;&#29702;&#24037;&#20316;&#65307;\r\n3&#12289;&#20570;&#22909;&#20844;&#21496;&#23459;&#20256;&#31649;&#29702;&#24037;&#20316;&#65288;&#21547;&#20844;&#21496;&#32593;&#31449;&#31649;&#29702;&#65289;&#65307;\r\n4&#12289;&#20570;&#22909;&#20844;&#21496;&#24433;&#20687;&#36164;&#26009;&#30340;&#25910;&#38598;&#21644;&#25972;&#29702;&#24037;&#20316;&#65307;\r\n5&#12289;&#20570;&#22909;&#20844;&#21496;&#21508;&#31867;&#27963;&#21160;&#30340;&#32452;&#32455;&#24037;&#20316;&#65307;\r\n6&#12289;&#20570;&#22909;&#20013;&#24515;&#21592;&#24037;&#23487;&#33293;&#31649;&#29702;&#24037;&#20316;&#65307;\r\n7&#12289;&#36127;&#36131;&#20013;&#24515;&#20154;&#21147;&#36164;&#28304;&#31649;&#29702;&#22521;&#35757;&#26041;&#38754;&#24037;&#20316;&#65307;\r\n8&#12289;&#20570;&#22909;&#32844;&#22330;&#12289;&#21355;&#29983;&#12289;&#33410;&#33021;&#38477;&#32791;&#31649;&#29702;&#24037;&#20316;&#65307;\r\n9&#12289;&#20570;&#22909;&#20013;&#24515;&#39184;&#21381;&#31649;&#29702;&#24037;&#20316;&#65307;\r\n10&#12289;&#20570;&#22909;&#20013;&#24515;&#38405;&#35272;&#23460;&#12289;&#20581;&#36523;&#23460;&#21450;&#23089;&#20048;&#23460;&#31649;&#29702;&#24037;&#20316;&#65307;\r\n11&#12289;&#25353;&#26102;&#23436;&#25104;&#39046;&#23548;&#20020;&#26102;&#20132;&#21150;&#30340;&#20854;&#20182;&#24037;&#20316;&#12290;','30','2014-11-07 00:00:00','&#21150;&#20844;&#23','本科及以上',NULL,'\0'),(80,'&#21416;&#24072;','1','&#27743;&#27941;&#21452;&#31119;','023-47269118/15213130882','&#19968;&#12289;&#20219;&#32844;&#36164;&#26684;&#65306;\r\n1&#12289;&#30007;&#65292;&#24180;&#40836;&#19977;&#21313;&#20116;&#23681;&#20197;&#19978;&#65292;&#36523;&#20307;&#20581;&#24247;&#12289;&#31934;&#21147;&#20805;&#27803;&#65292;&#20116;&#24180;&#21592;&#24037;&#39135;&#22530;&#24037;&#20316;&#32463;&#39564;&#65307;\r\n2&#12289;&#20855;&#26377;&#24378;&#28872;&#30340;&#36131;&#20219;&#24515;&#65292;&#21191;&#20110;&#24320;&#25299;&#21644;&#21019;&#26032;&#65292;&#20316;&#39118;&#24178;&#32451;&#65307;\r\n3&#12289;&#25317;&#26377;&#36739;&#39640;&#30340;&#28921;&#39274;&#25216;&#26415;&#65292;&#20102;&#35299;&#21644;&#29087;&#24713;&#39135;&#21697;&#26448;&#26009;&#30340;&#20135;&#22320;&#12289;&#35268;&#26684;&#12289;&#36136;&#37327;&#12289;&#19968;&#33324;&#36827;&#36135;&#20215;\r\n4&#12289;&#23545;&#25104;&#26412;&#25511;&#21046;&#31649;&#29702;&#12289;&#39135;&#21697;&#33829;&#20859;&#23398;&#12289;&#21416;&#25151;&#30340;&#35774;&#22791;&#30693;&#35782;&#25317;&#26377;&#30456;&#24403;&#30340;&#22522;&#30784;&#12290;\r\n&#20108;&#12289;&#39135;&#22530;&#21416;&#24072;&#23703;&#20301;&#32844;&#36131;&#65306;\r\n1&#12289;&#36127;&#36131;&#39135;&#22530;&#19968;&#26085;&#19977;&#39184;&#28921;&#35843;&#21046;&#20316;&#65292;&#22686;&#21152;&#33457;&#33394;&#21697;&#31181;&#65307;\r\n2&#12289;&#35745;&#21010;&#29992;&#26009;&#65292;&#31934;&#24037;&#32454;&#20316;&#65292;&#25552;&#39640;&#28921;&#35843;&#25216;&#26415;&#65292;&#25913;&#21892;&#21046;&#20316;&#26041;&#27861;&#65292;&#20570;&#21040;&#33394;&#12289;&#39321;&#12289;&#21619;&#20465;&#20339;&#65307;\r\n3&#12289;&#34394;&#24515;&#21548;&#21462;&#21592;&#24037;&#23545;&#20249;&#39135;&#30340;&#24847;&#35265;&#65292;&#30740;&#31350;&#25913;&#21892;&#20249;&#39135;&#30340;&#25514;&#26045;&#65307;\r\n4&#12289;&#20445;&#35777;&#21592;&#24037;&#33021;&#25353;&#26102;&#24320;&#39277;&#65288;&#26089;&#19978;7:00&#8212;&#8212;8:00&#65292;&#20013;&#21320;12:00&#8212;&#8212;13:00&#65292;&#26202;&#19978;18:00&#8212;&#8212;18:30&#65289;&#65307;\r\n5&#12289;&#23545;&#37319;&#36141;&#29992;&#26009;&#36827;&#34892;&#39564;&#25910;&#12289;&#26680;&#23545;&#25968;&#37327;&#21450;&#21697;&#36136;&#30340;&#26816;&#26597;&#24037;&#20316;&#65307;\r\n6&#12289;&#31105;&#27490;&#23384;&#25918;&#26377;&#27602;&#26377;&#23475;&#29289;&#21697;&#12289;&#26434;&#21697;&#12289;&#20010;&#20154;&#29992;&#21697;&#21450;&#19982;&#24211;&#25151;&#19981;&#30456;&#20851;&#30340;&#20219;&#20309;&#29289;&#21697;&#65307;\r\n7&#12289;&#25630;&#22909;&#39278;&#39135;&#21355;&#29983;&#65292;&#23450;&#26399;&#26816;&#26597;&#39135;&#22530;&#20179;&#24211;&#29289;&#21697;&#36136;&#37327;&#65292;&#38450;&#27490;&#39135;&#29289;&#20013;&#27602;&#65307;\r\n8&#12289;&#36127;&#36131;&#23433;&#20840;&#38450;&#33539;&#24037;&#20316;&#65292;&#23450;&#26399;&#28040;&#27602;&#65307;\r\n9&#12289;&#21327;&#21161;&#21518;&#21220;&#24037;&#20316;&#20154;&#21592;&#20570;&#22909;&#39135;&#22530;&#30340;&#31649;&#29702;&#24037;&#20316;&#65307;\r\n10&#12289;&#20570;&#22909;&#29992;&#20110;&#25509;&#24453;&#30340;&#24037;&#20316;&#39184;&#12289;&#22260;&#39184;&#65307;\r\n11&#12289;&#23436;&#25104;&#39046;&#23548;&#20020;&#26102;&#20132;&#21150;&#30340;&#20854;&#20182;&#20219;&#21153;&#12290;','30','2014-11-07 00:00:00','&#21150;&#20844;&#23','高中及以上',NULL,'\0'),(81,'&#20445;&#23433;','1','&#37325;&#24198;&#38472;&#23478;&#22378;','023-47269118/15213130882','&#19968;&#12289;&#20219;&#32844;&#36164;&#26684;&#65306;\r\n1&#12289;&#30007;&#65292;30&#23681;&#8212;50&#23681;&#65307;\r\n2&#12289;&#35201;&#27714;&#20219;&#32844;&#32773;&#24517;&#39035;&#35201;&#26377;&#36131;&#20219;&#24515;&#65292;&#26377;2&#24180;&#20197;&#19978;&#30456;&#20851;&#24037;&#20316;&#32463;&#39564;&#12290;\r\n&#20108;&#12289;&#23703;&#20301;&#32844;&#36131;&#65306;\r\n1&#12289;&#20005;&#26684;&#36981;&#23432;&#20540;&#29677;&#32426;&#24459;&#65292;&#22362;&#23432;&#23703;&#20301;&#65292;&#25972;&#40784;&#30528;&#35013;&#65292;&#25991;&#26126;&#25191;&#21220;&#65292;&#35748;&#30495;&#23653;&#34892;&#32844;&#36131;&#65307;\r\n2&#12289;&#36127;&#36131;&#36827;&#20986;&#36710;&#36742;&#30340;&#30331;&#35760;&#12290;&#23545;&#36827;&#20844;&#21496;&#30340;&#36710;&#36742;&#36827;&#34892;&#35810;&#38382;&#65292;&#24182;&#25351;&#24341;&#20572;&#25918;&#22909;&#36710;&#36742;&#65292;&#20445;&#25345;&#20844;&#20849;&#36890;&#36947;&#30340;&#30021;&#36890;&#65307;  \r\n3&#12289;&#23450;&#26102;&#24033;&#36923;&#20844;&#21496;&#21150;&#20844;&#21306;&#21644;&#23487;&#33293;&#65292;&#20445;&#35777;&#23433;&#20840;&#12290;&#20570;&#22909;&#8220;&#38450;&#28779;&#12289;&#38450;&#30423;&#12289;&#38450;&#29190;&#12289;&#25918;&#30772;&#22351;&#8221;&#30340;&#22235;&#38450;&#24037;&#20316;&#65307;\r\n4&#12289;&#20844;&#21496;&#20869;&#22914;&#21457;&#29983;&#27665;&#20107;&#32416;&#32439;&#65292;&#24212;&#21450;&#26102;&#21149;&#38459;&#21644;&#21046;&#27490;&#65292;&#24182;&#21450;&#26102;&#25253;&#21578;&#19978;&#32423;&#39046;&#23548;&#65307;\r\n5&#12289;&#24033;&#36923;&#26102;&#26816;&#26597;&#21608;&#22260;&#30340;&#29031;&#26126;&#31995;&#32479;&#21450;&#30417;&#25511;&#31995;&#32479;&#65292;&#30830;&#20445;&#35813;&#20445;&#23433;&#31995;&#32479;&#30340;&#27491;&#24120;&#36816;&#34892;&#65307;\r\n6&#12289;&#36127;&#36131;&#20570;&#22909;&#38376;&#21355;&#23460;&#20869;&#21450;&#20844;&#21496;&#22823;&#38376;&#21069;&#30340;&#29615;&#22659;&#21355;&#29983;&#65307;\r\n7&#12289;&#27599;&#22825;&#21592;&#24037;&#19979;&#29677;&#21518;&#38656;&#23545;&#21508;&#20010;&#37096;&#38376;&#21450;&#21150;&#20844;&#23460;&#20869;&#27700;&#30005;&#12289;&#38376;&#31383;&#38145;&#36827;&#34892;&#26816;&#26597;&#65292;&#22914;&#26410;&#20851;&#22909;&#65292;&#35831;&#21450;&#26102;&#20851;&#22909;&#65292;&#24182;&#20570;&#22909;&#30456;&#20851;&#35760;&#24405;&#25253;&#21578;&#19978;&#32423;&#65307; \r\n8&#12289;&#36127;&#36131;&#32500;&#25252;&#20844;&#21496;&#22823;&#38376;&#21069;&#30340;&#31209;&#24207;&#65292;&#21450;&#26102;&#28165;&#29702;&#38376;&#21069;&#30340;&#19996;&#35199;&#25110;&#38556;&#30861;&#29289;&#65292;&#20445;&#35777;&#20844;&#21496;&#22823;&#38376;&#21069;&#20132;&#36890;&#30021;&#36890;&#65307;\r\n9&#12289;&#25353;&#26102;&#23436;&#25104;&#39046;&#23548;&#20020;&#26102;&#20132;&#21150;&#30340;&#20854;&#20182;&#24037;&#20316;&#12290;','30','2014-11-07 00:00:00','&#21150;&#20844;&#23','高中及以上',NULL,'\0');

/*Table structure for table `jobbook` */

DROP TABLE IF EXISTS `jobbook`;

CREATE TABLE `jobbook` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Jobname` varchar(50) DEFAULT NULL,
  `Mane` varchar(50) DEFAULT NULL,
  `Sex` varchar(50) DEFAULT NULL,
  `Birthday` timestamp NULL DEFAULT NULL,
  `Marry` varchar(50) DEFAULT NULL,
  `School` varchar(200) DEFAULT NULL,
  `Studydegree` varchar(255) DEFAULT NULL,
  `Specialty` varchar(50) DEFAULT NULL,
  `Gradyear` varchar(255) DEFAULT NULL,
  `Telephone` varchar(50) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Ability` text,
  `Resumes` text,
  `Time` timestamp NULL DEFAULT NULL,
  `upfilepath` varchar(255) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `jobbook` */

insert  into `jobbook`(`ID`,`Jobname`,`Mane`,`Sex`,`Birthday`,`Marry`,`School`,`Studydegree`,`Specialty`,`Gradyear`,`Telephone`,`Email`,`Address`,`Ability`,`Resumes`,`Time`,`upfilepath`) values (14,'文员','张圆','女','1976-02-02 00:00:00','未婚','','','','','13612345678','ewrwer@wer.com','','','','2014-09-22 12:25:57','/uploadfiles/file/20140922/20140922122498639863.docx');

/*Table structure for table `links` */

DROP TABLE IF EXISTS `links`;

CREATE TABLE `links` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Note` varchar(50) DEFAULT NULL,
  `Link` varchar(200) DEFAULT NULL,
  `AddTime` timestamp NULL DEFAULT NULL,
  `linktype` int(10) DEFAULT NULL,
  `SitePic` varchar(200) DEFAULT NULL,
  `orderid` int(10) DEFAULT NULL,
  `catalogid` int(10) DEFAULT NULL,
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `links` */

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `B_name` varchar(255) DEFAULT NULL,
  `B_MSN` varchar(255) DEFAULT NULL,
  `B_mail` varchar(255) DEFAULT NULL,
  `B_tel` varchar(255) DEFAULT NULL,
  `B_dom` text,
  `B_hui` text,
  `B_date` timestamp NULL DEFAULT NULL,
  `B_sh` int(10) DEFAULT NULL,
  `tgsh` bit(1) NOT NULL,
  `B_sex` int(10) DEFAULT NULL,
  `B_title` varchar(250) DEFAULT NULL,
  `B_face` int(10) DEFAULT NULL,
  `B_htime` timestamp NULL DEFAULT NULL,
  `B_chengs` varchar(100) DEFAULT NULL,
  `styles` varchar(50) DEFAULT NULL,
  `B_type` int(10) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`B_name`,`B_MSN`,`B_mail`,`B_tel`,`B_dom`,`B_hui`,`B_date`,`B_sh`,`tgsh`,`B_sex`,`B_title`,`B_face`,`B_htime`,`B_chengs`,`styles`,`B_type`) values (46,'werwer','','werwer','wer','werwerwere',NULL,'2013-12-05 17:15:59',0,'\0',0,'werwer',0,NULL,'','反馈',0),(47,'姓名...','','电子邮箱...','电话...','留言内容...',NULL,'2014-09-23 16:43:29',0,'\0',0,'',0,NULL,'',NULL,1),(48,'姓名...','','电子邮箱...','电话...','留言内容...',NULL,'2014-09-23 16:44:04',0,'\0',0,'',0,NULL,'',NULL,1),(49,'姓名...','','电子邮箱...','电话...','留言内容...',NULL,'2014-09-23 16:44:49',0,'\0',0,'',0,NULL,'',NULL,1),(51,'姓名...','','电子邮箱...','34343234','留言内容...',NULL,'2014-09-23 17:02:10',0,'\0',0,'',0,NULL,'',NULL,1),(52,'压顶','','Web@ere.com','4444444','你们网站办得不错',NULL,'2014-09-26 14:43:20',0,'\0',0,'',0,NULL,'',NULL,1),(53,'客户一','','7923907@qq.com','13413526878','你们网站做得不错啊',NULL,'2015-01-13 12:23:53',0,'\0',0,'',0,NULL,'',NULL,1);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `cateid` int(10) DEFAULT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Content` text,
  `Author` varchar(50) DEFAULT NULL,
  `ComeFrom` varchar(50) DEFAULT NULL,
  `PostTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Hits` int(10) DEFAULT NULL,
  `DefaultPicUrl` varchar(100) DEFAULT NULL,
  `UploadFiles` text,
  `IncludePic` bit(1) NOT NULL,
  `Elite` bit(1) NOT NULL,
  `Passed` bit(1) NOT NULL,
  `isDel` bit(1) NOT NULL,
  `px` int(10) DEFAULT NULL,
  `lastupdate` timestamp NULL DEFAULT NULL,
  `orderID` int(10) DEFAULT NULL,
  `comments` int(10) DEFAULT NULL,
  `content_zy` varchar(255) DEFAULT NULL,
  `dynamicUrl` varchar(255) DEFAULT NULL,
  `staticUrl` varchar(255) DEFAULT NULL,
  `keys` varchar(255) DEFAULT NULL,
  `reurl` varchar(255) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `news` */

/*Table structure for table `orderdetail` */

DROP TABLE IF EXISTS `orderdetail`;

CREATE TABLE `orderdetail` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `OrderNum` varchar(50) DEFAULT NULL,
  `UserId` varchar(50) DEFAULT NULL,
  `goodsId` varchar(20) DEFAULT NULL,
  `goodsName` varchar(60) DEFAULT NULL,
  `Price` decimal(19,4) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  `OrderTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `totalprice` decimal(19,4) DEFAULT NULL,
  `isdel` bit(1) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `orderdetail` */

insert  into `orderdetail`(`ID`,`OrderNum`,`UserId`,`goodsId`,`goodsName`,`Price`,`count`,`OrderTime`,`totalprice`,`isdel`) values (6,'KF201322811432716',NULL,'42','金刀峡两江假日酒店－－标间','200.0000',2,'2013-02-28 11:43:27','400.0000',''),(7,'KF201322811432716',NULL,'41','金刀峡两江假日酒店－－双人豪华间','300.0000',3,'2013-02-28 11:43:27','900.0000',''),(8,'KF201322816183016',NULL,'43','金刀峡门票','50.0000',1,'2013-02-28 16:18:30','50.0000',''),(9,'KF201322821305216',NULL,'43','金刀峡门票','50.0000',1,'2013-02-28 21:30:52','50.0000',''),(10,'KF201322821311916',NULL,'43','金刀峡门票','50.0000',1,'2013-02-28 21:31:19','50.0000',''),(11,'KF201322821335016',NULL,'43','金刀峡门票','50.0000',1,'2013-02-28 21:33:50','50.0000',''),(12,'KF201322821341216',NULL,'43','金刀峡门票','50.0000',1,'2013-02-28 21:34:12','50.0000',''),(17,'RC20151291742401589','20','6','流溪别院','100.2000',72,'2015-01-29 17:42:40','7214.4000','\0'),(18,'RC20151291746201434','20','6','流溪别院','100.2000',72,'2015-01-29 17:46:20','7214.4000','\0'),(19,'RC2015130125191623','20','6','流溪别院','100.2000',12,'2015-01-30 12:05:19','1202.4000','\0'),(20,'RC20151311716151662','20','6','三片四组刀','100.2000',2,'2015-01-31 17:16:15','200.4000','\0'),(21,'RC20151311716151662','20','8','四片四组刀','55.0000',3,'2015-01-31 17:16:15','165.0000','\0'),(22,'RC201502041152141376','20','8','四片四组刀','55.0000',10,'2015-02-04 11:52:15','550.0000','\0'),(23,'RC201502041350101099','20','12','三片四组旱地刀/32六方/整体轴/未装配','112.0000',2,'2015-02-04 13:50:10','224.0000','\0'),(24,'RC201502041350101099','20','13','三片四组旱地刀/32六方/整体轴/装配','125.0000',3,'2015-02-04 13:50:10','375.0000','\0'),(25,'RC201502041432511950','20','12','三片四组旱地刀/32六方/整体轴/未装配','112.0000',4,'2015-02-04 14:32:51','448.0000','\0'),(26,'RC201502041432511950','20','13','三片四组旱地刀/32六方/整体轴/装配','125.0000',2,'2015-02-04 14:32:51','250.0000','\0'),(29,'RC201502061629591710','20','8','四片四组刀','55.0000',2,'2015-02-06 16:29:59','110.0000','\0'),(30,'RC201502061636061582','20','8','四片四组刀','55.0000',5,'2015-02-06 16:36:06','275.0000','\0');

/*Table structure for table `orderlist_c` */

DROP TABLE IF EXISTS `orderlist_c`;

CREATE TABLE `orderlist_c` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `OrderNum` varchar(50) NOT NULL,
  `userid` int(10) DEFAULT NULL,
  `totalmoney` decimal(19,4) DEFAULT NULL,
  `floatmoney` decimal(19,4) DEFAULT NULL,
  `xm` varchar(50) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `payway` varchar(10) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `wuliu` varchar(255) DEFAULT NULL,
  `beizu` varchar(255) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `LastModifytime` timestamp NULL DEFAULT NULL,
  `isDel` bit(1) NOT NULL,
  `refund_status` varchar(255) DEFAULT NULL,
  `addtime` timestamp NULL DEFAULT NULL,
  `refund_status2` varchar(255) DEFAULT NULL,
  `confirmAdminUser` varchar(50) DEFAULT NULL,
  `confirmISuser` tinyint(3) unsigned DEFAULT NULL,
  `confirmTime` timestamp NULL DEFAULT NULL,
  `closeAdminUser` varchar(50) DEFAULT NULL,
  `closeTime` timestamp NULL DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

/*Data for the table `orderlist_c` */

insert  into `orderlist_c`(`ID`,`OrderNum`,`userid`,`totalmoney`,`floatmoney`,`xm`,`mobile`,`tel`,`addr`,`email`,`zipcode`,`payway`,`remark`,`wuliu`,`beizu`,`Status`,`LastModifytime`,`isDel`,`refund_status`,`addtime`,`refund_status2`,`confirmAdminUser`,`confirmISuser`,`confirmTime`,`closeAdminUser`,`closeTime`,`username`) values (46,'RC20151291742401589',20,'7214.4000','-721.4400','张三',NULL,'023-13545678954','重庆市沙坪坝区',NULL,'400081','0','',NULL,NULL,NULL,'2015-01-29 17:42:40','\0','WAIT_BUYER_PAY','2015-01-29 17:42:40',NULL,NULL,0,NULL,NULL,NULL,NULL),(47,'RC20151291746201434',20,'7214.4000','-721.4400','张三',NULL,'023-13545678954','重庆市沙坪坝区',NULL,'400081','0','',NULL,NULL,NULL,'2015-01-29 17:46:21','\0','WAIT_BUYER_PAY','2015-01-29 17:46:21',NULL,NULL,0,NULL,NULL,NULL,NULL),(48,'RC2015130125191623',20,'1202.4000','0.0000','李四',NULL,'15369874156','重庆市沙坪坝区升伟新时空',NULL,'400010','0','ewr',NULL,'er',NULL,'2015-01-31 13:43:10','\0','TRADE_FINISHED','2015-01-30 12:05:20',NULL,NULL,1,'2015-01-31 12:31:25',NULL,NULL,NULL),(49,'RC20151311716151662',20,'365.4000','-36.5400','李四1',NULL,'15369874158','重庆市沙坪坝区升伟新时空1',NULL,'400011','0','',NULL,NULL,NULL,'2015-01-31 17:16:15','\0','WAIT_BUYER_PAY','2015-01-31 17:16:15',NULL,NULL,0,NULL,NULL,NULL,NULL),(50,'RC201502041152141376',20,'550.0000','-55.0000','李四1',NULL,'15369874158','重庆市沙坪坝区升伟新时空1',NULL,'400011','0','',NULL,NULL,NULL,'2015-02-04 11:52:15','\0','WAIT_BUYER_PAY','2015-02-04 11:52:15',NULL,NULL,0,NULL,NULL,NULL,NULL),(51,'RC201502041350101099',20,'599.0000','-59.9000','李四1',NULL,'15369874158','重庆市沙坪坝区升伟新时空1',NULL,'400011','0','',NULL,NULL,NULL,'2015-02-04 13:50:10','\0','WAIT_BUYER_PAY','2015-02-04 13:50:10',NULL,NULL,0,NULL,NULL,NULL,NULL),(52,'RC201502041432511950',20,'698.0000','0.0000','李四1',NULL,'15369874158','重庆市沙坪坝区升伟新时空1',NULL,'400011','0','客户附言',NULL,'订单备注',NULL,'2015-02-04 15:33:44','\0','TRADE_FINISHED','2015-02-04 14:32:51',NULL,NULL,1,'2015-02-04 14:38:05',NULL,NULL,NULL),(53,'RC201502061629591710',20,'110.0000','-11.0000','李四1',NULL,'15369874158','重庆市沙坪坝区升伟新时空1',NULL,'400011','0','',NULL,'',NULL,'2015-02-06 16:29:59','\0','WAIT_BUYER_PAY','2015-02-06 16:29:59',NULL,NULL,0,NULL,NULL,NULL,NULL),(54,'RC201502061636061582',20,'275.0000','-27.5000','李四1',NULL,'15369874158','重庆市沙坪坝区升伟新时空1',NULL,'400011','0','爱你的',NULL,'客户建议物流公司名称：华宇物流    电话：234324343424',NULL,'2015-02-06 16:36:07','\0','WAIT_BUYER_PAY','2015-02-06 16:36:07',NULL,NULL,0,NULL,NULL,NULL,NULL);

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `permissionLevel` int(10) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `permission` */

insert  into `permission`(`ID`,`permissionLevel`) values (1,NULL);

/*Table structure for table `photos` */

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `modeltype` int(10) DEFAULT NULL,
  `videourl` varchar(255) DEFAULT NULL,
  `orderid` int(10) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

/*Data for the table `photos` */

insert  into `photos`(`ID`,`rid`,`title`,`imgurl`,`type`,`modeltype`,`videourl`,`orderid`) values (28,6,'测试5','/uploadfiles/UploadFiles/Ad//20130729154064806480.jpg',0,1,'',0),(30,6,'流溪别院测试a','/uploadfiles/UploadFiles/Ad//20130729161823502350.jpg',0,0,'',0),(31,6,'流溪别院测试b','/uploadfiles/UploadFiles/Ad//20130729161885248524.jpg',0,0,'',0),(32,6,'流溪别院测试c','/uploadfiles/UploadFiles/Ad//20130729161931463146.jpg',0,0,'',0),(33,7,'塞纳维三期测试a','/uploadfiles/UploadFiles/Ad//20130729162211451145.jpg',0,0,'',0),(34,7,'塞纳维三期测试b','/uploadfiles/UploadFiles/Ad//20130729162295309530.jpg',0,0,'',0),(35,7,'塞纳维三期测试c','/uploadfiles/UploadFiles/Ad//201307291623003535.jpg',0,0,'',0),(37,8,'溪流丽园测试b','/uploadfiles/UploadFiles/Ad//20130729162957715771.jpg',0,0,'',0),(38,8,'溪流丽园测试c','/uploadfiles/UploadFiles/Ad//20130729162912231223.jpg',0,0,'',0),(39,9,'青年国际测试a','/uploadfiles/UploadFiles/Ad//20130729163457745774.jpg',0,0,'',0),(40,9,'青年国际测试b','/uploadfiles/UploadFiles/Ad//20130729163419351935.jpg',0,0,'',0),(41,6,'测试1','/uploadfiles/UploadFiles/Ad//20130729171484358435.png',1,0,'/uploadfiles/UploadFiles/Ad/5320ff6e5cf2437da916ede972b5f77b.flv',0),(42,6,'测试','/uploadfiles/UploadFiles/Ad//20130729171311241124.png',1,0,'/uploadfiles/UploadFiles/Ad//20130729170954785478.flv',0),(43,9,'测试1','/uploadfiles/UploadFiles/Ad//20130729171982458245.jpg',0,1,'',0),(44,9,'测试2','/uploadfiles/UploadFiles/Ad//20130729172097619761.jpg',0,1,'',0),(45,9,'测试3','/uploadfiles/UploadFiles/Ad//20130729172068196819.jpg',0,1,'',0),(46,9,'测试4','/uploadfiles/UploadFiles/Ad//20130729172112771277.jpg',0,1,'',0),(47,9,'测试5','/uploadfiles/UploadFiles/Ad//20130729172125992599.jpg',0,1,'',0),(48,6,'测试','/uploadfiles/UploadFiles/Ad//20130729172375397539.jpg',0,1,'',0),(49,6,'测试7','/uploadfiles/UploadFiles/Ad//20130729172430543054.jpg',0,1,'',0),(50,7,'测试2','/uploadfiles/UploadFiles/Ad//2013072917310757757.jpg',0,1,'',0),(51,6,'测试2','/uploadfiles/UploadFiles/Ad//20130729173142294229.jpg',0,1,'',0),(52,6,'测试3','/uploadfiles/UploadFiles/Ad//20130729173281848184.jpg',0,1,'',0),(53,6,'测试4','/uploadfiles/UploadFiles/Ad//20130729173260436043.jpg',0,1,'',0),(54,6,'测试5','/uploadfiles/UploadFiles/Ad//20130729173296639663.jpg',0,1,'',0),(55,7,'测试','/uploadfiles/UploadFiles/Ad//20130729173794339433.jpg',0,1,'',0),(56,6,'测试44','/uploadfiles/UploadFiles/Ad//20130729173785048504.jpg',0,1,'',0),(57,8,'测试555','/uploadfiles/UploadFiles/Ad//20130729173789918991.jpg',0,1,'',0),(58,8,'测试65','/uploadfiles/UploadFiles/Ad//2013072917370525525.jpg',0,1,'',0),(59,6,'测试76','/uploadfiles/UploadFiles/Ad//2013072917380769769.jpg',0,1,'',0);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `cateid` int(10) DEFAULT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Content` text,
  `Author` varchar(50) DEFAULT NULL,
  `ComeFrom` varchar(50) DEFAULT NULL,
  `PostTime` timestamp NULL DEFAULT NULL,
  `Hits` int(10) DEFAULT NULL,
  `DefaultPicUrl` varchar(100) DEFAULT NULL,
  `UploadFiles` text,
  `IncludePic` bit(1) NOT NULL,
  `Elite` bit(1) NOT NULL,
  `Passed` bit(1) NOT NULL,
  `isDel` bit(1) NOT NULL,
  `px` int(10) DEFAULT NULL,
  `videoUrl` varchar(255) DEFAULT NULL,
  `fileUrl` varchar(255) DEFAULT NULL,
  `lastupdate` timestamp NULL DEFAULT NULL,
  `orderID` int(10) DEFAULT NULL,
  `comments` int(10) DEFAULT NULL,
  `content_zy` varchar(255) DEFAULT NULL,
  `price` decimal(19,4) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`ID`,`cateid`,`Title`,`Color`,`Content`,`Author`,`ComeFrom`,`PostTime`,`Hits`,`DefaultPicUrl`,`UploadFiles`,`IncludePic`,`Elite`,`Passed`,`isDel`,`px`,`videoUrl`,`fileUrl`,`lastupdate`,`orderID`,`comments`,`content_zy`,`price`) values (1,4,'ewrwerwe','','dsffsdfsdfsdf','pengteling','','2013-07-03 17:55:56',0,'images/nopic.jpg','','','\0','','',0,NULL,NULL,'2013-07-03 17:56:04',NULL,NULL,'werwerwerwer','11.0000'),(2,4,'ewrwer','','wererwerwerer','pengteling','','2013-07-03 18:02:14',0,'images/nopic.jpg','','','\0','','',0,NULL,NULL,'2013-07-03 18:02:22',NULL,NULL,'','22.0000'),(3,4,'楼盘名称','','<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 宗申地产在重庆拥有包括二郎、一品等区域的多块储备土地，可开发用地已接近3000亩，由此可见，咱们宗申地产的经营实力是非常雄厚的，发展前景也是非常看好的；在地产行业准入门槛日渐提高的今天，宗申地产厚积薄发，为客户带来了集尊崇享受与精致生活于一体的——宗申•金蓝湾社区。宗申•金蓝湾项目计划于2012年下半年入市销售。\r\n</p>\r\n<p>\r\n	（一）、总体规划、经济指标<br />\r\n&nbsp;宗申•金蓝湾项目总占地12.8万平米，总建筑面积28万平米，容积率仅1.69，绿地率超过35%，规划户数 1737户，由三个地块组成，包含14栋观江高层、4栋退台式景观洋房、16栋精致联排、叠拼别墅、1栋公寓，4栋独立商业，1个配套幼儿园。打造的是重庆稀缺的低密度、高绿化、高舒适度的，集居住、休闲功能为一体的大型高尚社区。<br />\r\n&nbsp;宗申•金蓝湾项目因地制宜,在产品规划、产品景观、户型设计上都有与众不同的品味和特色,宗申地产的目标就是将其打造为渝南区域首屈一指的精品项目。\r\n</p>\r\n<p>\r\n	（二）、区域规划、区位价值<br />\r\n&nbsp;金蓝湾项目位于渝南巴滨路上。北面紧邻融汇半岛；西依巴滨路，与九龙坡区隔长江相望；南至龙洲湾新区。拥有渝南得天独厚的山水优势。巴滨路作为亲水休闲功能性极强的滨江路，沿岸打造了3大生态公园，分别为占地约350亩的杨村凼生态公园、花溪河口湿地公园及占地约120亩，集商务、休闲于一体的巴南新天地。此外，巴南区政府还将在滨江沿线修建约2万平米的龙州湾滨江休闲广场、占地约200亩的巴文化主题公园。<br />\r\n&nbsp;时至今日，重庆城市向南大势所趋。未来几年，渝南商圈将打造成为重庆第七大商圈。2012—2015年，巴南区政府会投入60亿元打造重庆南部交通枢纽，今年初巴滨路已全线通车，全长18.3公里的双向四车道将直接连通鱼洞和南滨路，只需要10分钟即可到达南坪、九龙坡、渝中商圈。轻轨三号线更是可以快速到达江北机场乃至全国各地，使巴南成为重庆最畅通的城区，一如几年前的渝北新牌坊、冉家坝，正以不可阻挡的发展势头阔步向前，成为重庆楼市又一宜居新高地。目前，重庆的滨江物业越来越稀缺，而宗申•金蓝湾肯定是值得您期待的项目。\r\n</p>\r\n<p>\r\n	（三）、项目景观、户型配比<br />\r\n&nbsp;宗申•金蓝湾最大的特色之一就是直面长江，建设用地错落有致，地块高度从191米到230米，中间有接近40米的梯级高差，属绝版类型。自然景观资源无可比拟，让各个楼栋均能俯瞰长江。<br />\r\n&nbsp;宗申•金蓝湾在建筑设计上依托天然优势，形成园林式居家的规划格局，利用地块内部高差和自然的地形地貌特色，使建筑与500多米长的长江水岸线资源巧妙融合，依山就势，合理布局，使江景视廊得以最大化呈现出一个极具韵律的多层次滨江生活空间。<br />\r\n&nbsp;宗申•金蓝湾在景观上充分运用喷泉、叠泉、小品、水体、柱廊、雕塑等西式造园手法来组景、选景、点景。树种花卉选择与组团命名配合，创造“一组一景一意”的风格，以丰富社区的园林文化氛围。<br />\r\n&nbsp;宗申•金蓝湾项目户型套内面积60-190㎡，多种户型供客户选择。\r\n</p>','pengteling','','2013-07-04 09:54:50',0,'images/house_list.jpg','/uploadfiles/image/20130704/20130704164511091109.jpg|/uploadfiles/image/20130704/20130704164579767976.jpg|/uploadfiles/image/20130705/20130705103855695569.jpg|/uploadfiles/image/20130705/20130705103855405540.jpg|/uploadfiles/image/20130705/20130705103823032303.jpg|/uploadfiles/image/20130705/20130705103827632763.jpg|/uploadfiles/image/20130705/20130705103824372437.jpg|','','\0','','',0,NULL,NULL,'2013-07-04 09:55:28',NULL,NULL,'<p>\r\n	这里是租售信息哦\r\n</p>','33.0000'),(6,5,'三片四组刀','','&nbsp; 宗申·流溪别院位于双流县城区广都大道和电视塔路交汇处。系城区商业、娱乐、高档住宅的中心地带，区 域环境幽静、交通便捷，距双流新、老川藏路、绕城路、双流国际机场、国际高尔夫球场仅几分钟车程。周边配套应有尽有。距双流人民广场、棠湖活水公园、银行、学校、超市、医院、菜市仅一步之遥。<br />\r\n&nbsp;&nbsp;小区人车分流、动静分区、小桥流水、绿廊亭阁、生态园区、人文景观、儿童嬉戏天地自然天成，构成了一幅立体绚丽的动人画卷。<br />\r\n&nbsp;&nbsp;宗申•流溪别院四期采用北美现代设计风格，充分考虑人的视觉感受和参与性，园林布局有序而灵动，文化小品、健身场所与植物水景自然天成，形成道在绿中、房在园中、花在丛中、人在景中的景致。处处流露出风情、浪漫与舒适……！','','','2013-07-11 17:01:31',0,'/uploadfiles/image/20150128/20150128130223992399.jpg','/uploadfiles/image/20130711/20130711171024662466.jpg|/uploadfiles/image/20130711/20130711171131773177.jpg|/uploadfiles/image/20130711/20130711171139343934.jpg|','','\0','','\0',0,NULL,NULL,'2013-07-11 17:07:47',NULL,NULL,'','100.2000'),(7,4,'宗申.赛纳维三期','','<p style=\"text-indent:2em;\">\r\n	<p>\r\n		宗申.赛纳维三期——【赛纳峰汇】位于成都的西南方向，集“西贵”、“南富”荣耀于一身。距成都市区仅12公里，距离双流机场候机楼直线距离2公里，距离世界高端品牌折扣店时代奥特莱斯仅800米。双楠大道、免费机场通道临港路（5分钟车程到机场）、绕城高速、地铁3号线、成绵乐城际列车等构筑成立体便捷的网络交通格局，无缝对接成都与双流。项目的独有地段还受到临港经济圈的巨大优势影响，同天府新区一起享有政策扶持。周边特有的商圈优势，时代奥特莱斯、奔驰等品牌4S店集群、金恒德汽配广场、世代积家家具城、八一家具城、中国女鞋之都、红星美凯龙等等，互为影响，共享人气与财富，成为焦点汇聚的投资商务港，占尽天时地利人和。写字楼仅268席财智席位，低总价，大生意，抢占天府新区发展先机。公寓有小空间，大功能，低总价优势，享大社区配套，商业贷款不受限制，投资自住两相宜。50-400平方米传世临街金铺，经营业态无限制，科学合理的开间进深比，让您坐拥财富之地。\r\n	</p>\r\n<span style=\"font-family:宋体;font-size:10.5pt;\"></span> \r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		宗申•赛纳维作为“中国西南门户、成都国际南城”——双流新城的重点建设项目，宗申集团致力于将其打造成成都西南片区乃至“中国空港第四城”的代表之作。项目所在地的老川藏路是连接成都与双流的主动脉，宗申•赛纳维已然成为双流与成都主城区无缝对接的东向门户，同时作为东升版块首席国际空港商务城邦，其自身的辐射能量将足以营造一个全新的区域商业核心，引领一种全新的、国际化的、面向未来的生活方式。目前进入规划建设的成绵乐城际高速铁路、地铁3号线均途径项目所在片区，一个便捷的立体交通网络正在成形。项目周边的奥特莱斯国际品牌折扣商城、川投国际网球赛事中心、谢菲联足球公园也为项目提供国际化、多元化的生活配套。宗申•赛纳维项目将秉承宗申集团一贯的“精良制造”理念，为本地市场呈现又一独具特色的品质大盘。“宗申•赛纳维”法式高档社区静泊于环境宜人的成都双流新城，紧邻老川藏路（成双大道）和双楠大道，距成都市区仅12公里，项\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		学校: 双流中学、棠湖中学、棠湖外国语学校、成都译华外国语学校\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		综合商场: 好又多超市、眀诚百货、九龙仓奥特莱斯名品折扣店\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		医院: 双流县第一人民医院、双流县第二人民医院、双流县中医院、武侯区第五人民医院\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		其他:最世界商业广场\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		3000余㎡的会所，设有咖啡吧、酒吧、健身房等休闲娱乐设施。\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		小区内设游泳池、网球场、篮球场、羽毛球场等运动设施，6班幼儿园及社区医务室\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		小区配套： 会所 游泳池 网球场 篮球场 &nbsp;\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		<span style=\"font-family:宋体;font-size:10.5pt;\"></span>&nbsp;\r\n	</p>','jingjing','','2013-07-11 17:11:48',0,'/uploadfiles/image/20130711/20130711171348174817.jpg','/uploadfiles/image/20130711/20130711171349634963.jpg|/uploadfiles/image/20130711/20130711171360596059.jpg|/uploadfiles/image/20130711/20130711171398999899.jpg|','','\0','','\0',0,NULL,NULL,'2013-07-11 17:13:28',NULL,NULL,'<p style=\"text-indent:2em;\">\r\n	宗申•赛纳维作为“中国西南门户、成都国际南城”——双流新城的重点建设项目，宗申集团致力于将其打造成成都西南片区乃至“中国空港第四城”的代表之作。项目所在地的老川藏路是连接成都与双流的主动脉，宗申•赛纳维已然成为双流与成都主城区无缝对接的东向门户，同时作为东升版块首席国际空港商务城邦，其自身的辐射能量将足以营造一个全新的区域商业核心，引领一种全新的、国际化的、面向未来的生活方式。目前进入规划建设的成绵乐城际高速铁路、地铁3号线均途径项目所在片区，','44.0000'),(8,5,'四片四组刀','','<p>\r\n	基本信息\r\n</p>\r\n<p>\r\n	行政区域：双流\r\n</p>\r\n<p>\r\n	区域板块：航空港板块\r\n</p>\r\n<p>\r\n	项目位置：成都双流县航空港长江路一段8号\r\n</p>\r\n<p>\r\n	方位： &nbsp;外环外建筑\r\n</p>\r\n<p>\r\n	类型：多层;\r\n</p>\r\n<p>\r\n	物业类别：普通住宅;\r\n</p>\r\n<p>\r\n	开发商：成都诚裕房地产开发有限公司\r\n</p>\r\n<p>\r\n	物业公司：成都红谷物业管理有限公司\r\n</p>\r\n<p>\r\n	物业费：0.7-0.7楼盘\r\n</p>\r\n<p>\r\n	特色：教育社区,观景居所\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	详细信息\r\n</p>\r\n<p>\r\n	容积率：1.83绿化率：42%得房率：90%饮用水：城市水网总户数：649建筑面积：85340平方米占地面积：46690平方米基本参数：容积率:1.83<br />\r\n绿化率:42%<br />\r\n物业管理:成都红谷物业管理有限公司<br />\r\n车位配比: 1:1.67<br />\r\n占地面积:46690平方米<br />\r\n总建筑面积:85340平方米<br />\r\n规划户数:649户<br />\r\n社区规模（住宅、酒店式公寓）:超大(&gt;30万);<br />\r\n得房率:90%<br />\r\n建筑施工单位:彭州第八建设公司<br />\r\n销售代理:自销<br />\r\n四周道路:东:农田;南:规划用地;西:长江路;北:临港路;<br />\r\n物业管理费:多层:0.7;<br />\r\n车位数:地下434个;\r\n</p>\r\n<p>\r\n	<s class=\"icon6\"></s>配套信息\r\n</p>\r\n<p>\r\n	周边配套：标志建筑:无<br />\r\n公园绿化:无自然景观:江安河<br />\r\n就医条件:警官医院<br />\r\n就学条件:成都信息工程学院、棠湖外国语实验学校<br />\r\n商业环境:无<br />\r\n内部配套：0,0车位数：车位数:地下434个;车位配比：0.6车库配置：车辆智能化监控系统周边商业：无周边景观：小区中央喷泉,假山绿荫小亭周边公园：无周边医院：警官医院周边学校：成都信息工程学院、棠湖外国语实验学校\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>','','','2013-07-11 17:16:02',0,'/uploadfiles/image/20130711/20130711171852815281.jpg','/uploadfiles/image/20130711/20130711171840744074.jpg|/uploadfiles/image/20130711/20130711171849774977.jpg|/uploadfiles/image/20130711/20130711171810581058.jpg|/uploadfiles/image/20130711/20130711171886548654.jpg|/uploadfiles/image/20130711/20130711171897209720.jpg|/uploadfiles/image/20130711/20130711171869316931.jpg|','','\0','','\0',0,NULL,NULL,'2013-07-11 17:18:15',NULL,NULL,'','55.0000'),(9,4,'宗申青年国际','','<p>\r\n	宗申青年国际位于巴南区炒油场，是占地45739㎡，总建筑面积162266.66㎡的居住社区，项目总体规划设计在立足于本地经济社会发展状况的基础上体现出: 居住人性化、环境生态化、建筑现代化、管理智能化四大特点。该工程建成后将成为集居住、商业、景观、休闲为一体的，配套完善的，具有高规划起点，高品位水准，高建设档次的住宅小区。\r\n</p>\r\n<p>\r\n	轨道立体捷运系统——轻轨炒油场站门口，十分钟南坪都市生活\r\n</p>\r\n<p>\r\n	是否实现轨道化交通，是评价青年社区一个重要标准，否则难以满足青年族群繁忙的大都市工作要求。把握时间就是把握无限可能。坐拥3号线轻轨，站点即在家门口，实现10分钟畅游南坪都市生活圈的便捷。更兼有纵横路网，首席复式立体交通构建青年晋升直达通路。\r\n</p>\r\n<p>\r\n	立体生活配套系统 ——约8000 m²商业规划及宗申小学，生活教育无忧\r\n</p>\r\n<p>\r\n	具有价值导向的公寓，必然具有全面完善的生活配套设施。宗申•青年国际以动力城项目自带的小学配套、区域最为集中的中百超市等约8000m2商超规划，成为该区域立体生活配套的高水准住宅小区，并晋升为该区域具有价值导向的典范楼盘。\r\n</p>\r\n<p>\r\n	五重纯氧空间系统——南山、花溪河、高尔夫、音乐广场及内部景致园林\r\n</p>\r\n<p>\r\n	当传统的认识依然把自然恩赐的乐土作为豪宅专属的时候，宗申•青年国际就诞生在高尔夫、溪流、森林围合的南山脚下。180度3公里南山全景观线、1200亩高尔夫景观、800米花溪河水景、家门口的市政音乐广场精致景观，非但生态指数一流，更有“内园景、外山林”的开放式复合田园景观，创始21世纪青年自然生活。\r\n</p>\r\n<p>\r\n	青年有氧运动系统——羽毛球场、篮球场等高标准设施媲美校园\r\n</p>\r\n<p>\r\n	青年热衷运动，而大多数社区则仅具有康乐设施满足基本的活动功能。宗申•青年国际摒弃廉价的“活动空间”，高标准建设拥有街霸篮球、傍山步道及羽毛球场等设施的运动场所，令有限空间资源完享媲美校园的“运动空间”。\r\n</p>\r\n<p>\r\n	智能网络社区系统¬¬¬——特设WIFI无线网络沟通空间，社区智能化管理\r\n</p>\r\n<p>\r\n	宗申青年国际将在公共空间特别设置WIFI覆盖区，满足青年移动上网需求，同时，将以领先科技建设智能管理终端硬件，实现社区智能化管理、社区公共信息发布、社区网络平台商品配送等延伸服务，引领社区管理新模式。\r\n</p>\r\n<p>\r\n	可变高效空间系统——高效空间，户型可变性大，性价比高\r\n</p>\r\n<p>\r\n	一房变两房，两房变三房，不仅奢享通透阳光的幸福生活点滴，还能轻松应对家庭功能升级。\r\n</p>\r\n<p>\r\n	为青年量身定制的紧凑可变小户型，多方位呈现族群对于空间变换与使用多功能的考虑。弹性前卫，体验空间革命的幸福生活成就感。低总价、低首付，高性价比，舒适生活安然在握。\r\n</p>\r\n<p>\r\n	青年主题派对系统——新加坡专属青年会所，“碎片时间”派对休闲区\r\n</p>\r\n<p>\r\n	如果我们的配套只为了满足生活所需，就会与其他社区无异，理念先行，一直是我们建屋的基本准则。在满足生活需求的基础上，着重考量青年群体特性，在设计新加坡式专属青年会所之外，创造性规划“碎片时间”青年主题派对休闲区。\r\n</p>\r\n<p>\r\n	青年专属服务系统 —— 洞察青春，度身定制新一代酒店级物业服务体系\r\n</p>\r\n<p>\r\n	宗申青年国际汲取国内外先进物业服务模式，针对物业服务和青年业主的群体特性，自主研发出新一代酒店级物业服务体系。通过业主数据库将业主的需求进行整合和主动性分析后，既可提供整体服务，又能兼顾个性化需求的服务系统。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	&nbsp;相关信息\r\n	<p>\r\n		占地面积:45739平方米\r\n	</p>\r\n	<p>\r\n		建筑面积:162266平方米\r\n	</p>\r\n	<p>\r\n		开工时间:2010-09-01\r\n	</p>\r\n	<p>\r\n		竣工时间:2014-08-01\r\n	</p>\r\n	<p>\r\n		物业管理附加信息:高层住宅：1.4元/月·平方米\r\n	</p>\r\n	<p>\r\n		开发商:重庆宗申天润地产有限公司\r\n	</p>\r\n	<p>\r\n		代理商:重庆金石联业房地产营销有限公司\r\n	</p>\r\n	<p>\r\n		物业管理公司:重庆天源物业管理有限公司\r\n	</p>\r\n	<p>\r\n		按揭银行:中国建设银行,华夏银行\r\n	</p>\r\n	<p>\r\n		工程进度:地上 层(2013-07-12)\r\n	</p>\r\n	<p>\r\n		产权年限:50年\r\n	</p>\r\n	<p>\r\n		户 数:总户数1761户 当期户数192户\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>','pengteling','','2013-07-16 16:59:09',0,'/uploadfiles/image/20130716/20130716171490519051.jpg','/uploadfiles/image/20130716/20130716171638833883.jpg|/uploadfiles/image/20130716/20130716171684848484.jpg|/uploadfiles/image/20130716/20130716171633353335.jpg|/uploadfiles/image/20130716/20130716171666436643.jpg|/uploadfiles/image/20130716/20130716171685068506.jpg|/uploadfiles/image/20130716/20130716171621862186.jpg|/uploadfiles/image/20130716/20130716171665776577.jpg|','','\0','','\0',0,NULL,NULL,'2013-07-16 17:14:36',NULL,NULL,'<p>\r\n	暂无相关信息\r\n</p>','66.0000'),(12,49,'三片四组旱地刀/32六方/整体轴/未装配','','这是图文详细介绍','','','2015-02-04 12:52:13',NULL,'/images/user_index_p_pic.jpg','','','\0','','\0',0,NULL,NULL,NULL,NULL,NULL,'','112.0000'),(13,49,'三片四组旱地刀/32六方/整体轴/装配','','这是详细内容','','','2015-02-04 12:52:13',NULL,'/images/user_index_p_pic.jpg','','','\0','','\0',0,NULL,NULL,NULL,NULL,NULL,'','125.0000');

/*Table structure for table `product2` */

DROP TABLE IF EXISTS `product2`;

CREATE TABLE `product2` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `cateid` int(10) DEFAULT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Content` text,
  `Author` varchar(50) DEFAULT NULL,
  `ComeFrom` varchar(50) DEFAULT NULL,
  `PostTime` timestamp NULL DEFAULT NULL,
  `Hits` int(10) DEFAULT NULL,
  `DefaultPicUrl` varchar(100) DEFAULT NULL,
  `UploadFiles` text,
  `IncludePic` bit(1) NOT NULL,
  `Elite` bit(1) NOT NULL,
  `Passed` bit(1) NOT NULL,
  `isDel` bit(1) NOT NULL,
  `px` int(10) DEFAULT NULL,
  `videoUrl` varchar(255) DEFAULT NULL,
  `fileUrl` varchar(255) DEFAULT NULL,
  `lastupdate` timestamp NULL DEFAULT NULL,
  `orderID` int(10) DEFAULT NULL,
  `comments` int(10) DEFAULT NULL,
  `content_zy` varchar(255) DEFAULT NULL,
  `fx` varchar(255) DEFAULT NULL,
  `sj` varchar(255) DEFAULT NULL,
  `zx` varchar(255) DEFAULT NULL,
  `yt` varchar(255) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `hx` varchar(255) DEFAULT NULL,
  `xmlogo` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `product2` */

insert  into `product2`(`ID`,`cateid`,`Title`,`Color`,`Content`,`Author`,`ComeFrom`,`PostTime`,`Hits`,`DefaultPicUrl`,`UploadFiles`,`IncludePic`,`Elite`,`Passed`,`isDel`,`px`,`videoUrl`,`fileUrl`,`lastupdate`,`orderID`,`comments`,`content_zy`,`fx`,`sj`,`zx`,`yt`,`price`,`hx`,`xmlogo`,`tel`,`area`) values (2,224,'wererwerer','','ewrwerwerwer','pengteling','','2013-07-16 10:54:14',0,'images/nopic.jpg','','','\0','','',0,NULL,NULL,'2013-07-16 10:55:49',NULL,NULL,'werwerwerwerwer',NULL,NULL,NULL,NULL,50000,NULL,'images/Nopic.jpg','34234234',NULL),(3,224,'宗申.赛纳维三期','','ewrwer','jingjing','','2013-07-16 12:26:35',0,'/uploadfiles/image/20130719/20130719112165726572.jpg','/uploadfiles/image/20130719/2013071911210574574.jpg|/uploadfiles/image/20130719/20130719112148454845.jpg|','','\0','','\0',0,NULL,NULL,'2013-07-16 12:26:50',NULL,NULL,'wererer','一居',NULL,'毛坯','高层住宅',50000,'1室1厅1厨1卫','images/Nopic.jpg','','34'),(4,224,'宗申.赛纳维三期','','errwerwerwer','jingjing','','2013-07-16 12:27:48',0,'/uploadfiles/image/20130719/20130719112039063906.jpg','/uploadfiles/image/20130719/20130719112160856085.jpg|/uploadfiles/image/20130719/20130719112113671367.jpg|','','\0','','\0',0,NULL,NULL,'2013-07-16 12:27:58',NULL,NULL,'werwerwerwer','二居',NULL,'毛坯','高层住宅',60,'2室1厅1厨1卫','images/Nopic.jpg','','34'),(5,219,'宗申青年国际','','werwerwerwerwerwerwerwer','jingjing','','2013-07-16 14:04:34',0,'/uploadfiles/image/20130719/20130719112093939393.jpg','/uploadfiles/image/20130719/20130719112074927492.jpg|/uploadfiles/image/20130719/2013071911200219219.jpg|/uploadfiles/image/20130719/2013071911200649649.jpg|','','\0','','\0',0,NULL,NULL,'2013-07-16 14:05:35',NULL,NULL,'werwerwerwerwerwerwerer','一居',NULL,'毛坯','高层住宅',1000,'3室3厅2厨2卫','images/Nopic.jpg','','89'),(7,219,'流溪别院','','3','pengteling','','2013-07-16 14:50:30',0,'/uploadfiles/image/20130719/20130719111951405140.jpg','/uploadfiles/image/20130719/20130719111935213521.jpg|/uploadfiles/image/20130719/20130719111939813981.jpg|','','\0','','\0',0,NULL,NULL,'2013-07-16 14:50:52',NULL,NULL,'4','三居',NULL,'毛坯','高层住宅',2000,'3室1厅1厨1卫','images/Nopic.jpg','','5'),(8,224,'流溪丽园','','4','jingjing','','2013-07-16 14:51:50',0,'/uploadfiles/image/20130719/2013071911180971971.jpg','/uploadfiles/image/20130719/20130719111985118511.jpg|/uploadfiles/image/20130719/20130719111931703170.jpg|','','\0','','\0',0,NULL,NULL,'2013-07-16 14:51:56',NULL,NULL,'5','五居',NULL,'毛坯','高层住宅',400000,'1室1厅1厨1卫','images/Nopic.jpg','','3'),(9,224,'宗申青年国际','','<p>\r\n	4\r\n</p>\r\n<p>\r\n	内容区\r\n</p>\r\n<p>\r\n	内容区\r\n</p>\r\n<p>\r\n	内容区\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>','gyc','','2013-07-16 14:52:35',0,'/uploadfiles/image/20130719/2013071911160950950.jpg','/uploadfiles/image/20130719/20130719111766186618.jpg|/uploadfiles/image/20130719/20130719111764546454.jpg|/uploadfiles/image/20130719/20130719111779987998.jpg|','','\0','','\0',0,NULL,NULL,'2013-07-16 14:52:40',NULL,NULL,'<p>\r\n	5\r\n</p>\r\n<p>\r\n	内容区\r\n</p>\r\n<p>\r\n	内容区内容区内容区\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>','三居',NULL,'普通装修','车位',200000,'3室3厅3厨3卫','images/Nopic.jpg','','3');

/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `cateid` int(10) DEFAULT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Content` text,
  `Author` varchar(50) DEFAULT NULL,
  `ComeFrom` varchar(50) DEFAULT NULL,
  `PostTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Hits` int(10) DEFAULT NULL,
  `DefaultPicUrl` varchar(100) DEFAULT NULL,
  `UploadFiles` text,
  `IncludePic` bit(1) NOT NULL,
  `Elite` bit(1) NOT NULL,
  `Passed` bit(1) NOT NULL,
  `isDel` bit(1) NOT NULL,
  `px` int(10) DEFAULT NULL,
  `lastupdate` timestamp NULL DEFAULT NULL,
  `orderID` int(10) DEFAULT NULL,
  `comments` int(10) DEFAULT NULL,
  `content_zy` varchar(255) DEFAULT NULL,
  `dynamicUrl` varchar(255) DEFAULT NULL,
  `staticUrl` varchar(255) DEFAULT NULL,
  `firstChar` char(1) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `types` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `qqurl` varchar(255) DEFAULT NULL,
  `weibo` varchar(255) DEFAULT NULL,
  `keys` varchar(255) DEFAULT NULL,
  `reurl` varchar(255) DEFAULT NULL,
  `perday` decimal(18,0) DEFAULT NULL,
  `perweek` decimal(18,0) DEFAULT NULL,
  `permonth` decimal(18,0) DEFAULT NULL,
  `content1` text,
  `content2` text,
  `content3` text,
  `content4` text,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PK_writers` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `project` */

insert  into `project`(`ID`,`cateid`,`Title`,`Color`,`Content`,`Author`,`ComeFrom`,`PostTime`,`Hits`,`DefaultPicUrl`,`UploadFiles`,`IncludePic`,`Elite`,`Passed`,`isDel`,`px`,`lastupdate`,`orderID`,`comments`,`content_zy`,`dynamicUrl`,`staticUrl`,`firstChar`,`area`,`types`,`job`,`qqurl`,`weibo`,`keys`,`reurl`,`perday`,`perweek`,`permonth`,`content1`,`content2`,`content3`,`content4`) values (5,237,'美源美源','','<span>项目板块：建筑设计</span> <span>专业领域：商业/办公建筑</span> <span>案例地区：福建</span> <span>交易模式：聘请</span> <span>项目金额：1200000 元</span> <span>项目规模：中型（1-4万平米）</span> <span>设计阶段：施工图设计</span> <span>项目专业：建筑专业 ... 办公建筑</span>','','','2016-05-24 16:56:05',40,'images/xm-pic-1.jpg','/uploadfiles/image/20160524/20160524171448834883.jpg|/uploadfiles/image/20160524/20160524171498979897.jpg|','','\0','','\0',0,NULL,NULL,NULL,'',NULL,NULL,'','','',NULL,'http://player.youku.com/embed/XODcwNzIyMDky','http://player.youku.com/embed/XODcwNzIyMDky','',NULL,'0','0','0','设计理念<br />\r\n该项目以基地特色及消费者流线为主要切入点，通过丰富的建筑形体变化为商业街带来全新的视觉焦点，通过对客流的合理组织，使得建筑内部功能在高峰期间仍能保证建筑空间的舒适。该项目以基地特色及消费者流线为主要切入点，通过丰富的建筑形体变化为商业街带来全新的视觉焦点，通过对客流的合理组织，使得建筑内部功能在高峰期间仍能保证建筑空间的舒适。','','',''),(6,237,'美源美源','','<p>\r\n	项目板块：建筑设计&nbsp;\r\n</p>\r\n<p>\r\n	专业领域：商业/办公建筑\r\n</p>\r\n<p>\r\n	案例地区：福建&nbsp;\r\n</p>\r\n<p>\r\n	交易模式：聘请&nbsp;\r\n</p>\r\n<p>\r\n	项目金额：1200000 元&nbsp;\r\n</p>\r\n<p>\r\n	项目规模：中型（1-4万平米）&nbsp;\r\n</p>\r\n<p>\r\n	设计阶段：施工图设计&nbsp;\r\n</p>\r\n<p>\r\n	项目专业：建筑专业 ... 办公建筑 \r\n</p>','','','2016-05-24 16:56:06',36,'images/xm-pic-1.jpg','/uploadfiles/image/20160524/20160524171448834883.jpg|/uploadfiles/image/20160524/20160524171498979897.jpg|','','\0','','\0',0,NULL,NULL,NULL,'',NULL,NULL,'','','',NULL,'http://player.youku.com/embed/XODcwNzIyMDky','http://player.youku.com/embed/XODcwNzIyMDky','',NULL,'0','0','0','设计理念<br />','','',''),(8,237,'美源美源','','<span>项目板块：建筑设计</span> <span>专业领域：商业/办公建筑</span> <span>案例地区：福建</span> <span>交易模式：聘请</span> <span>项目金额：1200000 元</span> <span>项目规模：中型（1-4万平米）</span> <span>设计阶段：施工图设计</span> <span>项目专业：建筑专业 ... 办公建筑</span>','','','2016-05-24 16:56:04',27,'images/xm-pic-1.jpg','/uploadfiles/image/20160524/20160524171448834883.jpg|/uploadfiles/image/20160524/20160524171498979897.jpg|','','\0','','\0',0,NULL,NULL,NULL,'',NULL,NULL,'','','',NULL,'http://player.youku.com/embed/XODcwNzIyMDky','http://player.youku.com/embed/XODcwNzIyMDky','',NULL,'0','0','0','设计理念<br />',NULL,NULL,NULL);

/*Table structure for table `reply` */

DROP TABLE IF EXISTS `reply`;

CREATE TABLE `reply` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ltype` int(10) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `content` text,
  `posttime` timestamp NULL DEFAULT NULL,
  `ischeck` bit(1) NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `reply` */

insert  into `reply`(`ID`,`ltype`,`pid`,`username`,`content`,`posttime`,`ischeck`) values (2,1,49,'werwerwer','werwerwerwerwerwer','2013-02-21 12:19:25','\0'),(5,1,49,'werwerwer','werwerwerwerwerwer','2013-02-21 12:21:10',''),(6,1,49,'ewrwer','werwerwerwer','2013-02-21 12:21:44',''),(7,1,49,'&#25105;&#33179;&#20320;','&#25105;&#33179;&#20320;&#25105;&#33179;&#20320;&#25105;&#33179;&#20320;&#25105;&#33179;&#20320;&#25105;&#33179;&#20320;','2013-02-21 15:23:22',''),(8,2,42,'terwer','123456789011112324334','2013-02-25 11:34:34',''),(9,2,42,'&#23458;&#25143;&#35780;&#35770;','&#25151;&#38388;&#35780;&#35770;','2013-02-25 16:42:44','');

/*Table structure for table `user_c` */

DROP TABLE IF EXISTS `user_c`;

CREATE TABLE `user_c` (
  `UserID` int(10) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Question` varchar(50) DEFAULT NULL,
  `Answer` varchar(50) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  `Comane` varchar(50) DEFAULT NULL,
  `Add` varchar(50) DEFAULT NULL,
  `Zip` varchar(50) DEFAULT NULL,
  `Somane` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Fox` varchar(50) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT NULL,
  `LoginIP` varchar(50) DEFAULT NULL,
  `logins` int(10) DEFAULT NULL,
  `Homepage` varchar(50) DEFAULT NULL,
  `LastLoginTime` timestamp NULL DEFAULT NULL,
  `LockUser` bit(1) NOT NULL,
  `IsTJ` bit(1) NOT NULL,
  `UserDemo` text,
  `Points` int(10) DEFAULT NULL,
  `QQID` varchar(32) DEFAULT NULL,
  `access_token_sina` varchar(255) DEFAULT NULL,
  `sinaID` varchar(32) DEFAULT NULL,
  `isthird` bit(1) NOT NULL,
  `job` varchar(255) DEFAULT NULL,
  `isRecive` bit(1) NOT NULL,
  `birthday` timestamp NULL DEFAULT NULL,
  `groupID` int(10) DEFAULT NULL,
  `grouprate` decimal(10,4) DEFAULT NULL,
  `usergroupname` varchar(50) DEFAULT NULL,
  UNIQUE KEY `UserID` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `user_c` */

insert  into `user_c`(`UserID`,`UserName`,`Password`,`Question`,`Answer`,`Email`,`Sex`,`Comane`,`Add`,`Zip`,`Somane`,`Phone`,`Fox`,`RegDate`,`LoginIP`,`logins`,`Homepage`,`LastLoginTime`,`LockUser`,`IsTJ`,`UserDemo`,`Points`,`QQID`,`access_token_sina`,`sinaID`,`isthird`,`job`,`isRecive`,`birthday`,`groupID`,`grouprate`,`usergroupname`) values (39,'G350582199907052013','e58bf77930c081ea',NULL,NULL,NULL,'1','初2015级1班','福建省泉州市磁灶镇大宅村第一组育新东路39号','400039','陈汉荣','15823126160',NULL,'2015-05-21 17:22:08','125.86.102.148',3,NULL,'2015-06-02 12:12:40','\0','\0',NULL,0,'350582199907052013',NULL,NULL,'\0',NULL,'\0','1999-07-05 00:00:00',0,NULL,NULL),(40,'G500103199910136518','62cfe1851aae7f7c',NULL,NULL,NULL,'1','初2015级2班','重庆市九龙坡区石桥铺街道科园六路52号附5号7-1','400039','王启帆','13251372985',NULL,'2015-05-21 17:22:08','125.86.102.29',1,NULL,'2015-05-22 14:55:17','\0','\0',NULL,0,'500103199910136518',NULL,NULL,'\0',NULL,'\0','1999-10-13 00:00:00',0,NULL,NULL),(41,'G500103200002197329','aff8a0c904c0b055',NULL,NULL,NULL,'0','初2015级3班','重庆市九龙坡区石小路1183号1幢2单元21-3','400039','易坤潇','15923291797',NULL,'2015-05-21 17:22:08','125.86.101.72',1,NULL,'2015-05-21 17:22:25','\0','\0',NULL,0,'500103200002197329',NULL,NULL,'\0',NULL,'\0','2000-02-19 00:00:00',0,NULL,NULL);

/*Table structure for table `user_cart` */

DROP TABLE IF EXISTS `user_cart`;

CREATE TABLE `user_cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `shopid` int(10) DEFAULT NULL,
  `shopnum` int(10) DEFAULT NULL,
  `userid` int(10) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__user_car__3213E83F7D439ABD` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `user_cart` */

insert  into `user_cart`(`id`,`shopid`,`shopnum`,`userid`,`property`) values (15,8,5,20,NULL);

/*Table structure for table `user_cart_c` */

DROP TABLE IF EXISTS `user_cart_c`;

CREATE TABLE `user_cart_c` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `shopid` int(10) DEFAULT NULL,
  `shopnum` int(10) DEFAULT NULL,
  `userid` int(10) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  `price` decimal(19,4) DEFAULT NULL,
  `Pname` varchar(250) DEFAULT NULL,
  `pimg` varchar(100) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `user_cart_c` */

insert  into `user_cart_c`(`id`,`shopid`,`shopnum`,`userid`,`property`,`price`,`Pname`,`pimg`) values (15,8,5,20,NULL,'55.0000','四片四组刀','/uploadfiles/image/20130711/20130711171852815281.jpg');

/*Table structure for table `user_group` */

DROP TABLE IF EXISTS `user_group`;

CREATE TABLE `user_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `grouprate` decimal(10,4) DEFAULT NULL,
  `orderid` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK_User_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user_group` */

insert  into `user_group`(`id`,`title`,`grouprate`,`orderid`) values (1,'普通会员','1.0000',1),(2,'VIP','0.9500',2),(3,'SVIP','0.9000',3);

/*Table structure for table `user_order_pay` */

DROP TABLE IF EXISTS `user_order_pay`;

CREATE TABLE `user_order_pay` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderNum` varchar(255) DEFAULT NULL,
  `payway` varchar(50) DEFAULT NULL,
  `isover` int(10) DEFAULT NULL,
  `totalmoney` decimal(19,4) DEFAULT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `bankno` varchar(255) DEFAULT NULL,
  `remark` text,
  `createdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `adminuser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__user_order_pay__1920BF5C` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `user_order_pay` */

insert  into `user_order_pay`(`id`,`orderNum`,`payway`,`isover`,`totalmoney`,`bankname`,`bankno`,`remark`,`createdate`,`adminuser`) values (1,'34324','3434',0,'23434.0000','3434','34234','34234','2015-01-26 15:29:50',NULL),(4,'',NULL,0,NULL,NULL,NULL,NULL,'2015-01-26 15:35:19',NULL),(5,'KF201322821305216','线下支付',0,'40.0000','erwer','werwre','wer','2015-01-26 15:35:55',NULL),(6,'KF201322821305216','线下支付',0,'40.0000','ere','34','','2015-01-26 16:00:56',NULL),(12,'KF201322821305216','线下支付',0,'40.0000','werer','werwerwer','','2015-01-27 10:41:10',NULL),(13,'KF201322821305216','线下支付',0,'40.0000','工行','34234','34234234','2015-01-27 11:14:43','pengteling'),(14,'RC2015130125191623','线下支付',0,'1082.1600','工行','34234234234','','2015-01-30 15:41:25','pengteling'),(15,'RC201502041432511950','线下支付',0,'628.2000','工行','324234342','','2015-02-04 14:35:42','pengteling');

/*Table structure for table `user_order_post` */

DROP TABLE IF EXISTS `user_order_post`;

CREATE TABLE `user_order_post` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderNum` varchar(255) DEFAULT NULL,
  `postway` varchar(50) DEFAULT NULL,
  `postcompany` varchar(255) DEFAULT NULL,
  `postno` varchar(255) DEFAULT NULL,
  `postcontent` text,
  `isover` int(10) DEFAULT NULL,
  `remark` text,
  `createdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `adminUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__user_order_post__173876EA` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user_order_post` */

insert  into `user_order_post`(`id`,`orderNum`,`postway`,`postcompany`,`postno`,`postcontent`,`isover`,`remark`,`createdate`,`adminUser`) values (1,'KF201322821305216','快递物流','EMS快递','werer',NULL,NULL,'werer','2015-01-27 11:46:51','pengteling'),(2,'RC2015130125191623','快递物流','EMS快递','324234234',NULL,NULL,'ewrer','2015-01-31 11:35:22','pengteling'),(3,'RC201502041432511950','快递物流','EMS快递','32232342343',NULL,NULL,'ewrwer','2015-02-04 14:37:08','pengteling');

/*Table structure for table `user_rate_c` */

DROP TABLE IF EXISTS `user_rate_c`;

CREATE TABLE `user_rate_c` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `rate` decimal(10,4) DEFAULT NULL,
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `user_rate_c` */

insert  into `user_rate_c`(`userid`,`rate`) values (39,NULL),(40,NULL),(41,NULL);

/*Table structure for table `vote` */

DROP TABLE IF EXISTS `vote`;

CREATE TABLE `vote` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Select1` varchar(255) DEFAULT NULL,
  `Answer1` int(10) DEFAULT NULL,
  `Select2` varchar(255) DEFAULT NULL,
  `Answer2` int(10) DEFAULT NULL,
  `Select3` varchar(255) DEFAULT NULL,
  `Answer3` int(10) DEFAULT NULL,
  `Select4` varchar(255) DEFAULT NULL,
  `Answer4` int(10) DEFAULT NULL,
  `Select5` varchar(255) DEFAULT NULL,
  `Answer5` int(10) DEFAULT NULL,
  `Select6` varchar(255) DEFAULT NULL,
  `Answer6` int(10) DEFAULT NULL,
  `Select7` varchar(255) DEFAULT NULL,
  `Answer7` int(10) DEFAULT NULL,
  `Select8` varchar(255) DEFAULT NULL,
  `Answer8` int(10) DEFAULT NULL,
  `VoteTime` timestamp NULL DEFAULT NULL,
  `VoteType` varchar(10) DEFAULT NULL,
  `IsSelected` bit(1) NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `vote` */

insert  into `vote`(`ID`,`Title`,`Select1`,`Answer1`,`Select2`,`Answer2`,`Select3`,`Answer3`,`Select4`,`Answer4`,`Select5`,`Answer5`,`Select6`,`Answer6`,`Select7`,`Answer7`,`Select8`,`Answer8`,`VoteTime`,`VoteType`,`IsSelected`) values (6,'您是如何知道我们的网站的？','搜索引擎',12,'朋友介绍',5,'客户介绍',5,'报纸看到',5,'其它网站链接',2,'',0,'',0,'',0,'2013-09-09 13:51:13','Multi','\0'),(7,'您对重庆旅游现状满意吗？','满意',827,'不满意',128,'',0,'',0,'',0,'',0,'',0,'',0,'2013-09-09 14:01:04','Single','');

/*Table structure for table `zh_admin` */

DROP TABLE IF EXISTS `zh_admin`;

CREATE TABLE `zh_admin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Purview` int(10) DEFAULT NULL,
  `LastLoginIP` varchar(15) DEFAULT NULL,
  `LastLoginTime` timestamp NULL DEFAULT NULL,
  `LoginTimes` int(10) DEFAULT NULL,
  `RndPassword` varchar(50) DEFAULT NULL,
  `IsHide` bit(1) NOT NULL,
  `isSuper` bit(1) NOT NULL,
  `sonid` text,
  `Groupid` int(10) DEFAULT NULL,
  `orderID` int(10) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

/*Data for the table `zh_admin` */

insert  into `zh_admin`(`ID`,`UserName`,`Password`,`Purview`,`LastLoginIP`,`LastLoginTime`,`LoginTimes`,`RndPassword`,`IsHide`,`isSuper`,`sonid`,`Groupid`,`orderID`) values (20,'admin','cc5b792b218affe4218affe4c272a54818bacd99',0,'192.168.0.192','2016-05-25 16:42:40',1007,'L15FrQeey2B3f78H','\0','',NULL,2,0),(41,'pengteling','7619041b510678ac510678ac3056aeb2a914bc86',0,'::1','2016-05-26 12:32:41',849,'gWJAnL9970wE057c','\0','',NULL,2,1),(74,'jingjing','33144c9e3d3ce0bf3d3ce0bf549c13a0461f7e7d',NULL,NULL,NULL,NULL,NULL,'\0','\0',NULL,2,3);

/*Table structure for table `zh_admingroup` */

DROP TABLE IF EXISTS `zh_admingroup`;

CREATE TABLE `zh_admingroup` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `orderId` int(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sonid` text,
  `sonid_page` text,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `zh_admingroup` */

insert  into `zh_admingroup`(`ID`,`title`,`orderId`,`description`,`sonid`,`sonid_page`) values (2,'超级管理员',0,NULL,NULL,NULL);

/*Table structure for table `zh_admingroupprivileges` */

DROP TABLE IF EXISTS `zh_admingroupprivileges`;

CREATE TABLE `zh_admingroupprivileges` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `groupID` int(10) DEFAULT NULL,
  `Ptype` int(10) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `cateid` int(10) DEFAULT NULL,
  `action` varchar(10) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1825 DEFAULT CHARSET=utf8;

/*Data for the table `zh_admingroupprivileges` */

insert  into `zh_admingroupprivileges`(`ID`,`groupID`,`Ptype`,`level`,`cateid`,`action`) values (86,4,1,0,202,NULL),(87,4,1,0,203,NULL),(88,4,1,0,204,NULL),(89,4,1,0,205,NULL),(90,4,1,0,206,NULL),(91,4,1,0,207,NULL),(92,4,1,0,208,NULL),(93,4,1,0,209,NULL),(94,4,1,0,210,NULL),(95,4,1,0,216,NULL),(96,4,1,0,219,NULL),(97,4,1,0,225,NULL),(98,4,1,0,229,NULL),(99,4,1,0,238,NULL),(100,4,1,0,240,NULL),(101,4,1,0,235,NULL),(102,4,1,0,241,NULL),(103,4,1,0,236,NULL),(104,4,1,0,211,NULL),(105,4,1,0,239,NULL),(106,4,1,0,226,NULL),(107,4,1,63,242,NULL),(108,4,1,0,227,NULL),(109,4,1,0,237,NULL),(110,4,1,0,212,NULL),(111,4,1,0,228,NULL),(112,4,1,0,213,NULL),(113,4,1,0,217,NULL),(114,4,1,0,230,NULL),(115,4,1,0,220,NULL),(116,4,1,0,214,NULL),(117,4,1,0,221,NULL),(118,4,1,0,231,NULL),(119,4,1,0,218,NULL),(120,4,1,0,215,NULL),(121,4,1,0,232,NULL),(122,4,1,0,222,NULL),(123,4,1,0,223,NULL),(124,4,1,0,233,NULL),(125,4,1,0,234,NULL),(126,4,1,0,224,NULL),(127,4,2,1,1,NULL),(128,4,2,1,4,NULL),(129,4,2,1,5,NULL),(130,4,2,1,2,NULL),(131,4,2,1,6,NULL),(132,4,2,1,3,NULL),(133,3,1,63,202,NULL),(134,3,1,63,203,NULL),(135,3,1,63,204,NULL),(136,3,1,63,205,NULL),(137,3,1,63,206,NULL),(138,3,1,63,207,NULL),(139,3,1,63,208,NULL),(140,3,1,63,209,NULL),(141,3,1,63,210,NULL),(142,3,1,0,216,NULL),(143,3,1,0,219,NULL),(144,3,1,0,225,NULL),(145,3,1,0,229,NULL),(146,3,1,0,238,NULL),(147,3,1,0,240,NULL),(148,3,1,0,235,NULL),(149,3,1,0,241,NULL),(150,3,1,0,236,NULL),(151,3,1,63,211,NULL),(152,3,1,0,239,NULL),(153,3,1,0,226,NULL),(154,3,1,0,242,NULL),(155,3,1,0,227,NULL),(156,3,1,0,237,NULL),(157,3,1,63,212,NULL),(158,3,1,0,228,NULL),(159,3,1,63,213,NULL),(160,3,1,0,217,NULL),(161,3,1,0,230,NULL),(162,3,1,0,220,NULL),(163,3,1,0,214,NULL),(164,3,1,0,221,NULL),(165,3,1,0,231,NULL),(166,3,1,0,218,NULL),(167,3,1,0,215,NULL),(168,3,1,0,232,NULL),(169,3,1,0,222,NULL),(170,3,1,0,223,NULL),(171,3,1,0,233,NULL),(172,3,1,0,234,NULL),(173,3,1,0,224,NULL),(174,4,2,1,7,NULL),(175,4,2,1,9,NULL),(176,4,2,1,11,NULL),(177,4,2,1,15,NULL),(178,4,2,1,17,NULL),(179,4,2,1,21,NULL),(180,4,2,1,24,NULL),(181,4,2,1,28,NULL),(182,4,2,1,31,NULL),(183,4,2,1,16,NULL),(184,4,2,1,10,NULL),(185,4,2,1,18,NULL),(186,4,2,1,8,NULL),(187,4,2,1,12,NULL),(188,4,2,1,29,NULL),(189,4,2,1,25,NULL),(190,4,2,1,22,NULL),(191,4,2,1,32,NULL),(192,4,2,1,33,NULL),(193,4,2,1,13,NULL),(194,4,2,1,23,NULL),(195,4,2,1,30,NULL),(196,4,2,1,26,NULL),(197,4,2,1,19,NULL),(198,4,2,1,27,NULL),(199,4,2,1,20,NULL),(200,4,2,1,14,NULL),(201,5,2,0,1,NULL),(202,5,2,1,4,NULL),(203,5,2,0,34,NULL),(204,5,2,0,36,NULL),(205,5,2,0,7,NULL),(206,5,2,0,9,NULL),(207,5,2,0,11,NULL),(208,5,2,0,38,NULL),(209,5,2,0,15,NULL),(210,5,2,0,17,NULL),(211,5,2,0,21,NULL),(212,5,2,0,24,NULL),(213,5,2,0,28,NULL),(214,5,2,0,31,NULL),(215,5,2,0,25,NULL),(216,5,2,0,22,NULL),(217,5,2,0,16,NULL),(218,5,2,0,12,NULL),(219,5,2,0,10,NULL),(220,5,2,1,8,NULL),(221,5,2,0,18,NULL),(222,5,2,0,39,NULL),(223,5,2,0,2,NULL),(224,5,2,0,44,NULL),(225,5,2,0,42,NULL),(226,5,2,0,40,NULL),(227,5,2,0,29,NULL),(228,5,2,0,37,NULL),(229,5,2,0,35,NULL),(230,5,2,0,32,NULL),(231,5,2,1,5,NULL),(232,5,2,0,19,NULL),(233,5,2,0,23,NULL),(234,5,2,0,33,NULL),(235,5,2,0,30,NULL),(236,5,2,0,13,NULL),(237,5,2,0,26,NULL),(238,5,2,1,6,NULL),(239,5,2,0,3,NULL),(240,5,2,0,20,NULL),(241,5,2,0,14,NULL),(242,5,2,1,43,NULL),(243,5,2,1,41,NULL),(244,5,1,0,202,NULL),(245,5,1,0,203,NULL),(246,5,1,63,204,NULL),(247,5,1,0,205,NULL),(248,5,1,0,206,NULL),(249,5,1,0,207,NULL),(250,5,1,0,208,NULL),(251,5,1,0,209,NULL),(252,5,1,0,243,NULL),(253,5,1,0,257,NULL),(254,5,1,0,250,NULL),(255,5,1,0,240,NULL),(256,5,1,0,225,NULL),(257,5,1,0,210,NULL),(258,5,1,63,220,NULL),(259,5,1,0,235,NULL),(260,5,1,0,238,NULL),(261,5,1,0,229,NULL),(262,5,1,0,255,NULL),(263,5,1,0,236,NULL),(264,5,1,0,211,NULL),(265,5,1,0,241,NULL),(266,5,1,0,230,NULL),(267,5,1,63,221,NULL),(268,5,1,0,226,NULL),(269,5,1,0,256,NULL),(270,5,1,0,239,NULL),(271,5,1,63,223,NULL),(272,5,1,0,212,NULL),(273,5,1,0,216,NULL),(274,5,1,63,222,NULL),(275,5,1,0,227,NULL),(276,5,1,0,231,NULL),(277,5,1,0,242,NULL),(278,5,1,0,237,NULL),(279,5,1,0,254,NULL),(280,5,1,0,258,NULL),(281,5,1,63,248,NULL),(282,5,1,0,232,NULL),(283,5,1,0,228,NULL),(284,5,1,63,249,NULL),(285,5,1,63,224,NULL),(286,5,1,0,233,NULL),(287,5,1,0,217,NULL),(288,5,1,0,251,NULL),(289,5,1,0,234,NULL),(290,5,1,0,218,NULL),(291,5,1,0,219,NULL),(292,5,1,0,252,NULL),(293,5,1,0,213,NULL),(294,5,1,0,214,NULL),(295,5,1,0,215,NULL),(296,6,2,1,1,NULL),(297,6,2,1,4,NULL),(298,6,2,0,34,NULL),(299,6,2,1,36,NULL),(300,6,2,1,7,NULL),(301,6,2,1,9,NULL),(302,6,2,1,11,NULL),(303,6,2,1,38,NULL),(304,6,2,1,15,NULL),(305,6,2,1,17,NULL),(306,6,2,1,21,NULL),(307,6,2,1,24,NULL),(308,6,2,1,28,NULL),(309,6,2,1,31,NULL),(310,6,2,1,25,NULL),(311,6,2,1,22,NULL),(312,6,2,1,16,NULL),(313,6,2,1,12,NULL),(314,6,2,1,10,NULL),(315,6,2,1,8,NULL),(316,6,2,1,18,NULL),(317,6,2,1,39,NULL),(318,6,2,1,2,NULL),(319,6,2,1,44,NULL),(320,6,2,0,42,NULL),(321,6,2,1,40,NULL),(322,6,2,1,29,NULL),(323,6,2,1,37,NULL),(324,6,2,0,35,NULL),(325,6,2,1,32,NULL),(326,6,2,1,5,NULL),(327,6,2,1,19,NULL),(328,6,2,1,23,NULL),(329,6,2,1,33,NULL),(330,6,2,1,30,NULL),(331,6,2,1,13,NULL),(332,6,2,1,26,NULL),(333,6,2,1,6,NULL),(334,6,2,1,3,NULL),(335,6,2,1,20,NULL),(336,6,2,1,14,NULL),(337,6,2,0,43,NULL),(338,6,2,0,41,NULL),(339,6,1,63,202,NULL),(340,6,1,63,203,NULL),(341,6,1,63,204,NULL),(342,6,1,63,205,NULL),(343,6,1,63,206,NULL),(344,6,1,63,207,NULL),(345,6,1,63,208,NULL),(346,6,1,63,209,NULL),(347,6,1,63,243,NULL),(348,6,1,0,257,NULL),(349,6,1,63,250,NULL),(350,6,1,0,240,NULL),(351,6,1,0,225,NULL),(352,6,1,63,210,NULL),(353,6,1,0,220,NULL),(354,6,1,0,235,NULL),(355,6,1,63,238,NULL),(356,6,1,0,229,NULL),(357,6,1,63,255,NULL),(358,6,1,0,236,NULL),(359,6,1,63,211,NULL),(360,6,1,0,241,NULL),(361,6,1,0,230,NULL),(362,6,1,0,221,NULL),(363,6,1,0,226,NULL),(364,6,1,63,256,NULL),(365,6,1,63,239,NULL),(366,6,1,0,223,NULL),(367,6,1,63,212,NULL),(368,6,1,0,216,NULL),(369,6,1,0,222,NULL),(370,6,1,0,227,NULL),(371,6,1,0,231,NULL),(372,6,1,0,242,NULL),(373,6,1,0,237,NULL),(374,6,1,63,254,NULL),(375,6,1,0,258,NULL),(376,6,1,0,248,NULL),(377,6,1,0,232,NULL),(378,6,1,0,228,NULL),(379,6,1,0,249,NULL),(380,6,1,0,224,NULL),(381,6,1,0,233,NULL),(382,6,1,0,217,NULL),(383,6,1,0,251,NULL),(384,6,1,0,234,NULL),(385,6,1,0,218,NULL),(386,6,1,0,219,NULL),(387,6,1,0,252,NULL),(388,6,1,63,213,NULL),(389,6,1,0,214,NULL),(390,6,1,0,215,NULL),(391,7,2,0,1,NULL),(392,7,2,1,4,NULL),(393,7,2,0,34,NULL),(394,7,2,0,36,NULL),(395,7,2,1,7,NULL),(396,7,2,0,9,NULL),(397,7,2,0,11,NULL),(398,7,2,0,38,NULL),(399,7,2,0,15,NULL),(400,7,2,0,17,NULL),(401,7,2,0,21,NULL),(402,7,2,0,24,NULL),(403,7,2,0,28,NULL),(404,7,2,0,31,NULL),(405,7,2,1,25,NULL),(406,7,2,1,22,NULL),(407,7,2,1,16,NULL),(408,7,2,0,12,NULL),(409,7,2,1,10,NULL),(410,7,2,1,8,NULL),(411,7,2,1,18,NULL),(412,7,2,1,39,NULL),(413,7,2,1,2,NULL),(414,7,2,0,44,NULL),(415,7,2,1,42,NULL),(416,7,2,1,40,NULL),(417,7,2,0,29,NULL),(418,7,2,0,37,NULL),(419,7,2,1,35,NULL),(420,7,2,0,32,NULL),(421,7,2,1,5,NULL),(422,7,2,1,19,NULL),(423,7,2,1,23,NULL),(424,7,2,0,33,NULL),(425,7,2,0,30,NULL),(426,7,2,0,13,NULL),(427,7,2,1,26,NULL),(428,7,2,1,6,NULL),(429,7,2,1,3,NULL),(430,7,2,1,20,NULL),(431,7,2,0,14,NULL),(432,7,2,1,43,NULL),(433,7,2,1,41,NULL),(434,7,1,63,202,NULL),(435,7,1,63,203,NULL),(436,7,1,63,204,NULL),(437,7,1,63,205,NULL),(438,7,1,63,206,NULL),(439,7,1,63,207,NULL),(440,7,1,63,208,NULL),(441,7,1,63,209,NULL),(442,7,1,0,243,NULL),(443,7,1,63,257,NULL),(444,7,1,0,250,NULL),(445,7,1,63,240,NULL),(446,7,1,63,225,NULL),(447,7,1,63,210,NULL),(448,7,1,0,220,NULL),(449,7,1,63,235,NULL),(450,7,1,0,238,NULL),(451,7,1,0,229,NULL),(452,7,1,0,255,NULL),(453,7,1,63,236,NULL),(454,7,1,63,211,NULL),(455,7,1,63,241,NULL),(456,7,1,0,230,NULL),(457,7,1,0,221,NULL),(458,7,1,63,226,NULL),(459,7,1,0,256,NULL),(460,7,1,0,239,NULL),(461,7,1,0,223,NULL),(462,7,1,63,212,NULL),(463,7,1,63,216,NULL),(464,7,1,0,222,NULL),(465,7,1,63,227,NULL),(466,7,1,0,231,NULL),(467,7,1,63,242,NULL),(468,7,1,63,237,NULL),(469,7,1,0,254,NULL),(470,7,1,63,258,NULL),(471,7,1,0,248,NULL),(472,7,1,0,232,NULL),(473,7,1,63,228,NULL),(474,7,1,0,249,NULL),(475,7,1,0,224,NULL),(476,7,1,0,233,NULL),(477,7,1,63,217,NULL),(478,7,1,63,251,NULL),(479,7,1,0,234,NULL),(480,7,1,63,218,NULL),(481,7,1,0,219,NULL),(482,7,1,63,252,NULL),(483,7,1,63,213,NULL),(484,7,1,63,214,NULL),(485,7,1,63,215,NULL),(486,1,2,0,1,NULL),(487,1,2,1,4,NULL),(488,1,2,0,36,NULL),(489,1,2,0,51,NULL),(490,1,2,0,57,NULL),(491,1,2,0,7,NULL),(492,1,2,0,9,NULL),(493,1,2,0,62,NULL),(494,1,2,0,11,NULL),(495,1,2,0,38,NULL),(496,1,2,0,15,NULL),(497,1,2,0,17,NULL),(498,1,2,0,21,NULL),(499,1,2,0,24,NULL),(500,1,2,0,28,NULL),(501,1,2,0,31,NULL),(502,1,2,0,32,NULL),(503,1,2,0,37,NULL),(504,1,2,0,39,NULL),(505,1,2,0,40,NULL),(506,1,2,0,44,NULL),(507,1,2,0,29,NULL),(508,1,2,0,25,NULL),(509,1,2,0,22,NULL),(510,1,2,0,16,NULL),(511,1,2,0,18,NULL),(512,1,2,0,12,NULL),(513,1,2,0,10,NULL),(514,1,2,0,8,NULL),(515,1,2,0,2,NULL),(516,1,2,0,63,NULL),(517,1,2,0,79,NULL),(518,1,2,0,58,NULL),(519,1,2,0,54,NULL),(520,1,2,0,55,NULL),(521,1,2,0,48,NULL),(522,1,2,0,50,NULL),(523,1,2,0,47,NULL),(524,1,2,0,56,NULL),(525,1,2,0,59,NULL),(526,1,2,0,3,NULL),(527,1,2,0,13,NULL),(528,1,2,0,19,NULL),(529,1,2,0,23,NULL),(530,1,2,0,26,NULL),(531,1,2,0,30,NULL),(532,1,2,0,33,NULL),(533,1,2,0,20,NULL),(534,1,2,0,14,NULL),(535,1,2,1,5,NULL),(536,1,2,0,52,NULL),(537,1,2,0,60,NULL),(538,1,2,0,80,NULL),(539,1,2,0,77,NULL),(540,1,2,0,81,NULL),(541,1,2,0,61,NULL),(542,1,2,0,53,NULL),(543,1,2,0,49,NULL),(544,1,2,0,45,NULL),(545,1,2,0,6,NULL),(546,1,2,0,82,NULL),(547,1,2,0,84,NULL),(548,1,2,0,83,NULL),(549,1,1,63,115,NULL),(550,1,1,63,113,NULL),(551,1,1,63,69,NULL),(552,1,1,63,70,NULL),(553,1,1,63,71,NULL),(554,1,1,63,72,NULL),(555,1,1,63,73,NULL),(556,1,1,63,74,NULL),(557,1,1,63,75,NULL),(558,1,1,63,88,NULL),(559,1,1,63,89,NULL),(560,1,1,63,91,NULL),(561,1,1,63,83,NULL),(562,1,1,63,94,NULL),(563,1,1,63,98,NULL),(564,1,1,63,102,NULL),(565,1,1,63,107,NULL),(566,1,1,63,108,NULL),(567,1,1,63,103,NULL),(568,1,1,63,99,NULL),(569,1,1,63,95,NULL),(570,1,1,63,84,NULL),(571,1,1,63,92,NULL),(572,1,1,63,90,NULL),(573,1,1,63,93,NULL),(574,1,1,63,85,NULL),(575,1,1,63,96,NULL),(576,1,1,63,100,NULL),(577,1,1,63,104,NULL),(578,1,1,63,109,NULL),(579,1,1,63,110,NULL),(580,1,1,63,105,NULL),(581,1,1,63,101,NULL),(582,1,1,63,97,NULL),(583,1,1,63,86,NULL),(584,1,1,63,87,NULL),(585,1,1,63,106,NULL),(586,1,1,63,111,NULL),(587,6,1,63,115,NULL),(588,6,1,63,113,NULL),(589,6,1,63,128,NULL),(590,6,1,63,69,NULL),(591,6,1,63,118,NULL),(592,6,1,63,70,NULL),(593,6,1,63,72,NULL),(594,6,1,63,75,NULL),(595,6,1,63,74,NULL),(596,6,1,63,116,NULL),(597,6,1,63,73,NULL),(598,6,1,63,98,NULL),(599,6,1,63,99,NULL),(600,6,1,63,144,NULL),(601,6,1,63,158,NULL),(602,6,1,63,151,NULL),(603,6,1,63,159,NULL),(604,6,1,63,145,NULL),(605,6,1,63,120,NULL),(606,6,1,63,135,NULL),(607,6,1,63,94,NULL),(608,6,1,63,102,NULL),(609,6,1,63,108,NULL),(610,6,1,63,88,NULL),(611,6,1,63,89,NULL),(612,6,1,63,163,NULL),(613,6,1,63,190,NULL),(614,6,1,63,195,NULL),(615,6,1,63,169,NULL),(616,6,1,63,90,NULL),(617,6,1,63,131,NULL),(618,6,1,63,84,NULL),(619,6,1,63,109,NULL),(620,6,1,63,103,NULL),(621,6,1,63,95,NULL),(622,6,1,63,139,NULL),(623,6,1,63,123,NULL),(624,6,1,63,146,NULL),(625,6,1,63,147,NULL),(626,6,1,63,124,NULL),(627,6,1,63,136,NULL),(628,6,1,63,96,NULL),(629,6,1,63,100,NULL),(630,6,1,63,104,NULL),(631,6,1,63,110,NULL),(632,6,1,63,132,NULL),(633,6,1,63,133,NULL),(634,6,1,63,174,NULL),(635,6,1,63,199,NULL),(636,6,1,63,180,NULL),(637,6,1,63,111,NULL),(638,6,1,63,105,NULL),(639,6,1,63,101,NULL),(640,6,1,63,97,NULL),(641,6,1,63,137,NULL),(642,6,1,63,134,NULL),(643,6,1,63,121,NULL),(644,6,1,63,148,NULL),(645,6,1,63,149,NULL),(646,6,1,63,140,NULL),(647,6,1,63,138,NULL),(648,6,1,63,106,NULL),(649,6,1,63,107,NULL),(650,6,1,63,184,NULL),(651,6,1,63,87,NULL),(652,6,1,63,189,NULL),(653,6,1,63,85,NULL),(654,6,1,63,122,NULL),(655,6,1,63,125,NULL),(656,6,1,63,150,NULL),(657,6,1,63,83,NULL),(658,6,1,63,86,NULL),(659,6,1,63,119,NULL),(660,6,1,63,126,NULL),(661,6,1,63,127,NULL),(662,6,1,63,152,NULL),(663,6,1,63,153,NULL),(664,6,1,63,154,NULL),(665,6,1,63,156,NULL),(666,6,1,63,157,NULL),(667,6,1,63,155,NULL),(668,6,1,63,164,NULL),(669,6,1,63,175,NULL),(670,6,1,63,170,NULL),(671,6,1,63,185,NULL),(672,6,1,63,181,NULL),(673,6,1,63,196,NULL),(674,6,1,63,191,NULL),(675,6,1,63,200,NULL),(676,6,1,63,160,NULL),(677,6,1,63,141,NULL),(678,6,1,63,129,NULL),(679,6,1,63,130,NULL),(680,6,1,63,142,NULL),(681,6,1,63,161,NULL),(682,6,1,63,201,NULL),(683,6,1,63,192,NULL),(684,6,1,63,197,NULL),(685,6,1,63,182,NULL),(686,6,1,63,186,NULL),(687,6,1,63,171,NULL),(688,6,1,63,176,NULL),(689,6,1,63,165,NULL),(690,6,1,63,166,NULL),(691,6,1,63,177,NULL),(692,6,1,63,172,NULL),(693,6,1,63,187,NULL),(694,6,1,63,183,NULL),(695,6,1,63,198,NULL),(696,6,1,63,193,NULL),(697,6,1,63,162,NULL),(698,6,1,63,143,NULL),(699,6,1,63,194,NULL),(700,6,1,63,188,NULL),(701,6,1,63,173,NULL),(702,6,1,63,178,NULL),(703,6,1,63,167,NULL),(704,6,1,63,168,NULL),(705,6,1,63,179,NULL),(706,7,1,63,115,NULL),(707,7,1,63,113,NULL),(708,7,1,63,128,NULL),(709,7,1,63,69,NULL),(710,7,1,63,118,NULL),(711,7,1,63,70,NULL),(712,7,1,63,72,NULL),(713,7,1,63,75,NULL),(714,7,1,63,74,NULL),(715,7,1,63,116,NULL),(716,7,1,63,73,NULL),(717,7,1,63,98,NULL),(718,7,1,63,99,NULL),(719,7,1,63,144,NULL),(720,7,1,63,158,NULL),(721,7,1,63,151,NULL),(722,7,1,63,159,NULL),(723,7,1,63,145,NULL),(724,7,1,63,120,NULL),(725,7,1,63,135,NULL),(726,7,1,63,94,NULL),(727,7,1,63,102,NULL),(728,7,1,63,108,NULL),(729,7,1,63,88,NULL),(730,7,1,63,89,NULL),(731,7,1,63,163,NULL),(732,7,1,63,190,NULL),(733,7,1,63,195,NULL),(734,7,1,63,169,NULL),(735,7,1,63,90,NULL),(736,7,1,63,131,NULL),(737,7,1,63,84,NULL),(738,7,1,63,109,NULL),(739,7,1,63,103,NULL),(740,7,1,63,95,NULL),(741,7,1,63,139,NULL),(742,7,1,63,123,NULL),(743,7,1,63,146,NULL),(744,7,1,63,147,NULL),(745,7,1,63,124,NULL),(746,7,1,63,136,NULL),(747,7,1,63,96,NULL),(748,7,1,63,100,NULL),(749,7,1,63,104,NULL),(750,7,1,63,110,NULL),(751,7,1,63,132,NULL),(752,7,1,63,133,NULL),(753,7,1,63,174,NULL),(754,7,1,63,199,NULL),(755,7,1,63,180,NULL),(756,7,1,63,111,NULL),(757,7,1,63,105,NULL),(758,7,1,63,101,NULL),(759,7,1,63,97,NULL),(760,7,1,63,137,NULL),(761,7,1,63,134,NULL),(762,7,1,63,121,NULL),(763,7,1,63,148,NULL),(764,7,1,63,149,NULL),(765,7,1,63,140,NULL),(766,7,1,63,138,NULL),(767,7,1,63,106,NULL),(768,7,1,63,107,NULL),(769,7,1,63,184,NULL),(770,7,1,63,87,NULL),(771,7,1,63,189,NULL),(772,7,1,63,85,NULL),(773,7,1,63,122,NULL),(774,7,1,63,125,NULL),(775,7,1,63,150,NULL),(776,7,1,63,83,NULL),(777,7,1,63,86,NULL),(778,7,1,63,119,NULL),(779,7,1,63,126,NULL),(780,7,1,63,127,NULL),(781,7,1,63,152,NULL),(782,7,1,63,153,NULL),(783,7,1,63,154,NULL),(784,7,1,63,156,NULL),(785,7,1,63,157,NULL),(786,7,1,63,155,NULL),(787,7,1,63,164,NULL),(788,7,1,63,175,NULL),(789,7,1,63,170,NULL),(790,7,1,63,185,NULL),(791,7,1,63,181,NULL),(792,7,1,63,196,NULL),(793,7,1,63,191,NULL),(794,7,1,63,200,NULL),(795,7,1,63,160,NULL),(796,7,1,63,141,NULL),(797,7,1,63,129,NULL),(798,7,1,63,130,NULL),(799,7,1,63,142,NULL),(800,7,1,63,161,NULL),(801,7,1,63,201,NULL),(802,7,1,63,192,NULL),(803,7,1,63,197,NULL),(804,7,1,63,182,NULL),(805,7,1,63,186,NULL),(806,7,1,63,171,NULL),(807,7,1,63,176,NULL),(808,7,1,63,165,NULL),(809,7,1,63,166,NULL),(810,7,1,63,177,NULL),(811,7,1,63,172,NULL),(812,7,1,63,187,NULL),(813,7,1,63,183,NULL),(814,7,1,63,198,NULL),(815,7,1,63,193,NULL),(816,7,1,63,162,NULL),(817,7,1,63,143,NULL),(818,7,1,63,194,NULL),(819,7,1,63,188,NULL),(820,7,1,63,173,NULL),(821,7,1,63,178,NULL),(822,7,1,63,167,NULL),(823,7,1,63,168,NULL),(824,7,1,63,179,NULL),(825,8,1,63,115,NULL),(826,8,1,63,113,NULL),(827,8,1,63,128,NULL),(828,8,1,63,69,NULL),(829,8,1,63,118,NULL),(830,8,1,63,70,NULL),(831,8,1,63,72,NULL),(832,8,1,63,75,NULL),(833,8,1,63,74,NULL),(834,8,1,63,116,NULL),(835,8,1,63,73,NULL),(836,8,1,63,98,NULL),(837,8,1,63,99,NULL),(838,8,1,63,144,NULL),(839,8,1,63,158,NULL),(840,8,1,63,151,NULL),(841,8,1,63,159,NULL),(842,8,1,63,145,NULL),(843,8,1,63,120,NULL),(844,8,1,63,135,NULL),(845,8,1,63,94,NULL),(846,8,1,63,102,NULL),(847,8,1,63,108,NULL),(848,8,1,63,88,NULL),(849,8,1,63,89,NULL),(850,8,1,63,163,NULL),(851,8,1,63,190,NULL),(852,8,1,63,195,NULL),(853,8,1,63,169,NULL),(854,8,1,63,90,NULL),(855,8,1,63,131,NULL),(856,8,1,63,84,NULL),(857,8,1,63,109,NULL),(858,8,1,63,103,NULL),(859,8,1,63,95,NULL),(860,8,1,63,139,NULL),(861,8,1,63,123,NULL),(862,8,1,63,146,NULL),(863,8,1,63,147,NULL),(864,8,1,63,124,NULL),(865,8,1,63,136,NULL),(866,8,1,63,96,NULL),(867,8,1,63,100,NULL),(868,8,1,63,104,NULL),(869,8,1,63,110,NULL),(870,8,1,63,132,NULL),(871,8,1,63,133,NULL),(872,8,1,63,174,NULL),(873,8,1,63,199,NULL),(874,8,1,63,204,NULL),(875,8,1,63,180,NULL),(876,8,1,63,111,NULL),(877,8,1,63,105,NULL),(878,8,1,63,101,NULL),(879,8,1,63,97,NULL),(880,8,1,63,137,NULL),(881,8,1,63,134,NULL),(882,8,1,63,121,NULL),(883,8,1,63,148,NULL),(884,8,1,63,149,NULL),(885,8,1,63,140,NULL),(886,8,1,63,138,NULL),(887,8,1,63,106,NULL),(888,8,1,63,107,NULL),(889,8,1,63,184,NULL),(890,8,1,63,87,NULL),(891,8,1,63,208,NULL),(892,8,1,63,189,NULL),(893,8,1,63,213,NULL),(894,8,1,63,85,NULL),(895,8,1,63,122,NULL),(896,8,1,63,125,NULL),(897,8,1,63,150,NULL),(898,8,1,63,83,NULL),(899,8,1,63,86,NULL),(900,8,1,63,119,NULL),(901,8,1,63,126,NULL),(902,8,1,63,127,NULL),(903,8,1,63,152,NULL),(904,8,1,63,153,NULL),(905,8,1,63,154,NULL),(906,8,1,63,156,NULL),(907,8,1,63,157,NULL),(908,8,1,63,155,NULL),(909,8,1,63,164,NULL),(910,8,1,63,175,NULL),(911,8,1,63,170,NULL),(912,8,1,63,185,NULL),(913,8,1,63,181,NULL),(914,8,1,63,196,NULL),(915,8,1,63,191,NULL),(916,8,1,63,209,NULL),(917,8,1,63,205,NULL),(918,8,1,63,200,NULL),(919,8,1,63,160,NULL),(920,8,1,63,141,NULL),(921,8,1,63,129,NULL),(922,8,1,63,130,NULL),(923,8,1,63,142,NULL),(924,8,1,63,161,NULL),(925,8,1,63,201,NULL),(926,8,1,63,206,NULL),(927,8,1,63,210,NULL),(928,8,1,63,192,NULL),(929,8,1,63,197,NULL),(930,8,1,63,182,NULL),(931,8,1,63,186,NULL),(932,8,1,63,171,NULL),(933,8,1,63,176,NULL),(934,8,1,63,165,NULL),(935,8,1,63,166,NULL),(936,8,1,63,177,NULL),(937,8,1,63,172,NULL),(938,8,1,63,187,NULL),(939,8,1,63,183,NULL),(940,8,1,63,198,NULL),(941,8,1,63,193,NULL),(942,8,1,63,211,NULL),(943,8,1,63,207,NULL),(944,8,1,63,202,NULL),(945,8,1,63,162,NULL),(946,8,1,63,143,NULL),(947,8,1,63,203,NULL),(948,8,1,63,212,NULL),(949,8,1,63,194,NULL),(950,8,1,63,188,NULL),(951,8,1,63,173,NULL),(952,8,1,63,178,NULL),(953,8,1,63,167,NULL),(954,8,1,63,168,NULL),(955,8,1,63,179,NULL),(956,9,1,63,115,NULL),(957,9,1,63,113,NULL),(958,9,1,63,128,NULL),(959,9,1,63,69,NULL),(960,9,1,63,118,NULL),(961,9,1,63,70,NULL),(962,9,1,63,72,NULL),(963,9,1,63,75,NULL),(964,9,1,63,74,NULL),(965,9,1,63,116,NULL),(966,9,1,63,73,NULL),(967,9,1,63,98,NULL),(968,9,1,63,99,NULL),(969,9,1,63,144,NULL),(970,9,1,63,158,NULL),(971,9,1,63,151,NULL),(972,9,1,63,159,NULL),(973,9,1,63,145,NULL),(974,9,1,63,120,NULL),(975,9,1,63,135,NULL),(976,9,1,63,94,NULL),(977,9,1,63,102,NULL),(978,9,1,63,108,NULL),(979,9,1,63,88,NULL),(980,9,1,63,89,NULL),(981,9,1,63,163,NULL),(982,9,1,63,190,NULL),(983,9,1,63,195,NULL),(984,9,1,63,169,NULL),(985,9,1,63,90,NULL),(986,9,1,63,131,NULL),(987,9,1,63,84,NULL),(988,9,1,63,109,NULL),(989,9,1,63,103,NULL),(990,9,1,63,95,NULL),(991,9,1,63,139,NULL),(992,9,1,63,123,NULL),(993,9,1,63,146,NULL),(994,9,1,63,147,NULL),(995,9,1,63,124,NULL),(996,9,1,63,136,NULL),(997,9,1,63,96,NULL),(998,9,1,63,100,NULL),(999,9,1,63,104,NULL),(1000,9,1,63,110,NULL),(1001,9,1,63,132,NULL),(1002,9,1,63,133,NULL),(1003,9,1,63,174,NULL),(1004,9,1,63,199,NULL),(1005,9,1,63,204,NULL),(1006,9,1,63,180,NULL),(1007,9,1,63,111,NULL),(1008,9,1,63,105,NULL),(1009,9,1,63,101,NULL),(1010,9,1,63,97,NULL),(1011,9,1,63,137,NULL),(1012,9,1,63,134,NULL),(1013,9,1,63,121,NULL),(1014,9,1,63,148,NULL),(1015,9,1,63,149,NULL),(1016,9,1,63,140,NULL),(1017,9,1,63,138,NULL),(1018,9,1,63,106,NULL),(1019,9,1,63,107,NULL),(1020,9,1,63,184,NULL),(1021,9,1,63,87,NULL),(1022,9,1,63,208,NULL),(1023,9,1,63,189,NULL),(1024,9,1,63,213,NULL),(1025,9,1,63,85,NULL),(1026,9,1,63,122,NULL),(1027,9,1,63,125,NULL),(1028,9,1,63,150,NULL),(1029,9,1,63,83,NULL),(1030,9,1,63,86,NULL),(1031,9,1,63,119,NULL),(1032,9,1,63,126,NULL),(1033,9,1,63,127,NULL),(1034,9,1,63,152,NULL),(1035,9,1,63,153,NULL),(1036,9,1,63,154,NULL),(1037,9,1,63,156,NULL),(1038,9,1,63,157,NULL),(1039,9,1,63,155,NULL),(1040,9,1,63,164,NULL),(1041,9,1,63,175,NULL),(1042,9,1,63,170,NULL),(1043,9,1,63,185,NULL),(1044,9,1,63,181,NULL),(1045,9,1,63,196,NULL),(1046,9,1,63,191,NULL),(1047,9,1,63,209,NULL),(1048,9,1,63,205,NULL),(1049,9,1,63,200,NULL),(1050,9,1,63,160,NULL),(1051,9,1,63,141,NULL),(1052,9,1,63,129,NULL),(1053,9,1,63,130,NULL),(1054,9,1,63,142,NULL),(1055,9,1,63,161,NULL),(1056,9,1,63,201,NULL),(1057,9,1,63,206,NULL),(1058,9,1,63,210,NULL),(1059,9,1,63,192,NULL),(1060,9,1,63,197,NULL),(1061,9,1,63,182,NULL),(1062,9,1,63,186,NULL),(1063,9,1,63,171,NULL),(1064,9,1,63,176,NULL),(1065,9,1,63,165,NULL),(1066,9,1,63,166,NULL),(1067,9,1,63,177,NULL),(1068,9,1,63,172,NULL),(1069,9,1,63,187,NULL),(1070,9,1,63,183,NULL),(1071,9,1,63,198,NULL),(1072,9,1,63,193,NULL),(1073,9,1,63,211,NULL),(1074,9,1,63,207,NULL),(1075,9,1,63,202,NULL),(1076,9,1,63,162,NULL),(1077,9,1,63,143,NULL),(1078,9,1,63,203,NULL),(1079,9,1,63,212,NULL),(1080,9,1,63,194,NULL),(1081,9,1,63,188,NULL),(1082,9,1,63,173,NULL),(1083,9,1,63,178,NULL),(1084,9,1,63,167,NULL),(1085,9,1,63,168,NULL),(1086,9,1,63,179,NULL),(1087,10,1,63,115,NULL),(1088,10,1,63,113,NULL),(1089,10,1,63,128,NULL),(1090,10,1,63,69,NULL),(1091,10,1,63,118,NULL),(1092,10,1,63,70,NULL),(1093,10,1,63,72,NULL),(1094,10,1,63,75,NULL),(1095,10,1,63,74,NULL),(1096,10,1,63,116,NULL),(1097,10,1,63,73,NULL),(1098,10,1,63,98,NULL),(1099,10,1,63,99,NULL),(1100,10,1,63,144,NULL),(1101,10,1,63,158,NULL),(1102,10,1,63,151,NULL),(1103,10,1,63,159,NULL),(1104,10,1,63,145,NULL),(1105,10,1,63,120,NULL),(1106,10,1,63,135,NULL),(1107,10,1,63,94,NULL),(1108,10,1,63,102,NULL),(1109,10,1,63,108,NULL),(1110,10,1,63,88,NULL),(1111,10,1,63,89,NULL),(1112,10,1,63,163,NULL),(1113,10,1,63,190,NULL),(1114,10,1,63,195,NULL),(1115,10,1,63,169,NULL),(1116,10,1,63,90,NULL),(1117,10,1,63,131,NULL),(1118,10,1,63,84,NULL),(1119,10,1,63,109,NULL),(1120,10,1,63,103,NULL),(1121,10,1,63,95,NULL),(1122,10,1,63,139,NULL),(1123,10,1,63,123,NULL),(1124,10,1,63,146,NULL),(1125,10,1,63,147,NULL),(1126,10,1,63,124,NULL),(1127,10,1,63,136,NULL),(1128,10,1,63,96,NULL),(1129,10,1,63,100,NULL),(1130,10,1,63,104,NULL),(1131,10,1,63,110,NULL),(1132,10,1,63,132,NULL),(1133,10,1,63,133,NULL),(1134,10,1,63,174,NULL),(1135,10,1,63,199,NULL),(1136,10,1,63,204,NULL),(1137,10,1,63,180,NULL),(1138,10,1,63,111,NULL),(1139,10,1,63,105,NULL),(1140,10,1,63,101,NULL),(1141,10,1,63,97,NULL),(1142,10,1,63,137,NULL),(1143,10,1,63,134,NULL),(1144,10,1,63,121,NULL),(1145,10,1,63,148,NULL),(1146,10,1,63,149,NULL),(1147,10,1,63,140,NULL),(1148,10,1,63,138,NULL),(1149,10,1,63,106,NULL),(1150,10,1,63,107,NULL),(1151,10,1,63,184,NULL),(1152,10,1,63,87,NULL),(1153,10,1,63,208,NULL),(1154,10,1,63,189,NULL),(1155,10,1,63,213,NULL),(1156,10,1,63,85,NULL),(1157,10,1,63,122,NULL),(1158,10,1,63,125,NULL),(1159,10,1,63,150,NULL),(1160,10,1,63,83,NULL),(1161,10,1,63,86,NULL),(1162,10,1,63,119,NULL),(1163,10,1,63,126,NULL),(1164,10,1,63,127,NULL),(1165,10,1,63,152,NULL),(1166,10,1,63,153,NULL),(1167,10,1,63,154,NULL),(1168,10,1,63,156,NULL),(1169,10,1,63,157,NULL),(1170,10,1,63,155,NULL),(1171,10,1,63,164,NULL),(1172,10,1,63,175,NULL),(1173,10,1,63,170,NULL),(1174,10,1,63,185,NULL),(1175,10,1,63,181,NULL),(1176,10,1,63,196,NULL),(1177,10,1,63,191,NULL),(1178,10,1,63,209,NULL),(1179,10,1,63,205,NULL),(1180,10,1,63,200,NULL),(1181,10,1,63,160,NULL),(1182,10,1,63,141,NULL),(1183,10,1,63,129,NULL),(1184,10,1,63,130,NULL),(1185,10,1,63,142,NULL),(1186,10,1,63,161,NULL),(1187,10,1,63,201,NULL),(1188,10,1,63,206,NULL),(1189,10,1,63,210,NULL),(1190,10,1,63,192,NULL),(1191,10,1,63,197,NULL),(1192,10,1,63,182,NULL),(1193,10,1,63,186,NULL),(1194,10,1,63,171,NULL),(1195,10,1,63,176,NULL),(1196,10,1,63,165,NULL),(1197,10,1,63,166,NULL),(1198,10,1,63,177,NULL),(1199,10,1,63,172,NULL),(1200,10,1,63,187,NULL),(1201,10,1,63,183,NULL),(1202,10,1,63,198,NULL),(1203,10,1,63,193,NULL),(1204,10,1,63,211,NULL),(1205,10,1,63,207,NULL),(1206,10,1,63,202,NULL),(1207,10,1,63,162,NULL),(1208,10,1,63,143,NULL),(1209,10,1,63,203,NULL),(1210,10,1,63,212,NULL),(1211,10,1,63,194,NULL),(1212,10,1,63,188,NULL),(1213,10,1,63,173,NULL),(1214,10,1,63,178,NULL),(1215,10,1,63,167,NULL),(1216,10,1,63,168,NULL),(1217,10,1,63,179,NULL),(1218,3,1,63,115,NULL),(1219,3,1,63,113,NULL),(1220,3,1,63,128,NULL),(1221,3,1,63,69,NULL),(1222,3,1,63,118,NULL),(1223,3,1,63,70,NULL),(1224,3,1,63,72,NULL),(1225,3,1,63,75,NULL),(1226,3,1,63,74,NULL),(1227,3,1,63,116,NULL),(1228,3,1,63,73,NULL),(1229,3,1,63,98,NULL),(1230,3,1,63,99,NULL),(1231,3,1,63,144,NULL),(1232,3,1,63,158,NULL),(1233,3,1,63,151,NULL),(1234,3,1,63,159,NULL),(1235,3,1,63,145,NULL),(1236,3,1,63,120,NULL),(1237,3,1,63,135,NULL),(1238,3,1,63,94,NULL),(1239,3,1,63,102,NULL),(1240,3,1,63,108,NULL),(1241,3,1,63,88,NULL),(1242,3,1,63,89,NULL),(1243,3,1,63,163,NULL),(1244,3,1,63,190,NULL),(1245,3,1,63,195,NULL),(1246,3,1,63,169,NULL),(1247,3,1,63,90,NULL),(1248,3,1,63,131,NULL),(1249,3,1,63,84,NULL),(1250,3,1,63,109,NULL),(1251,3,1,63,103,NULL),(1252,3,1,63,95,NULL),(1253,3,1,63,139,NULL),(1254,3,1,63,123,NULL),(1255,3,1,63,146,NULL),(1256,3,1,63,147,NULL),(1257,3,1,63,124,NULL),(1258,3,1,63,136,NULL),(1259,3,1,63,96,NULL),(1260,3,1,63,100,NULL),(1261,3,1,63,104,NULL),(1262,3,1,63,110,NULL),(1263,3,1,63,132,NULL),(1264,3,1,63,133,NULL),(1265,3,1,63,174,NULL),(1266,3,1,63,199,NULL),(1267,3,1,63,180,NULL),(1268,3,1,63,111,NULL),(1269,3,1,63,105,NULL),(1270,3,1,63,101,NULL),(1271,3,1,63,97,NULL),(1272,3,1,63,137,NULL),(1273,3,1,63,134,NULL),(1274,3,1,63,121,NULL),(1275,3,1,63,148,NULL),(1276,3,1,63,149,NULL),(1277,3,1,63,140,NULL),(1278,3,1,63,138,NULL),(1279,3,1,63,106,NULL),(1280,3,1,63,107,NULL),(1281,3,1,63,184,NULL),(1282,3,1,63,87,NULL),(1283,3,1,63,189,NULL),(1284,3,1,63,85,NULL),(1285,3,1,63,122,NULL),(1286,3,1,63,125,NULL),(1287,3,1,63,150,NULL),(1288,3,1,63,83,NULL),(1289,3,1,63,86,NULL),(1290,3,1,63,119,NULL),(1291,3,1,63,126,NULL),(1292,3,1,63,127,NULL),(1293,3,1,63,152,NULL),(1294,3,1,63,153,NULL),(1295,3,1,63,154,NULL),(1296,3,1,63,156,NULL),(1297,3,1,63,157,NULL),(1298,3,1,63,155,NULL),(1299,3,1,63,164,NULL),(1300,3,1,63,175,NULL),(1301,3,1,63,170,NULL),(1302,3,1,63,185,NULL),(1303,3,1,63,181,NULL),(1304,3,1,63,196,NULL),(1305,3,1,63,191,NULL),(1306,3,1,63,200,NULL),(1307,3,1,63,160,NULL),(1308,3,1,63,141,NULL),(1309,3,1,63,129,NULL),(1310,3,1,63,130,NULL),(1311,3,1,63,142,NULL),(1312,3,1,63,161,NULL),(1313,3,1,63,201,NULL),(1314,3,1,63,192,NULL),(1315,3,1,63,197,NULL),(1316,3,1,63,182,NULL),(1317,3,1,63,186,NULL),(1318,3,1,63,171,NULL),(1319,3,1,63,176,NULL),(1320,3,1,63,165,NULL),(1321,3,1,63,166,NULL),(1322,3,1,63,177,NULL),(1323,3,1,63,172,NULL),(1324,3,1,63,187,NULL),(1325,3,1,63,183,NULL),(1326,3,1,63,198,NULL),(1327,3,1,63,193,NULL),(1328,3,1,63,162,NULL),(1329,3,1,63,143,NULL),(1330,3,1,63,194,NULL),(1331,3,1,63,188,NULL),(1332,3,1,63,173,NULL),(1333,3,1,63,178,NULL),(1334,3,1,63,167,NULL),(1335,3,1,63,168,NULL),(1336,3,1,63,179,NULL),(1337,3,2,1,1,NULL),(1338,3,2,1,4,NULL),(1339,3,2,1,36,NULL),(1340,3,2,1,51,NULL),(1341,3,2,1,57,NULL),(1342,3,2,1,7,NULL),(1343,3,2,1,9,NULL),(1344,3,2,1,62,NULL),(1345,3,2,1,11,NULL),(1346,3,2,1,38,NULL),(1347,3,2,1,15,NULL),(1348,3,2,1,17,NULL),(1349,3,2,1,21,NULL),(1350,3,2,1,24,NULL),(1351,3,2,1,28,NULL),(1352,3,2,1,31,NULL),(1353,3,2,1,32,NULL),(1354,3,2,1,37,NULL),(1355,3,2,1,39,NULL),(1356,3,2,1,40,NULL),(1357,3,2,1,44,NULL),(1358,3,2,1,29,NULL),(1359,3,2,1,25,NULL),(1360,3,2,1,22,NULL),(1361,3,2,1,16,NULL),(1362,3,2,1,18,NULL),(1363,3,2,1,12,NULL),(1364,3,2,1,10,NULL),(1365,3,2,1,8,NULL),(1366,3,2,1,2,NULL),(1367,3,2,1,63,NULL),(1368,3,2,1,79,NULL),(1369,3,2,1,58,NULL),(1370,3,2,1,54,NULL),(1371,3,2,1,55,NULL),(1372,3,2,1,48,NULL),(1373,3,2,1,50,NULL),(1374,3,2,1,47,NULL),(1375,3,2,1,56,NULL),(1376,3,2,1,59,NULL),(1377,3,2,1,3,NULL),(1378,3,2,1,13,NULL),(1379,3,2,1,19,NULL),(1380,3,2,1,23,NULL),(1381,3,2,1,26,NULL),(1382,3,2,1,30,NULL),(1383,3,2,1,33,NULL),(1384,3,2,1,20,NULL),(1385,3,2,1,14,NULL),(1386,3,2,1,5,NULL),(1387,3,2,1,52,NULL),(1388,3,2,1,60,NULL),(1389,3,2,1,80,NULL),(1390,3,2,1,77,NULL),(1391,3,2,1,81,NULL),(1392,3,2,1,61,NULL),(1393,3,2,1,53,NULL),(1394,3,2,1,49,NULL),(1395,3,2,1,45,NULL),(1396,3,2,1,6,NULL),(1397,3,2,1,82,NULL),(1398,3,2,1,85,NULL),(1399,3,2,1,84,NULL),(1400,3,2,1,83,NULL),(1401,6,2,1,51,NULL),(1402,6,2,1,57,NULL),(1403,6,2,1,62,NULL),(1404,6,2,1,63,NULL),(1405,6,2,1,79,NULL),(1406,6,2,1,58,NULL),(1407,6,2,1,54,NULL),(1408,6,2,1,55,NULL),(1409,6,2,1,48,NULL),(1410,6,2,1,50,NULL),(1411,6,2,1,47,NULL),(1412,6,2,1,56,NULL),(1413,6,2,1,59,NULL),(1414,6,2,1,52,NULL),(1415,6,2,1,60,NULL),(1416,6,2,1,80,NULL),(1417,6,2,1,77,NULL),(1418,6,2,1,81,NULL),(1419,6,2,1,61,NULL),(1420,6,2,1,53,NULL),(1421,6,2,1,49,NULL),(1422,6,2,1,45,NULL),(1423,6,2,1,82,NULL),(1424,6,2,1,85,NULL),(1425,6,2,1,84,NULL),(1426,6,2,1,83,NULL),(1427,24,1,63,115,NULL),(1428,24,1,63,113,NULL),(1429,24,1,63,128,NULL),(1430,24,1,63,69,NULL),(1431,24,1,63,118,NULL),(1432,24,1,63,70,NULL),(1433,24,1,63,72,NULL),(1434,24,1,63,75,NULL),(1435,24,1,63,74,NULL),(1436,24,1,63,116,NULL),(1437,24,1,63,73,NULL),(1438,24,1,63,98,NULL),(1439,24,1,63,99,NULL),(1440,24,1,63,144,NULL),(1441,24,1,63,158,NULL),(1442,24,1,63,151,NULL),(1443,24,1,63,159,NULL),(1444,24,1,63,145,NULL),(1445,24,1,63,120,NULL),(1446,24,1,63,135,NULL),(1447,24,1,63,94,NULL),(1448,24,1,63,102,NULL),(1449,24,1,63,108,NULL),(1450,24,1,63,88,NULL),(1451,24,1,63,89,NULL),(1452,24,1,63,163,NULL),(1453,24,1,63,190,NULL),(1454,24,1,63,195,NULL),(1455,24,1,63,169,NULL),(1456,24,1,63,90,NULL),(1457,24,1,63,131,NULL),(1458,24,1,63,84,NULL),(1459,24,1,63,109,NULL),(1460,24,1,63,103,NULL),(1461,24,1,63,95,NULL),(1462,24,1,63,139,NULL),(1463,24,1,63,123,NULL),(1464,24,1,63,146,NULL),(1465,24,1,63,147,NULL),(1466,24,1,63,124,NULL),(1467,24,1,63,136,NULL),(1468,24,1,63,96,NULL),(1469,24,1,63,100,NULL),(1470,24,1,63,104,NULL),(1471,24,1,63,110,NULL),(1472,24,1,63,132,NULL),(1473,24,1,63,133,NULL),(1474,24,1,63,174,NULL),(1475,24,1,63,199,NULL),(1476,24,1,63,204,NULL),(1477,24,1,63,180,NULL),(1478,24,1,63,111,NULL),(1479,24,1,63,105,NULL),(1480,24,1,63,101,NULL),(1481,24,1,63,97,NULL),(1482,24,1,63,137,NULL),(1483,24,1,63,134,NULL),(1484,24,1,63,121,NULL),(1485,24,1,63,148,NULL),(1486,24,1,63,149,NULL),(1487,24,1,63,140,NULL),(1488,24,1,63,138,NULL),(1489,24,1,63,106,NULL),(1490,24,1,63,107,NULL),(1491,24,1,63,184,NULL),(1492,24,1,63,87,NULL),(1493,24,1,63,208,NULL),(1494,24,1,63,189,NULL),(1495,24,1,63,213,NULL),(1496,24,1,63,85,NULL),(1497,24,1,63,122,NULL),(1498,24,1,63,125,NULL),(1499,24,1,63,150,NULL),(1500,24,1,63,83,NULL),(1501,24,1,63,86,NULL),(1502,24,1,63,119,NULL),(1503,24,1,63,126,NULL),(1504,24,1,63,127,NULL),(1505,24,1,63,152,NULL),(1506,24,1,63,153,NULL),(1507,24,1,63,154,NULL),(1508,24,1,63,156,NULL),(1509,24,1,63,157,NULL),(1510,24,1,63,155,NULL),(1511,24,1,63,164,NULL),(1512,24,1,63,175,NULL),(1513,24,1,63,170,NULL),(1514,24,1,63,185,NULL),(1515,24,1,63,181,NULL),(1516,24,1,63,196,NULL),(1517,24,1,63,191,NULL),(1518,24,1,63,209,NULL),(1519,24,1,63,205,NULL),(1520,24,1,63,200,NULL),(1521,24,1,63,160,NULL),(1522,24,1,63,141,NULL),(1523,24,1,63,129,NULL),(1524,24,1,63,130,NULL),(1525,24,1,63,142,NULL),(1526,24,1,63,161,NULL),(1527,24,1,63,201,NULL),(1528,24,1,63,206,NULL),(1529,24,1,63,210,NULL),(1530,24,1,63,192,NULL),(1531,24,1,63,197,NULL),(1532,24,1,63,182,NULL),(1533,24,1,63,186,NULL),(1534,24,1,63,171,NULL),(1535,24,1,63,176,NULL),(1536,24,1,63,165,NULL),(1537,24,1,63,166,NULL),(1538,24,1,63,177,NULL),(1539,24,1,63,172,NULL),(1540,24,1,63,187,NULL),(1541,24,1,63,183,NULL),(1542,24,1,63,198,NULL),(1543,24,1,63,193,NULL),(1544,24,1,63,211,NULL),(1545,24,1,63,207,NULL),(1546,24,1,63,202,NULL),(1547,24,1,63,162,NULL),(1548,24,1,63,143,NULL),(1549,24,1,63,203,NULL),(1550,24,1,63,212,NULL),(1551,24,1,63,194,NULL),(1552,24,1,63,188,NULL),(1553,24,1,63,173,NULL),(1554,24,1,63,178,NULL),(1555,24,1,63,167,NULL),(1556,24,1,63,168,NULL),(1557,24,1,63,179,NULL),(1558,24,2,1,1,NULL),(1559,24,2,1,4,NULL),(1560,24,2,0,36,NULL),(1561,24,2,1,51,NULL),(1562,24,2,1,57,NULL),(1563,24,2,1,7,NULL),(1564,24,2,1,9,NULL),(1565,24,2,1,62,NULL),(1566,24,2,1,11,NULL),(1567,24,2,1,38,NULL),(1568,24,2,1,15,NULL),(1569,24,2,1,17,NULL),(1570,24,2,1,21,NULL),(1571,24,2,1,24,NULL),(1572,24,2,1,28,NULL),(1573,24,2,1,31,NULL),(1574,24,2,1,32,NULL),(1575,24,2,0,37,NULL),(1576,24,2,1,39,NULL),(1577,24,2,1,40,NULL),(1578,24,2,0,44,NULL),(1579,24,2,1,29,NULL),(1580,24,2,1,25,NULL),(1581,24,2,1,22,NULL),(1582,24,2,1,16,NULL),(1583,24,2,1,18,NULL),(1584,24,2,1,12,NULL),(1585,24,2,1,10,NULL),(1586,24,2,1,8,NULL),(1587,24,2,1,2,NULL),(1588,24,2,1,63,NULL),(1589,24,2,1,79,NULL),(1590,24,2,1,58,NULL),(1591,24,2,1,54,NULL),(1592,24,2,1,55,NULL),(1593,24,2,1,48,NULL),(1594,24,2,1,50,NULL),(1595,24,2,1,47,NULL),(1596,24,2,1,56,NULL),(1597,24,2,1,59,NULL),(1598,24,2,1,3,NULL),(1599,24,2,1,13,NULL),(1600,24,2,1,19,NULL),(1601,24,2,1,23,NULL),(1602,24,2,1,26,NULL),(1603,24,2,1,30,NULL),(1604,24,2,1,33,NULL),(1605,24,2,1,20,NULL),(1606,24,2,1,14,NULL),(1607,24,2,1,5,NULL),(1608,24,2,1,52,NULL),(1609,24,2,1,60,NULL),(1610,24,2,1,80,NULL),(1611,24,2,1,77,NULL),(1612,24,2,1,81,NULL),(1613,24,2,1,61,NULL),(1614,24,2,1,53,NULL),(1615,24,2,1,49,NULL),(1616,24,2,1,45,NULL),(1617,24,2,1,6,NULL),(1618,24,2,1,82,NULL),(1619,24,2,1,85,NULL),(1620,24,2,1,84,NULL),(1621,24,2,1,83,NULL),(1622,25,2,0,1,NULL),(1623,25,2,1,4,NULL),(1624,25,2,0,36,NULL),(1625,25,2,0,51,NULL),(1626,25,2,0,57,NULL),(1627,25,2,0,7,NULL),(1628,25,2,0,9,NULL),(1629,25,2,0,62,NULL),(1630,25,2,0,11,NULL),(1631,25,2,0,38,NULL),(1632,25,2,0,15,NULL),(1633,25,2,0,17,NULL),(1634,25,2,0,21,NULL),(1635,25,2,0,24,NULL),(1636,25,2,0,28,NULL),(1637,25,2,0,31,NULL),(1638,25,2,0,32,NULL),(1639,25,2,0,37,NULL),(1640,25,2,0,39,NULL),(1641,25,2,0,40,NULL),(1642,25,2,0,44,NULL),(1643,25,2,0,29,NULL),(1644,25,2,0,25,NULL),(1645,25,2,0,22,NULL),(1646,25,2,0,16,NULL),(1647,25,2,0,18,NULL),(1648,25,2,0,12,NULL),(1649,25,2,0,10,NULL),(1650,25,2,0,8,NULL),(1651,25,2,0,2,NULL),(1652,25,2,0,63,NULL),(1653,25,2,0,79,NULL),(1654,25,2,0,58,NULL),(1655,25,2,0,54,NULL),(1656,25,2,0,55,NULL),(1657,25,2,1,48,NULL),(1658,25,2,0,50,NULL),(1659,25,2,0,47,NULL),(1660,25,2,0,56,NULL),(1661,25,2,0,59,NULL),(1662,25,2,0,3,NULL),(1663,25,2,0,13,NULL),(1664,25,2,0,19,NULL),(1665,25,2,0,23,NULL),(1666,25,2,0,26,NULL),(1667,25,2,0,30,NULL),(1668,25,2,0,33,NULL),(1669,25,2,0,20,NULL),(1670,25,2,0,14,NULL),(1671,25,2,1,5,NULL),(1672,25,2,0,52,NULL),(1673,25,2,0,60,NULL),(1674,25,2,0,80,NULL),(1675,25,2,0,77,NULL),(1676,25,2,0,81,NULL),(1677,25,2,0,61,NULL),(1678,25,2,0,53,NULL),(1679,25,2,1,49,NULL),(1680,25,2,0,45,NULL),(1681,25,2,0,6,NULL),(1682,25,2,0,82,NULL),(1683,25,2,0,85,NULL),(1684,25,2,0,84,NULL),(1685,25,2,0,83,NULL),(1686,25,1,0,115,NULL),(1687,25,1,0,113,NULL),(1688,25,1,0,128,NULL),(1689,25,1,0,69,NULL),(1690,25,1,0,118,NULL),(1691,25,1,0,70,NULL),(1692,25,1,0,72,NULL),(1693,25,1,0,75,NULL),(1694,25,1,0,74,NULL),(1695,25,1,0,116,NULL),(1696,25,1,0,73,NULL),(1697,25,1,63,98,NULL),(1698,25,1,63,99,NULL),(1699,25,1,0,144,NULL),(1700,25,1,0,158,NULL),(1701,25,1,0,151,NULL),(1702,25,1,0,159,NULL),(1703,25,1,0,145,NULL),(1704,25,1,0,120,NULL),(1705,25,1,0,135,NULL),(1706,25,1,0,94,NULL),(1707,25,1,0,102,NULL),(1708,25,1,0,108,NULL),(1709,25,1,0,88,NULL),(1710,25,1,0,89,NULL),(1711,25,1,63,163,NULL),(1712,25,1,63,190,NULL),(1713,25,1,63,195,NULL),(1714,25,1,63,169,NULL),(1715,25,1,0,90,NULL),(1716,25,1,0,131,NULL),(1717,25,1,0,84,NULL),(1718,25,1,0,109,NULL),(1719,25,1,0,103,NULL),(1720,25,1,0,95,NULL),(1721,25,1,0,139,NULL),(1722,25,1,0,123,NULL),(1723,25,1,0,146,NULL),(1724,25,1,0,147,NULL),(1725,25,1,0,124,NULL),(1726,25,1,0,136,NULL),(1727,25,1,0,96,NULL),(1728,25,1,0,100,NULL),(1729,25,1,0,104,NULL),(1730,25,1,0,110,NULL),(1731,25,1,0,132,NULL),(1732,25,1,0,133,NULL),(1733,25,1,63,174,NULL),(1734,25,1,63,199,NULL),(1735,25,1,63,204,NULL),(1736,25,1,63,180,NULL),(1737,25,1,0,111,NULL),(1738,25,1,0,105,NULL),(1739,25,1,0,101,NULL),(1740,25,1,0,97,NULL),(1741,25,1,0,137,NULL),(1742,25,1,0,134,NULL),(1743,25,1,0,121,NULL),(1744,25,1,0,148,NULL),(1745,25,1,0,149,NULL),(1746,25,1,0,140,NULL),(1747,25,1,0,138,NULL),(1748,25,1,0,106,NULL),(1749,25,1,0,107,NULL),(1750,25,1,63,184,NULL),(1751,25,1,0,87,NULL),(1752,25,1,63,208,NULL),(1753,25,1,63,189,NULL),(1754,25,1,63,213,NULL),(1755,25,1,0,85,NULL),(1756,25,1,0,122,NULL),(1757,25,1,0,125,NULL),(1758,25,1,0,150,NULL),(1759,25,1,0,83,NULL),(1760,25,1,0,86,NULL),(1761,25,1,0,119,NULL),(1762,25,1,0,126,NULL),(1763,25,1,0,127,NULL),(1764,25,1,0,152,NULL),(1765,25,1,0,153,NULL),(1766,25,1,0,154,NULL),(1767,25,1,0,156,NULL),(1768,25,1,0,157,NULL),(1769,25,1,0,155,NULL),(1770,25,1,63,164,NULL),(1771,25,1,63,175,NULL),(1772,25,1,63,170,NULL),(1773,25,1,63,185,NULL),(1774,25,1,63,181,NULL),(1775,25,1,63,196,NULL),(1776,25,1,63,191,NULL),(1777,25,1,63,209,NULL),(1778,25,1,63,205,NULL),(1779,25,1,63,200,NULL),(1780,25,1,0,160,NULL),(1781,25,1,0,141,NULL),(1782,25,1,0,129,NULL),(1783,25,1,0,130,NULL),(1784,25,1,0,142,NULL),(1785,25,1,0,161,NULL),(1786,25,1,63,201,NULL),(1787,25,1,63,206,NULL),(1788,25,1,63,210,NULL),(1789,25,1,63,192,NULL),(1790,25,1,63,197,NULL),(1791,25,1,63,182,NULL),(1792,25,1,63,186,NULL),(1793,25,1,63,171,NULL),(1794,25,1,63,176,NULL),(1795,25,1,63,165,NULL),(1796,25,1,63,166,NULL),(1797,25,1,63,177,NULL),(1798,25,1,63,172,NULL),(1799,25,1,63,187,NULL),(1800,25,1,63,183,NULL),(1801,25,1,63,198,NULL),(1802,25,1,63,193,NULL),(1803,25,1,63,211,NULL),(1804,25,1,63,207,NULL),(1805,25,1,63,202,NULL),(1806,25,1,0,162,NULL),(1807,25,1,0,143,NULL),(1808,25,1,63,203,NULL),(1809,25,1,63,212,NULL),(1810,25,1,63,194,NULL),(1811,25,1,63,188,NULL),(1812,25,1,63,173,NULL),(1813,25,1,63,178,NULL),(1814,25,1,63,167,NULL),(1815,25,1,63,168,NULL),(1816,25,1,63,179,NULL),(1817,24,1,63,214,NULL),(1818,24,1,0,228,NULL),(1819,24,2,0,90,NULL),(1820,24,2,0,86,NULL),(1821,24,2,0,91,NULL),(1822,24,2,0,87,NULL),(1823,24,2,0,88,NULL),(1824,24,2,0,89,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
