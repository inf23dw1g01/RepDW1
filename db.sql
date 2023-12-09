CREATE SCHEMA `Filme`;


CREATE TABLE `Filme`(
	`id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `description` varchar(1000) DEFAULT NULL, 
    `ano` varchar(4) DEFAULT NULL, 
    PRIMARY KEY (`id`)
)	ENGINE =Innodb;

SELECT * FROM Filme;

CREATE SCHEMA `Diretores`;

CREATE TABLE `Diretores`(
	`id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `date_of_birth` varchar(10) DEFAULT NULL, 
    PRIMARY KEY (`id`)
)	ENGINE =Innodb;

SELECT * FROM Diretores;

CREATE SCHEMA `Atores`;

CREATE TABLE `Atores`(
	`id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `date_of_birth` varchar(10) DEFAULT NULL, 
    PRIMARY KEY (`id`)
)	ENGINE =Innodb;

SELECT * FROM Atores;

CREATE SCHEMA `Personagens`;

CREATE TABLE `Personagens`(
	`id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `role` varchar(10) NOT NULL, 
    PRIMARY KEY (`id`)
)	ENGINE =Innodb;

SELECT * FROM Diretores;


    