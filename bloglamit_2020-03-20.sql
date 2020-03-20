# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.38)
# Base de datos: bloglamit
# Tiempo de Generación: 2020-03-20 18:40:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla ref_rol
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ref_rol`;

CREATE TABLE `ref_rol` (
  `id_rol` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `estado` int(1) DEFAULT '1',
  PRIMARY KEY (`id_rol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `ref_rol` WRITE;
/*!40000 ALTER TABLE `ref_rol` DISABLE KEYS */;

INSERT INTO `ref_rol` (`id_rol`, `nombre`, `estado`)
VALUES
	(1,'Administración',1),
	(2,'Cargador',1);

/*!40000 ALTER TABLE `ref_rol` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla usr_publicacion
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usr_publicacion`;

CREATE TABLE `usr_publicacion` (
  `id_publicacion` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `cuerpo` text NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `fecha_publicacion` date DEFAULT NULL,
  PRIMARY KEY (`id_publicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla usr_publicacion_comentario
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usr_publicacion_comentario`;

CREATE TABLE `usr_publicacion_comentario` (
  `id_publicacion_comentario` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_publicacion` int(11) NOT NULL,
  `comentario` text,
  PRIMARY KEY (`id_publicacion_comentario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla usr_publicacion_puntaje
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usr_publicacion_puntaje`;

CREATE TABLE `usr_publicacion_puntaje` (
  `id_publicacion_puntaje` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_publicacion` int(11) DEFAULT NULL,
  `puntaje` int(2) DEFAULT NULL COMMENT 'rango de 1 a 10',
  PRIMARY KEY (`id_publicacion_puntaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla usr_usuario
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usr_usuario`;

CREATE TABLE `usr_usuario` (
  `id_usuario` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) DEFAULT NULL,
  `clave_acceso` varchar(50) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `nombre` varchar(75) DEFAULT NULL,
  `apellido` varchar(75) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fechahora_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `IDX_UNIQUE_EMAIL` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `usr_usuario` WRITE;
/*!40000 ALTER TABLE `usr_usuario` DISABLE KEYS */;

INSERT INTO `usr_usuario` (`id_usuario`, `id_rol`, `clave_acceso`, `estado`, `nombre`, `apellido`, `email`, `fechahora_creacion`)
VALUES
	(1,1,'d08658215a7d6a8eeadeedb4ffe20abd69d4a579',1,'Ariel','Blengino','arielmaiden@gmail.com','2020-03-13 09:52:47'),
	(7,2,'d08658215a7d6a8eeadeedb4ffe20abd69d4a579',1,'Angel','Ruben','arblengino@yahoo.com.ar','2020-03-18 19:32:09');

/*!40000 ALTER TABLE `usr_usuario` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
