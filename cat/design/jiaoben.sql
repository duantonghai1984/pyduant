
--ϵͳ��Ա������Ϣ��������ʦ��ͬѧ����Ա
create table user(
   id INT NOT NULL AUTO_INCREMENT,
   lname VARCHAR(100) NOT NULL COMMENT '��¼��',
   pwd VARCHAR(100) NOT NULL COMMENT '����',
   image VARCHAR(100) DEFAULT NULL COMMENT 'ͷ��',
   name VARCHAR(100) NOT NULL COMMENT '����',
   age  int DEFAULT NULL COMMENT '����',
   birth date COMMENT '����',
   phone VARCHAR(50) NOT NULL COMMENT '�绰',
   qq VARCHAR(50) NOT NULL COMMENT '�绰',
   type int not null default 1  COMMENT '��Ա���� 1����Ա 2ѧ��, 3��ʦ',
   auth_group int not null default 1  COMMENT '1��ͨ��Ա',
   status int not null default 1  COMMENT '״̬ 1 ���� 2��֤ 3����',
   des VARCHAR(400) DEFAULT NULL COMMENT '��ע',
   gmtCreated datetime ,
   PRIMARY KEY ( id ),
   UNIQUE KEY `lname` (`lname`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ա��';



create table user_ext(
   id INT NOT NULL,
   zhifubao VARCHAR(50) default NULL COMMENT '֧����',
   baccount VARCHAR(50) default NULL COMMENT '�����ʺ�',
   education VARCHAR(50) default NULL COMMENT 'ѧ��',
   school VARCHAR(50) default NULL COMMENT 'ѧУ',
   gmtCreated datetime ,
   PRIMARY KEY ( id ),
   UNIQUE KEY `lname` (`lname`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û���Ϣ��չ';


create table experience(
   id INT NOT NULL COMMENT '�û�id user.id',
   startDate date NOT NULL COMMENT '��ʼʱ��',
   endDate date NOT NULL COMMENT '����ʱ��',
   org VARCHAR(50) NOT NULL COMMENT '��֯����',
   content VARCHAR(500) NOT NULL COMMENT '����',
   type int not null default 1  COMMENT '1���� 2���� 3��',
   gmtCreated datetime ,
   PRIMARY KEY ( id )
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û�����';



create table lesson(
   id INT NOT NULL AUTO_INCREMENT,
   tname VARCHAR(100) NOT NULL COMMENT '��ʦ',
   tid INT NOT NULL COMMENT '��ʦid',
   clsName VARCHAR(100) NOT NULL COMMENT '�γ���',
   des VARCHAR(400) NOT NULL COMMENT '�γ�����',
   start DATE default NULL COMMENT '��ʼʱ��',
   end DATE default NULL COMMENT '����ʱ��',
   ckind int default null   COMMENT '�γ̷���',
   startAge int default null  COMMENT '��ʼ����',
   endAge int default null  COMMENT '��������',
   tway int default null  COMMENT '�Ͽη�ʽ',
   price VARCHAR(20) NOT NULL COMMENT '�۸�',
   count int NOT NULL default 0 COMMENT 'ѡ������',
   gmtCreated datetime,
   PRIMARY KEY ( id ),
   UNIQUE KEY `clsName` (`clsName`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�γ̱�';







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

