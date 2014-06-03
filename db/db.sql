CREATE SCHEMA `olekstra` ;

CREATE TABLE `olekstra`.`letters` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `number` VARCHAR(20) NOT NULL DEFAULT '',
  `date` DATE NOT NULL DEFAULT '2000-01-01',
  `subject` VARCHAR(250) NOT NULL DEFAULT '',
  `posted` BIT NULL DEFAULT 0,
  `file_link` VARCHAR(200) NULL,
  `notes` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));

 INSERT INTO `olekstra`.`letters`(`number`,`date`,`subject`,`posted`,`file_link`,`notes`)
VALUES ('200-20-30','2014-06-02','Dummy 1',0,'','Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy');
INSERT INTO `olekstra`.`letters`(`number`,`date`,`subject`,`posted`,`file_link`,`notes`)
VALUES ('200-21-30','2014-06-02','Dummy 2',0,'','Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy');
INSERT INTO `olekstra`.`letters`(`number`,`date`,`subject`,`posted`,`file_link`,`notes`)
VALUES ('200-22-30','2014-06-02','Dummy 3',0,'','Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy');
INSERT INTO `olekstra`.`letters`(`number`,`date`,`subject`,`posted`,`file_link`,`notes`)
VALUES ('200-23-30','2014-06-02','Dummy 4',0,'','Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy');
INSERT INTO `olekstra`.`letters`(`number`,`date`,`subject`,`posted`,`file_link`,`notes`)
VALUES ('200-24-30','2014-06-02','Dummy 5',1,'','Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy,Dummy');

