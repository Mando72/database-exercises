use ads_tester_db;



CREATE TABLE users(
id INT UNSIGNED NOT NULL auto_increment,
EMAIL varchar(100) NOT NULL,
PASS_WORD varchar(100) NOT NULL,
 Primary Key (id));
  
 alter table -- users
 add column first_name varchar(100) NOT NULL,
 add column last_name varchar(100) NOT NULL;
INSERT INTO users(EMAIL, PASS_WORD,first_name,last_name)VALUES
('joe@dirt.com','dirtyjoe','Joe','Dirt'),-- 

('david@robinson.com','goat','David','Robinson'),

('lars@ulrich','drummer','Lars','Ulrich'),

('vinnie@paul.com','pantera','Vinnie','Paul'),

('emmett@smith.com','alltimerusher','Emmett','Smith');


CREATE TABLE ads(
id INT UNSIGNED NOT NULL auto_increment,
title varchar(100) NOT NULL,
user_id INT UNSIGNED NOT NULL,
description varchar(100) NOT NULL,
primary key(id),
foreign key(user_id) references user(id));




INSERT INTO ads(title,user_id,description)VALUES
('For Sale', '1', 'tools', 'clothes', 'shoes', 'toys'),

('For Rent', '2', 'three bedroom house sits on two acres'),

('Job Postings', '3', 'junior software developer', ' Bus Drivers'),

('Freebies', '4', 'two male pugs', ' 47" tv', 'firewood'),

('Real Estate', '5', ' 150acres of ranch land'),

('Cattle', '6', 'five angus cattle', 'two shorthorn cattle', 'Charolais cattle'),

('Services', 'carpet cleaning', 'lawn service', 'mechanic service');




CREATE TABLE categories(-- 
id INT UNSIGNED NOT NULL,
description varchar(100) NOT NULL,
primary key(id));








CREATE TABLE ads_categories(
ads_id INT UNSIGNED NOT NULL,
categories_id varchar(100) NOT NULL,
Foreign key(ads_id) references ad(id),
foreign key(categories_id) references categories(id));

select * from users;

SHOW TABLES;
SHOW databases;









