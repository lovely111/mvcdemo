DROP DATABASE IF EXISTS test;
CREATE DATABASE   test;

DROP TABLE IF EXISTS  test.user;
CREATE TABLE   test.user(
  id   INT  UNSIGNED AUTO_INCREMENT    PRIMARY KEY ,
  username  VARCHAR(255),
  password VARCHAR(255)
)COMMENT 'user_table' ;

DROP TABLE IF EXISTS  test.book;
CREATE TABLE   test.book(
  id   INT  UNSIGNED AUTO_INCREMENT    PRIMARY KEY ,
  title  VARCHAR(255),
  author VARCHAR(255),
  date   DATE,
  price  DECIMAL,
  amount INT(5)
)COMMENT 'book_table' ;


SELECT *
FROM test.user;


SELECT *
FROM test.book;


