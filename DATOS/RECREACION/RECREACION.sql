-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-08-2022 a las 18:53:32
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "-05:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: recreacion
--
CREATE DATABASE IF NOT EXISTS recreacion DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE recreacion;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla evento
--

CREATE TABLE IF NOT EXISTS evento (
  CodEve int(11) NOT NULL AUTO_INCREMENT,
  NomEve varchar(60) NOT NULL,
  CodTipo int(11) NOT NULL,
  FechIni date NOT NULL,
  FechFin date NOT NULL,
  PRIMARY KEY (CodEve),
  KEY EVENTOTIPOFK (CodTipo)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla evento
--

INSERT INTO evento VALUES(1, 'Festival de la canción', 9, '2012-01-01', '2012-01-02');
INSERT INTO evento VALUES(2, 'Zonal de Fútbol', 1, '2012-02-02', '2012-03-02');
INSERT INTO evento VALUES(3, 'Exposición de Pintura', 5, '2012-03-04', '2012-03-11');
INSERT INTO evento VALUES(4, 'Encuentro de habilidades artísticas', 9, '2012-04-11', '2012-04-11');
INSERT INTO evento VALUES(5, 'Concurso de Rafting', 4, '2012-04-15', '2012-04-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla institucion
--

CREATE TABLE IF NOT EXISTS institucion (
  CodIns int(11) NOT NULL AUTO_INCREMENT,
  NomIns varchar(30) NOT NULL,
  DirIns varchar(30) NOT NULL,
  TelIns varchar(15) NOT NULL,
  PRIMARY KEY (CodIns)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla institucion
--

INSERT INTO institucion VALUES(1, 'Prodeportes', 'Cra 3 Nro 4-24', '8701020');
INSERT INTO institucion VALUES(2, 'La Esperanza', 'Cra 10 Nro 20-11', '8721024');
INSERT INTO institucion VALUES(3, 'Unidos por la Paz', 'Cra 6 Nro 7-24', '8731028');
INSERT INTO institucion VALUES(4, 'Las Estrellas', 'Cra 3 Nro 9-24', '8761040');
INSERT INTO institucion VALUES(5, 'La Catleya', 'Cra 3 Nro 5-27', '8751220');
INSERT INTO institucion VALUES(6, 'La Nueva Ola', 'Cra 3 Nro 6-24', '8741044');
INSERT INTO institucion VALUES(7, 'Salva una Vida', 'Cra 3 Nro 7-24', '8731121');
INSERT INTO institucion VALUES(8, 'Recreando', 'Cra 3 Nro 2-44', '8741522');
INSERT INTO institucion VALUES(9, 'Unidos por la Cultura', 'Cra 2 Nro 2-22', '8761623');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla institucion_evento
--

CREATE TABLE IF NOT EXISTS institucion_evento (
  CodSec int(11) NOT NULL AUTO_INCREMENT,
  CodEve int(11) NOT NULL,
  CodIns int(11) NOT NULL,
  PRIMARY KEY (CodSec),
  KEY INSTEVENTOINSFK (CodIns)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla institucion_evento
--

INSERT INTO institucion_evento VALUES(1, 1, 2);
INSERT INTO institucion_evento VALUES(2, 1, 3);
INSERT INTO institucion_evento VALUES(3, 1, 5);
INSERT INTO institucion_evento VALUES(4, 2, 4);
INSERT INTO institucion_evento VALUES(5, 2, 6);
INSERT INTO institucion_evento VALUES(6, 2, 3);
INSERT INTO institucion_evento VALUES(7, 3, 3);
INSERT INTO institucion_evento VALUES(8, 3, 3);
INSERT INTO institucion_evento VALUES(9, 3, 3);
INSERT INTO institucion_evento VALUES(10, 8, 3);
INSERT INTO institucion_evento VALUES(11, 4, 5);
INSERT INTO institucion_evento VALUES(12, 4, 1);
INSERT INTO institucion_evento VALUES(13, 5, 2);
INSERT INTO institucion_evento VALUES(14, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla participante
--

CREATE TABLE IF NOT EXISTS participante (
  CodPar int(11) NOT NULL AUTO_INCREMENT,
  NomPar varchar(30) NOT NULL,
  ApePar varchar(30) NOT NULL,
  IdPar varchar(30) NOT NULL,
  EdadPar smallint(6) NOT NULL,
  FotoPar blob,
  PRIMARY KEY (CodPar)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla participante
--

INSERT INTO participante VALUES(1, 'Andres', 'Nieto Alvarez', '83232390', 33, NULL);
INSERT INTO participante VALUES(2, 'Juan', 'Castro Nieto', '83232392', 28, NULL);
INSERT INTO participante VALUES(3, 'Lunio', 'Castañeda Silva', '80232393', 35, NULL);
INSERT INTO participante VALUES(4, 'Pedro', 'Nieto Alvarez', '81232190', 24, NULL);
INSERT INTO participante VALUES(5, 'Daniel', 'Guzman Ortiz', '84232397', 27, NULL);
INSERT INTO participante VALUES(6, 'Lino', 'Castro Ordoñez', '82232391', 24, NULL);
INSERT INTO participante VALUES(7, 'Hernando', 'Moncaleano Vargas', '83232244', 22, NULL);
INSERT INTO participante VALUES(8, 'Pablo', 'Henriquez Villa', '81232396', 26, NULL);
INSERT INTO participante VALUES(9, 'Andres', 'Peña Silva', '83234397', 27, NULL);
INSERT INTO participante VALUES(10, 'Adan', 'Perez Alvarez', '83232333', 29, NULL);
INSERT INTO participante VALUES(11, 'Sergio', 'Nieto Vargas', '84234394', 31, NULL);
INSERT INTO participante VALUES(12, 'Jose Miguel', 'Llanos Mosquera', '83233398', 33, NULL);
INSERT INTO participante VALUES(13, 'Javier', 'Pinto Ortiz', '82222390', 20, NULL);
INSERT INTO participante VALUES(14, 'Pedro', 'Castro Nieto', '83232399', 25, NULL);
INSERT INTO participante VALUES(15, 'Manolo', 'Cardona Prieto', '83232380', 23, NULL);
INSERT INTO participante VALUES(16, 'Luis', 'Carvajal Silva', '83232395', 33, NULL);
INSERT INTO participante VALUES(17, 'Jairo', 'Osorio Castro', '84232390', 37, NULL);
INSERT INTO participante VALUES(18, 'Leandro', 'Quintero Narvaez', '83232330', 35, NULL);
INSERT INTO participante VALUES(19, 'Marcos', 'Dussan Alvarez', '87237390', 31, NULL);
INSERT INTO participante VALUES(20, 'Diego', 'Polanco Vargas', '88232398', 30, NULL);
INSERT INTO participante VALUES(21, 'Julio', 'Neira Castro', '82232290', 24, NULL);
INSERT INTO participante VALUES(22, 'Manuel', 'Silva Castro', '84235390', 21, NULL);
INSERT INTO participante VALUES(23, 'Rafael', 'Mendieta Alvarez', '83237397', 20, NULL);
INSERT INTO participante VALUES(24, 'Guillermo', 'Cano Soto', '81232391', 19, NULL);
INSERT INTO participante VALUES(25, 'Pastor', 'Luna Ortiz', '87238399', 22, NULL);
INSERT INTO participante VALUES(26, 'James', 'Claros Alvarez', '81231391', 21, NULL);
INSERT INTO participante VALUES(27, 'Carlos', 'Alvarado Silva', '84234395', 23, NULL);
INSERT INTO participante VALUES(28, 'Hernan', 'Rojas Alvarez', '86236396', 23, NULL);
INSERT INTO participante VALUES(29, 'Jose', 'Martinez Rojas', '84242390', 34, NULL);
INSERT INTO participante VALUES(30, 'Miguel', 'Silva Castro', '88232390', 35, NULL);
INSERT INTO participante VALUES(31, 'Nelson', 'Gongora Muñoz', '87237397', 37, NULL);
INSERT INTO participante VALUES(32, 'Fermín', 'Beltran Barragan', '81232191', 39, NULL);
INSERT INTO participante VALUES(33, 'Francisco', 'Guarín Rojas', '89239399', 40, NULL);
INSERT INTO participante VALUES(34, 'Rosa', 'Melo', '88232398', 18, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla participante_evento
--

CREATE TABLE IF NOT EXISTS participante_evento (
  CodSec int(11) NOT NULL AUTO_INCREMENT,
  CodEve int(11) NOT NULL,
  CodPar int(11) NOT NULL,
  ValIns double(19,4) DEFAULT NULL,
  PRIMARY KEY (CodSec)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla participante_evento
--

INSERT INTO participante_evento VALUES(1, 1, 1, 3000.0000);
INSERT INTO participante_evento VALUES(2, 1, 2, 3000.0000);
INSERT INTO participante_evento VALUES(3, 1, 3, 3000.0000);
INSERT INTO participante_evento VALUES(4, 1, 4, 3000.0000);
INSERT INTO participante_evento VALUES(5, 1, 5, 3000.0000);
INSERT INTO participante_evento VALUES(6, 1, 6, 3000.0000);
INSERT INTO participante_evento VALUES(7, 1, 7, 3000.0000);
INSERT INTO participante_evento VALUES(8, 1, 8, 3000.0000);
INSERT INTO participante_evento VALUES(9, 2, 9, 5000.0000);
INSERT INTO participante_evento VALUES(10, 2, 10, 5000.0000);
INSERT INTO participante_evento VALUES(11, 2, 11, 5000.0000);
INSERT INTO participante_evento VALUES(12, 2, 12, 5000.0000);
INSERT INTO participante_evento VALUES(13, 2, 13, 5000.0000);
INSERT INTO participante_evento VALUES(14, 2, 14, 5000.0000);
INSERT INTO participante_evento VALUES(15, 2, 15, 5000.0000);
INSERT INTO participante_evento VALUES(16, 3, 16, 6000.0000);
INSERT INTO participante_evento VALUES(17, 3, 17, 6000.0000);
INSERT INTO participante_evento VALUES(18, 3, 18, 6000.0000);
INSERT INTO participante_evento VALUES(19, 3, 19, 6000.0000);
INSERT INTO participante_evento VALUES(20, 6, 42, 6000.0000);
INSERT INTO participante_evento VALUES(21, 3, 21, 6000.0000);
INSERT INTO participante_evento VALUES(22, 3, 22, 6000.0000);
INSERT INTO participante_evento VALUES(23, 3, 23, 6000.0000);
INSERT INTO participante_evento VALUES(24, 4, 24, 4500.0000);
INSERT INTO participante_evento VALUES(25, 4, 25, 4500.0000);
INSERT INTO participante_evento VALUES(26, 4, 26, 4500.0000);
INSERT INTO participante_evento VALUES(27, 4, 27, 4500.0000);
INSERT INTO participante_evento VALUES(28, 4, 28, 4500.0000);
INSERT INTO participante_evento VALUES(29, 4, 29, 4500.0000);
INSERT INTO participante_evento VALUES(30, 5, 30, 5500.0000);
INSERT INTO participante_evento VALUES(31, 5, 12, 5500.0000);
INSERT INTO participante_evento VALUES(32, 5, 11, 5500.0000);
INSERT INTO participante_evento VALUES(33, 5, 10, 5500.0000);
INSERT INTO participante_evento VALUES(34, 5, 9, 5500.0000);
INSERT INTO participante_evento VALUES(35, 5, 7, 5500.0000);
INSERT INTO participante_evento VALUES(36, 5, 6, 6500.0000);
INSERT INTO participante_evento VALUES(37, 5, 5, 6500.0000);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista restricciones
-- (Véase abajo para la vista actual)
--
CREATE TABLE IF NOT EXISTS `restricciones` (
`RESTRICCION` varchar(64)
,`TABLA_FUENTE` varchar(64)
,`COLUMNA_FUENTE` varchar(64)
,`TABLA_ORIGEN` varchar(64)
,`COLUMNA_ORIGEN` varchar(64)
,`BD` varchar(64)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla tipo
--

CREATE TABLE IF NOT EXISTS tipo (
  CodTipo int(11) NOT NULL AUTO_INCREMENT,
  NomTipo varchar(30) NOT NULL,
  PRIMARY KEY (CodTipo)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla tipo
--

INSERT INTO tipo VALUES(1, 'Deporte Terrestre');
INSERT INTO tipo VALUES(2, 'Deporte Acuático');
INSERT INTO tipo VALUES(3, 'Deporte Aéreo');
INSERT INTO tipo VALUES(4, 'Deporte Extremo');
INSERT INTO tipo VALUES(5, 'Arte Contemporaneo');
INSERT INTO tipo VALUES(6, 'Arte Rupestre');
INSERT INTO tipo VALUES(7, 'Arte Moderno');
INSERT INTO tipo VALUES(8, 'Música');
INSERT INTO tipo VALUES(9, 'Peña Cultural');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista verifique
-- (Véase abajo para la vista actual)
--
CREATE TABLE IF NOT EXISTS `verifique` (
`TABLA` varchar(19)
,`CANTIDAD` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista vista_recreacion
-- (Véase abajo para la vista actual)
--
CREATE TABLE IF NOT EXISTS `vista_recreacion` (
`INSTITUCION` varchar(19)
,`REGISTROS` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura para la vista restricciones
--
DROP TABLE IF EXISTS `restricciones`;

CREATE ALGORITHM=UNDEFINED DEFINER=root@localhost SQL SECURITY DEFINER VIEW recreacion.restricciones  AS  select information_schema.key_column_usage.`CONSTRAINT_NAME` AS RESTRICCION,information_schema.key_column_usage.`TABLE_NAME` AS TABLA_FUENTE,information_schema.key_column_usage.`COLUMN_NAME` AS COLUMNA_FUENTE,information_schema.key_column_usage.REFERENCED_TABLE_NAME AS TABLA_ORIGEN,information_schema.key_column_usage.REFERENCED_COLUMN_NAME AS COLUMNA_ORIGEN,information_schema.key_column_usage.TABLE_SCHEMA AS BD from information_schema.key_column_usage ;

-- --------------------------------------------------------

--
-- Estructura para la vista verifique
--
DROP TABLE IF EXISTS `verifique`;

CREATE ALGORITHM=UNDEFINED DEFINER=root@localhost SQL SECURITY DEFINER VIEW recreacion.verifique  AS  select 'INSTITUCION' AS TABLA,count(0) AS CANTIDAD from recreacion.institucion union select 'TIPO' AS TIPO,count(0) AS `COUNT(*)` from recreacion.tipo union select 'EVENTO' AS EVENTO,count(0) AS `COUNT(*)` from recreacion.evento union select 'INSTITUCION_EVENTO' AS INSTITUCION_EVENTO,count(0) AS `COUNT(*)` from recreacion.institucion_evento union select 'PARTICIPANTE' AS PARTICIPANTE,count(0) AS `COUNT(*)` from recreacion.participante union select 'PARTICIPANTE_EVENTO' AS PARTICIPANTE_EVENTO,count(0) AS `COUNT(*)` from recreacion.participante_evento ;

-- --------------------------------------------------------

--
-- Estructura para la vista vista_recreacion
--
DROP TABLE IF EXISTS `vista_recreacion`;

CREATE ALGORITHM=UNDEFINED DEFINER=root@localhost SQL SECURITY DEFINER VIEW recreacion.vista_recreacion  AS  select 'INSTITUCION' AS INSTITUCION,count(0) AS REGISTROS from recreacion.institucion union select 'TIPO' AS TIPO,count(0) AS REGISTROS from recreacion.tipo union select 'EVENTO' AS EVENTO,count(0) AS REGISTROS from recreacion.evento union select 'INSTITUCION_EVENTO' AS INSTITUCION_EVENTO,count(0) AS REGISTROS from recreacion.institucion_evento union select 'PARTICIPANTE' AS PARTICIPANTE,count(0) AS REGISTROS from recreacion.participante union select 'PARTICIPANTE_EVENTO' AS PARTICIPANTE_EVENTO,count(0) AS REGISTROS from recreacion.participante_evento ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla evento
--
ALTER TABLE evento
  ADD CONSTRAINT EVENTOTIPOFK FOREIGN KEY (CodTipo) REFERENCES tipo (CodTipo);

--
-- Filtros para la tabla institucion_evento
--
ALTER TABLE institucion_evento
  ADD CONSTRAINT INSTEVENTOINSFK FOREIGN KEY (CodIns) REFERENCES institucion (CodIns);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
