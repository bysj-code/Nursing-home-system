/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yanglaoyuangxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yanglaoyuangxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yanglaoyuangxitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'fuwuxiangmu_types','服务项目类型',1,'体温测量',NULL,NULL,'2023-03-24 11:11:53'),(2,'fuwuxiangmu_types','服务项目类型',2,'血常规',NULL,NULL,'2023-03-24 11:11:53'),(3,'fuwuxiangmu_types','服务项目类型',3,'心电图',NULL,NULL,'2023-03-24 11:11:53'),(4,'fuwuxiangmu_yuyue_yesno_types',' ',1,'待审核',NULL,NULL,'2023-03-24 11:11:53'),(5,'fuwuxiangmu_yuyue_yesno_types',' ',2,'同意',NULL,NULL,'2023-03-24 11:11:53'),(6,'fuwuxiangmu_yuyue_yesno_types',' ',3,'拒绝',NULL,NULL,'2023-03-24 11:11:53'),(7,'meishi_types','餐食类型',1,'餐食类型1',NULL,NULL,'2023-03-24 11:11:53'),(8,'meishi_types','餐食类型',2,'餐食类型2',NULL,NULL,'2023-03-24 11:11:53'),(9,'meishi_types','餐食类型',3,'餐食类型3',NULL,NULL,'2023-03-24 11:11:53'),(10,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-24 11:11:53'),(11,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-24 11:11:53'),(12,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-24 11:11:53'),(13,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-24 11:11:53'),(14,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-24 11:11:53'),(15,'yisheng_types','科室',1,'心内科',NULL,NULL,'2023-03-24 11:11:53'),(16,'yisheng_types','科室',2,'内科经典',NULL,NULL,'2023-03-24 11:11:53'),(17,'yisheng_types','科室',3,'肾病科',NULL,NULL,'2023-03-24 11:11:53'),(18,'yisheng_order_types','订单类型',101,'已挂号',NULL,NULL,'2023-03-24 11:11:53'),(19,'yisheng_order_types','订单类型',102,'已取消',NULL,NULL,'2023-03-24 11:11:53'),(20,'yisheng_order_types','订单类型',103,'已完成',NULL,NULL,'2023-03-24 11:11:53'),(21,'shijianduan_types','挂号时间段',1,'08:00-10:00',NULL,NULL,'2023-03-24 11:11:53'),(22,'shijianduan_types','挂号时间段',2,'10:00-11:30',NULL,NULL,'2023-03-24 11:11:53'),(23,'shijianduan_types','挂号时间段',3,'03:00-06:00',NULL,NULL,'2023-03-24 11:11:53'),(24,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-24 11:11:53'),(25,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-24 11:11:53');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`yisheng_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,NULL,'发布内容1',343,1,'2023-03-24 11:12:04','2023-03-24 11:12:04','2023-03-24 11:12:04'),(2,'帖子标题2',2,NULL,NULL,'发布内容2',356,1,'2023-03-24 11:12:04','2023-03-24 11:12:04','2023-03-24 11:12:04'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',70,1,'2023-03-24 11:12:04','2023-03-24 11:12:04','2023-03-24 11:12:04'),(4,'帖子标题4',1,NULL,NULL,'发布内容4',26,1,'2023-03-24 11:12:04','2023-03-24 11:12:04','2023-03-24 11:12:04'),(5,'帖子标题5',3,NULL,NULL,'发布内容5',385,1,'2023-03-24 11:12:04','2023-03-24 11:12:04','2023-03-24 11:12:04'),(6,'帖子标题6',1,NULL,NULL,'发布内容6',393,1,'2023-03-24 11:12:04','2023-03-24 11:12:04','2023-03-24 11:12:04'),(7,'帖子标题7',3,NULL,NULL,'发布内容7',12,1,'2023-03-24 11:12:04','2023-03-24 11:12:04','2023-03-24 11:12:04'),(8,'帖子标题8',1,NULL,NULL,'发布内容8',220,1,'2023-03-24 11:12:04','2023-03-24 11:12:04','2023-03-24 11:12:04'),(9,'帖子标题9',3,NULL,NULL,'发布内容9',363,1,'2023-03-24 11:12:04','2023-03-24 11:12:04','2023-03-24 11:12:04'),(10,'帖子标题10',3,NULL,NULL,'发布内容10',168,1,'2023-03-24 11:12:04','2023-03-24 11:12:04','2023-03-24 11:12:04'),(11,'帖子标题11',1,NULL,NULL,'发布内容11',388,1,'2023-03-24 11:12:04','2023-03-24 11:12:04','2023-03-24 11:12:04'),(12,'帖子标题12',3,NULL,NULL,'发布内容12',110,1,'2023-03-24 11:12:04','2023-03-24 11:12:04','2023-03-24 11:12:04'),(13,'帖子标题13',3,NULL,NULL,'发布内容13',109,1,'2023-03-24 11:12:04','2023-03-24 11:12:04','2023-03-24 11:12:04'),(14,'帖子标题14',3,NULL,NULL,'发布内容14',176,1,'2023-03-24 11:12:04','2023-03-24 11:12:04','2023-03-24 11:12:04'),(15,NULL,NULL,1,NULL,'12312',14,2,'2023-03-24 13:24:02',NULL,'2023-03-24 13:24:02'),(16,NULL,NULL,NULL,1,'123123',14,2,'2023-03-24 13:24:55',NULL,'2023-03-24 13:24:55'),(17,NULL,1,NULL,NULL,'12312',14,2,'2023-03-24 13:31:23',NULL,'2023-03-24 13:31:23');

/*Table structure for table `fuwuxiangmu` */

DROP TABLE IF EXISTS `fuwuxiangmu`;

CREATE TABLE `fuwuxiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fuwuxiangmu_name` varchar(200) DEFAULT NULL COMMENT '服务项目名称  Search111 ',
  `fuwuxiangmu_types` int(11) DEFAULT NULL COMMENT '服务项目类型 Search111',
  `fuwuxiangmu_photo` varchar(200) DEFAULT NULL COMMENT '服务项目封面',
  `fuwuxiangmu_content` longtext COMMENT '服务项目介绍 ',
  `fuwuxiangmu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间   show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='服务项目';

/*Data for the table `fuwuxiangmu` */

insert  into `fuwuxiangmu`(`id`,`fuwuxiangmu_name`,`fuwuxiangmu_types`,`fuwuxiangmu_photo`,`fuwuxiangmu_content`,`fuwuxiangmu_delete`,`insert_time`,`create_time`) values (1,'服务项目名称1',3,'upload/fuwuxiangmu1.jpg','服务项目介绍1',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(2,'服务项目名称2',3,'upload/fuwuxiangmu2.jpg','服务项目介绍2',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(3,'服务项目名称3',2,'upload/fuwuxiangmu3.jpg','服务项目介绍3',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(4,'服务项目名称4',3,'upload/fuwuxiangmu4.jpg','服务项目介绍4',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(5,'服务项目名称5',2,'upload/fuwuxiangmu5.jpg','服务项目介绍5',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(6,'服务项目名称6',1,'upload/fuwuxiangmu6.jpg','服务项目介绍6',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(7,'服务项目名称7',1,'upload/fuwuxiangmu7.jpg','服务项目介绍7',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(8,'服务项目名称8',1,'upload/fuwuxiangmu8.jpg','服务项目介绍8',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(9,'服务项目名称9',2,'upload/fuwuxiangmu9.jpg','服务项目介绍9',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(10,'服务项目名称10',1,'upload/fuwuxiangmu10.jpg','服务项目介绍10',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(11,'服务项目名称11',3,'upload/fuwuxiangmu11.jpg','服务项目介绍11',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(12,'服务项目名称12',2,'upload/fuwuxiangmu12.jpg','服务项目介绍12',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(13,'服务项目名称13',2,'upload/fuwuxiangmu13.jpg','服务项目介绍13',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(14,'服务项目名称14',2,'upload/fuwuxiangmu14.jpg','服务项目介绍14',1,'2023-03-24 11:12:04','2023-03-24 11:12:04');

/*Table structure for table `fuwuxiangmu_yuyue` */

DROP TABLE IF EXISTS `fuwuxiangmu_yuyue`;

CREATE TABLE `fuwuxiangmu_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fuwuxiangmu_id` int(11) DEFAULT NULL COMMENT '服务项目',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fuwuxiangmu_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `fuwuxiangmu_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111 ',
  `fuwuxiangmu_yuyue_yesno_text` longtext COMMENT '审核回复',
  `fuwuxiangmu_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '服务项目服务项目时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='服务项目预约';

/*Data for the table `fuwuxiangmu_yuyue` */

insert  into `fuwuxiangmu_yuyue`(`id`,`fuwuxiangmu_id`,`yonghu_id`,`fuwuxiangmu_yuyue_time`,`fuwuxiangmu_yuyue_yesno_types`,`fuwuxiangmu_yuyue_yesno_text`,`fuwuxiangmu_yuyue_shenhe_time`,`insert_time`,`create_time`) values (2,10,1,'2023-03-24 13:29:53',1,'',NULL,'2023-03-24 13:29:57','2023-03-24 13:29:57');

/*Table structure for table `meishi` */

DROP TABLE IF EXISTS `meishi`;

CREATE TABLE `meishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '餐食名称  Search111 ',
  `meishi_types` int(11) DEFAULT NULL COMMENT '餐食类型 Search111',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '餐食封面',
  `meishi_content` longtext COMMENT '餐食介绍 ',
  `meishi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='餐食目录';

/*Data for the table `meishi` */

insert  into `meishi`(`id`,`meishi_name`,`meishi_types`,`meishi_photo`,`meishi_content`,`meishi_delete`,`insert_time`,`create_time`) values (1,'餐食名称1',2,'upload/meishi1.jpg','餐食介绍1',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(2,'餐食名称2',1,'upload/meishi2.jpg','餐食介绍2',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(3,'餐食名称3',2,'upload/meishi3.jpg','餐食介绍3',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(4,'餐食名称4',3,'upload/meishi4.jpg','餐食介绍4',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(5,'餐食名称5',2,'upload/meishi5.jpg','餐食介绍5',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(6,'餐食名称6',2,'upload/meishi6.jpg','餐食介绍6',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(7,'餐食名称7',3,'upload/meishi7.jpg','餐食介绍7',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(8,'餐食名称8',1,'upload/meishi1.jpg','餐食介绍8',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(9,'餐食名称9',1,'upload/meishi2.jpg','餐食介绍9',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(10,'餐食名称10',2,'upload/meishi3.jpg','餐食介绍10',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(11,'餐食名称11',1,'upload/meishi4.jpg','餐食介绍11',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(12,'餐食名称12',1,'upload/meishi5.jpg','餐食介绍12',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(13,'餐食名称13',3,'upload/meishi6.jpg','餐食介绍13',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(14,'餐食名称14',1,'upload/meishi7.jpg','餐食介绍14',1,'2023-03-24 11:12:04','2023-03-24 11:12:04');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-03-24 11:12:04','公告详情1','2023-03-24 11:12:04'),(2,'公告标题2',1,'upload/news2.jpg','2023-03-24 11:12:04','公告详情2','2023-03-24 11:12:04'),(3,'公告标题3',3,'upload/news3.jpg','2023-03-24 11:12:04','公告详情3','2023-03-24 11:12:04'),(4,'公告标题4',3,'upload/news4.jpg','2023-03-24 11:12:04','公告详情4','2023-03-24 11:12:04'),(5,'公告标题5',3,'upload/news5.jpg','2023-03-24 11:12:04','公告详情5','2023-03-24 11:12:04'),(6,'公告标题6',1,'upload/news6.jpg','2023-03-24 11:12:04','公告详情6','2023-03-24 11:12:04'),(7,'公告标题7',3,'upload/news7.jpg','2023-03-24 11:12:04','公告详情7','2023-03-24 11:12:04'),(8,'公告标题8',3,'upload/news8.jpg','2023-03-24 11:12:04','公告详情8','2023-03-24 11:12:04'),(9,'公告标题9',2,'upload/news9.jpg','2023-03-24 11:12:04','公告详情9','2023-03-24 11:12:04'),(10,'公告标题10',2,'upload/news10.jpg','2023-03-24 11:12:04','公告详情10','2023-03-24 11:12:04'),(11,'公告标题11',1,'upload/news11.jpg','2023-03-24 11:12:04','公告详情11','2023-03-24 11:12:04'),(12,'公告标题12',2,'upload/news12.jpg','2023-03-24 11:12:04','公告详情12','2023-03-24 11:12:04'),(13,'公告标题13',3,'upload/news13.jpg','2023-03-24 11:12:04','公告详情13','2023-03-24 11:12:04'),(14,'公告标题14',3,'upload/news14.jpg','2023-03-24 11:12:04','公告详情14','2023-03-24 11:12:04');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '医院id',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','6rjkzn1vhu1tfpvr05c6oh0lmlzbeaih','2023-03-24 11:14:50','2023-03-24 14:33:05'),(2,1,'a1','yonghu','用户','xvhg5ridubn66irijkimz87qqi06764b','2023-03-24 11:23:43','2023-03-24 14:29:47'),(3,1,'a1','yisheng','医生','27cx440pkb77fr0syt9rtwthmxwl6es0','2023-03-24 13:23:04','2023-03-24 14:23:39');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-24 11:11:52');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生名称 Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '医生手机号',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '医生邮箱',
  `yisheng_types` int(11) DEFAULT NULL COMMENT '科室 Search111',
  `yisheng_number` int(11) DEFAULT NULL COMMENT '挂号人数限制',
  `yisheng_newMoney` decimal(10,2) DEFAULT NULL COMMENT '挂号价格',
  `yisheng_time` timestamp NULL DEFAULT NULL COMMENT '在诊日期',
  `yisheng_zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `yisheng_content` longtext COMMENT '医生简介',
  `yisheng_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`username`,`password`,`yisheng_name`,`yisheng_phone`,`yisheng_photo`,`sex_types`,`yisheng_email`,`yisheng_types`,`yisheng_number`,`yisheng_newMoney`,`yisheng_time`,`yisheng_zhicheng`,`yisheng_content`,`yisheng_delete`,`insert_time`,`create_time`) values (1,'a1','123456','医生名称1','17703786901','upload/yisheng1.jpg',2,'1@qq.com',1,184,'76.65','2023-03-24 11:12:04','职称1','医生简介1',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(2,'a2','123456','医生名称2','17703786902','upload/yisheng2.jpg',2,'2@qq.com',1,79,'473.18','2023-03-24 11:12:04','职称2','医生简介2',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(3,'a3','123456','医生名称3','17703786903','upload/yisheng3.jpg',2,'3@qq.com',3,272,'476.32','2023-03-24 11:12:04','职称3','医生简介3',1,'2023-03-24 11:12:04','2023-03-24 11:12:04');

/*Table structure for table `yisheng_order` */

DROP TABLE IF EXISTS `yisheng_order`;

CREATE TABLE `yisheng_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '编号 Search111 ',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yisheng_order_time` date DEFAULT NULL COMMENT '挂号日期',
  `shijianduan_types` int(11) DEFAULT NULL COMMENT '挂号时间段',
  `yisheng_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `yisheng_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `yisheng_order` */

insert  into `yisheng_order`(`id`,`yisheng_order_uuid_number`,`yisheng_id`,`yonghu_id`,`yisheng_order_time`,`shijianduan_types`,`yisheng_order_true_price`,`yisheng_order_types`,`insert_time`,`create_time`) values (1,'1679629389599',1,1,'2023-10-24',1,'476.32',103,'2023-03-24 11:43:12','2023-03-24 11:43:12'),(2,'1679635858611',3,1,'2023-07-24',2,'476.32',102,'2023-03-24 13:30:59','2023-03-24 13:30:59');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户名称1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','10005.04',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(2,'a2','123456','用户名称2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','255.91',1,'2023-03-24 11:12:04','2023-03-24 11:12:04'),(3,'a3','123456','用户名称3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','475.41',1,'2023-03-24 11:12:04','2023-03-24 11:12:04');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
