USE `Filmes`;

CREATE TABLE `Filme`(
	`id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `description` varchar(1000) DEFAULT NULL, 
    `ano` varchar(4) DEFAULT NULL, 
    PRIMARY KEY (`id`)
)	ENGINE =Innodb;


CREATE TABLE `Diretores`(
	`id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `date_of_birth` varchar(10) DEFAULT NULL, 
    PRIMARY KEY (`id`)
)	ENGINE =Innodb;


CREATE TABLE `Atores`(
	`id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `date_of_birth` varchar(10) DEFAULT NULL, 
    PRIMARY KEY (`id`)
)	ENGINE =Innodb;


CREATE TABLE `Personagens`(
	`id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `role` varchar(45) NOT NULL, 
    PRIMARY KEY (`id`)
)	ENGINE =Innodb;
