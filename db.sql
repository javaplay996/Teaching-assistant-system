/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiaoxuefuzhuxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiaoxuefuzhuxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiaoxuefuzhuxitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2023-02-22 13:21:46'),(2,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2023-02-22 13:21:46'),(3,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2023-02-22 13:21:46'),(4,'jiaoxueshipin_types','教学视频类型',1,'教学视频类型1',NULL,NULL,'2023-02-22 13:21:46'),(5,'jiaoxueshipin_types','教学视频类型',2,'教学视频类型2',NULL,NULL,'2023-02-22 13:21:46'),(6,'jiaoxueshipin_types','教学视频类型',3,'教学视频类型3',NULL,NULL,'2023-02-22 13:21:46'),(7,'zuoye_types','作业类型',1,'作业类型1',NULL,NULL,'2023-02-22 13:21:46'),(8,'zuoye_types','作业类型',2,'作业类型2',NULL,NULL,'2023-02-22 13:21:46'),(9,'zuoye_types','作业类型',3,'作业类型3',NULL,NULL,'2023-02-22 13:21:46'),(10,'zuoyetijiao_types','作业成绩',4,'优',NULL,NULL,'2023-02-22 13:21:46'),(11,'zuoyetijiao_types','作业成绩',3,'良',NULL,NULL,'2023-02-22 13:21:46'),(12,'zuoyetijiao_types','作业成绩',2,'差',NULL,NULL,'2023-02-22 13:21:46'),(13,'zuoyetijiao_types','作业成绩',1,'未评分',NULL,NULL,'2023-02-22 13:21:46'),(14,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-02-22 13:21:47'),(15,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-02-22 13:21:47'),(16,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-02-22 13:21:47'),(17,'sex_types','性别',1,'男',NULL,NULL,'2023-02-22 13:21:47'),(18,'sex_types','性别',2,'女',NULL,NULL,'2023-02-22 13:21:47'),(19,'banji_types','班级',1,'班级1',NULL,NULL,'2023-02-22 13:21:47'),(20,'banji_types','班级',2,'班级2',NULL,NULL,'2023-02-22 13:21:47'),(21,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-02-22 13:21:47'),(22,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-02-22 13:21:47');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='交流平台';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`jiaoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,NULL,'发布内容1',199,1,'2023-02-22 13:21:56','2023-02-22 13:21:56','2023-02-22 13:21:56'),(2,'帖子标题2',3,NULL,NULL,'发布内容2',19,1,'2023-02-22 13:21:56','2023-02-22 13:21:56','2023-02-22 13:21:56'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',466,1,'2023-02-22 13:21:56','2023-02-22 13:21:56','2023-02-22 13:21:56'),(4,'帖子标题4',3,NULL,NULL,'发布内容4',77,1,'2023-02-22 13:21:56','2023-02-22 13:21:56','2023-02-22 13:21:56'),(5,'帖子标题5',1,NULL,NULL,'发布内容5',37,1,'2023-02-22 13:21:56','2023-02-22 13:21:56','2023-02-22 13:21:56'),(8,NULL,1,NULL,NULL,'1231',5,2,'2023-02-22 14:41:59',NULL,'2023-02-22 14:41:59'),(9,NULL,NULL,1,NULL,'123',5,2,'2023-02-22 14:44:05',NULL,'2023-02-22 14:44:05'),(10,NULL,NULL,3,NULL,'321',5,2,'2023-02-22 14:45:07',NULL,'2023-02-22 14:45:07'),(11,NULL,NULL,NULL,1,'231321',5,2,'2023-02-22 14:45:58',NULL,'2023-02-22 14:45:58');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `jiaoshi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_photo`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_email`,`jiaoshi_delete`,`create_time`) values (1,'a1','123456','教师姓名1',2,'upload/jiaoshi1.jpg','410224199010102001','17703786901','1@qq.com',1,'2023-02-22 13:21:56'),(2,'a2','123456','教师姓名2',1,'upload/jiaoshi2.jpg','410224199010102002','17703786902','2@qq.com',1,'2023-02-22 13:21:56'),(3,'a3','123456','教师姓名3',2,'upload/jiaoshi3.jpg','410224199010102003','17703786903','3@qq.com',1,'2023-02-22 13:21:56');

/*Table structure for table `jiaoxueshipin` */

DROP TABLE IF EXISTS `jiaoxueshipin`;

CREATE TABLE `jiaoxueshipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoxueshipin_name` varchar(200) DEFAULT NULL COMMENT '教学视频标题 Search111',
  `jiaoxueshipin_photo` varchar(200) DEFAULT NULL COMMENT '教学视频照片',
  `jiaoxueshipin_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `jiaoxueshipin_file` varchar(200) DEFAULT NULL COMMENT '教学资料',
  `jiaoxueshipin_types` int(11) DEFAULT NULL COMMENT '教学视频类型 Search111',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `jiaoxueshipin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `jiaoxueshipin_content` text COMMENT '教学视频详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='教学视频';

/*Data for the table `jiaoxueshipin` */

insert  into `jiaoxueshipin`(`id`,`jiaoxueshipin_name`,`jiaoxueshipin_photo`,`jiaoxueshipin_video`,`jiaoxueshipin_file`,`jiaoxueshipin_types`,`jiaoshi_id`,`jiaoxueshipin_delete`,`jiaoxueshipin_content`,`create_time`) values (1,'教学视频标题1','upload/kecheng1.jpg','upload/video.mp4','upload/file.rar',1,2,1,'教学视频详情1','2023-02-22 13:21:56'),(2,'教学视频标题2','upload/kecheng2.jpg','upload/video.mp4','upload/file.rar',2,3,1,'教学视频详情2','2023-02-22 13:21:56'),(3,'教学视频标题3','upload/kecheng3.jpg','upload/video.mp4','upload/file.rar',3,1,1,'教学视频详情3','2023-02-22 13:21:56'),(4,'教学视频标题4','upload/kecheng4.jpg','upload/video.mp4','upload/file.rar',1,3,1,'教学视频详情4','2023-02-22 13:21:56'),(5,'教学视频标题5','upload/kecheng5.jpg','upload/video.mp4','upload/file.rar',3,2,1,'教学视频详情5','2023-02-22 13:21:56');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程标题 Search111',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程照片',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_shichang` int(11) DEFAULT NULL COMMENT '课程时长',
  `kecheng_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `kecheng_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `kecheng_content` text COMMENT '课程详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_name`,`kecheng_photo`,`kecheng_types`,`kecheng_shichang`,`kecheng_time`,`banji_types`,`jiaoshi_id`,`kecheng_delete`,`kecheng_content`,`create_time`) values (1,'课程标题1','upload/kecheng1.jpg',2,25,'2023-02-22 13:21:56',2,3,1,'课程详情1','2023-02-22 13:21:56'),(2,'课程标题2','upload/kecheng2.jpg',3,235,'2023-02-22 13:21:56',2,2,1,'课程详情2','2023-02-22 13:21:56'),(3,'课程标题3','upload/kecheng3.jpg',2,51,'2023-02-22 13:21:56',2,2,1,'课程详情3','2023-02-22 13:21:56'),(4,'课程标题4','upload/kecheng4.jpg',3,336,'2023-02-22 13:21:56',2,3,1,'课程详情4','2023-02-22 13:21:56'),(5,'课程标题5','upload/kecheng5.jpg',1,130,'2023-02-22 13:21:56',2,3,1,'课程详情5','2023-02-22 13:21:56');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'upload/news1.jpg','2023-02-22 13:21:56','公告详情1','2023-02-22 13:21:56'),(2,'公告标题2',1,'upload/news2.jpg','2023-02-22 13:21:56','公告详情2','2023-02-22 13:21:56'),(3,'公告标题3',2,'upload/news3.jpg','2023-02-22 13:21:56','公告详情3','2023-02-22 13:21:56'),(4,'公告标题4',2,'upload/news4.jpg','2023-02-22 13:21:56','公告详情4','2023-02-22 13:21:56'),(5,'公告标题5',2,'upload/news5.jpg','2023-02-22 13:21:56','公告详情5','2023-02-22 13:21:56');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','学生','93ud254ojd90qrz52s4deturqw2iifdr','2023-02-22 13:35:32','2023-02-22 15:41:51'),(2,1,'admin','users','管理员','418hvu9zoytyhzpnidq7ltx6haqbw34e','2023-02-22 13:58:31','2023-02-22 15:47:13'),(3,1,'a1','jiaoshi','教师','p75dxsswdp58k6x45pwru3ozd5yzhgp6','2023-02-22 14:28:57','2023-02-22 15:43:14'),(4,2,'a2','jiaoshi','教师','yvdgmdqtj2j34yiaoce2t4ave3nk6ems','2023-02-22 14:29:05','2023-02-22 15:29:05'),(5,3,'a3','jiaoshi','教师','60i112nn5lu6h7wop22w7vw1wt80t8dl','2023-02-22 14:29:18','2023-02-22 15:44:16');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_photo`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`banji_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','学生姓名1',1,'upload/yonghu1.jpg','410224199010102001','17703786901','1@qq.com',2,1,'2023-02-22 13:21:56'),(2,'a2','123456','学生姓名2',1,'upload/yonghu2.jpg','410224199010102002','17703786902','2@qq.com',2,1,'2023-02-22 13:21:56'),(3,'a3','123456','学生姓名3',2,'upload/yonghu3.jpg','410224199010102003','17703786903','3@qq.com',1,1,'2023-02-22 13:21:56');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业标题 Search111',
  `zuoye_photo` varchar(200) DEFAULT NULL COMMENT '作业照片',
  `zuoye_types` int(11) DEFAULT NULL COMMENT '作业类型 Search111',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111',
  `zuoye_content` text COMMENT '作业详情',
  `zuoye_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`zuoye_name`,`zuoye_photo`,`zuoye_types`,`zuoye_file`,`jiaoshi_id`,`banji_types`,`zuoye_content`,`zuoye_delete`,`insert_time`,`create_time`) values (1,'作业标题1','upload/zuoye1.jpg',3,'upload/file.rar',2,1,'作业详情1',1,'2023-02-22 13:21:56','2023-02-22 13:21:56'),(2,'作业标题2','upload/zuoye2.jpg',2,'upload/file.rar',3,2,'作业详情2',1,'2023-02-22 13:21:56','2023-02-22 13:21:56'),(3,'作业标题3','upload/zuoye3.jpg',1,'upload/file.rar',3,1,'作业详情3',1,'2023-02-22 13:21:56','2023-02-22 13:21:56'),(4,'作业标题4','upload/zuoye4.jpg',3,'upload/file.rar',3,2,'作业详情4',1,'2023-02-22 13:21:56','2023-02-22 13:21:56'),(5,'作业标题5','upload/zuoye5.jpg',1,'upload/file.rar',3,1,'作业详情5',1,'2023-02-22 13:21:56','2023-02-22 13:21:56');

/*Table structure for table `zuoyetijiao` */

DROP TABLE IF EXISTS `zuoyetijiao`;

CREATE TABLE `zuoyetijiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_id` int(11) DEFAULT NULL COMMENT '作业',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `zuoyetijiao_file` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `zuoyetijiao_types` int(11) DEFAULT NULL COMMENT '作业评分 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='作业提交';

/*Data for the table `zuoyetijiao` */

insert  into `zuoyetijiao`(`id`,`zuoye_id`,`yonghu_id`,`zuoyetijiao_file`,`zuoyetijiao_types`,`create_time`) values (1,5,3,'upload/file.rar',1,'2023-02-22 13:21:56'),(2,5,1,'upload/file.rar',2,'2023-02-22 13:21:56'),(3,5,2,'upload/file.rar',3,'2023-02-22 13:21:56'),(4,4,1,'upload/file.rar',2,'2023-02-22 13:21:56'),(5,4,2,'upload/file.rar',4,'2023-02-22 13:21:56'),(6,3,1,'upload/1677048173174.rar',4,'2023-02-22 14:42:55');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
