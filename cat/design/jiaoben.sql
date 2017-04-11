
--系统人员基础信息表，包含老师，同学管理员
create table user(
   id INT NOT NULL AUTO_INCREMENT,
   lname VARCHAR(100) NOT NULL COMMENT '登录名',
   pwd VARCHAR(100) NOT NULL COMMENT '密码',
   image VARCHAR(100) DEFAULT NULL COMMENT '头像',
   name VARCHAR(100) NOT NULL COMMENT '姓名',
   age  int DEFAULT NULL COMMENT '年龄',
   birth date COMMENT '生日',
   phone VARCHAR(50) NOT NULL COMMENT '电话',
   qq VARCHAR(50) NOT NULL COMMENT '电话',
   type int not null default 1  COMMENT '人员类型 1管理员 2学生, 3老师',
   auth_group int not null default 1  COMMENT '1普通人员',
   status int not null default 1  COMMENT '状态 1 正常 2认证 3作废',
   des VARCHAR(400) DEFAULT NULL COMMENT '备注',
   gmtCreated datetime ,
   PRIMARY KEY ( id ),
   UNIQUE KEY `lname` (`lname`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人员表';



create table user_ext(
   id INT NOT NULL,
   zhifubao VARCHAR(50) default NULL COMMENT '支付宝',
   baccount VARCHAR(50) default NULL COMMENT '银行帐号',
   education VARCHAR(50) default NULL COMMENT '学历',
   school VARCHAR(50) default NULL COMMENT '学校',
   gmtCreated datetime ,
   PRIMARY KEY ( id ),
   UNIQUE KEY `lname` (`lname`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息扩展';


create table experience(
   id INT NOT NULL COMMENT '用户id user.id',
   startDate date NOT NULL COMMENT '开始时间',
   endDate date NOT NULL COMMENT '结束时间',
   org VARCHAR(50) NOT NULL COMMENT '组织机构',
   content VARCHAR(500) NOT NULL COMMENT '内容',
   type int not null default 1  COMMENT '1教育 2工作 3获奖',
   gmtCreated datetime ,
   PRIMARY KEY ( id )
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户经历';



create table lesson(
   id INT NOT NULL AUTO_INCREMENT,
   tname VARCHAR(100) NOT NULL COMMENT '教师',
   tid INT NOT NULL COMMENT '教师id',
   clsName VARCHAR(100) NOT NULL COMMENT '课程名',
   des VARCHAR(400) NOT NULL COMMENT '课程描述',
   start DATE default NULL COMMENT '开始时间',
   end DATE default NULL COMMENT '结束时间',
   ckind int default null   COMMENT '课程分类',
   startAge int default null  COMMENT '开始年龄',
   endAge int default null  COMMENT '结束年龄',
   tway int default null  COMMENT '上课方式',
   price VARCHAR(20) NOT NULL COMMENT '价格',
   count int NOT NULL default 0 COMMENT '选课人数',
   gmtCreated datetime,
   PRIMARY KEY ( id ),
   UNIQUE KEY `clsName` (`clsName`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程表';







--django
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;


CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

