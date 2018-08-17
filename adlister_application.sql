USE adlists_test_db;




CREATE TABLE users(
id INT UNSIGNED NOT NULL auto_increment,
EMAIL varchar(100) NOT NULL,
PASS_WORD varchar(100) NOT NULL,
 Primary Key (id));

 alter table users
 add column first_name varchar(100) NOT NULL,
 add column last_name varchar(100) NOT NULL;

INSERT INTO users(EMAIL, PASS_WORD,first_name,last_name)VALUES
('joe@dirt.com','dirtyjoe','Joe','Dirt'),

('david@robinson.com','goat','David','Robinson'),

('lars@ulrich','drummer','Lars','Ulrich'),

('vinnie@paul.com','pantera','Vinnie','Paul'),

('emmett@smith.com','alltimerusher','Emmett','Smith');

 CREATE TABLE ads(
id INT UNSIGNED NOT NULL auto_increment,
title varchar(100) NOT NULL,
user_id INT unsigned NOT NULL,
description varchar(100) NOT NULL,
primary key(id),
foreign key(user_id) references users(id));

INSERT INTO ads(title,user_id, description )VALUES
('For Sale', 3,'tools'),

('For Rent', 2,'three bedroom house sits on two acres'),

('Job Postings', 2,'junior software developer'),

('Freebies', 4, 'firewood'),

('Real Estate', 1,' 150 acres of ranch land'),

('Cattle', 5, 'three Charolais cattle'),

('Services',1, 'lawn service');

CREATE TABLE categories(
id INT UNSIGNED NOT NULL auto_increment,
description varchar(100) NOT NULL,
primary key(id));

INSERT INTO categories(description)VALUES
('Dewalt Impact drill 20 volt lithium battery and charger'),

('House has 2800 square feet, with pool, 3 car garage asking $190,000'),

('no college degree required, but must know Java,javascript, PHP, MYSQL'),

('I have a lot with plenty of mesquite trees to be cut down '),

('ranch land for sale for agricultural development,or Hunting'),

('Cattle needs to be moved for new incoming breeds '),

('I charge $25 for front , or $45 for front and back');

CREATE TABLE ads_categories(
ads_id INT UNSIGNED NOT NULL,
categories_id int unsigned  NOT NULL,
Foreign key(ads_id) references ads(id),
foreign key(categories_id) references categories(id)
);

select * from categories;









