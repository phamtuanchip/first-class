<! -- user table -->
create mybatis-demo 
CREATE TABLE  user (
  user_id int(10) unsigned NOT NULL auto_increment,
  email_id varchar(45) NOT NULL,
  password varchar(45) NOT NULL,
  first_name varchar(45) NOT NULL,
  last_name varchar(45) default NULL,
  PRIMARY KEY  (user_id),
  UNIQUE KEY Index_2_email_uniq (email_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

<! -- user blog -->
CREATE TABLE  blog (
  blog_id int(10) unsigned NOT NULL auto_increment,
  blog_name varchar(45) NOT NULL,
  created_on datetime NOT NULL,
  PRIMARY KEY  (blog_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;