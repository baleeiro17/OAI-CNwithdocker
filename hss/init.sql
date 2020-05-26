DROP TABLE IF EXISTS `mmeidentity`;
CREATE TABLE `mmeidentity` (
  `idmmeidentity` int(11) NOT NULL AUTO_INCREMENT,
  `mmehost` varchar(255) DEFAULT NULL,
  `mmerealm` varchar(200) DEFAULT NULL,
  `UE-Reachability` tinyint(1) NOT NULL COMMENT 'Indicates whether the MME supports UE Reachability Notifcation',
  PRIMARY KEY (`idmmeidentity`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

LOCK TABLES `mmeidentity` WRITE;
INSERT INTO `mmeidentity` VALUES 
(1,'mme.openair4G.eur','openair4G.eur',0);
UNLOCK TABLES;