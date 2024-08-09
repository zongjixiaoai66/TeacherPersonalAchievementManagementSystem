/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t308`;
CREATE DATABASE IF NOT EXISTS `t308` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t308`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'jiaoxuegongzuo_types', '工作类型', 1, '工作类型1', NULL, NULL, '2022-04-14 11:53:12'),
	(2, 'jiaoxuegongzuo_types', '工作类型', 2, '工作类型2', NULL, NULL, '2022-04-14 11:53:12'),
	(3, 'jiaoxuegongzuo_types', '工作类型', 3, '工作类型3', NULL, NULL, '2022-04-14 11:53:12'),
	(4, 'zhiyepeixun_types', '荣誉类型', 1, '指导学生竞赛获奖', NULL, NULL, '2022-04-14 11:53:13'),
	(5, 'zhiyepeixun_types', '荣誉类型', 2, '教学科研获奖', NULL, NULL, '2022-04-14 11:53:13'),
	(6, 'luenwen_types', '论文类型', 1, '论文类型1', NULL, NULL, '2022-04-14 11:53:13'),
	(7, 'luenwen_types', '论文类型', 2, '论文类型2', NULL, NULL, '2022-04-14 11:53:13'),
	(8, 'luenwen_types', '论文类型', 3, '论文类型3', NULL, NULL, '2022-04-14 11:53:13'),
	(9, 'ketixinxi_types', '课题类型', 1, '课题类型1', NULL, NULL, '2022-04-14 11:53:13'),
	(10, 'ketixinxi_types', '课题类型', 2, '课题类型2', NULL, NULL, '2022-04-14 11:53:13'),
	(11, 'ketixinxi_types', '课题类型', 3, '课题类型3', NULL, NULL, '2022-04-14 11:53:13'),
	(12, 'jiaocaizhuanzhu_types', '教材类型', 1, '教材类型1', NULL, NULL, '2022-04-14 11:53:13'),
	(13, 'jiaocaizhuanzhu_types', '教材类型', 2, '教材类型2', NULL, NULL, '2022-04-14 11:53:13'),
	(14, 'jiaocaizhuanzhu_types', '教材类型', 3, '教材类型3', NULL, NULL, '2022-04-14 11:53:13'),
	(15, 'zhuanlixinxi_types', '专利类型', 1, '专利类型1', NULL, NULL, '2022-04-14 11:53:13'),
	(16, 'zhuanlixinxi_types', '专利类型', 2, '专利类型2', NULL, NULL, '2022-04-14 11:53:13'),
	(17, 'zhuanlixinxi_types', '专利类型', 3, '专利类型3', NULL, NULL, '2022-04-14 11:53:13'),
	(18, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-14 11:53:13'),
	(19, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-14 11:53:13'),
	(20, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-04-14 11:53:13'),
	(21, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-14 11:53:13'),
	(22, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-14 11:53:13'),
	(23, 'xibu_types', '系部', 1, '系部1', NULL, NULL, '2022-04-14 11:53:13'),
	(24, 'xibu_types', '系部', 2, '系部2', NULL, NULL, '2022-04-14 11:53:13');

DROP TABLE IF EXISTS `jiaocaizhuanzhu`;
CREATE TABLE IF NOT EXISTS `jiaocaizhuanzhu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaocaizhuanzhu_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `jiaocaizhuanzhu_types` int DEFAULT NULL COMMENT '教材类型 Search111',
  `yonghu_id` int DEFAULT NULL COMMENT '教师',
  `renyuan_file` varchar(200) DEFAULT NULL COMMENT '教材文件',
  `jiaocaizhuanzhu_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='教材信息';

DELETE FROM `jiaocaizhuanzhu`;
INSERT INTO `jiaocaizhuanzhu` (`id`, `jiaocaizhuanzhu_name`, `jiaocaizhuanzhu_types`, `yonghu_id`, `renyuan_file`, `jiaocaizhuanzhu_content`, `create_time`) VALUES
	(1, '标题1', 1, 1, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情1', '2022-04-14 11:53:22'),
	(2, '标题2', 1, 2, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情2', '2022-04-14 11:53:22'),
	(3, '标题3', 3, 1, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情3', '2022-04-14 11:53:22'),
	(4, '标题4', 1, 3, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情4', '2022-04-14 11:53:22'),
	(5, '标题5', 2, 2, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情5', '2022-04-14 11:53:22');

DROP TABLE IF EXISTS `jiaoxuegongzuo`;
CREATE TABLE IF NOT EXISTS `jiaoxuegongzuo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoxuegongzuo_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `yonghu_id` int DEFAULT NULL COMMENT '教师',
  `jiaoxuegongzuo_types` int DEFAULT NULL COMMENT '工作类型 Search111',
  `jiaoxuegongzuo_xueqi` varchar(200) DEFAULT NULL COMMENT '学期 ',
  `jiaoxuegongzuo_kecheng` varchar(200) DEFAULT NULL COMMENT '课程 ',
  `jiaoxuegongzuo_banji` varchar(200) DEFAULT NULL COMMENT '班级 ',
  `jiaoxuegongzuo_content` text COMMENT '详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='教学工作';

DELETE FROM `jiaoxuegongzuo`;
INSERT INTO `jiaoxuegongzuo` (`id`, `jiaoxuegongzuo_name`, `yonghu_id`, `jiaoxuegongzuo_types`, `jiaoxuegongzuo_xueqi`, `jiaoxuegongzuo_kecheng`, `jiaoxuegongzuo_banji`, `jiaoxuegongzuo_content`, `insert_time`, `create_time`) VALUES
	(1, '标题1', 1, 2, '学期2', '课程1', '班级1', '<p>详情1</p>', '2022-04-14 11:53:22', '2022-04-14 11:53:22'),
	(2, '标题2', 2, 1, '学期2', '课程2', '班级2', '详情2', '2022-04-14 11:53:22', '2022-04-14 11:53:22'),
	(3, '标题3', 3, 2, '学期3', '课程3', '班级3', '详情3', '2022-04-14 11:53:22', '2022-04-14 11:53:22'),
	(4, '标题4', 2, 1, '学期4', '课程4', '班级4', '详情4', '2022-04-14 11:53:22', '2022-04-14 11:53:22'),
	(5, '标题5', 3, 3, '学期5', '课程5', '班级5', '详情5', '2022-04-14 11:53:22', '2022-04-14 11:53:22');

DROP TABLE IF EXISTS `ketixinxi`;
CREATE TABLE IF NOT EXISTS `ketixinxi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ketixinxi_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `ketixinxi_types` int DEFAULT NULL COMMENT '课题类型 Search111',
  `yonghu_id` int DEFAULT NULL COMMENT '教师',
  `renyuan_file` varchar(200) DEFAULT NULL COMMENT '课题文件',
  `ketixinxi_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='课题信息';

DELETE FROM `ketixinxi`;
INSERT INTO `ketixinxi` (`id`, `ketixinxi_name`, `ketixinxi_types`, `yonghu_id`, `renyuan_file`, `ketixinxi_content`, `create_time`) VALUES
	(1, '标题1', 1, 2, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情1', '2022-04-14 11:53:22'),
	(2, '标题2', 3, 2, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情2', '2022-04-14 11:53:22'),
	(3, '标题3', 1, 2, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情3', '2022-04-14 11:53:22'),
	(4, '标题4', 2, 3, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情4', '2022-04-14 11:53:22'),
	(5, '标题5', 3, 2, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情5', '2022-04-14 11:53:22'),
	(6, '标题6', 3, 1, 'http://localhost:8080/jiaoshigerenchengguo/upload/1649937666101.rar', '<p><span style="color: rgb(96, 98, 102);">详情123</span></p>', '2022-04-14 12:01:08');

DROP TABLE IF EXISTS `luenwen`;
CREATE TABLE IF NOT EXISTS `luenwen` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `luenwen_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `luenwen_types` int DEFAULT NULL COMMENT '论文类型 Search111',
  `yonghu_id` int DEFAULT NULL COMMENT '教师',
  `renyuan_file` varchar(200) DEFAULT NULL COMMENT '证明材料',
  `luenwen_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='论文信息';

DELETE FROM `luenwen`;
INSERT INTO `luenwen` (`id`, `luenwen_name`, `luenwen_types`, `yonghu_id`, `renyuan_file`, `luenwen_content`, `create_time`) VALUES
	(1, '标题1', 2, 3, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情1', '2022-04-14 11:53:22'),
	(2, '标题2', 1, 3, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情2', '2022-04-14 11:53:22'),
	(3, '标题3', 3, 3, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情3', '2022-04-14 11:53:22'),
	(4, '标题4', 2, 1, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情4', '2022-04-14 11:53:22'),
	(5, '标题5', 3, 1, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情5', '2022-04-14 11:53:22');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'http://localhost:8080/jiaoshigerenchengguo/upload/news1.jpg', '2022-04-14 11:53:22', '公告详情1', '2022-04-14 11:53:22'),
	(2, '公告标题2', 1, 'http://localhost:8080/jiaoshigerenchengguo/upload/news2.jpg', '2022-04-14 11:53:22', '公告详情2', '2022-04-14 11:53:22'),
	(3, '公告标题3', 1, 'http://localhost:8080/jiaoshigerenchengguo/upload/news3.jpg', '2022-04-14 11:53:22', '公告详情3', '2022-04-14 11:53:22'),
	(4, '公告标题4', 2, 'http://localhost:8080/jiaoshigerenchengguo/upload/news4.jpg', '2022-04-14 11:53:22', '公告详情4', '2022-04-14 11:53:22'),
	(5, '公告标题5', 1, 'http://localhost:8080/jiaoshigerenchengguo/upload/news5.jpg', '2022-04-14 11:53:22', '公告详情5', '2022-04-14 11:53:22');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '8kca0m9acx7tep1sprb0i3f9uq5xk5qv', '2022-04-14 11:56:59', '2024-08-01 09:24:43'),
	(2, 1, 'a1', 'yonghu', '教师', 'v0gukj5cxlgbrr4h7nze8p0kzjzdhj9r', '2022-04-14 12:00:15', '2024-08-01 09:25:42');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yonghu_zc` varchar(200) DEFAULT NULL COMMENT '职称',
  `yonghu_zy` varchar(200) DEFAULT NULL COMMENT '学历',
  `yonghu_xy` varchar(200) DEFAULT NULL COMMENT '从事专业',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `xibu_types` int DEFAULT NULL COMMENT '系部 Search111 ',
  `yonghu_time` date DEFAULT NULL COMMENT '出身日期',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_email`, `yonghu_zc`, `yonghu_zy`, `yonghu_xy`, `sex_types`, `xibu_types`, `yonghu_time`, `yonghu_delete`, `create_time`) VALUES
	(1, '教师1', '123456', '教师姓名1', 'http://localhost:8080/jiaoshigerenchengguo/upload/yonghu1.jpg', '17703786901', '1@qq.com', '职称1', '学历1', '从事专业1', 2, 1, '2022-04-14', 1, '2022-04-14 11:53:22'),
	(2, '教师2', '123456', '教师姓名2', 'http://localhost:8080/jiaoshigerenchengguo/upload/yonghu2.jpg', '17703786902', '2@qq.com', '职称2', '学历2', '从事专业2', 1, 2, '2022-04-14', 1, '2022-04-14 11:53:22'),
	(3, '教师3', '123456', '教师姓名3', 'http://localhost:8080/jiaoshigerenchengguo/upload/yonghu3.jpg', '17703786903', '3@qq.com', '职称3', '学历3', '从事专业3', 2, 1, '2022-04-14', 1, '2022-04-14 11:53:22');

DROP TABLE IF EXISTS `zhiyepeixun`;
CREATE TABLE IF NOT EXISTS `zhiyepeixun` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhiyepeixun_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `zhiyepeixun_types` int DEFAULT NULL COMMENT '荣誉类型 Search111',
  `zhiyepeixun_photo` varchar(200) DEFAULT NULL COMMENT '荣誉图片',
  `yonghu_id` int DEFAULT NULL COMMENT '教师',
  `zhiyepeixun_time` timestamp NULL DEFAULT NULL COMMENT '获奖时间',
  `zhiyepeixun_content` text COMMENT '荣誉详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='荣誉信息';

DELETE FROM `zhiyepeixun`;
INSERT INTO `zhiyepeixun` (`id`, `zhiyepeixun_name`, `zhiyepeixun_types`, `zhiyepeixun_photo`, `yonghu_id`, `zhiyepeixun_time`, `zhiyepeixun_content`, `insert_time`, `create_time`) VALUES
	(1, '标题1', 2, 'http://localhost:8080/jiaoshigerenchengguo/upload/1649937779525.webp', 3, '2022-04-14 11:53:22', '<p>荣誉详情1</p>', '2022-04-14 11:53:22', '2022-04-14 11:53:22'),
	(2, '标题2', 2, 'http://localhost:8080/jiaoshigerenchengguo/upload/1649937771857.webp', 2, '2022-04-14 11:53:22', '<p>荣誉详情2</p>', '2022-04-14 11:53:22', '2022-04-14 11:53:22'),
	(3, '标题3', 1, 'http://localhost:8080/jiaoshigerenchengguo/upload/1649937761330.webp', 2, '2022-04-14 11:53:22', '<p>荣誉详情3</p>', '2022-04-14 11:53:22', '2022-04-14 11:53:22'),
	(4, '标题4', 2, 'http://localhost:8080/jiaoshigerenchengguo/upload/1649937690519.webp', 1, '2022-04-14 11:53:22', '<p>荣誉详情4</p>', '2022-04-14 11:53:22', '2022-04-14 11:53:22'),
	(5, '标题5', 2, 'http://localhost:8080/jiaoshigerenchengguo/upload/1649937753747.webp', 3, '2022-04-14 11:53:22', '<p>荣誉详情5</p>', '2022-04-14 11:53:22', '2022-04-14 11:53:22');

DROP TABLE IF EXISTS `zhuanlixinxi`;
CREATE TABLE IF NOT EXISTS `zhuanlixinxi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhuanlixinxi_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `zhuanlixinxi_types` int DEFAULT NULL COMMENT '专利类型 Search111',
  `yonghu_id` int DEFAULT NULL COMMENT '教师',
  `renyuan_file` varchar(200) DEFAULT NULL COMMENT '专利文件',
  `zhuanlixinxi_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='专利信息';

DELETE FROM `zhuanlixinxi`;
INSERT INTO `zhuanlixinxi` (`id`, `zhuanlixinxi_name`, `zhuanlixinxi_types`, `yonghu_id`, `renyuan_file`, `zhuanlixinxi_content`, `create_time`) VALUES
	(1, '标题1', 1, 1, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情1', '2022-04-14 11:53:22'),
	(2, '标题2', 1, 1, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情2', '2022-04-14 11:53:22'),
	(3, '标题3', 3, 3, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情3', '2022-04-14 11:53:22'),
	(4, '标题4', 3, 1, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情4', '2022-04-14 11:53:22'),
	(5, '标题5', 3, 3, 'http://localhost:8080/jiaoshigerenchengguo/upload/file.rar', '详情5', '2022-04-14 11:53:22');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
