mysql> desc users_users;
+------------------+---------+------+-----+---------+----------------+
| Field            | Type    | Null | Key | Default | Extra          |
+------------------+---------+------+-----+---------+----------------+
| user_user_id     | int(11) | NO   | PRI | NULL    | auto_increment |
| created          | int(11) | NO   |     | NULL    |                |
| user_id          | int(11) | NO   | MUL | NULL    |                |
| user_id_followed | int(11) | NO   |     | NULL    |                |
+------------------+---------+------+-----+---------+----------------+

mysql> desc users;
+-------------------+--------------+------+-----+---------+----------------+
| Field             | Type         | Null | Key | Default | Extra          |
+-------------------+--------------+------+-----+---------+----------------+
| user_id           | int(11)      | NO   | PRI | NULL    | auto_increment |
| created           | int(11)      | YES  |     | NULL    |                |
| modified          | int(11)      | YES  |     | NULL    |                |
| token             | varchar(64)  | YES  |     | NULL    |                |
| password          | varchar(64)  | YES  |     | NULL    |                |
| last_login        | int(11)      | YES  |     | NULL    |                |
| timezone          | varchar(64)  | YES  |     | NULL    |                |
| user_name         | varchar(32)  | YES  |     | NULL    |                |
| email             | varchar(128) | YES  |     | NULL    |                |
| location          | varchar(128) | YES  |     | NULL    |                |
| bio               | text         | YES  |     | NULL    |                |
| ip                | varchar(64)  | YES  |     | NULL    |                |
| state             | char(2)      | YES  |     | NULL    |                |
| country           | varchar(64)  | YES  |     | NULL    |                |
| city              | varchar(128) | YES  |     | NULL    |                |
| registration_code | char(10)     | YES  |     | NULL    |                |
| first_name        | varchar(64)  | YES  |     | NULL    |                |
| last_name         | varchar(64)  | YES  |     | NULL    |                |
+-------------------+--------------+------+-----+---------+----------------+

mysql> desc posts;
+----------+---------+------+-----+---------+----------------+
| Field    | Type    | Null | Key | Default | Extra          |
+----------+---------+------+-----+---------+----------------+
| post_id  | int(11) | NO   | PRI | NULL    | auto_increment |
| created  | int(11) | NO   |     | NULL    |                |
| modified | int(11) | NO   |     | NULL    |                |
| user_id  | int(11) | NO   | MUL | NULL    |                |
| content  | text    | NO   |     | NULL    |                |
+----------+---------+------+-----+---------+----------------+

select 
  p.content, 
  p.created, 
  p.user_id as post_user_id,
  uu.user_id as follower_id,
  u.user_name
from posts p inner join users_users uu
  on p.user_id = uu.user_id_followed inner join users u
  on p.user_id = u.user_id
where uu.user_id = 29

select content
from posts
where user_id = (
  select user_id_followed
  from users_users
  where user_id = 29
) 

select user_id_followed
from users_users uu inner join posts p
  on uu.user_id = p.user_id
where uu.user_id = 29

select uu.*
from users_users uu inner join posts p
  on uu.user_id = p.user_id
where uu.user_id = 29


-- get count of people user is following
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
