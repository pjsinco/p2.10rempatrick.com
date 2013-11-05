select count(*)
from users_users
where user_id = 29


-- get count of followers
select count(*)
from users_users
where user_id_followed = 27

-- get count of posts 
select count(*)
from posts
where user_id = 36



SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

create table users (
  user_id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
  created INT,
  modified INT,
  token VARCHAR(64),
  password VARCHAR(64),
  last_login INT,
  timezone VARCHAR(64),
  user_name VARCHAR(32),
  email VARCHAR(128),
  location VARCHAR(128),
  bio text
) engine InnoDB CHARSET=utf8 AUTO_INCREMENT=5 

CREATE TABLE posts (
  post_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  created int(11) NOT NULL,
  modified int(11) NOT NULL,
  user_id int(11) NOT NULL,
  content text NOT NULL,
  KEY user_id (user_id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7

CREATE TABLE users_users (
  user_user_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  created int(11) NOT NULL,
  user_id int(11) NOT NULL COMMENT 'follower',
  user_id_followed int(11) NOT NULL COMMENT 'followed',
  KEY user_id (user_id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

ALTER TABLE posts
  ADD CONSTRAINT posts_ibfk_1 FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE ON UPDATE CASCADE;


----------------------------

delete from users
    where user_id = 4

update users
  set email = 'joe@gmail.com'
where first_name = 'Joe';

insert into users
  set 
    first_name = 'Jill',
    last_name = 'Smith'

create table users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  created INT,
  modified INT,
  token VARCHAR(64),
  password VARCHAR(64),
  last_login INT,
  timezone VARCHAR(64),
  user_name VARCHAR(32),
  email VARCHAR(128),
  location VARCHAR(128),
  bio text
) engine InnoDB CHARSET=utf8 AUTO_INCREMENT=5 


/* from susan */

/*-------------------------------------------------------------------------------------------------
Includes just table structure, no sample data

This will drop existing posts, users and users_users table if you have them.
-------------------------------------------------------------------------------------------------*/

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `last_login` int(11) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

DROP TABLE IF EXISTS `users_users`;
CREATE TABLE `users_users` (
  `user_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'follower',
  `user_id_followed` int(11) NOT NULL COMMENT 'followed',
  PRIMARY KEY (`user_user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
