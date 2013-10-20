
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
  token VARCHAR(255),
  password VARCHAR(255),
  last_login INT,
  timezone VARCHAR(255),
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255)
) engine InnoDB 
