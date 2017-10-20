/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost
 Source Database       : goods_test

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : utf-8

 Date: 10/20/2017 22:26:24 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(255) DEFAULT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_diff` varchar(255) DEFAULT NULL,
  `course_desc` varchar(255) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `course`
-- ----------------------------
BEGIN;
INSERT INTO `course` VALUES ('1', '10001', '1', null, null, null, '1'), ('2', '10001', '2', null, null, null, '0'), ('3', '10001', '3', null, null, null, '0'), ('4', '10001', '4', 'aaa', null, null, '0'), ('5', '10001', '5', 'aaa', null, null, '0'), ('6', '10001', '6', '\'aaa\'', null, null, '0'), ('7', '10001', '7', 'aaa', null, null, '0'), ('8', '10001', '8', 'aaa', null, null, '0'), ('9', '10001', '9', 'aaa', null, null, '0'), ('10', '10001', '10', 'bbb', null, null, '0'), ('11', '10001', '11', '语文', null, null, '1'), ('12', '10001', '61cb31e8f95240e7b1e9c4eac6be835c', null, null, null, '0'), ('13', '10001', '62e5390ac8154ac6a79da19d16580417', '化学', null, null, '0'), ('14', '10001', '20', '自然', null, null, '0'), ('15', '10001', '20', '自然', null, null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `org_id` int(11) NOT NULL COMMENT '所属机构',
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '登录名',
  `pwd` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '123456' COMMENT '密码',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '电话',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `gender` int(4) NOT NULL DEFAULT '0' COMMENT '性别',
  `job` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '职业，学生老师校长等等',
  `authorities` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '权限列表',
  `created` datetime NOT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int(4) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=20161224 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('2016001', '10101', 'hpf', '24', '胡鹏飞', '13088063015', '', '0', '普通教师', '110,130,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,710,720,810,820,830,1110,1120,1130', '2016-10-22 00:13:16', '2017-08-08 22:53:35', '0'), ('20161072', '10001', 'test', '123456h', '测试用户', '13768020987', '', '0', '普通教师', '110,130,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,710,720,810,820,830,1120,1140', '2017-01-17 21:22:22', '2017-08-27 22:14:23', '0'), ('20161076', '10101', 'yyq', '123456h', '于彦秋', '18711127210', '', '0', '校长', '110,130,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,710,720,810,820,830,1110,1120,1130,1140,1210', '2017-06-16 23:47:55', '2017-08-08 21:20:19', '0'), ('20161078', '10001', 'test123', '123456', '21', '1', '', '0', '校长', '110,130,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,710,720,810,820,830,1110,1120', '2017-06-16 23:58:15', '2017-06-26 12:21:38', '0'), ('20161079', '10101', 'yangdelin', 'yunxiaoyuan', '杨德林', '18246780777', '', '0', '校长', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161080', '10101', 'chidehua', 'yunxiaoyuan', '迟德华', '13946909797', '', '1', '副校长', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161081', '10101', 'liuxiwen', 'yunxiaoyuan', '刘喜文', '13796594568', '', '0', '副校长', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161082', '10101', 'zouyongfeng', 'yunxiaoyuan', '邹永峰', '13069615485', '', '0', '副校长', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161083', '10101', 'haoyong', 'yunxiaoyuan', '郝勇', '13069699296', '', '0', '副校长', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161084', '10101', 'wangwenchang', 'yunxiaoyuan', '王文昌', '13359810598', '', '0', '校长助理', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161085', '10101', 'zhangxudong', 'yunxiaoyuan', '张旭东', '18945985007', '', '0', '副校长', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161086', '10101', 'liwenling', 'yunxiaoyuan', '李文玲', '13039828989', '', '1', '教研室主任', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161087', '10101', 'panxiangrong', 'yunxiaoyuan', '潘湘荣', '13945609898', '', '1', '人事部主任', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161088', '10101', 'yangdamin', 'yunxiaoyuan', '杨大敏', '13946957683', '', '1', '财务主任', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161089', '10101', 'xuguobin', 'yunxiaoyuan', '徐国滨', '13836889277', '', '0', '机关支部书记', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161090', '10101', 'wangbaorui', 'yunxiaoyuan', '王宝睿', '13836846221', '', '0', '党办主任', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161091', '10101', 'lihongbiao', 'yunxiaoyuan', '李洪飚', '15604597538', '', '0', '政教主任', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161092', '10101', 'zhangwenyou', 'yunxiaoyuan', '张文友', '13845939899', '', '0', '信息主任', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161093', '10101', 'linming', 'yunxiaoyuan', '林  明', '13804688949', '', '0', '舍务主任', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161094', '10101', 'qufeng', 'yunxiaoyuan', '曲  峰', '13069654567', '', '0', '办公室副主任 安全 车辆', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161095', '10101', 'shuhui', 'yunxiaoyuan', '舒  辉', '13936926620', '', '1', '信息中心副主任', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161096', '10101', 'wangdongbo', 'yunxiaoyuan', '王东波', '13059055826', '', '0', '舍务副主任', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161097', '10101', 'zhouhongwei', 'yunxiaoyuan', '周宏伟', '13936734598', '', '1', '舍务副主任', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161098', '10101', 'renchangjuan', 'yunxiaoyuan', '任长娟', '13304860496', '', '1', '办公室干事', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161099', '10101', 'lijunwei', 'yunxiaoyuan', '李俊伟', '18604595839', '', '1', '劳资员', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161100', '10101', 'huchunlan', 'yunxiaoyuan', '胡春兰', '13945610461', '', '1', '教研室干事', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161101', '10101', 'wangliwei', 'yunxiaoyuan', '王黎伟', '5237422', '', '1', '教研室干事', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161102', '10101', 'wubingqing', 'yunxiaoyuan', '武兵庆', '13946961465', '', '1', '出纳', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161103', '10101', 'luhongmei', 'yunxiaoyuan', '路红梅', '13206852888', '', '1', '档案员', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161104', '10101', 'sunjimian', 'yunxiaoyuan', '孙继绵', '13212891999', '', '1', '工会干事', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161105', '10101', 'wangjihong', 'yunxiaoyuan', '王继红', '13555557116', '', '0', '工会干事', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161106', '10101', 'wanglvzhang', 'yunxiaoyuan', '王虑章', '18345406888', '', '0', '后勤', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161107', '10101', 'wangminyu', 'yunxiaoyuan', '王旻玉', '13069693091', '', '0', '后勤', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161108', '10101', 'zhangjun', 'yunxiaoyuan', '张  军', '13946995067', '', '1', '库房保管员', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161109', '10101', 'luyaling', 'yunxiaoyuan', '鲁亚玲', '13149659563', '', '1', '保险员 收发', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161110', '10101', 'wangmin', 'yunxiaoyuan', '王  敏', '15245990599', '', '1', '政教干事', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161111', '10101', 'yueqiang', 'yunxiaoyuan', '岳  强', '13115676488', '', '0', '司机', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161112', '10101', 'tianwentian', 'yunxiaoyuan', '田文天', '13936809367', '', '0', '司机', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161113', '10101', 'jinguofu', 'yunxiaoyuan', '金国富', '15214599993', '', '0', '司机', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161114', '10101', 'menzhili', 'yunxiaoyuan', '门志利', '15046884388', '', '1', '司机', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161115', '10101', 'zhangxinrui', 'yunxiaoyuan', '张新蕊', '15846189808', '', '1', '食堂', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161116', '10101', 'zhanglei', 'yunxiaoyuan', '张磊', '13124590090', '', '0', '网管', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161117', '10101', 'zhuguiqin', 'yunxiaoyuan', '祝桂芹', '13604590950', '', '1', '实验员', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161118', '10101', 'sunzhijiang', 'yunxiaoyuan', '孙志江', '13199079697', '', '0', '舍务干事', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161119', '10101', 'baihongqi', 'yunxiaoyuan', '白洪启', '13029821562', '', '0', '舍务生活指导教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161120', '10101', 'tianyunqi', 'yunxiaoyuan', '田云祁', '13936838993', '', '0', '舍务生活指导教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161121', '10101', 'lilijia', 'yunxiaoyuan', '李力佳', '15845989086', '', '0', '舍务生活指导教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161122', '10101', 'xuguilin', 'yunxiaoyuan', '许贵林', '18604596111', '', '0', '舍务生活指导教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161123', '10101', 'sundongdong', 'yunxiaoyuan', '孙东东', '13149653376', '', '1', '舍务生活指导教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161124', '10101', 'wangyingying', 'yunxiaoyuan', '王英英', '18345968398', '', '1', '舍务生活指导教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161125', '10101', 'zhangxuedong', 'yunxiaoyuan', '张雪东', '5384097', '', '0', '病休', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161126', '10101', 'liukuangyou', 'yunxiaoyuan', '刘矿有 ', '13845924105', '', '0', '支部书记 班主任 语文教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161127', '10101', 'guyuying', 'yunxiaoyuan', '顾宇英 ', '13804645977', '', '0', '教务主任 数学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161128', '10101', 'wangqing', 'yunxiaoyuan', '王  庆 ', '13134596289', '', '0', '管理主任', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161129', '10101', 'wangzhong', 'yunxiaoyuan', '王  忠 ', '13359810568', '', '0', '艺体主任', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161130', '10101', 'cuiguanghui', 'yunxiaoyuan', '崔广辉 ', '13904899046', '', '0', '团委书记 班主任 语文教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161131', '10101', 'gongqinhan', 'yunxiaoyuan', '宫钦翰', '13604673852', '', '0', '高一年级主任 化学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161132', '10101', 'xinfang', 'yunxiaoyuan', '辛  放', '13836810459', '', '1', '副主任  地理教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161133', '10101', 'lishenghua', 'yunxiaoyuan', '李胜华 ', '13845934272', '', '1', '班主任 历史教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161134', '10101', 'sunwenwen', 'yunxiaoyuan', '孙雯雯 ', '13694591361', '', '1', '班主任 数学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161135', '10101', 'lijia', 'yunxiaoyuan', '李  佳 ', '18645961099', '', '1', '班主任 语文教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161136', '10101', 'lisuqin', 'yunxiaoyuan', '李素芹', '13555574903', '', '1', '班主任 语文教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161137', '10101', 'cuijingying', 'yunxiaoyuan', '崔晶莹 ', '15846944924', '', '1', '班主任 语文教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161138', '10101', 'gongencheng', 'yunxiaoyuan', '宫恩城 ', '13159995618', '', '0', '班主任 物理教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161139', '10101', 'donghaimi', 'yunxiaoyuan', '董海密 ', '18246780910', '', '1', '班主任 物理教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161140', '10101', 'chenjin', 'yunxiaoyuan', '陈金 ', '15845953492', '', '0', '班主任 数学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161141', '10101', 'wangchao', 'yunxiaoyuan', '王超 ', '18945981136', '', '0', '班主任 生物教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161142', '10101', 'wutingting', 'yunxiaoyuan', '吴婷婷 ', '13644694928', '', '1', '语文教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161143', '10101', 'heweina', 'yunxiaoyuan', '贺维娜 ', '13936907290', '', '1', '数学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161144', '10101', 'fenghaiyan', 'yunxiaoyuan', '冯海燕 ', '13704667582', '', '1', '数学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161145', '10101', 'shenglijun', 'yunxiaoyuan', '生利军 ', '13936872665', '', '1', '英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161146', '10101', 'wangxiaodan', 'yunxiaoyuan', '王晓丹 ', '15164541022', '', '1', '英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161147', '10101', 'chenjuanjuan', 'yunxiaoyuan', '陈娟娟 ', '13845933686', '', '1', '英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161148', '10101', 'quxiaowei', 'yunxiaoyuan', '曲筱薇 ', '18945980292', '', '1', '英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161149', '10101', 'fengdandan', 'yunxiaoyuan', '冯丹丹 ', '13945946246', '', '1', '英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161150', '10101', 'lichunmei', 'yunxiaoyuan', '李春梅 ', '13945958355', '', '1', '英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161151', '10101', 'weichanglong', 'yunxiaoyuan', '魏长龙 ', '13936876631', '', '0', '化学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161152', '10101', 'lijingqi', 'yunxiaoyuan', '李景奇 ', '18045995255', '', '0', '化学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161153', '10101', 'xulimin', 'yunxiaoyuan', '许立敏 ', '15804597271', '', '1', '生物教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161154', '10101', 'jiangyuzhen', 'yunxiaoyuan', '姜宇珍 ', '15846183753', '', '1', '历史教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161155', '10101', 'zhuangyijing', 'yunxiaoyuan', '庄义静 ', '13936877417', '', '1', '政治教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161156', '10101', 'shaochunhua', 'yunxiaoyuan', '邵春华', '15846915785', '', '1', '地理教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161157', '10101', 'zhangmeihong', 'yunxiaoyuan', '张美红 ', '13199063703', '', '1', '信息技术教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161158', '10101', 'zhujingyan', 'yunxiaoyuan', '朱景艳 ', '13946901569', '', '1', '化学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161159', '10101', 'songdianchen', 'yunxiaoyuan', '宋殿臣', '13845906676', '', '0', '高二年级主任 班主任物 理教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161160', '10101', 'wuxi', 'yunxiaoyuan', '吴  曦 ', '13351858158', '', '1', '副主任 班主任 英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161161', '10101', 'diaoguoli', 'yunxiaoyuan', '刁国利 ', '18245709876', '', '0', '班主任 语文教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161162', '10101', 'hanqingfa', 'yunxiaoyuan', '韩庆发 ', '13359830699', '', '0', '班主任 物理教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161163', '10101', 'lixiaojiang', 'yunxiaoyuan', '李晓江 ', '13039835015', '', '0', '班主任 英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161164', '10101', 'yinkejun', 'yunxiaoyuan', '殷克军 ', '15636985088', '', '0', '团委副书记班主任英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161165', '10101', 'cuibingyang', 'yunxiaoyuan', '崔丙洋 ', '13936804521', '', '0', '班主任 化学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161166', '10101', 'baixiaohong', 'yunxiaoyuan', '白晓红', '13845931136', '', '1', '学籍管理副主任 化学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161167', '10101', 'yangxueyan', 'yunxiaoyuan', '杨雪岩 ', '13945988257', '', '1', '语文教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161168', '10101', 'liudandan', 'yunxiaoyuan', '刘丹丹 ', '18345518089', '', '1', '语文教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161169', '10101', 'rentianying', 'yunxiaoyuan', '任天英 ', '18249627821', '', '1', '数学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161170', '10101', 'zhanghui', 'yunxiaoyuan', '张惠 ', '13836703378', '', '1', '数学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161171', '10101', 'wanglijie', 'yunxiaoyuan', '王丽杰 ', '13836782596', '', '1', '数学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161172', '10101', 'yanghongyan', 'yunxiaoyuan', '杨红艳 ', '15904591688', '', '1', '数学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161173', '10101', 'yangdan', 'yunxiaoyuan', '杨丹 ', '13039819166', '', '1', '英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161174', '10101', 'liuxing', 'yunxiaoyuan', '刘钘', '13644596969', '', '1', '英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161175', '10101', 'guocongnan', 'yunxiaoyuan', '郭丛男 ', '15145999372', '', '0', '物理教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161176', '10101', 'lijie', 'yunxiaoyuan', '李杰 ', '13351850521', '', '1', '生物教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161177', '10101', 'liuyanbing', 'yunxiaoyuan', '刘艳冰 ', '13089087108', '', '1', '化学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161178', '10101', 'lihongmei', 'yunxiaoyuan', '李红梅 ', '13945613104', '', '1', '生物教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161179', '10101', 'duxiuli', 'yunxiaoyuan', '杜秀丽 ', '15245942640', '', '1', '生物教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161180', '10101', 'liyanzhi', 'yunxiaoyuan', '李艳芝 ', '13039839595', '', '1', '历史教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161181', '10101', 'gaolinlin', 'yunxiaoyuan', '高林琳 ', '15845856233', '', '1', '历史教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161182', '10101', 'zhuguihua', 'yunxiaoyuan', '朱桂华', '13946947509', '', '1', '地理教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161183', '10101', 'luanjingbo', 'yunxiaoyuan', '栾景波', '4595020279', '', '1', '地理教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161184', '10101', 'zhaowanxue', 'yunxiaoyuan', '赵万雪 ', '13936923592', '', '1', '政治教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161185', '10101', 'heaiping', 'yunxiaoyuan', '何爱萍 ', '18945981369', '', '1', '政治教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161186', '10101', 'zhoujiajun', 'yunxiaoyuan', '周嘉俊', '13504890616', '', '0', '高三年级主任班主任地理教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161187', '10101', 'huangxiaomei', 'yunxiaoyuan', '黄晓梅 ', '13936960800', '', '1', '副主任 数学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161188', '10101', 'chenmingjie', 'yunxiaoyuan', '陈明杰 ', '15845981312', '', '1', '班主任  历史教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161189', '10101', 'liushuang', 'yunxiaoyuan', '刘爽 ', '18346662971', '', '1', '班主任  数学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161190', '10101', 'liuqingxia', 'yunxiaoyuan', '刘庆霞 ', '13936984784', '', '1', '班主任  化学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161191', '10101', 'yulingyan', 'yunxiaoyuan', '于玲艳 ', '13845990018', '', '1', '班主任  英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161192', '10101', 'lenglingyu', 'yunxiaoyuan', '冷玲玉 ', '18745902904', '', '1', '班主任  英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161193', '10101', 'niexiaoguang', 'yunxiaoyuan', '聂晓光 ', '15845847645', '', '1', '班主任  数学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161194', '10101', 'yangqinghua', 'yunxiaoyuan', '杨庆华 ', '13845949773', '', '1', '语文教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161195', '10101', 'zhouyuanyuan', 'yunxiaoyuan', '周园园 ', '15545094694 ', '', '1', '语文教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161196', '10101', 'wangyajuan', 'yunxiaoyuan', '王雅娟 ', '13614593676', '', '1', '语文教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161197', '10101', 'liulunli', 'yunxiaoyuan', '刘伦礼 ', '13945979752', '', '0', '数学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161198', '10101', 'wangshuhua', 'yunxiaoyuan', '王淑华 ', '13136800295', '', '1', '英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161199', '10101', 'wangbingjia', 'yunxiaoyuan', '王冰佳 ', '18545079109', '', '1', '英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161200', '10101', 'lvyankun', 'yunxiaoyuan', '吕艳坤 ', '13019077844', '', '1', '英语教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161201', '10101', 'liqingzhi', 'yunxiaoyuan', '李清志 ', '13069662348', '', '0', '物理教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161202', '10101', 'weixinmin', 'yunxiaoyuan', '魏新民', '13936771578', '', '0', '物理教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161203', '10101', 'wangxuewei', 'yunxiaoyuan', '王雪微', '18245949649', '', '1', '物理教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161204', '10101', 'bowei', 'yunxiaoyuan', '薄  薇 ', '15504599612', '', '1', '化学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161205', '10101', 'weikai', 'yunxiaoyuan', '魏  凯 ', '13936805463', '', '1', '化学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161206', '10101', 'liuxianjun', 'yunxiaoyuan', '刘显军 ', '13903690788', '', '0', '化学教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161207', '10101', 'chengjing', 'yunxiaoyuan', '程  静 ', '13945930940', '', '1', '生物教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161208', '10101', 'penghongyu', 'yunxiaoyuan', '彭洪雨 ', '15246070997', '', '1', '生物教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161209', '10101', 'wanghongyan', 'yunxiaoyuan', '王红燕 ', '13045497361', '', '1', '政治教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161210', '10101', 'ruanqing', 'yunxiaoyuan', '阮  青 ', '13674593557 ', '', '1', '政治教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161211', '10101', 'jiangchengmei', 'yunxiaoyuan', '姜成梅 ', '18945907392', '', '1', '历史教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161212', '10101', 'libin', 'yunxiaoyuan', '李  斌 ', '13009832938', '', '0', '体育教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161213', '10101', 'zhouhuagang', 'yunxiaoyuan', '周华罡 ', '13836722655', '', '0', '体育教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161214', '10101', 'liuyan', 'yunxiaoyuan', '刘  艳 ', '18245727757', '', '1', '音乐教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161215', '10101', 'zhufeng', 'yunxiaoyuan', '朱  枫 ', '13351790866', '', '1', '音乐教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161216', '10101', 'jinghongman', 'yunxiaoyuan', '井洪漫 ', '13936907026', '', '1', '美术教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161217', '10101', 'gaoqiang', 'yunxiaoyuan', '高  强 ', '13199058566', '', '0', '美术 教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161218', '10101', 'yuena', 'yunxiaoyuan', '岳  娜 ', '13936720233', '', '1', '音乐教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161219', '10101', 'gaotian', 'yunxiaoyuan', '高  添 ', '13104599743', '', '1', '美术教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161220', '10101', 'liuqinghui', 'yunxiaoyuan', '刘庆辉 ', '13604895108', '', '0', '图书管理', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161221', '10101', 'liyanbo', 'yunxiaoyuan', '李艳波', '13836764698', '', '1', '教导处干事 政治教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161222', '10101', 'liuqingmei', 'yunxiaoyuan', '刘庆梅 ', '13019085258', '', '1', '通用教师', '110,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,810,820,830', '2017-06-20 09:56:12', null, '0'), ('20161223', '10101', 'yanzhou', '123456', '闫洲', '1234567890', '', '0', '', '110,130,210,220,230,240,250,260,270,280,310,320,330,410,420,430,510,520,530,540,710,720,810,820,830,840,1120,1140,1210', '2017-08-08 23:08:12', null, '0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
