/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP DATABASE IF EXISTS tp_logs;
CREATE DATABASE /*!32312 IF NOT EXISTS*/ tp_logs /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE tp_logs;

DROP TABLE IF EXISTS logs;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_datetime` datetime DEFAULT NULL,
  `_priority` varchar(16) DEFAULT NULL,
  `_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO logs(id,_datetime,_priority,_message) VALUES(1,'2020-05-22 00:00:00','medium','This is a message'),(2,'2018-06-20 00:00:00','low','This is a random message');