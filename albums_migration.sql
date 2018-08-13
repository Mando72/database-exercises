USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(200) NOT NULL,
  name VARCHAR(200)NOT NULL,
  release_date int UNSIGNED NOT NULL,
  sales DECIMAL(6, 2),
  genre VARCHAR(200),
  PRIMARY KEY (id),
  UNIQUE(name,artist)
);

DESCRIBE albums;