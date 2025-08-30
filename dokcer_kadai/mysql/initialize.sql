CREATE USER IF NOT EXISTS 'data_kadai'@'localhost' IDENTIFIED BY 'data'
GRANT ALL PRIVILEGES ON *.* TO 'data_kadai'@'localhost';

CREATE USER IF NOT EXISTS 'data_kadai'@'%' IDENTIFIED BY 'data'
GRANT ALL PRIVILEGES ON *.* TO 'data_kadai'@'%';


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



DROP DATABASE IF EXISTS kadai_master;
CREATE DATABASE IF NOT EXISTS kadai_master;

DROP TABLE IF EXISTS character_table;
CREATE TABLE IF NOT EXISTS character_table
(
    id INT PRIMARY KEY,
    name VARCHAR(255),
    number INT
);

insert into character_table(id, name, number) value (1, "tanaka", 1);
insert into character_table(id, name, number) value (2, "tanaka", 2);
insert into character_table(id, name, number) value (3, "tanaka", 3);

DROP TABLE IF EXISTS class_table;
CREATE TABLE IF NOT EXISTS class_table
(
    number INT PRIMARY KEY,
    name VARCHAR(255)
);

insert into class_table(number, name) value (1, "Gold");
insert into class_table(number, name) value (2, "Silver");
insert into class_table(number, name) value (3, "Bronze");

select * from character_table ch join class_table cl on ch.number = cl.number;

select * from character_table union select * from class_table;