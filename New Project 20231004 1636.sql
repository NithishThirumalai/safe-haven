-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema disastermanagement
--

CREATE DATABASE IF NOT EXISTS disastermanagement;
USE disastermanagement;

--
-- Definition of table `encryptcomplaint`
--

DROP TABLE IF EXISTS `encryptcomplaint`;
CREATE TABLE `encryptcomplaint` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `email` longtext,
  `phoneno` longtext,
  `date` longtext,
  `day` longtext,
  `type` longtext,
  `noofpeople` longtext,
  `aboutdis` longtext,
  `address` longtext,
  `link` longtext,
  `time` longtext,
  `noofvict` longtext,
  `zone` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `encryptcomplaint`
--

/*!40000 ALTER TABLE `encryptcomplaint` DISABLE KEYS */;
INSERT INTO `encryptcomplaint` (`id`,`name`,`email`,`phoneno`,`date`,`day`,`type`,`noofpeople`,`aboutdis`,`address`,`link`,`time`,`noofvict`,`zone`) VALUES 
 (1,'IwCZ66gB1Aws2lVU379ZyjNzT+vLH9PhjPQ=','Kd7uNvYLjPIVNyiulNhuVrekwNygGPGI/QDdqeKAcg==','2JCt/SR7dUv4Q49IxfEJVk0UcIEM0dx/HNM=','6a0DqA5hBUOcKLuW/z9IpeDiMx2UHpYdarE=','O5x0Gq1NSqT1VaBc5wPP680xWbXYAU33Pg==','A/v+F242zBRptcLCs9M6O8Ol5gDOJeh/4S85rIXNMSio','mxGLrnp3tyLkZgnlaAs8+iKb','Rh1dsY6O758oHX49kkeATasx','4OUUjfUaYtUxoQAk/aJUwrru/gVIDqPccJmD','QAYelinK5WOe2tLl0ExzuOeFMqbdauMF6tNS4WVzoA==','cX10iN4/krS/3kLq+zDN2ZMxGu6pPpZ4tOw=','H9SJOvrGssloma2gjY/dmDOtfZ/e4DiEOyV/J0Yce78uFATqdHwkl6Kr6QoW4NsAMCfpjRHSnmWsBz6NkoofhX23+HoxZUQFs6IeudJ95B8qoFIyF7RwA5UrI5bO+yHvHuh4H4gzRGSLHkR7bXyj8YeZlCwUTMZidPDHiz/JwEu+M5VsAZu59UF4EprGd/+WVEZK4/YFsx4OTufUnN8PxVA/N/V9UQUfQXJyywI170GE32yBziukHx2yKTB5haYUhvGg45HcPT1HwIVsK/0RF66bpqirtogG1Uderg==','COBJD5BUbTSU1gOz8vjP7bnVJJMI'),
 (2,'C//UP/Ak0aViAT/MBsZ5t0gPtvlViw==','4C9T8JoCuaZ9cGvF5Q/MfzZj/h0H0H+0HluKVWGvt+E=','BKjbP4SfDb1taAVOh2dxMd7vsUqYCgSVgbI=','A0/sHSuHZ7rjoGaL6yKYPCeVXJv7PbF6mKw=','CywOdsI8hd1Q+k4/jTmCeg5nIE32RDhO','UflrlDP2CAzG9PMz30IqnuahBCz3bZpcqRdyH8RWcxM=','xxHMJit9NkbOxusxfwddyuNn','rxlzCJm8neWfQByRAhKVcwg=','StS9qrqiU46eFRPWRavutAYOU7jpRohG','OCuUIQZbRt+7G9r+drs0xMZpnYEgg+82jiLvv7ICj6eQC2fiw7qz7Q85ez9Jt1aO8pjCdHyJ','HYfX/ggASxDCOVySq0G/MW8slgva9OsAD/jZRFEVU3eMuhsk','VyPGShCyJ1kzvc6NsGoCD2PoPg0iCsNAwrR9KgfYaNJoKDoTpv4IMrLR/fjtcWMbD4unEmNtdQfgtbhZwdNAnnRPFncjQ1IbBCRrvS3p8EXLsa92ppVAbGpd1jZU9uBp7P7Lq/lE++N0tGKS1KgDzaS3SoNNdtWN1FVepd8NctCBuWdzyT0Lxv6R8Yzs2R7ZhJBlCAMBdNxmD9xkL2DfTHXy8w82NpsYnC3tMU89MOO3Lmo9HE3tRvxeb0oI72cBPETTWqJBr9OZL5JejrPhrIQDSWEr4yL4JffWxU0LfdGb328QA/voPfiBzDp2mggLE/Wyfe9wmD7sG5ODU1sqr+l/jknjk64cWTc=','g1SYaFtReo+TuIx1RjMaBD2iDhfI');
/*!40000 ALTER TABLE `encryptcomplaint` ENABLE KEYS */;


--
-- Definition of table `medicalreg`
--

DROP TABLE IF EXISTS `medicalreg`;
CREATE TABLE `medicalreg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `medicalid` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `seats` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `status1` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicalreg`
--

/*!40000 ALTER TABLE `medicalreg` DISABLE KEYS */;
INSERT INTO `medicalreg` (`id`,`medicalid`,`location`,`seats`,`password`,`status`,`status1`) VALUES 
 (2,'M74789','Anna Nagar','50','123','Approved',' '),
 (3,'M84223','Gopalapuram','50','123','Approved',' '),
 (4,'M50979','Ambattur','50','123','Approved',' ');
/*!40000 ALTER TABLE `medicalreg` ENABLE KEYS */;


--
-- Definition of table `publiccomplaint`
--

DROP TABLE IF EXISTS `publiccomplaint`;
CREATE TABLE `publiccomplaint` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phoneno` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `day` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `noofpeople` varchar(45) DEFAULT NULL,
  `aboutdis` longtext,
  `address` longtext,
  `link` longtext,
  `time` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `noofvict` varchar(45) DEFAULT NULL,
  `zone` varchar(45) DEFAULT NULL,
  `status1` varchar(45) DEFAULT NULL,
  `status2` varchar(45) DEFAULT NULL,
  `Encrypt` longtext,
  `Decrypt` longtext,
  `Block 1` longtext,
  `Block 2` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publiccomplaint`
--

/*!40000 ALTER TABLE `publiccomplaint` DISABLE KEYS */;
INSERT INTO `publiccomplaint` (`id`,`name`,`email`,`phoneno`,`date`,`day`,`type`,`noofpeople`,`aboutdis`,`address`,`link`,`time`,`status`,`noofvict`,`zone`,`status1`,`status2`,`Encrypt`,`Decrypt`,`Block 1`,`Block 2`) VALUES 
 (4,'jehan','jehan@gmail.com','7867848877','2023-08-25','FRIDAY','Man-Made Disaster','10','building slides','1123asdzxc','https://www.google.com/maps/place/Sriperumbudur,+Tamil+Nadu/@12.9414566,79.8869322,13z/data=!3m1!4b1!4m6!3m5!1s0x3a52f2c66c981c67:0x2e697ce6d307cfbe!8m2!3d12.9624975!4d79.9452748!16zL20vMDc3M2tr?entry=ttu','15:36','Forward','20','Anna Nagar',NULL,NULL,NULL,NULL,NULL,NULL),
 (5,'1','1@gmail.com','1','2023-08-24','SATURDAY','Man-Made Disaster','1','1','1','1','11:11','Forward','1','Ambattur',' ',' ',NULL,NULL,NULL,NULL),
 (6,'sundar','sundar@gmail.com','123456789023544','2023-08-28','MONDAY','Natural Disaster','40','building slides','1123asdzxc','https://www.google.com/maps/place/Sriperumbudur,+Tamil+Nadu/@12.9414566,79.8869322,13z/data=!3m1!4b1!4m6!3m5!1s0x3a52f2c66c981c67:0x2e697ce6d307cfbe!8m2!3d12.9624975!4d79.9452748!16zL20vMDc3M2tr?entry=ttu','18:48','Complaint','50','Nungambakkam',' ',' ',NULL,NULL,NULL,NULL),
 (7,'mahesh','mahesh@gmail.com','7867848877','2023-08-29','TUESDAY','Man-Made Disaster','20','nuclear fussion','123ad','https://www.google.com/maps/place/Sriperumbudur,+Tamil+Nadu/@12.9414566,79.8869322,13z/data=!3m1!4b1!4m6!3m5!1s0x3a52f2c66c981c67:0x2e697ce6d307cfbe!8m2!3d12.9624975!4d79.9452748!16zL20vMDc3M2tr?entry=ttu','09:53','Forward','30','Gopalapuram','Support','',NULL,NULL,NULL,NULL),
 (8,'john','john@gmail.com','1234567890','2023-08-29','TUESDAY','Natural Disaster','10','land slides','1123asdzxc','https://www.google.com/maps/place/Sriperumbudur,+Tamil+Nadu/@12.9414566,79.8869322,13z/data=!3m1!4b1!4m6!3m5!1s0x3a52f2c66c981c67:0x2e697ce6d307cfbe!8m2!3d12.9624975!4d79.9452748!16zL20vMDc3M2tr?entry=ttu','10:58','Complaint','30','Gopalapuram',' ',' ','b56b9004325f8ace5c5ee0d7439afdda8711b1dab72dbbbb6ae78a844a1aa857','2c789713c60e2e928891f97bb939efa890644d53d7179e9db2503cda809e5296',NULL,NULL),
 (9,'chief','jeyan@gmail.com','7867848877','2023-10-02','MONDAY','Man-Made Disaster','30','oil tank accident','1123asdzxc','https://www.google.com/maps/place/Sriperumbudur,+Tamil+Nadu/@12.9414566,79.8869322,13z/data=!3m1!4b1!4m6!3m5!1s0x3a52f2c66c981c67:0x2e697ce6d307cfbe!8m2!3d12.9624975!4d79.9452748!16zL20vMDc3M2tr?entry=ttu','18:14','Forward','20','Ambattur','Approved','Approved','e43d300999580d90ce12ae073f47ecec4c07ebca0e0e33ea03e5769cf5bd0810','4752b8862a57f45b5f94681f569f18c5b149195d98a427cdc2d4722fe7005dff',NULL,NULL),
 (10,'harish','harish@gmail.com','7867848877','2023-10-02','MONDAY','Natural Disaster','20','nuclear fussion','1123asdzxc','https://www.google.com/maps/place/Sriperumbudur,+Tamil+Nadu/@12.9414566,79.8869322,13z/data=!3m1!4b1!4m6!3m5!1s0x3a52f2c66c981c67:0x2e697ce6d307cfbe!8m2!3d12.9624975!4d79.9452748!16zL20vMDc3M2tr?entry=ttu','18:47','Forward','20','Ambattur','Approved','Approved','9578f0431c06b26e24f33e975fc65862b5de820a9800ffcf8624005147b6a545','741240537d6d5d138e69ef3fdf9c2b956c3b62bab11aae3bec6052832f4ba2ed',NULL,NULL),
 (11,'chief','diwakar@gmail.com','7867848877','2023-10-03','TUESDAY','Man-Made Disaster','20','building slides','1123asdzxc','https://www.google.com/maps/place/Sriperumbudur,+Tamil+Nadu/@12.9414566,79.8869322,13z/data=!3m1!4b1!4m6!3m5!1s0x3a52f2c66c981c67:0x2e697ce6d307cfbe!8m2!3d12.9624975!4d79.9452748!16zL20vMDc3M2tr?entry=ttu','11:00','Forward','30','Ambattur','Support','Approved','5af71fe63c4afe4f2f34059fa3efd50aef27a1d841d174a4bec0e63d3554dc21','5991df48e9d128be2ccc50b602760e0cd5552acf0be1dbad155c5aa6d8fc64b0','5e12d0c8f8d5bed57d0c09b39c2c88bdd26fb2218de2bcee38930f6f5fa93277','86a8a1d50b82bb5e5d058e52fc1032a82e7370c960871880766ae1c255ce11aa'),
 (12,'thalapathi','diwakar@gmail.com','7867848877','2023-10-04','WEDNESDAY','Man-Made Disaster','20','building slides','1123asdzxc','https://www.google.com/maps/place/Sriperumbudur,+Tamil+Nadu/@12.9414566,79.8869322,13z/data=!3m1!4b1!4m6!3m5!1s0x3a52f2c66c981c67:0x2e697ce6d307cfbe!8m2!3d12.9624975!4d79.9452748!16zL20vMDc3M2tr?entry=ttu','07:31','Complaint','30','Ambattur',' ',' ','90c9a1d2b4f1a67e711f829e4296e0d8dc444bb8bd8f1eb412e42182de969ea1','79d17e036c7a98407c699c49cc0db1c486f143fa3dda764d146a461a24fc2049','434af4d6375e1fdaaba4e2039958d3849caf636977d5ad28aac1b68549964ef8','0aac80a0101d1215fc0d21d0b2e0633ba96dd176d5f7a83ee07c06f56b11dd2d'),
 (13,'thalapathi','jeyan@gmail.com','1234567890','2023-10-04','WEDNESDAY','Man-Made Disaster','20','building slides','1123asdzxc','https://www.google.com/maps/place/Sriperumbudur,+Tamil+Nadu/@12.9414566,79.8869322,13z/data=!3m1!4b1!4m6!3m5!1s0x3a52f2c66c981c67:0x2e697ce6d307cfbe!8m2!3d12.9624975!4d79.9452748!16zL20vMDc3M2tr?entry=ttu','09:36','Complaint','30','Gopalapuram',' ',' ','38540019a7c92606f9c6a9266eb30dc216443673b88ffafa6ee4955f15867718','e86483b1b863ebf455ec9807ff9ff5204473a3c47b0c3d251500d8b001e6130c','de598a2cd6a13aa318af2cb59a2e9d76dc7d47c6dd43c7d0c2fb3a687351c75c','3756b6c68e16bdb7dc74411db89de54881f929ddd455b9b61e6cfae1ea85ee53'),
 (14,'sanjay','sanjay@gmail.com','7575475777','2024-09-28','SATURDAY','Natural Disaster','10','this is worst i ever seen from chennai','narayanaswamy street','https://www.google.com/maps/place/Saidapet,+Chennai,+Tamil+Nadu/@13.0199225,80.2098278,15z/data=!3m1!4b1!4m6!3m5!1s0x3a52671aa10c448b:0xf62cad8de2391803!8m2!3d13.0212805!4d80.2231037!16zL20vMDc4Yl9w?entry=ttu&g_ep=EgoyMDI0MDkyNS4wIKXMDSoASAFQAw%3D%3D','10:24','Forward','2','Saidapet',' ','Support','46f244351add9687762348022ad6171f40566b741f32c0a7ef288db62e1cf71d','d6136ba2e4a3bc8d1a537da7ae04dff95fb2f8b0378cc496587b9595cdf67c89','c2974ef56ff100556971736b03bda1e061db4cf6428c2ea256a78a92a7fd1883','14431bca555d500d4e4c55cb52c67081a9ea62b532e834fd526e8bda3c8088e3');
/*!40000 ALTER TABLE `publiccomplaint` ENABLE KEYS */;


--
-- Definition of table `selterreg`
--

DROP TABLE IF EXISTS `selterreg`;
CREATE TABLE `selterreg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shelterid` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `seats` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `status1` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selterreg`
--

/*!40000 ALTER TABLE `selterreg` DISABLE KEYS */;
INSERT INTO `selterreg` (`id`,`shelterid`,`location`,`seats`,`password`,`status`,`status1`) VALUES 
 (8,'87083','Anna Nagar','50','123','Approved',' '),
 (9,'10771','Saidapet','50','123','Approved',' '),
 (10,'S34330','Gopalapuram','50','123','Approved',' '),
 (11,'S14141','Ambattur','50','123','Approved',' ');
/*!40000 ALTER TABLE `selterreg` ENABLE KEYS */;


--
-- Definition of table `voluntreg`
--

DROP TABLE IF EXISTS `voluntreg`;
CREATE TABLE `voluntreg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vname` varchar(45) DEFAULT NULL,
  `vemail` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `vdob` varchar(45) DEFAULT NULL,
  `vday` longtext,
  `vskills` varchar(45) DEFAULT NULL,
  `vdoa` varchar(45) DEFAULT NULL,
  `voccupation` varchar(45) DEFAULT NULL,
  `vaddress` longtext,
  `pass` varchar(45) DEFAULT NULL,
  `cpass` varchar(45) DEFAULT NULL,
  `image` longtext,
  `status` varchar(45) DEFAULT NULL,
  `status1` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voluntreg`
--

/*!40000 ALTER TABLE `voluntreg` DISABLE KEYS */;
INSERT INTO `voluntreg` (`id`,`vname`,`vemail`,`number`,`vdob`,`vday`,`vskills`,`vdoa`,`voccupation`,`vaddress`,`pass`,`cpass`,`image`,`status`,`status1`) VALUES 
 (9,'vinoth','vinoth@gmail.com','1234567890','2023-08-18','Monday','Search_and_Rescue','2023-08-18','Engineer','1233asd','123','123','governlog.jpg','Approved',' '),
 (11,'mahesh','mahesh@gmail.com','1234567890','2023-08-29','Wednesday','first_aid','2023-08-22','Engineer','1233asd','123','123','man.jpg','Approved',' '),
 (13,'jegan','jegan@gmail.com','1234567890','2023-10-02','Monday','first_aid','2023-10-02','Engineer','1233asd','123','123','2 (2).jpg','Approved',' ');
/*!40000 ALTER TABLE `voluntreg` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
