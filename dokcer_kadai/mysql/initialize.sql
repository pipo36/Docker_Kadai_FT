CREATE USER 'data_kadai'@'localhost' IDENTIFIED BY 'data'
select user,host from mysql.user;

GRANT ALL PRIVILEGES ON *.* TO 'data_kadai'@'localhost';


DROP DATABASE IF EXISTS kadai_db;
CREATE DATABASE IF NOT EXISTS kadai_db;

DROP TABLE IF EXISTS kadai_table;
CREATE TABLE IF NOT EXISTS kadai_table
(
    id INT PRIMARY KEY,
    name VARCHAR(255),
    number INT,
    message VARCHAR(255)
);

insert into kadai_table(id, name, number, message) value (1,"kadai1", 1, "message1");
insert into kadai_table(id, name, number, message) value (2,"kadai2", 2, "message2");
insert into kadai_table(id, name, number, message) value (3,"kadai3", 3, "message3");