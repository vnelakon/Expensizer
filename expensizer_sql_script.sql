delimiter $$

CREATE TABLE `table_user` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_name` varchar(45) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `user_email_UNIQUE` (`user_email`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1$$

delimiter $$

CREATE TABLE `table_expenses` (
  `exp_id` int(11) NOT NULL auto_increment,
  `exp_name` varchar(45) NOT NULL,
  PRIMARY KEY  (`exp_id`),
  UNIQUE KEY `exp_id_UNIQUE` (`exp_id`),
  UNIQUE KEY `exp_name_UNIQUE` (`exp_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1$$

delimiter $$

CREATE TABLE `table_exp_details` (
  `exp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `exp_name` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `table_exp_detailscol` varchar(45) default NULL,
  UNIQUE KEY `exp_id_UNIQUE` (`exp_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  KEY `exp_name` (`exp_name`),
  KEY `user_name` (`user_name`),
  CONSTRAINT `table_exp_details_ibfk_4` FOREIGN KEY (`user_name`) REFERENCES `table_user` (`user_name`),
  CONSTRAINT `table_exp_details_ibfk_1` FOREIGN KEY (`exp_id`) REFERENCES `table_expenses` (`exp_id`),
  CONSTRAINT `table_exp_details_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `table_user` (`user_id`),
  CONSTRAINT `table_exp_details_ibfk_3` FOREIGN KEY (`exp_name`) REFERENCES `table_expenses` (`exp_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1$$

