-- ----------------------------
--  Table structure for `sys_acl`
-- ----------------------------
use permission;

CREATE TABLE `sys_acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Ȩ��id',
  `code` varchar(20) NOT NULL DEFAULT '' COMMENT 'Ȩ����',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT 'Ȩ������',
  `acl_module_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Ȩ�����ڵ�Ȩ��ģ��id',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '�����url, ������������ʽ',
  `type` int(11) NOT NULL DEFAULT '3' COMMENT '���ͣ�1���˵���2����ť��3������',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '״̬��1��������0������',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT 'Ȩ���ڵ�ǰģ���µ�˳����С����',
  `remark` varchar(200) DEFAULT '' COMMENT '��ע',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '������',
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '���һ�θ���ʱ��',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '���һ�������ߵ�ip��ַ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_acl`
-- ----------------------------
BEGIN;
INSERT INTO `sys_acl` VALUES ('1', '20171015095130_26', '�����Ʒ�������', '1', '/sys/product/product.page', '1', '1', '1', '', 'Admin', '2017-10-15 09:51:30', '0:0:0:0:0:0:0:1'), ('2', '20171015095322_14', '��ѯ��Ʒ�б�', '1', '/sys/product/page.json', '2', '1', '2', '', 'Admin', '2017-10-15 09:53:22', '0:0:0:0:0:0:0:1'), ('3', '20171015095350_69', '��Ʒ�ϼ�', '1', '/sys/product/online.json', '2', '1', '3', '', 'Admin', '2017-10-15 09:53:51', '0:0:0:0:0:0:0:1'), ('4', '20171015095420_7', '��Ʒ�¼�', '1', '/sys/product/offline.json', '2', '1', '4', '', 'Admin', '2017-10-15 10:11:28', '0:0:0:0:0:0:0:1'), ('5', '20171015212626_63', '���붩��ҳ', '2', '/sys/order/order.page', '1', '1', '1', '', 'Admin', '2017-10-15 21:26:27', '0:0:0:0:0:0:0:1'), ('6', '20171015212657_12', '��ѯ�����б�', '2', '/sys/order/list.json', '2', '1', '2', '', 'Admin', '2017-10-15 21:26:57', '0:0:0:0:0:0:0:1'), ('7', '20171015212907_36', '����Ȩ�޹���ҳ', '7', '/sys/aclModule/acl.page', '1', '1', '1', '', 'Admin', '2017-10-15 21:29:07', '0:0:0:0:0:0:0:1'), ('8', '20171015212938_27', '�����ɫ����ҳ', '8', '/sys/role/role.page', '1', '1', '1', '', 'Admin', '2017-10-16 17:49:38', '0:0:0:0:0:0:0:1'), ('9', '20171015213009_0', '�����û�����ҳ', '9', '/sys/dept/dept.page', '1', '1', '1', '', 'Admin', '2017-10-15 21:30:09', '0:0:0:0:0:0:0:1'), ('10', '20171016230429_8', '����Ȩ�޸��¼�¼ҳ��', '11', '/sys/log/log.page', '1', '1', '1', '', 'Admin', '2017-10-16 23:04:49', '0:0:0:0:0:0:0:1');
COMMIT;

-- ----------------------------
--  Table structure for `sys_acl_module`
-- ----------------------------

CREATE TABLE `sys_acl_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Ȩ��ģ��id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT 'Ȩ��ģ������',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '�ϼ�Ȩ��ģ��id',
  `level` varchar(200) NOT NULL DEFAULT '' COMMENT 'Ȩ��ģ��㼶',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT 'Ȩ��ģ���ڵ�ǰ�㼶�µ�˳����С����',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '״̬��1��������0������',
  `remark` varchar(200) DEFAULT '' COMMENT '��ע',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '������',
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '���һ�β���ʱ��',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '���һ�θ��²����ߵ�ip��ַ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Records of `sys_acl_module`
-- ----------------------------
BEGIN;
INSERT INTO `sys_acl_module` VALUES ('1', '��Ʒ����', '0', '0', '1', '1', 'product', 'Admin', '2017-10-14 21:13:15', '0:0:0:0:0:0:0:1'), ('2', '��������', '0', '0', '2', '1', '', 'Admin', '2017-10-14 20:17:11', '0:0:0:0:0:0:0:1'), ('3', '�������', '0', '0', '3', '1', '', 'Admin', '2017-10-14 20:17:21', '0:0:0:0:0:0:0:1'), ('4', '�����в�Ʒ����', '1', '0.1', '1', '1', '', 'Admin', '2017-10-14 21:13:39', '0:0:0:0:0:0:0:1'), ('5', '�¼ܲ�Ʒ����', '1', '0.1', '2', '1', '', 'Admin', '2017-10-14 20:18:02', '0:0:0:0:0:0:0:1'), ('6', 'Ȩ�޹���', '0', '0', '4', '1', '', 'Admin', '2017-10-15 21:27:37', '0:0:0:0:0:0:0:1'), ('7', 'Ȩ�޹���', '6', '0.6', '1', '1', '', 'Admin', '2017-10-15 21:27:57', '0:0:0:0:0:0:0:1'), ('8', '��ɫ����', '6', '0.6', '2', '1', '', 'Admin', '2017-10-15 21:28:22', '0:0:0:0:0:0:0:1'), ('9', '�û�����', '6', '0.6', '2', '1', '', 'Admin', '2017-10-15 21:28:36', '0:0:0:0:0:0:0:1'), ('10', '��ά����', '0', '0', '6', '1', '', 'Admin', '2017-10-16 23:03:37', '0:0:0:0:0:0:0:1'), ('11', 'Ȩ�޸��¼�¼����', '6', '0.6', '4', '1', '', 'Admin', '2017-10-16 23:04:07', '0:0:0:0:0:0:0:1');
COMMIT;

-- ----------------------------
--  Table structure for `sys_dept`
-- ----------------------------

CREATE TABLE `sys_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '��������',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '�ϼ�����id',
  `level` varchar(200) NOT NULL DEFAULT '' COMMENT '���Ų㼶',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '�����ڵ�ǰ�㼶�µ�˳����С����',
  `remark` varchar(200) DEFAULT '' COMMENT '��ע',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '������',
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '���һ�β���ʱ��',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '���һ�θ��²����ߵ�ip��ַ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_dept`
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES ('1', '������', '0', '0', '1', '������', 'system', '2017-10-11 07:21:40', '127.0.0.1'), ('2', '��˿���', '1', '0.1', '1', '���', 'system-update', '2017-10-12 07:56:16', '127.0.0.1'), ('3', 'ǰ�˿���', '1', '0.1', '2', '', 'system-update', '2017-10-14 11:29:45', '127.0.0.1'), ('4', 'UI���', '1', '0.1', '3', '', 'system', '2017-10-12 07:55:43', '127.0.0.1'), ('11', '��Ʒ��', '0', '0', '2', '', 'Admin', '2017-10-16 22:52:29', '0:0:0:0:0:0:0:1'), ('12', '�ͷ���', '0', '0', '4', '', 'Admin', '2017-10-17 00:22:55', '0:0:0:0:0:0:0:1');
COMMIT;

-- ----------------------------
--  Table structure for `sys_log`
-- ----------------------------

CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'Ȩ�޸��µ����ͣ�1�����ţ�2���û���3��Ȩ��ģ�飬4��Ȩ�ޣ�5����ɫ��6����ɫ�û���ϵ��7����ɫȨ�޹�ϵ',
  `target_id` int(11) NOT NULL COMMENT '����type��ָ���Ķ���id�������û���Ȩ�ޡ���ɫ�ȱ������',
  `old_value` text COMMENT '��ֵ',
  `new_value` text COMMENT '��ֵ',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '������',
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '���һ�θ��µ�ʱ��',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '���һ�θ����ߵ�ip��ַ',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '��ǰ�Ƿ�ԭ����0��û�У�1����ԭ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_log`
-- ----------------------------
BEGIN;
INSERT INTO `sys_log` VALUES ('2', '1', '12', '', '{\"id\":12,\"name\":\"�ͷ���\",\"parentId\":0,\"level\":\"0\",\"seq\":3,\"operator\":\"Admin\",\"operateTime\":1508166002610,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:00:03', '0:0:0:0:0:0:0:1', '1'), ('3', '1', '12', '{\"id\":12,\"name\":\"�ͷ���\",\"parentId\":0,\"level\":\"0\",\"seq\":3,\"operator\":\"Admin\",\"operateTime\":1508166003000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":12,\"name\":\"�ͷ���\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"Admin\",\"operateTime\":1508166009313,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:00:09', '0:0:0:0:0:0:0:1', '1'), ('4', '2', '4', '', '{\"id\":4,\"username\":\"Kate\",\"telephone\":\"13144445555\",\"mail\":\"kate@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":1,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166166297,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:02:46', '0:0:0:0:0:0:0:1', '1'), ('5', '2', '4', '{\"id\":4,\"username\":\"Kate\",\"telephone\":\"13144445555\",\"mail\":\"kate@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":1,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166166000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":4,\"username\":\"Kate\",\"telephone\":\"13144445555\",\"mail\":\"kate@qq.com\",\"deptId\":1,\"status\":1,\"remark\":\"sss\",\"operator\":\"Admin\",\"operateTime\":1508166171320,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:02:51', '0:0:0:0:0:0:0:1', '1'), ('6', '3', '10', '', '{\"id\":10,\"name\":\"��ά����\",\"parentId\":0,\"level\":\"0\",\"seq\":5,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166212527,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:03:33', '0:0:0:0:0:0:0:1', '1'), ('7', '3', '10', '{\"id\":10,\"name\":\"��ά����\",\"parentId\":0,\"level\":\"0\",\"seq\":5,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166213000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":10,\"name\":\"��ά����\",\"parentId\":0,\"level\":\"0\",\"seq\":6,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166217376,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:03:37', '0:0:0:0:0:0:0:1', '1'), ('8', '3', '11', '', '{\"id\":11,\"name\":\"Ȩ�޸��¼�¼����\",\"parentId\":6,\"level\":\"0.6\",\"seq\":4,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166246805,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:04:07', '0:0:0:0:0:0:0:1', '1'), ('9', '4', '10', '', '{\"id\":10,\"code\":\"20171016230429_8\",\"name\":\"����Ȩ�޸��¼�¼ҳ��\",\"aclModuleId\":1,\"url\":\"/sys/log/log.page\",\"type\":1,\"status\":1,\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1508166269419,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:04:29', '0:0:0:0:0:0:0:1', '1'), ('10', '4', '10', '{\"id\":10,\"code\":\"20171016230429_8\",\"name\":\"����Ȩ�޸��¼�¼ҳ��\",\"aclModuleId\":1,\"url\":\"/sys/log/log.page\",\"type\":1,\"status\":1,\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1508166269000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":10,\"name\":\"����Ȩ�޸��¼�¼ҳ��\",\"aclModuleId\":11,\"url\":\"/sys/log/log.page\",\"type\":1,\"status\":1,\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1508166288589,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:04:49', '0:0:0:0:0:0:0:1', '1'), ('11', '5', '5', '', '{\"id\":5,\"name\":\"��ά����Ա\",\"type\":1,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166301130,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:05:01', '0:0:0:0:0:0:0:1', '1'), ('12', '5', '5', '{\"id\":5,\"name\":\"��ά����Ա\",\"type\":1,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166301000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":5,\"name\":\"��ά����Ա\",\"type\":1,\"status\":1,\"remark\":\"��ά\",\"operator\":\"Admin\",\"operateTime\":1508166307317,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:05:07', '0:0:0:0:0:0:0:1', '1'), ('13', '6', '4', '[7,8,9]', '[7,8,9,10]', 'Admin', '2017-10-16 23:34:39', '0:0:0:0:0:0:0:1', '1'), ('14', '7', '4', '[1]', '[1,4]', 'Admin', '2017-10-16 23:34:44', '0:0:0:0:0:0:0:1', '1'), ('15', '2', '5', '', '{\"id\":5,\"username\":\"����ԱA\",\"telephone\":\"18677778888\",\"mail\":\"service@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":12,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508170918338,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-17 00:21:58', '0:0:0:0:0:0:0:1', '1'), ('16', '2', '5', '{\"id\":5,\"username\":\"����ԱA\",\"telephone\":\"18677778888\",\"mail\":\"service@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":12,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508170918000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":5,\"username\":\"����ԱB\",\"telephone\":\"18677778888\",\"mail\":\"service@qq.com\",\"deptId\":12,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508170924698,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-17 00:22:05', '0:0:0:0:0:0:0:1', '1'), ('17', '2', '5', '{\"id\":5,\"username\":\"����ԱB\",\"telephone\":\"18677778888\",\"mail\":\"service@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":12,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508170925000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":5,\"username\":\"����ԱA\",\"telephone\":\"18677778888\",\"mail\":\"service@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":12,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508170934791,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-17 00:22:15', '0:0:0:0:0:0:0:1', '1'), ('18', '1', '12', '{\"id\":12,\"name\":\"�ͷ���\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"Admin\",\"operateTime\":1508166009000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":12,\"name\":\"�ͷ���A\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"Admin\",\"operateTime\":1508170966051,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-17 00:22:46', '0:0:0:0:0:0:0:1', '1'), ('19', '1', '12', '{\"id\":12,\"name\":\"�ͷ���A\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"Admin\",\"operateTime\":1508170966000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":12,\"name\":\"�ͷ���\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"Admin\",\"operateTime\":1508170975242,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-17 00:22:55', '0:0:0:0:0:0:0:1', '1'), ('20', '5', '5', '{\"id\":5,\"name\":\"��ά����Ա\",\"type\":1,\"status\":1,\"remark\":\"��ά\",\"operator\":\"Admin\",\"operateTime\":1508166307000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":5,\"name\":\"��ά����ԱA\",\"type\":1,\"status\":1,\"remark\":\"��ά\",\"operator\":\"Admin\",\"operateTime\":1508170997531,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-17 00:23:18', '0:0:0:0:0:0:0:1', '1'), ('21', '5', '5', '{\"id\":5,\"name\":\"��ά����ԱA\",\"type\":1,\"status\":1,\"remark\":\"��ά\",\"operator\":\"Admin\",\"operateTime\":1508170998000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":5,\"name\":\"��ά����Ա\",\"type\":1,\"status\":1,\"remark\":\"��ά\",\"operator\":\"Admin\",\"operateTime\":1508171007651,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-17 00:23:28', '0:0:0:0:0:0:0:1', '1'), ('22', '7', '4', '[1,4]', '[1,4,2,3,5]', 'Admin', '2017-10-17 00:23:53', '0:0:0:0:0:0:0:1', '1'), ('23', '7', '4', '[1,4,2,3,5]', '[1,4]', 'Admin', '2017-10-17 00:24:04', '0:0:0:0:0:0:0:1', '1'), ('24', '6', '5', '[]', '[7,8,9,10]', 'Admin', '2017-10-17 00:24:23', '0:0:0:0:0:0:0:1', '1'), ('25', '6', '5', '[7,8,9,10]', '[]', 'Admin', '2017-10-17 00:24:34', '0:0:0:0:0:0:0:1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role`
-- ----------------------------

CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '��ɫid',
  `name` varchar(20) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '��ɫ�����ͣ�1������Ա��ɫ��2������',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '״̬��1�����ã�0������',
  `remark` varchar(200) DEFAULT '' COMMENT '��ע',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '������',
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '���һ�θ��µ�ʱ��',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '���һ�θ����ߵ�ip��ַ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_role`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES ('1', '��Ʒ����Ա', '1', '1', '', 'Admin', '2017-10-15 12:42:47', '0:0:0:0:0:0:0:1'), ('2', '��������Ա', '1', '1', '', 'Admin', '2017-10-15 12:18:59', '0:0:0:0:0:0:0:1'), ('3', '�������Ա', '1', '1', '', 'Admin', '2017-10-15 12:19:10', '0:0:0:0:0:0:0:1'), ('4', 'Ȩ�޹���Ա', '1', '1', '', 'Admin', '2017-10-15 21:30:36', '0:0:0:0:0:0:0:1'), ('5', '��ά����Ա', '1', '1', '��ά', 'Admin', '2017-10-17 00:23:28', '0:0:0:0:0:0:0:1');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role_acl`
-- ----------------------------

CREATE TABLE `sys_role_acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '��ɫid',
  `acl_id` int(11) NOT NULL COMMENT 'Ȩ��id',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '������',
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '���һ�θ��µ�ʱ��',
  `operate_ip` varchar(200) NOT NULL DEFAULT '' COMMENT '���һ�θ����ߵ�ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_role_acl`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_acl` VALUES ('9', '4', '7', 'Admin', '2017-10-16 23:34:39', '0:0:0:0:0:0:0:1'), ('10', '4', '8', 'Admin', '2017-10-16 23:34:39', '0:0:0:0:0:0:0:1'), ('11', '4', '9', 'Admin', '2017-10-16 23:34:39', '0:0:0:0:0:0:0:1'), ('12', '4', '10', 'Admin', '2017-10-16 23:34:39', '0:0:0:0:0:0:0:1');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role_user`
-- ----------------------------

CREATE TABLE `sys_role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '��ɫid',
  `user_id` int(11) NOT NULL COMMENT '�û�id',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '������',
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '���һ�θ��µ�ʱ��',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '���һ�θ����ߵ�ip��ַ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_role_user`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_user` VALUES ('16', '4', '1', 'Admin', '2017-10-17 00:24:04', '0:0:0:0:0:0:0:1'), ('17', '4', '4', 'Admin', '2017-10-17 00:24:04', '0:0:0:0:0:0:0:1');
COMMIT;

-- ----------------------------
--  Table structure for `sys_user`
-- ----------------------------

CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '�û�id',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '�û�����',
  `telephone` varchar(13) NOT NULL DEFAULT '' COMMENT '�ֻ���',
  `mail` varchar(20) NOT NULL DEFAULT '' COMMENT '����',
  `password` varchar(40) NOT NULL DEFAULT '' COMMENT '���ܺ������',
  `dept_id` int(11) NOT NULL DEFAULT '0' COMMENT '�û����ڲ��ŵ�id',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '״̬��1��������0������״̬��2��ɾ��',
  `remark` varchar(200) DEFAULT '' COMMENT '��ע',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '������',
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '���һ�θ���ʱ��',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '���һ�θ����ߵ�ip��ַ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_user`
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('1', 'Admin', '18612344321', 'admin@qq.com', '25D55AD283AA400AF464C76D713C07AD', '1', '1', 'admin', 'system', '2017-10-13 08:46:16', '127.0.0.1'), ('2', 'Jimin', '13188889999', 'jimin@qq.com', '25D55AD283AA400AF464C76D713C07AD', '1', '1', 'jimin.zheng', 'Admin', '2017-10-14 14:45:19', '127.0.0.1'), ('3', 'Jimmy', '13812344311', 'jimmy@qq.com', '25D55AD283AA400AF464C76D713C07AD', '2', '1', '', 'Admin', '2017-10-16 12:57:35', '0:0:0:0:0:0:0:1'), ('4', 'Kate', '13144445555', 'kate@qq.com', '25D55AD283AA400AF464C76D713C07AD', '1', '1', 'sss', 'Admin', '2017-10-16 23:02:51', '0:0:0:0:0:0:0:1'), ('5', '����ԱA', '18677778888', 'service@qq.com', '25D55AD283AA400AF464C76D713C07AD', '12', '1', '', 'Admin', '2017-10-17 00:22:15', '0:0:0:0:0:0:0:1');
COMMIT;
