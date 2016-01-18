/*
Navicat MySQL Data Transfer

Source Server         : _localhost
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : o3m_director

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2016-01-18 17:45:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cat_acordes
-- ----------------------------
DROP TABLE IF EXISTS `cat_acordes`;
CREATE TABLE `cat_acordes` (
  `id_acorde` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `acorde` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `notas` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_guitar` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_piano` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `img_bass` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_acorde`),
  KEY `i_activo` (`activo`),
  KEY `i_id_usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cat_acordes
-- ----------------------------
INSERT INTO `cat_acordes` VALUES ('1', 'MAYORES', 'C', 'C,E,G', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('2', 'MAYORES', 'Db', 'Db,F,Ab', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('3', 'MAYORES', 'D', 'D,F#,A', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('4', 'MAYORES', 'Eb', 'Eb,G,Bb', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('5', 'MAYORES', 'E', 'E,G#,B', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('6', 'MAYORES', 'F', 'F,A,C', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('7', 'MAYORES', 'F#', 'F#,A#,C#', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('8', 'MAYORES', 'G', 'G,B,D', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('9', 'MAYORES', 'G#', 'G#,C,D#', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('10', 'MAYORES', 'A', 'A,C#,E', 'acorde_10_guitar.png', 'acorde_10_piano.jpg', null, '2016-01-18 12:04:01', '2', '1');
INSERT INTO `cat_acordes` VALUES ('11', 'MAYORES', 'A#', 'A#,D,F', 'acorde_11_guitar.png', 'acorde_11_piano.jpg', null, '2016-01-18 12:10:25', '2', '1');
INSERT INTO `cat_acordes` VALUES ('12', 'MENORES', 'Cm', 'C,Eb,G', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('13', 'MENORES', 'Dbm', 'Db,E,Ab', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('14', 'MENORES', 'Dm', 'D,F,A', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('15', 'MENORES', 'Ebm', 'Eb,Gb,Bb', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('16', 'MENORES', 'Em', 'E,G,B', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('17', 'MENORES', 'Fm', 'F,Ab,C', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('18', 'MENORES', 'F#m', 'F#,A,C#', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('19', 'MENORES', 'Gm', 'G,Bb,D', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('20', 'MENORES', 'G#m', 'G#,B,D#', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('21', 'MENORES', 'Am', 'A,C,E', 'acorde_21_guitar.png', 'acorde_21_piano.jpg', null, '2016-01-18 12:15:44', '2', '1');
INSERT INTO `cat_acordes` VALUES ('22', 'MENORES', 'A#m', 'A#,Db,F', 'acorde_22_guitar.png', 'acorde_22_piano.jpg', null, '2016-01-18 12:14:14', '2', '1');
INSERT INTO `cat_acordes` VALUES ('23', 'MAYORES', 'Bb', 'Bb,D,F', null, null, null, null, null, '1');
INSERT INTO `cat_acordes` VALUES ('24', 'MAYORES', 'B', 'B,D#,F#', 'acorde_24_guitar.png', 'acorde_24_piano.jpg', null, '2016-01-18 12:21:05', '2', '1');
INSERT INTO `cat_acordes` VALUES ('25', 'MENORES', 'Bm', 'Bm,D,F#', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for cat_categorias
-- ----------------------------
DROP TABLE IF EXISTS `cat_categorias`;
CREATE TABLE `cat_categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_categoria`),
  UNIQUE KEY `i_categoria` (`categoria`),
  KEY `i_activo` (`activo`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cat_categorias
-- ----------------------------
INSERT INTO `cat_categorias` VALUES ('1', 'ADORACIÓN', '1');
INSERT INTO `cat_categorias` VALUES ('2', '1232RU', '1');
INSERT INTO `cat_categorias` VALUES ('3', 'AMOR', '1');
INSERT INTO `cat_categorias` VALUES ('4', 'CLAMOR', '1');
INSERT INTO `cat_categorias` VALUES ('5', 'PRESENCIA', '1');
INSERT INTO `cat_categorias` VALUES ('6', 'EXHALTACIÓN', '1');
INSERT INTO `cat_categorias` VALUES ('7', 'LLENURA', '1');
INSERT INTO `cat_categorias` VALUES ('8', 'ALEGRÍA', '1');
INSERT INTO `cat_categorias` VALUES ('9', 'JESÚS', '1');
INSERT INTO `cat_categorias` VALUES ('10', 'ESPÍRITU SANTO', '1');
INSERT INTO `cat_categorias` VALUES ('11', 'PADRE', '1');
INSERT INTO `cat_categorias` VALUES ('12', 'NOVIA', '1');
INSERT INTO `cat_categorias` VALUES ('13', 'ESPOSA', '1');
INSERT INTO `cat_categorias` VALUES ('14', 'GUERRA', '1');
INSERT INTO `cat_categorias` VALUES ('15', 'EXCLAMACIÓN', '1');
INSERT INTO `cat_categorias` VALUES ('16', 'DANZA', '1');
INSERT INTO `cat_categorias` VALUES ('17', 'AVIVAMIENTO', '1');
INSERT INTO `cat_categorias` VALUES ('18', 'NUEVO', '1');
INSERT INTO `cat_categorias` VALUES ('19', 'SDFSDFS', '1');
INSERT INTO `cat_categorias` VALUES ('20', 'FDFDFD', '1');
INSERT INTO `cat_categorias` VALUES ('21', 'UIKJHGF', '1');

-- ----------------------------
-- Table structure for cat_compases
-- ----------------------------
DROP TABLE IF EXISTS `cat_compases`;
CREATE TABLE `cat_compases` (
  `id_compas` smallint(3) NOT NULL AUTO_INCREMENT,
  `compas` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_compas`),
  UNIQUE KEY `i_compas` (`compas`),
  KEY `i_activo` (`activo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cat_compases
-- ----------------------------
INSERT INTO `cat_compases` VALUES ('1', '2/4', '1');
INSERT INTO `cat_compases` VALUES ('2', '3/4', '1');
INSERT INTO `cat_compases` VALUES ('3', '4/4', '1');
INSERT INTO `cat_compases` VALUES ('4', '6/8', '1');
INSERT INTO `cat_compases` VALUES ('5', '9/8', '1');
INSERT INTO `cat_compases` VALUES ('6', '12/8', '1');
INSERT INTO `cat_compases` VALUES ('7', '2/2', '1');
INSERT INTO `cat_compases` VALUES ('8', '6/4', '1');
INSERT INTO `cat_compases` VALUES ('9', '7/4', '1');
INSERT INTO `cat_compases` VALUES ('10', '5/4', '1');

-- ----------------------------
-- Table structure for cat_escalas
-- ----------------------------
DROP TABLE IF EXISTS `cat_escalas`;
CREATE TABLE `cat_escalas` (
  `id_escala` smallint(3) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `escala` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `grado1` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `grado2` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `grado3` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `grado4` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `grado5` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `grado6` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `grado7` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `armadura` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_escala`),
  KEY `i_activo` (`activo`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cat_escalas
-- ----------------------------
INSERT INTO `cat_escalas` VALUES ('1', 'Fórmula', 'Tonos', 'T', 'T', 'S', 'T', 'T', 'T', 'S', null, '0');
INSERT INTO `cat_escalas` VALUES ('2', 'Fórmula', 'Mayores', 'M', 'm', 'm', 'M', 'M', 'm', 'd', null, '0');
INSERT INTO `cat_escalas` VALUES ('3', 'Fórmula', 'Menores', 'm', 'd', 'M', 'm', 'm', 'M', 'M', null, '0');
INSERT INTO `cat_escalas` VALUES ('4', 'Sostenidos', 'Do', 'C', 'Dm', 'Em', 'F', 'G', 'Am', 'B°', null, '1');
INSERT INTO `cat_escalas` VALUES ('5', 'Sostenidos', 'La menor', 'Am', 'B°', 'C', 'Dm', 'Em', 'F', 'G', null, '1');
INSERT INTO `cat_escalas` VALUES ('6', 'Sostenidos', 'Sol', 'G', 'Am', 'Bm', 'C', 'D', 'Em', 'F#°', 'F#', '1');
INSERT INTO `cat_escalas` VALUES ('7', 'Sostenidos', 'Mi menor', 'Em', 'F#°', 'G', 'Am', 'Bm', 'C', 'D', 'F#', '1');
INSERT INTO `cat_escalas` VALUES ('8', 'Sostenidos', 'Re', 'D', 'Em', 'F#m', 'G', 'A', 'Bm', 'C#°', 'C#', '1');
INSERT INTO `cat_escalas` VALUES ('9', 'Sostenidos', 'Re menor', 'Bm', 'C#°', 'D', 'Em', 'F#m', 'G', 'A', 'C#', '1');
INSERT INTO `cat_escalas` VALUES ('10', 'Sostenidos', 'La', 'A', 'Bm', 'C#m', 'D', 'E', 'F#m', 'G#°', 'G#', '1');
INSERT INTO `cat_escalas` VALUES ('11', 'Sostenidos', 'Fa sotenido menor', 'F#m', 'G#°', 'A', 'Bm', 'C#m', 'D', 'E', 'G#', '1');
INSERT INTO `cat_escalas` VALUES ('12', 'Sostenidos', 'Mi', 'E', 'F#m', 'G#m', 'A', 'B', 'C#m', 'D#°', 'D#', '1');
INSERT INTO `cat_escalas` VALUES ('13', 'Sostenidos', 'Do sotenido menor', 'C#m', 'D#°', 'E', 'F#m', 'G#m', 'A', 'B', 'D#', '1');
INSERT INTO `cat_escalas` VALUES ('14', 'Sostenidos', 'Si', 'B', 'C#m', 'D#m', 'E', 'F#', 'G#m', 'A#°', 'A#', '1');
INSERT INTO `cat_escalas` VALUES ('15', 'Sostenidos', 'Sol sostenido menor', 'G#m', 'A#°', 'B', 'C#m', 'D#m', 'E', 'F#', 'A#', '1');
INSERT INTO `cat_escalas` VALUES ('16', 'Sostenidos', 'Fa sostenido', 'F#', 'G#m', 'A#m', 'B', 'C#', 'D#m', 'E#°', 'E#', '1');
INSERT INTO `cat_escalas` VALUES ('17', 'Sostenidos', 'Re sostenido', 'D#m', 'E#°', 'F#', 'G#m', 'A#m', 'B', 'C#', 'E#', '1');
INSERT INTO `cat_escalas` VALUES ('18', 'Sostenidos', 'Do sostenido', 'C#', 'D#m', 'E#m', 'F#', 'G#', 'A#m', 'B#°', 'B#', '1');
INSERT INTO `cat_escalas` VALUES ('19', 'Sostenidos', 'La sostenido menor', 'A#m', 'B#°', 'C#', 'D#m', 'E#m', 'F#', 'G#', 'B#', '1');
INSERT INTO `cat_escalas` VALUES ('20', 'Bemoles', 'Fa', 'F', 'Gm', 'Am', 'Bb', 'C', 'Dm', 'E°', 'Bb', '1');
INSERT INTO `cat_escalas` VALUES ('21', 'Bemoles', 'Re menor', 'Dm', 'E°', 'F', 'Gm', 'Am', 'Bb', 'C', 'Bb', '1');
INSERT INTO `cat_escalas` VALUES ('22', 'Bemoles', 'Si bemol', 'Bb', 'Cm', 'Dm', 'Eb', 'F', 'Gm', 'A°', 'Eb', '1');
INSERT INTO `cat_escalas` VALUES ('23', 'Bemoles', 'Sol menor', 'Gm', 'A°', 'Bb', 'Cm', 'Dm', 'Eb', 'F', 'Eb', '1');
INSERT INTO `cat_escalas` VALUES ('24', 'Bemoles', 'Mi bemol', 'Eb', 'Fm', 'Gm', 'Ab', 'Bb', 'Cm', 'D°', 'Ab', '1');
INSERT INTO `cat_escalas` VALUES ('25', 'Bemoles', 'Do menor', 'Cm', 'D°', 'Eb', 'Fm', 'Gm', 'Ab', 'Bb', 'Ab', '1');
INSERT INTO `cat_escalas` VALUES ('26', 'Bemoles', 'La bemol', 'Ab', 'Bbm', 'Cm', 'Db', 'Eb', 'Fm', 'G°', 'Db', '1');
INSERT INTO `cat_escalas` VALUES ('27', 'Bemoles', 'Fa menor', 'Fm', 'G°', 'Ab', 'Bbm', 'Cm', 'Db', 'Eb', 'Db', '1');
INSERT INTO `cat_escalas` VALUES ('28', 'Bemoles', 'Re bemol', 'Db', 'Ebm', 'Fm', 'Gb', 'Ab', 'Bbm', 'C°', 'Gb', '1');
INSERT INTO `cat_escalas` VALUES ('29', 'Bemoles', 'Si bemol menor', 'Bbm', 'C°', 'Db', 'Ebm', 'Fm', 'Gb', 'Ab', 'Gb', '1');
INSERT INTO `cat_escalas` VALUES ('30', 'Bemoles', 'Sol bemol', 'Gb', 'Abm', 'Bbm', 'Cb', 'Db', 'Ebm', 'F°', 'Cb', '1');
INSERT INTO `cat_escalas` VALUES ('31', 'Bemoles', 'Mi bemol menor', 'Ebm', 'F°', 'Gb', 'Abm', 'Bbm', 'Cb', 'Db', 'Cb', '1');
INSERT INTO `cat_escalas` VALUES ('32', 'Bemoles', 'Do bemol', 'Cb', 'Dbm', 'Ebm', 'Fb', 'Gb', 'Abm', 'Bb°', 'Fb', '1');
INSERT INTO `cat_escalas` VALUES ('33', 'Bemoles', 'La bemol menor', 'Abm', 'Bb°', 'Cb', 'Dbm', 'Ebm', 'Fb', 'Gb', 'Fb', '1');
INSERT INTO `cat_escalas` VALUES ('34', ' ', null, null, 'fdf', '', 'fd', 'rerer', 'f', null, null, '1');

-- ----------------------------
-- Table structure for cat_notas
-- ----------------------------
DROP TABLE IF EXISTS `cat_notas`;
CREATE TABLE `cat_notas` (
  `id_nota` smallint(3) NOT NULL AUTO_INCREMENT,
  `nota_es` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nota_en` varchar(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `alteracion` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_nota`),
  KEY `i_activo` (`activo`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cat_notas
-- ----------------------------
INSERT INTO `cat_notas` VALUES ('1', 'Do', 'C', 'Mayores', '1');
INSERT INTO `cat_notas` VALUES ('2', 'Re', 'D', 'Mayores', '1');
INSERT INTO `cat_notas` VALUES ('3', 'Mi', 'E', 'Mayores', '1');
INSERT INTO `cat_notas` VALUES ('4', 'Fa', 'F', 'Mayores', '1');
INSERT INTO `cat_notas` VALUES ('5', 'Sol', 'G', 'Mayores', '1');
INSERT INTO `cat_notas` VALUES ('6', 'La', 'A', 'Mayores', '1');
INSERT INTO `cat_notas` VALUES ('7', 'Si', 'B', 'Mayores', '1');
INSERT INTO `cat_notas` VALUES ('8', 'Dom', 'Cm', 'Menores', '1');
INSERT INTO `cat_notas` VALUES ('9', 'Rem', 'Dm', 'Menores', '1');
INSERT INTO `cat_notas` VALUES ('10', 'Mim', 'Em', 'Menores', '1');
INSERT INTO `cat_notas` VALUES ('11', 'Fam', 'Fm', 'Menores', '1');
INSERT INTO `cat_notas` VALUES ('12', 'Solm', 'Gm', 'Menores', '1');
INSERT INTO `cat_notas` VALUES ('13', 'Lam', 'Am', 'Menores', '1');
INSERT INTO `cat_notas` VALUES ('14', 'Sim', 'Bm', 'Menores', '1');
INSERT INTO `cat_notas` VALUES ('15', 'Do7', 'C7', 'Séptimas', '1');
INSERT INTO `cat_notas` VALUES ('16', 'Re7', 'D7', 'Séptimas', '1');
INSERT INTO `cat_notas` VALUES ('17', 'Mi7', 'E7', 'Séptimas', '1');
INSERT INTO `cat_notas` VALUES ('18', 'Fa7', 'F7', 'Séptimas', '1');
INSERT INTO `cat_notas` VALUES ('19', 'Sol7', 'G7', 'Séptimas', '1');
INSERT INTO `cat_notas` VALUES ('20', 'La7', 'A7', 'Séptimas', '1');
INSERT INTO `cat_notas` VALUES ('21', 'Si7', 'B7', 'Séptimas', '1');
INSERT INTO `cat_notas` VALUES ('22', 'Dom7', 'Cm7', 'Séptimas Menores', '1');
INSERT INTO `cat_notas` VALUES ('23', 'Rem7', 'Dm7', 'Séptimas Menores', '1');
INSERT INTO `cat_notas` VALUES ('24', 'Mim7', 'Em7', 'Séptimas Menores', '1');
INSERT INTO `cat_notas` VALUES ('25', 'Fam7', 'Fm7', 'Séptimas Menores', '1');
INSERT INTO `cat_notas` VALUES ('26', 'Solm7', 'Gm7', 'Séptimas Menores', '1');
INSERT INTO `cat_notas` VALUES ('27', 'Lam7', 'Am7', 'Séptimas Menores', '1');
INSERT INTO `cat_notas` VALUES ('28', 'Sim7', 'Bm7', 'Séptimas Menores', '1');
INSERT INTO `cat_notas` VALUES ('29', 'Doaug', 'Caug', 'Aumentadas', '1');
INSERT INTO `cat_notas` VALUES ('30', 'Reaug', 'Daug', 'Aumentadas', '1');
INSERT INTO `cat_notas` VALUES ('31', 'Miaug', 'Eaug', 'Aumentadas', '1');
INSERT INTO `cat_notas` VALUES ('32', 'Faaug', 'Faug', 'Aumentadas', '1');
INSERT INTO `cat_notas` VALUES ('33', 'Solaug', 'Gaug', 'Aumentadas', '1');
INSERT INTO `cat_notas` VALUES ('34', 'Laaug', 'Aaug', 'Aumentadas', '1');
INSERT INTO `cat_notas` VALUES ('35', 'Siaug', 'Baug', 'Aumentadas', '1');
INSERT INTO `cat_notas` VALUES ('36', 'Dodim', 'Cdim', 'Disminuciones', '1');
INSERT INTO `cat_notas` VALUES ('37', 'Redim', 'Ddim', 'Disminuciones', '1');
INSERT INTO `cat_notas` VALUES ('38', 'Midim', 'Edim', 'Disminuciones', '1');
INSERT INTO `cat_notas` VALUES ('39', 'Fadim', 'Fdim', 'Disminuciones', '1');
INSERT INTO `cat_notas` VALUES ('40', 'Soldim', 'Gdim', 'Disminuciones', '1');
INSERT INTO `cat_notas` VALUES ('41', 'Ladim', 'Adim', 'Disminuciones', '1');
INSERT INTO `cat_notas` VALUES ('42', 'Sidim', 'Bdim', 'Disminuciones', '1');
INSERT INTO `cat_notas` VALUES ('43', 'DoMaj7', 'CMaj7', 'Septimas Mayores', '1');
INSERT INTO `cat_notas` VALUES ('44', 'ReMaj7', 'DMaj7', 'Septimas Mayores', '1');
INSERT INTO `cat_notas` VALUES ('45', 'MiMaj7', 'EMaj7', 'Septimas Mayores', '1');
INSERT INTO `cat_notas` VALUES ('46', 'FaMaj7', 'FMaj7', 'Septimas Mayores', '1');
INSERT INTO `cat_notas` VALUES ('47', 'SolMaj7', 'GMaj7', 'Septimas Mayores', '1');
INSERT INTO `cat_notas` VALUES ('48', 'LaMaj7', 'AMaj7', 'Septimas Mayores', '1');
INSERT INTO `cat_notas` VALUES ('49', 'SiMaj7', 'BMaj7', 'Septimas Mayores', '1');
INSERT INTO `cat_notas` VALUES ('50', 'Dob', 'Cb', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('51', 'Reb', 'Db', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('52', 'Mib', 'Eb', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('53', 'Fab', 'Fb', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('54', 'Solb', 'Gb', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('55', 'Lab', 'Ab', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('56', 'Sib', 'Bb', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('57', 'Dobm', 'Cbm', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('58', 'Rebm', 'Dbm', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('59', 'Mibm', 'Ebm', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('60', 'Fabm', 'Fbm', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('61', 'Solbm', 'Gbm', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('62', 'Labm', 'Abm', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('63', 'Sibm', 'Bbm', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('64', 'Dob7', 'Cb7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('65', 'Reb7', 'Db7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('66', 'Mib7', 'Eb7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('67', 'Fab7', 'Fb7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('68', 'Solb7', 'Gb7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('69', 'Lab7', 'Ab7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('70', 'Sib7', 'Bb7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('71', 'Dobm7', 'Cbm7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('72', 'Rebm7', 'Dbm7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('73', 'Mibm7', 'Ebm7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('74', 'Fabm7', 'Fbm7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('75', 'Solbm7', 'Gbm7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('76', 'Labm7', 'Abm7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('77', 'Sibm7', 'Bbm7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('78', 'Dobaug', 'Cbaug', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('79', 'Rebaug', 'Dbaug', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('80', 'Mibaug', 'Ebaug', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('81', 'Fabaug', 'Fbaug', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('82', 'Solbaug', 'Gbaug', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('83', 'Labaug', 'Abaug', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('84', 'Sibaug', 'Bbaug', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('85', 'Dobdim', 'Cbdim', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('86', 'Rebdim', 'Dbdim', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('87', 'Mibdim', 'Ebdim', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('88', 'Fabdim', 'Fbdim', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('89', 'Solbdim', 'Gbdim', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('90', 'Labdim', 'Abdim', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('91', 'Sibdim', 'Bbdim', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('92', 'DobMaj7', 'CbMaj7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('93', 'RebMaj7', 'DbMaj7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('94', 'MibMaj7', 'EbMaj7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('95', 'FabMaj7', 'FbMaj7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('96', 'SolbMaj7', 'GbMaj7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('97', 'LabMaj7', 'AbMaj7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('98', 'SibMaj7', 'BbMaj7', 'Bemoles (b)', '1');
INSERT INTO `cat_notas` VALUES ('99', 'Do#', 'C#', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('100', 'Re#', 'D#', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('101', 'Mi#', 'E#', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('102', 'Fa#', 'F#', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('103', 'Sol#', 'G#', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('104', 'La#', 'A#', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('105', 'Si#', 'B#', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('106', 'Do#m', 'C#m', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('107', 'Re#m', 'D#m', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('108', 'Mi#m', 'E#m', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('109', 'Fa#m', 'F#m', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('110', 'Sol#m', 'G#m', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('111', 'La#m', 'A#m', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('112', 'Si#m', 'B#m', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('113', 'Do#7', 'C#7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('114', 'Re#7', 'D#7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('115', 'Mi#7', 'E#7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('116', 'Fa#7', 'F#7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('117', 'Sol#7', 'G#7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('118', 'La#7', 'A#7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('119', 'Si#7', 'B#7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('120', 'Do#m7', 'C#m7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('121', 'Re#m7', 'D#m7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('122', 'Mi#m7', 'E#m7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('123', 'Fa#m7', 'F#m7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('124', 'Sol#m7', 'G#m7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('125', 'La#m7', 'A#m7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('126', 'Si#m7', 'B#m7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('127', 'Do#aug', 'C#aug', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('128', 'Re#aug', 'D#aug', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('129', 'Mi#aug', 'E#aug', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('130', 'Fa#aug', 'F#aug', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('131', 'Sol#aug', 'G#aug', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('132', 'La#aug', 'A#aug', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('133', 'Si#aug', 'B#aug', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('134', 'Do#dim', 'C#dim', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('135', 'Re#dim', 'D#dim', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('136', 'Mi#dim', 'E#dim', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('137', 'Fa#dim', 'F#dim', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('138', 'Sol#dim', 'G#dim', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('139', 'La#dim', 'A#dim', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('140', 'Si#dim', 'B#dim', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('141', 'Do#Maj7', 'C#Maj7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('142', 'Re#Maj7', 'D#Maj7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('143', 'Mi#Maj7', 'E#Maj7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('144', 'Fa#Maj7', 'F#Maj7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('145', 'Sol#Maj7', 'G#Maj7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('146', 'La#Maj7', 'A#Maj7', 'Sostenidos (#)', '1');
INSERT INTO `cat_notas` VALUES ('147', 'Si#Maj7', 'B#Maj7', 'Sostenidos (#)', '1');

-- ----------------------------
-- Table structure for cat_ritmos
-- ----------------------------
DROP TABLE IF EXISTS `cat_ritmos`;
CREATE TABLE `cat_ritmos` (
  `id_ritmo` tinyint(2) NOT NULL AUTO_INCREMENT,
  `ritmo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_ritmo`),
  UNIQUE KEY `i_ritmo` (`ritmo`),
  KEY `i_activo` (`activo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cat_ritmos
-- ----------------------------
INSERT INTO `cat_ritmos` VALUES ('1', 'LENTO', '1');
INSERT INTO `cat_ritmos` VALUES ('2', 'MODERADO', '1');
INSERT INTO `cat_ritmos` VALUES ('3', 'RÁPIDO', '1');
INSERT INTO `cat_ritmos` VALUES ('4', 'MARCHA', '1');

-- ----------------------------
-- Table structure for sis_accesos
-- ----------------------------
DROP TABLE IF EXISTS `sis_accesos`;
CREATE TABLE `sis_accesos` (
  `id_acceso` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `mod1` tinyint(1) NOT NULL DEFAULT '0',
  `mod2` tinyint(1) NOT NULL DEFAULT '0',
  `mod3` tinyint(1) NOT NULL DEFAULT '0',
  `mod4` tinyint(1) NOT NULL DEFAULT '0',
  `mod5` tinyint(1) NOT NULL DEFAULT '0',
  `mod6` tinyint(1) NOT NULL DEFAULT '0',
  `mod7` tinyint(1) NOT NULL DEFAULT '0',
  `mod8` tinyint(1) NOT NULL DEFAULT '0',
  `mod9` tinyint(1) NOT NULL DEFAULT '0',
  `mod10` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_acceso`),
  KEY `i_usuario` (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sis_accesos
-- ----------------------------
INSERT INTO `sis_accesos` VALUES ('1', '1', '1', '1', '0', '1', '1', '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for sis_empresas
-- ----------------------------
DROP TABLE IF EXISTS `sis_empresas`;
CREATE TABLE `sis_empresas` (
  `id_empresa` mediumint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `siglas` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rfc` varchar(18) COLLATE utf8_spanish_ci DEFAULT NULL,
  `razon` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` text COLLATE utf8_spanish_ci,
  `pais` varchar(15) COLLATE utf8_spanish_ci DEFAULT 'MX',
  `email` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `id_nomina` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`),
  KEY `i_nomina` (`id_nomina`)
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sis_empresas
-- ----------------------------
INSERT INTO `sis_empresas` VALUES ('1', 'Mahanaim Tlalpan', 'Tlalpan', null, 'Iglesia de Jesucristo Mahanaim Tlalpan Palabra Miel México', null, 'MX', 'oscarmaldonado_1@hotmail.com', null, '0', '1', '0');

-- ----------------------------
-- Table structure for sis_grupos
-- ----------------------------
DROP TABLE IF EXISTS `sis_grupos`;
CREATE TABLE `sis_grupos` (
  `id_grupo` tinyint(2) NOT NULL,
  `grupo` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_grupo`),
  KEY `i_activo` (`activo`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sis_grupos
-- ----------------------------
INSERT INTO `sis_grupos` VALUES ('1', 'administradores', '1');
INSERT INTO `sis_grupos` VALUES ('2', 'supervisores', '1');
INSERT INTO `sis_grupos` VALUES ('3', 'ejecutivos', '1');
INSERT INTO `sis_grupos` VALUES ('0', 'root', '1');

-- ----------------------------
-- Table structure for sis_logs
-- ----------------------------
DROP TABLE IF EXISTS `sis_logs`;
CREATE TABLE `sis_logs` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `tablename` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_table` int(11) DEFAULT NULL,
  `accion` enum('UPDATE','DELETE','INSERT') COLLATE utf8_spanish_ci DEFAULT NULL,
  `query` text COLLATE utf8_spanish_ci,
  `txt` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url` text COLLATE utf8_spanish_ci,
  `timestamp` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_log`),
  KEY `id_usuario` (`id_usuario`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=571 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sis_logs
-- ----------------------------
INSERT INTO `sis_logs` VALUES ('1', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'CLIENTE DE PRUEBA\',\r\n				razon_social 	 = \'PRUEBA S.A. DE C.V. 2\',\r\n				rfc 		 	 = \'PBA11233RT4 2\',\r\n				id_pais 		 =  1,\r\n				id_entidad 		 =  1,\r\n				id_municipio     =  1,\r\n				direccion		 = \'DIRECCION DE PRUEBA 2\',\r\n				colonia		 	 = \'SAN JUAN\',\r\n				telefono 		 = \'555666998877 2\',\r\n				id_sector 		 =  1,\r\n				id_zona 		 =  1,\r\n				tamanio 		 = \'MEDIANA 2\',\r\n				sitioweb 		 = \'www.isolution.mx\'\r\n			WHERE\r\n				id_cliente  	= 12994;', '', null, '2015-12-02 10:27:03', '2');
INSERT INTO `sis_logs` VALUES ('2', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'CLIENTE DE PRUEBA\',\r\n				razon_social 	 = \'PRUEBA S.A. DE C.V. 2\',\r\n				rfc 		 	 = \'PBA11233RT4 2\',\r\n				id_pais 		 =  1,\r\n				id_entidad 		 =  1,\r\n				id_municipio     =  1,\r\n				direccion		 = \'DIRECCION DE PRUEBA 2\',\r\n				colonia		 	 = \'SAN JUAN\',\r\n				telefono 		 = \'555666998877 2\',\r\n				id_sector 		 =  1,\r\n				id_zona 		 =  1,\r\n				tamanio 		 = \'mediana\',\r\n				sitioweb 		 = \'www.isolution.mx\'\r\n			WHERE\r\n				id_cliente  	= 12994;', '', null, '2015-12-02 10:27:26', '2');
INSERT INTO `sis_logs` VALUES ('3', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'CLIENTE DE PRUEBA\',\r\n				razon_social 	 = \'PRUEBA S.A. DE C.V.\',\r\n				rfc 		 	 = \'PBA11233RT4 2\',\r\n				id_pais 		 =  1,\r\n				id_entidad 		 =  2,\r\n				id_municipio     =  12,\r\n				direccion		 = \'DIRECCION DE PRUEBA\',\r\n				colonia		 	 = \'SAN JUAN 3\',\r\n				telefono 		 = \'555666998877 2\',\r\n				id_sector 		 =  2,\r\n				id_zona 		 =  1,\r\n				tamanio 		 = \'MEDIANA\',\r\n				sitioweb 		 = \'www.isolution.mx\'\r\n			WHERE\r\n				id_cliente  	= 12994;', '', null, '2015-12-02 10:27:58', '2');
INSERT INTO `sis_logs` VALUES ('4', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'CLIENTE DE PRUEBA\',\r\n				razon_social 	 = \'PRUEBA S.A. DE C.V.\',\r\n				rfc 		 	 = \'PBA11233RT4 2\',\r\n				id_pais 		 =  1,\r\n				id_entidad 		 =  1,\r\n				id_municipio     =  1,\r\n				direccion		 = \'DIRECCION DE PRUEBA\',\r\n				colonia		 	 = \'SAN JUAN\',\r\n				telefono 		 = \'555666998877\',\r\n				id_sector 		 =  1,\r\n				id_zona 		 =  1,\r\n				tamanio 		 = \'MEDIANA\',\r\n				sitioweb 		 = \'www.isolution.mx\'\r\n			WHERE\r\n				id_cliente  	= 12994;', '', null, '2015-12-02 10:28:25', '2');
INSERT INTO `sis_logs` VALUES ('5', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'prueba final\',\r\n				razon_social 	 = \'final\',\r\n				rfc 		 	 = \'231545678456\',\r\n				id_pais 		 =  1,\r\n				id_entidad 		 =  3,\r\n				id_municipio     =  21,\r\n				direccion		 = \'direccion final\',\r\n				colonia		 	 = \'OTRA BANDA\',\r\n				telefono 		 = \'55555555\',\r\n				id_sector 		 =  4,\r\n				id_zona 		 =  1,\r\n				tamanio 		 = \'MEDIANA\',\r\n				sitioweb 		 = \'sitio.web\'\r\n			WHERE\r\n				id_cliente  	= 12997;', '', null, '2015-12-02 10:51:52', '2');
INSERT INTO `sis_logs` VALUES ('6', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'BAJA\'\r\n			WHERE id_cliente = 12997;', '', null, '2015-12-02 12:13:40', '2');
INSERT INTO `sis_logs` VALUES ('7', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'BAJA\'\r\n			WHERE id_cliente = 12997;', '', null, '2015-12-02 12:14:09', '2');
INSERT INTO `sis_logs` VALUES ('8', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'OTRO CLIENTE\',\r\n				razon_social 	 = \'OTRO CLIENTE S.A. DE C.V.\',\r\n				rfc 		 	 = \'TOC123265TF9\',\r\n				id_pais 		 =  1,\r\n				id_entidad 		 =  1,\r\n				id_municipio     =  2,\r\n				direccion		 = \'DOMICILIO DESCONOCIDO\',\r\n				colonia		 	 = \'MORELOS\',\r\n				telefono 		 = \'56985421556\',\r\n				id_sector 		 =  2,\r\n				id_zona 		 =  1,\r\n				tamanio 		 = \'PYME\',\r\n				sitioweb 		 = \'www.isolution.mx\'\r\n			WHERE\r\n				id_cliente  	= 12995;', '', null, '2015-12-02 12:20:36', '2');
INSERT INTO `sis_logs` VALUES ('9', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'BAJA\'\r\n			WHERE id_cliente = 12997;', '', null, '2015-12-02 12:28:49', '2');
INSERT INTO `sis_logs` VALUES ('10', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'prueba final\',\r\n				razon_social 	 = \'final\',\r\n				rfc 		 	 = \'231545678456\',\r\n				id_pais 		 =  1,\r\n				id_entidad 		 =  3,\r\n				id_municipio     =  21,\r\n				direccion		 = \'direccion final\',\r\n				colonia		 	 = \'OTRA BANDA\',\r\n				telefono 		 = \'55555555\',\r\n				id_sector 		 =  4,\r\n				id_zona 		 =  1,\r\n				tamanio 		 = \'\',\r\n				sitioweb 		 = \'sitio.web\'\r\n			WHERE\r\n				id_cliente  	= 12997;', '', null, '2015-12-02 18:32:03', '2');
INSERT INTO `sis_logs` VALUES ('11', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'CLIENTE DE PRUEBA\',\r\n				razon_social 	 = \'PRUEBA S.A. DE C.V.\',\r\n				rfc 		 	 = \'PBA11233RT4 2\',\r\n				id_pais 		 =  1,\r\n				id_entidad 		 =  1,\r\n				id_municipio     =  1,\r\n				direccion		 = \'DIRECCION DE PRUEBA\',\r\n				colonia		 	 = \'SAN JUAN\',\r\n				telefono 		 = \'555666998877\',\r\n				id_sector 		 =  1,\r\n				id_zona 		 =  1,\r\n				tamanio 		 = \'\',\r\n				sitioweb 		 = \'www.isolution.mx\'\r\n			WHERE\r\n				id_cliente  	= 12994;', '', null, '2015-12-03 09:43:34', '2');
INSERT INTO `sis_logs` VALUES ('12', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'NUEVO CONTACTO\',\r\n				paterno 	 	= \'CONTACTO\',\r\n				materno 		= \'MATERNO\',\r\n				sexo 		 	= \'M\',\r\n				puesto 		 	= \'GERENTE\',\r\n				tel_oficina     = \'1111111\',\r\n				tel_movil		= \'12222222\',\r\n				tel_personal 	= \'333333333\',\r\n				email_empresa 	= \'\',\r\n				email_personal 	= \'email@personal\',\r\n				cumpleanios_fec = \'2015-02-12\',\r\n				pago 		 	= \'1\',\r\n				id_cliente 		= 0\r\n			WHERE \r\n				id_contacto 	= 5;', '', null, '2015-12-03 09:44:51', '2');
INSERT INTO `sis_logs` VALUES ('13', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'NUEVO CONTACTO 1\',\r\n				paterno 	 	= \'CONTACTO 1\',\r\n				materno 		= \'MATERNO 1\',\r\n				sexo 		 	= \'F\',\r\n				puesto 		 	= \'GERENTE 1\',\r\n				tel_oficina     = \'1111111 3\',\r\n				tel_movil		= \'12222222 5\',\r\n				tel_personal 	= \'333333333 4\',\r\n				email_empresa 	= \'\',\r\n				email_personal 	= \'email@personal 3\',\r\n				cumpleanios_fec = \'2015-02-14\',\r\n				pago 		 	= \'2\',\r\n				id_cliente 		= 12995\r\n			WHERE \r\n				id_contacto 	= 5;', '', null, '2015-12-03 09:45:28', '2');
INSERT INTO `sis_logs` VALUES ('14', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'NUEVO CONTACTO\',\r\n				paterno 	 	= \'CONTACTO\',\r\n				materno 		= \'MATERNO\',\r\n				sexo 		 	= \'M\',\r\n				puesto 		 	= \'GERENTE\',\r\n				tel_oficina     = \'1111111\',\r\n				tel_movil		= \'12222222 5\',\r\n				tel_personal 	= \'333333333\',\r\n				email_empresa 	= \'empresa\',\r\n				email_personal 	= \'email@personal\',\r\n				cumpleanios_fec = \'2015-02-14\',\r\n				pago 		 	= \'1\',\r\n				id_cliente 		= 12995\r\n			WHERE \r\n				id_contacto 	= 5;', '', null, '2015-12-03 09:47:04', '2');
INSERT INTO `sis_logs` VALUES ('15', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'NUEVO CONTACTO\',\r\n				paterno 	 	= \'CONTACTO\',\r\n				materno 		= \'MATERNO\',\r\n				sexo 		 	= \'M\',\r\n				puesto 		 	= \'GERENTE\',\r\n				tel_oficina     = \'1111111\',\r\n				tel_movil		= \'12222222 5\',\r\n				tel_personal 	= \'333333333\',\r\n				email_empresa 	= \'\',\r\n				email_personal 	= \'email@personal\',\r\n				cumpleanios_fec = \'2015-02-14\',\r\n				pago 		 	= \'1\',\r\n				id_cliente 		= 12995\r\n			WHERE \r\n				id_contacto 	= 5;', '', null, '2015-12-03 09:49:51', '2');
INSERT INTO `sis_logs` VALUES ('16', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'CLIENTE DE PRUEBA\',\r\n				razon_social 	 = \'PRUEBA S.A. DE C.V.\',\r\n				rfc 		 	 = \'PBA11233RT4 2\',\r\n				id_pais 		 = \'1\',\r\n				id_entidad 		 = \'1\',\r\n				id_municipio     = \'1\',\r\n				direccion		 = \'DIRECCION DE PRUEBA\',\r\n				colonia		 	 = \'SAN JUAN\',\r\n				telefono 		 = \'555666998877\',\r\n				id_sector 		 = \'1\',\r\n				id_zona 		 = \'1\',\r\n				tamanio 		 = \'PYME\',\r\n				sitioweb 		 = \'www.isolution.mx\'\r\n			WHERE\r\n				id_cliente  	= \'12994\';', '', null, '2015-12-03 09:50:13', '2');
INSERT INTO `sis_logs` VALUES ('17', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'NUEVO CONTACTO\',\r\n				paterno 	 	= \'CONTACTO\',\r\n				materno 		= \'MATERNO\',\r\n				sexo 		 	= \'M\',\r\n				puesto 		 	= \'GERENTE\',\r\n				tel_oficina     = \'1111111\',\r\n				tel_movil		= \'12222222 5\',\r\n				tel_personal 	= \'333333333\',\r\n				email_empresa 	= \'empresa 2\',\r\n				email_personal 	= \'email@personal\',\r\n				cumpleanios_fec = \'2015-02-14\',\r\n				pago 		 	= \'1\',\r\n				id_cliente 		= 12995\r\n			WHERE \r\n				id_contacto 	= 5;', '', null, '2015-12-03 09:50:15', '2');
INSERT INTO `sis_logs` VALUES ('18', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'CLIENTE DE PRUEBA\',\r\n				razon_social 	 = \'PRUEBA S.A. DE C.V.\',\r\n				rfc 		 	 = \'PBA11233RT4 2\',\r\n				id_pais 		 = \'1\',\r\n				id_entidad 		 = \'1\',\r\n				id_municipio     = \'1\',\r\n				direccion		 = \'DIRECCION DE PRUEBA\',\r\n				colonia		 	 = \'SAN JUAN\',\r\n				telefono 		 = \'555666998877\',\r\n				id_sector 		 = \'1\',\r\n				id_zona 		 = \'1\',\r\n				tamanio 		 = \'MEDIANA\',\r\n				sitioweb 		 = \'www.isolution.mx\'\r\n			WHERE\r\n				id_cliente  	= \'12994\';', '', null, '2015-12-03 09:50:24', '2');
INSERT INTO `sis_logs` VALUES ('19', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'NUEVO CONTACTO\',\r\n				paterno 	 	= \'CONTACTO\',\r\n				materno 		= \'MATERNO\',\r\n				sexo 		 	= \'M\',\r\n				puesto 		 	= \'GERENTE\',\r\n				tel_oficina     = \'1111111\',\r\n				tel_movil		= \'12222222\',\r\n				tel_personal 	= \'333333333\',\r\n				email_empresa 	= \'\',\r\n				email_personal 	= \'email@personal\',\r\n				cumpleanios_fec = \'2015-02-14\',\r\n				pago 		 	= \'1\',\r\n				id_cliente 		= 0\r\n			WHERE \r\n				id_contacto 	= 5;', '', null, '2015-12-03 09:50:29', '2');
INSERT INTO `sis_logs` VALUES ('20', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'NUEVO CONTACTO\',\r\n				paterno 	 	= \'CONTACTO\',\r\n				materno 		= \'MATERNO\',\r\n				sexo 		 	= \'M\',\r\n				puesto 		 	= \'GERENTE\',\r\n				tel_oficina     = \'1111111\',\r\n				tel_movil		= \'12222222\',\r\n				tel_personal 	= \'333333333\',\r\n				email_personal 	= \'email@personal\',\r\n				cumpleanios_fec = \'2015-02-14\',\r\n				pago 		 	= \'3\'\r\n			WHERE \r\n				id_contacto 	= 5;', '', null, '2015-12-03 10:09:48', '2');
INSERT INTO `sis_logs` VALUES ('21', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'NUEVO CONTACTO\',\r\n				paterno 	 	= \'CONTACTO\',\r\n				materno 		= \'MATERNO\',\r\n				sexo 		 	= \'M\',\r\n				puesto 		 	= \'GERENTE\',\r\n				tel_oficina     = \'1111111\',\r\n				tel_movil		= \'12222222\',\r\n				tel_personal 	= \'333333333\',\r\n				email_personal 	= \'email@personal\',\r\n				cumpleanios_fec = \'2015-02-12\',\r\n				pago 		 	= \'2\'\r\n			WHERE \r\n				id_contacto 	= 5;', '', null, '2015-12-03 10:10:19', '2');
INSERT INTO `sis_logs` VALUES ('22', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'\'\r\n			WHERE id_contacto 	= \'1\';', '', null, '2015-12-03 11:28:26', '2');
INSERT INTO `sis_logs` VALUES ('23', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'1\';', '', null, '2015-12-03 11:28:32', '2');
INSERT INTO `sis_logs` VALUES ('24', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'3\';', '', null, '2015-12-03 11:28:37', '2');
INSERT INTO `sis_logs` VALUES ('25', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12995\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 11:34:22', '2');
INSERT INTO `sis_logs` VALUES ('26', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12997\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 11:34:34', '2');
INSERT INTO `sis_logs` VALUES ('27', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 11:34:47', '2');
INSERT INTO `sis_logs` VALUES ('28', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'PROSPECTO\'\r\n			WHERE id_cliente = 12996;', '', null, '2015-12-03 11:57:41', '2');
INSERT INTO `sis_logs` VALUES ('29', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'BAJA\'\r\n			WHERE id_cliente = 12996;', '', null, '2015-12-03 11:57:44', '2');
INSERT INTO `sis_logs` VALUES ('30', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'PROSPECTO\'\r\n			WHERE id_cliente = 12996;', '', null, '2015-12-03 11:57:48', '2');
INSERT INTO `sis_logs` VALUES ('31', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'BAJA\'\r\n			WHERE id_cliente = 12996;', '', null, '2015-12-03 12:02:07', '2');
INSERT INTO `sis_logs` VALUES ('32', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'PROSPECTO\'\r\n			WHERE id_cliente = 12996;', '', null, '2015-12-03 12:09:41', '2');
INSERT INTO `sis_logs` VALUES ('33', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'BAJA\'\r\n			WHERE id_cliente = 12996;', '', null, '2015-12-03 12:09:43', '2');
INSERT INTO `sis_logs` VALUES ('34', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'CLIENTE\'\r\n			WHERE id_cliente = 12997;', '', null, '2015-12-03 12:09:45', '2');
INSERT INTO `sis_logs` VALUES ('35', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'SUSPENDIDO\'\r\n			WHERE id_cliente = 12997;', '', null, '2015-12-03 12:09:47', '2');
INSERT INTO `sis_logs` VALUES ('36', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'BAJA\'\r\n			WHERE id_cliente = 12995;', '', null, '2015-12-03 12:09:50', '2');
INSERT INTO `sis_logs` VALUES ('37', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'PROSPECTO\'\r\n			WHERE id_cliente = 12995;', '', null, '2015-12-03 12:09:51', '2');
INSERT INTO `sis_logs` VALUES ('38', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'SUSPENDIDO\'\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-03 12:09:52', '2');
INSERT INTO `sis_logs` VALUES ('39', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'CLIENTE\'\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-03 12:09:53', '2');
INSERT INTO `sis_logs` VALUES ('40', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'BAJA\'\r\n			WHERE id_cliente = 12995;', '', null, '2015-12-03 12:10:32', '2');
INSERT INTO `sis_logs` VALUES ('41', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'PROSPECTO\'\r\n			WHERE id_cliente = 12995;', '', null, '2015-12-03 12:10:33', '2');
INSERT INTO `sis_logs` VALUES ('42', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'BAJA\'\r\n			WHERE id_cliente = 12999;', '', null, '2015-12-03 12:11:10', '2');
INSERT INTO `sis_logs` VALUES ('43', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'SUSPENDIDO\'\r\n			WHERE id_cliente = 12998;', '', null, '2015-12-03 12:11:22', '2');
INSERT INTO `sis_logs` VALUES ('44', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'CLIENTE\'\r\n			WHERE id_cliente = 12998;', '', null, '2015-12-03 12:11:26', '2');
INSERT INTO `sis_logs` VALUES ('45', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'PROSPECTO\'\r\n			WHERE id_cliente = 12996;', '', null, '2015-12-03 12:12:43', '2');
INSERT INTO `sis_logs` VALUES ('46', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'BAJA\'\r\n			WHERE id_cliente = 12996;', '', null, '2015-12-03 12:12:45', '2');
INSERT INTO `sis_logs` VALUES ('47', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'BAJA\'\r\n			WHERE id_cliente = 12995;', '', null, '2015-12-03 12:13:16', '2');
INSERT INTO `sis_logs` VALUES ('48', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'PROSPECTO\'\r\n			WHERE id_cliente = 12995;', '', null, '2015-12-03 12:13:18', '2');
INSERT INTO `sis_logs` VALUES ('49', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'SUSPENDIDO\'\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-03 12:13:20', '2');
INSERT INTO `sis_logs` VALUES ('50', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'CLIENTE\'\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-03 12:13:21', '2');
INSERT INTO `sis_logs` VALUES ('51', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET activo = 0\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-03 12:26:17', '2');
INSERT INTO `sis_logs` VALUES ('52', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'SUSPENDIDO\'\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-03 12:26:50', '2');
INSERT INTO `sis_logs` VALUES ('53', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'CLIENTE\'\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-03 12:26:52', '2');
INSERT INTO `sis_logs` VALUES ('54', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET activo = 0\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-03 12:26:56', '2');
INSERT INTO `sis_logs` VALUES ('55', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET activo = 0\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-03 12:28:04', '2');
INSERT INTO `sis_logs` VALUES ('56', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET activo = 0\r\n			WHERE id_cliente = 12995;', '', null, '2015-12-03 12:28:23', '2');
INSERT INTO `sis_logs` VALUES ('57', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET activo = 0\r\n			WHERE id_cliente = 12998;', '', null, '2015-12-03 12:28:28', '2');
INSERT INTO `sis_logs` VALUES ('58', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET activo = 0\r\n			WHERE id_cliente = 12997;', '', null, '2015-12-03 12:28:42', '2');
INSERT INTO `sis_logs` VALUES ('59', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET activo = 0\r\n			WHERE id_cliente = 12996;', '', null, '2015-12-03 12:29:39', '2');
INSERT INTO `sis_logs` VALUES ('60', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET activo = 0\r\n			WHERE id_cliente = 12999;', '', null, '2015-12-03 12:31:34', '2');
INSERT INTO `sis_logs` VALUES ('61', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET activo = 0\r\n			WHERE id_cliente = 12996;', '', null, '2015-12-03 12:33:25', '2');
INSERT INTO `sis_logs` VALUES ('62', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET activo = 0\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-03 12:54:35', '2');
INSERT INTO `sis_logs` VALUES ('63', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'\'\r\n			WHERE id_contacto 	= \'3\';', '', null, '2015-12-03 12:55:10', '2');
INSERT INTO `sis_logs` VALUES ('64', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'2\';', '', null, '2015-12-03 12:55:12', '2');
INSERT INTO `sis_logs` VALUES ('65', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'\'\r\n			WHERE id_contacto 	= \'2\';', '', null, '2015-12-03 12:55:15', '2');
INSERT INTO `sis_logs` VALUES ('66', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 12:55:17', '2');
INSERT INTO `sis_logs` VALUES ('67', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				id_cliente 	 	= 13001\r\n			WHERE \r\n				id_contacto 	= 5;', '', null, '2015-12-03 13:12:44', '2');
INSERT INTO `sis_logs` VALUES ('68', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				id_cliente 	 	= 12994\r\n			WHERE \r\n				id_contacto 	= 5;', '', null, '2015-12-03 13:12:49', '2');
INSERT INTO `sis_logs` VALUES ('69', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'\'\r\n			WHERE id_contacto 	= \'4\';', '', null, '2015-12-03 13:16:49', '2');
INSERT INTO `sis_logs` VALUES ('70', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12998\'\r\n			WHERE id_contacto 	= \'4\';', '', null, '2015-12-03 13:16:51', '2');
INSERT INTO `sis_logs` VALUES ('71', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12998\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 13:17:33', '2');
INSERT INTO `sis_logs` VALUES ('72', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 13:17:37', '2');
INSERT INTO `sis_logs` VALUES ('73', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12998\'\r\n			WHERE id_contacto 	= \'1\';', '', null, '2015-12-03 13:17:58', '2');
INSERT INTO `sis_logs` VALUES ('74', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'\'\r\n			WHERE id_contacto 	= \'4\';', '', null, '2015-12-03 13:18:00', '2');
INSERT INTO `sis_logs` VALUES ('75', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12998\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 13:27:25', '2');
INSERT INTO `sis_logs` VALUES ('76', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 13:27:27', '2');
INSERT INTO `sis_logs` VALUES ('77', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'\'\r\n			WHERE id_contacto 	= \'1\';', '', null, '2015-12-03 13:30:42', '2');
INSERT INTO `sis_logs` VALUES ('78', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12998\'\r\n			WHERE id_contacto 	= \'1\';', '', null, '2015-12-03 13:30:48', '2');
INSERT INTO `sis_logs` VALUES ('79', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				id_cliente 	 	= 12994\r\n			WHERE \r\n				id_contacto 	= 5;', '', null, '2015-12-03 13:30:58', '2');
INSERT INTO `sis_logs` VALUES ('80', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				id_cliente 	 	= 13001\r\n			WHERE \r\n				id_contacto 	= 5;', '', null, '2015-12-03 13:33:37', '2');
INSERT INTO `sis_logs` VALUES ('81', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'1\';', '', null, '2015-12-03 13:35:21', '2');
INSERT INTO `sis_logs` VALUES ('82', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'0\'\r\n			WHERE id_contacto 	= \'1\';', '', null, '2015-12-03 13:38:31', '2');
INSERT INTO `sis_logs` VALUES ('83', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 13:40:57', '2');
INSERT INTO `sis_logs` VALUES ('84', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'1\';', '', null, '2015-12-03 13:41:26', '2');
INSERT INTO `sis_logs` VALUES ('85', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 13:41:33', '2');
INSERT INTO `sis_logs` VALUES ('86', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'0\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 13:41:53', '2');
INSERT INTO `sis_logs` VALUES ('87', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 13:42:19', '2');
INSERT INTO `sis_logs` VALUES ('88', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 13:42:25', '2');
INSERT INTO `sis_logs` VALUES ('89', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 13:43:14', '2');
INSERT INTO `sis_logs` VALUES ('90', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'13001\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 13:43:18', '2');
INSERT INTO `sis_logs` VALUES ('91', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'0\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 13:43:21', '2');
INSERT INTO `sis_logs` VALUES ('92', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12997\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-03 13:43:24', '2');
INSERT INTO `sis_logs` VALUES ('93', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'0\'\r\n			WHERE id_contacto 	= \'1\';', '', null, '2015-12-03 13:51:19', '2');
INSERT INTO `sis_logs` VALUES ('94', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'1\';', '', null, '2015-12-03 16:11:23', '2');
INSERT INTO `sis_logs` VALUES ('95', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET activo = 1\r\n			WHERE id_contacto = 1;', '', null, '2015-12-03 16:28:39', '2');
INSERT INTO `sis_logs` VALUES ('96', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET activo = 0\r\n			WHERE id_contacto = 5;', '', null, '2015-12-03 16:28:56', '2');
INSERT INTO `sis_logs` VALUES ('97', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET activo = 1\r\n			WHERE id_contacto = 5;', '', null, '2015-12-03 16:28:58', '2');
INSERT INTO `sis_logs` VALUES ('98', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET activo = 1\r\n			WHERE id_contacto = 1;', '', null, '2015-12-03 17:32:12', '2');
INSERT INTO `sis_logs` VALUES ('99', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET activo = 0\r\n			WHERE id_contacto = 1;', '', null, '2015-12-03 17:32:19', '2');
INSERT INTO `sis_logs` VALUES ('100', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'3\';', '', null, '2015-12-04 11:56:43', '2');
INSERT INTO `sis_logs` VALUES ('101', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-04 11:56:45', '2');
INSERT INTO `sis_logs` VALUES ('102', 'tbl_operaciones', '6', 'INSERT', 'INSERT INTO tbl_operaciones SET \r\n				id_cliente			= \'12994\',\r\n				id_operacion_tipo	= \'1\',\r\n				fecha				= \'2015-11-11 13:04:40\',\r\n				hora				= \'11:18\',\r\n				detalle				= \'NUEVA CAPTURA\',\r\n				id_servicios		= \'1,3\',\r\n				id_contactos		= \'3,5\',\r\n				id_personal			= \'2\',\r\n				id_usuario			= \'2\',\r\n				comentarios			= \'NUEVA CITA\',\r\n				timestamp 		 	= \'2015-12-04 13:04:40\'\r\n			;', '', null, '2015-12-04 13:04:40', '2');
INSERT INTO `sis_logs` VALUES ('103', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'BAJA\'\r\n			WHERE id_cliente = 12995;', '', null, '2015-12-04 13:12:02', '2');
INSERT INTO `sis_logs` VALUES ('104', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'PROSPECTO\'\r\n			WHERE id_cliente = 12995;', '', null, '2015-12-04 13:12:04', '2');
INSERT INTO `sis_logs` VALUES ('105', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'0\'\r\n			WHERE id_contacto 	= \'3\';', '', null, '2015-12-04 13:14:46', '2');
INSERT INTO `sis_logs` VALUES ('106', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'0\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-04 13:14:47', '2');
INSERT INTO `sis_logs` VALUES ('107', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'3\';', '', null, '2015-12-04 13:14:48', '2');
INSERT INTO `sis_logs` VALUES ('108', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'4\';', '', null, '2015-12-04 13:14:56', '2');
INSERT INTO `sis_logs` VALUES ('109', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'SUSPENDIDO\'\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-04 13:15:13', '2');
INSERT INTO `sis_logs` VALUES ('110', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'CLIENTE\'\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-04 13:15:14', '2');
INSERT INTO `sis_logs` VALUES ('111', 'tbl_operaciones', '7', 'INSERT', 'INSERT INTO tbl_operaciones SET \r\n				id_cliente			= \'12994\',\r\n				id_operacion_tipo	= \'1\',\r\n				fecha				= \'2015-12-02 13:16:41\',\r\n				hora				= \'08:31\',\r\n				detalle				= \'gvxdfgbdfgdf\',\r\n				id_servicios		= \'1,3\',\r\n				id_contactos		= \'3,4\',\r\n				id_personal			= \'2\',\r\n				id_usuario			= \'2\',\r\n				comentarios			= \'bchcvbcbcvbcvbcvbcv\',\r\n				timestamp 		 	= \'2015-12-04 13:16:41\'\r\n			;', '', null, '2015-12-04 13:16:41', '2');
INSERT INTO `sis_logs` VALUES ('112', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'2\';', '', null, '2015-12-04 13:18:14', '2');
INSERT INTO `sis_logs` VALUES ('113', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET \r\n				nombre 				= \'EJECUTIVO\',\r\n				paterno 	 		= \'EJECUTIVO\',\r\n				materno 			= \'EJECUTIVO\',\r\n				email 		 		= \'3333333333\',\r\n				puesto 		 		= \'4444444\',\r\n				telefono_oficina    = \'email\',\r\n				telefono_movil		= \'VALIDA\',\r\n				id_pais 			=  1,\r\n				id_entidad 			=  4,\r\n				id_municipio 		=  22,\r\n				id_zona 			=  1;', '', null, '2015-12-07 11:25:17', '2');
INSERT INTO `sis_logs` VALUES ('114', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET \r\n				nombre 				= \'EJECUTIVO\',\r\n				paterno 	 		= \'EJECUTIVO\',\r\n				materno 			= \'EJECUTIVO\',\r\n				email 		 		= \'4444444\',\r\n				puesto 		 		= \'EMAIL\',\r\n				telefono_oficina    = \'VALIDA\',\r\n				telefono_movil		= \'3333333333\',\r\n				id_pais 			=  1,\r\n				id_entidad 			=  4,\r\n				id_municipio 		=  23,\r\n				id_zona 			=  1;', '', null, '2015-12-07 11:25:26', '2');
INSERT INTO `sis_logs` VALUES ('115', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'Dulce Cazares\',\r\n				razon_social 	 = \'dulces cazares rzon\',\r\n				rfc 		 	 = \'cazares\',\r\n				id_pais 		 = \'1\',\r\n				id_entidad 		 = \'9\',\r\n				id_municipio     = \'271\',\r\n				direccion		 = \'direccion\',\r\n				colonia		 	 = \'colonia\',\r\n				telefono 		 = \'5555555\',\r\n				id_sector 		 = \'4\',\r\n				id_zona 		 = \'1\',\r\n				tamanio 		 = \'PYME\',\r\n				sitioweb 		 = \'www.hola.com\'\r\n			WHERE\r\n				id_cliente  	= \'13002\';', '', null, '2015-12-07 12:36:50', '2');
INSERT INTO `sis_logs` VALUES ('116', 'tbl_operaciones', '8', 'INSERT', 'INSERT INTO tbl_operaciones SET \r\n				id_cliente			= \'12994\',\r\n				id_operacion_tipo	= \'2\',\r\n				fecha				= \'2015-12-07 12:46:09\',\r\n				hora				= \'12:45\',\r\n				detalle				= \'detalle\',\r\n				id_servicios		= \'2,3\',\r\n				id_contactos		= \'4\',\r\n				id_personal			= \'2\',\r\n				id_usuario			= \'2\',\r\n				comentarios			= \'comentario\',\r\n				timestamp 		 	= \'2015-12-07 12:46:09\'\r\n			;', '', null, '2015-12-07 12:46:09', '2');
INSERT INTO `sis_logs` VALUES ('117', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-07 12:57:00', '2');
INSERT INTO `sis_logs` VALUES ('118', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'0\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-07 12:57:02', '2');
INSERT INTO `sis_logs` VALUES ('119', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET \r\n				nombre 				= \'ROOT\',\r\n				paterno 	 		= \'DEL\',\r\n				materno 			= \'SISTEMA\',\r\n				email 		 		= \'EMAIL\',\r\n				puesto 		 		= \'VALIDA\',\r\n				telefono_oficina    = \'3333333333\',\r\n				telefono_movil		= \'oscar.maldonado@isolution.mx\',\r\n				id_pais 			=  1,\r\n				id_entidad 			=  4,\r\n				id_municipio 		=  23,\r\n				id_zona 			=  1;', '', null, '2015-12-07 13:12:02', '2');
INSERT INTO `sis_logs` VALUES ('120', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET \r\n				nombre 				= \'NIVEL4\',\r\n				paterno 	 		= \'DEL\',\r\n				materno 			= \'CLIENTE\',\r\n				email 		 		= \'email\',\r\n				puesto 		 		= \'PUESTO\',\r\n				telefono_oficina    = \'oscar.maldonado@isolution.mx\',\r\n				telefono_movil		= \'oscar.maldonado@isolution.mx\',\r\n				id_pais 			=  1,\r\n				id_entidad 			=  4,\r\n				id_municipio 		=  23,\r\n				id_zona 			=  1;', '', null, '2015-12-07 13:16:30', '2');
INSERT INTO `sis_logs` VALUES ('121', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET \r\n				nombre 				= \'NIVEL4\',\r\n				paterno 	 		= \'DEL\',\r\n				materno 			= \'CLIENTE\',\r\n				email 		 		= \'oscar.maldonado@isolution.mx\',\r\n				puesto 		 		= \'PUESTO\',\r\n				telefono_oficina    = \'8888\',\r\n				telefono_movil		= \'55555\',\r\n				id_pais 			=  1,\r\n				id_entidad 			=  4,\r\n				id_municipio 		=  23,\r\n				id_zona 			=  1\r\n			WHERE \r\n				id_personal = 5;', '', null, '2015-12-07 13:19:33', '2');
INSERT INTO `sis_logs` VALUES ('122', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET \r\n				nombre 				= \'NOMBRE\',\r\n				paterno 	 		= \'PATERNO\',\r\n				materno 			= \'MATERNO\',\r\n				email 		 		= \'PUESTO\',\r\n				puesto 		 		= \'OFICINA\',\r\n				telefono_oficina    = \'movil\',\r\n				telefono_movil		= \'email\',\r\n				id_pais 			=  1,\r\n				id_entidad 			=  2,\r\n				id_municipio 		=  14,\r\n				id_zona 			=  1\r\n			WHERE \r\n				id_personal = 788;', '', null, '2015-12-07 13:22:25', '2');
INSERT INTO `sis_logs` VALUES ('123', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET \r\n				nombre 				= \'NOMBRE\',\r\n				paterno 	 		= \'PATERNO\',\r\n				materno 			= \'MATERNO\',\r\n				email 		 		= \'email\',\r\n				puesto 		 		= \'PUESTO\',\r\n				telefono_oficina    = \'oficina\',\r\n				telefono_movil		= \'movil\',\r\n				id_pais 			=  1,\r\n				id_entidad 			=  2,\r\n				id_municipio 		=  14,\r\n				id_zona 			=  1\r\n			WHERE \r\n				id_personal = 788;', '', null, '2015-12-07 13:23:30', '2');
INSERT INTO `sis_logs` VALUES ('124', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET \r\n				nombre 				= \'NOMBRE 1\',\r\n				paterno 	 		= \'PATERNO 2\',\r\n				materno 			= \'MATERNO 3\',\r\n				email 		 		= \'email 7\',\r\n				puesto 		 		= \'PUESTO 4\',\r\n				telefono_oficina    = \'oficina 5\',\r\n				telefono_movil		= \'movil 6\',\r\n				id_pais 			=  1,\r\n				id_entidad 			=  2,\r\n				id_municipio 		=  14,\r\n				id_zona 			=  1\r\n			WHERE \r\n				id_personal = 788;', '', null, '2015-12-07 13:28:08', '2');
INSERT INTO `sis_logs` VALUES ('125', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET \r\n				nombre 				= \'NOMBRE\',\r\n				paterno 	 		= \'PATERNO\',\r\n				materno 			= \'MATERNO\',\r\n				email 		 		= \'email\',\r\n				puesto 		 		= \'PUESTO\',\r\n				telefono_oficina    = \'oficina\',\r\n				telefono_movil		= \'movil\',\r\n				id_pais 			=  1,\r\n				id_entidad 			=  2,\r\n				id_municipio 		=  14,\r\n				id_zona 			=  1\r\n			WHERE \r\n				id_personal = 788;', '', null, '2015-12-07 13:28:25', '2');
INSERT INTO `sis_logs` VALUES ('126', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'ULTIMA\',\r\n				paterno 	 	= \'PRUEBA DE\',\r\n				materno 		= \'CONTACTO\',\r\n				sexo 		 	= \'F\',\r\n				puesto 		 	= \'FINAL\',\r\n				tel_oficina     = \'888888\',\r\n				tel_movil		= \'777777\',\r\n				tel_personal 	= \'66666\',\r\n				email_personal 	= \'email@email.com\',\r\n				cumpleanios_fec = \'2015-12-07\',\r\n				pago 		 	= \'0\'\r\n			WHERE \r\n				id_contacto 	= 9;', '', null, '2015-12-07 15:28:47', '2');
INSERT INTO `sis_logs` VALUES ('127', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'CONTACTO\',\r\n				paterno 	 	= \'DE\',\r\n				materno 		= \'PRUEBA 3\',\r\n				sexo 		 	= \'F\',\r\n				puesto 		 	= \'DUEÑO\',\r\n				tel_oficina     = \'55669874214\',\r\n				tel_movil		= \'044558796954235\',\r\n				tel_personal 	= \'0445521369874\',\r\n				email_personal 	= \'mail@personal.mx\',\r\n				cumpleanios_fec = \'1994-03-15\',\r\n				pago 		 	= \'0\'\r\n			WHERE \r\n				id_contacto 	= 4;', '', null, '2015-12-07 15:32:37', '2');
INSERT INTO `sis_logs` VALUES ('128', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'ULTIMA\',\r\n				paterno 	 	= \'PRUEBA DE\',\r\n				materno 		= \'CONTACTO\',\r\n				sexo 		 	= \'F\',\r\n				puesto 		 	= \'FINAL\',\r\n				tel_oficina     = \'888888\',\r\n				tel_movil		= \'777777\',\r\n				tel_personal 	= \'66666\',\r\n				email_personal 	= \'email@email.com\',\r\n				cumpleanios_fec = \'06/12/2015\',\r\n				pago 		 	= \'0\'\r\n			WHERE \r\n				id_contacto 	= 9;', '', null, '2015-12-07 15:38:57', '2');
INSERT INTO `sis_logs` VALUES ('129', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'ULTIMA\',\r\n				paterno 	 	= \'PRUEBA DE\',\r\n				materno 		= \'CONTACTO\',\r\n				sexo 		 	= \'F\',\r\n				puesto 		 	= \'FINAL\',\r\n				tel_oficina     = \'888888\',\r\n				tel_movil		= \'777777\',\r\n				tel_personal 	= \'66666\',\r\n				email_personal 	= \'email@email.com\',\r\n				cumpleanios_fec = \'2015-12-07\',\r\n				pago 		 	= \'0\'\r\n			WHERE \r\n				id_contacto 	= 9;', '', null, '2015-12-07 15:40:46', '2');
INSERT INTO `sis_logs` VALUES ('130', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'ULTIMA\',\r\n				paterno 	 	= \'PRUEBA DE\',\r\n				materno 		= \'CONTACTO\',\r\n				sexo 		 	= \'F\',\r\n				puesto 		 	= \'FINAL\',\r\n				tel_oficina     = \'888888\',\r\n				tel_movil		= \'777777\',\r\n				tel_personal 	= \'66666\',\r\n				email_personal 	= \'email@email.com\',\r\n				cumpleanios_fec = \'2015-12-06\',\r\n				pago 		 	= \'0\'\r\n			WHERE \r\n				id_contacto 	= 9;', '', null, '2015-12-07 15:41:02', '2');
INSERT INTO `sis_logs` VALUES ('131', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'BAJA\'\r\n			WHERE id_cliente = 13004;', '', null, '2015-12-07 16:46:57', '2');
INSERT INTO `sis_logs` VALUES ('132', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'PROSPECTO\'\r\n			WHERE id_cliente = 13004;', '', null, '2015-12-07 16:47:14', '2');
INSERT INTO `sis_logs` VALUES ('133', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'788\'\r\n			WHERE id_personal 	= \'4\';', '', null, '2015-12-07 18:12:49', '2');
INSERT INTO `sis_logs` VALUES ('134', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'788\'\r\n			WHERE id_personal 	= \'6\';', '', null, '2015-12-07 18:12:55', '2');
INSERT INTO `sis_logs` VALUES ('135', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'788\'\r\n			WHERE id_personal 	= \'7\';', '', null, '2015-12-07 18:13:50', '2');
INSERT INTO `sis_logs` VALUES ('136', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'0\'\r\n			WHERE id_personal 	= \'4\';', '', null, '2015-12-07 18:13:52', '2');
INSERT INTO `sis_logs` VALUES ('137', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'788\'\r\n			WHERE id_personal 	= \'9\';', '', null, '2015-12-07 18:14:05', '2');
INSERT INTO `sis_logs` VALUES ('138', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'788\'\r\n			WHERE id_personal 	= \'5\';', '', null, '2015-12-07 18:14:06', '2');
INSERT INTO `sis_logs` VALUES ('139', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'788\'\r\n			WHERE id_personal 	= \'8\';', '', null, '2015-12-07 18:14:07', '2');
INSERT INTO `sis_logs` VALUES ('140', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'788\'\r\n			WHERE id_personal 	= \'4\';', '', null, '2015-12-07 18:14:08', '2');
INSERT INTO `sis_logs` VALUES ('141', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'3\'\r\n			WHERE id_personal 	= \'4\';', '', null, '2015-12-07 18:15:04', '2');
INSERT INTO `sis_logs` VALUES ('142', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'3\'\r\n			WHERE id_personal 	= \'7\';', '', null, '2015-12-07 18:17:10', '2');
INSERT INTO `sis_logs` VALUES ('143', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'788\'\r\n			WHERE id_personal 	= \'7\';', '', null, '2015-12-07 18:17:15', '2');
INSERT INTO `sis_logs` VALUES ('144', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'788\'\r\n			WHERE id_personal 	= \'9\';', '', null, '2015-12-07 18:17:16', '2');
INSERT INTO `sis_logs` VALUES ('145', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'788\'\r\n			WHERE id_personal 	= \'6\';', '', null, '2015-12-07 18:17:18', '2');
INSERT INTO `sis_logs` VALUES ('146', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'3\'\r\n			WHERE id_personal 	= \'5\';', '', null, '2015-12-07 18:18:14', '2');
INSERT INTO `sis_logs` VALUES ('147', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'3\'\r\n			WHERE id_personal 	= \'8\';', '', null, '2015-12-07 18:18:17', '2');
INSERT INTO `sis_logs` VALUES ('148', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'0\'\r\n			WHERE id_personal 	= \'5\';', '', null, '2015-12-07 18:18:21', '2');
INSERT INTO `sis_logs` VALUES ('149', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'10\'\r\n			WHERE id_personal 	= \'3\';', '', null, '2015-12-07 18:23:16', '2');
INSERT INTO `sis_logs` VALUES ('150', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'10\'\r\n			WHERE id_personal 	= \'4\';', '', null, '2015-12-07 18:23:17', '2');
INSERT INTO `sis_logs` VALUES ('151', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'10\'\r\n			WHERE id_personal 	= \'5\';', '', null, '2015-12-07 18:23:18', '2');
INSERT INTO `sis_logs` VALUES ('152', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'788\'\r\n			WHERE id_personal 	= \'3\';', '', null, '2015-12-07 18:23:23', '2');
INSERT INTO `sis_logs` VALUES ('153', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'788\'\r\n			WHERE id_personal 	= \'4\';', '', null, '2015-12-07 18:23:25', '2');
INSERT INTO `sis_logs` VALUES ('154', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'10\'\r\n			WHERE id_personal 	= \'7\';', '', null, '2015-12-07 18:23:31', '2');
INSERT INTO `sis_logs` VALUES ('155', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'10\'\r\n			WHERE id_personal 	= \'3\';', '', null, '2015-12-07 18:23:33', '2');
INSERT INTO `sis_logs` VALUES ('156', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'788\'\r\n			WHERE id_personal 	= \'8\';', '', null, '2015-12-07 18:23:42', '2');
INSERT INTO `sis_logs` VALUES ('157', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'13005\'\r\n			WHERE id_contacto 	= \'5\';', '', null, '2015-12-10 15:09:49', '3');
INSERT INTO `sis_logs` VALUES ('158', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'10\'\r\n			WHERE id_personal 	= \'4\';', '', null, '2015-12-10 15:18:05', '2');
INSERT INTO `sis_logs` VALUES ('159', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET activo = 0\r\n			WHERE id_contacto = 12;', '', null, '2015-12-10 15:24:31', '4');
INSERT INTO `sis_logs` VALUES ('160', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET activo = 0\r\n			WHERE id_contacto = 11;', '', null, '2015-12-10 15:24:33', '4');
INSERT INTO `sis_logs` VALUES ('161', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET activo = 0\r\n			WHERE id_contacto = 10;', '', null, '2015-12-10 15:25:28', '4');
INSERT INTO `sis_logs` VALUES ('162', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'LG\',\r\n				razon_social 	 = \'ELECTRONICOS LG SA. DE CV\',\r\n				rfc 		 	 = \'ELE121212YT6\',\r\n				id_pais 		 = \'1\',\r\n				id_entidad 		 = \'2\',\r\n				id_municipio     = \'13\',\r\n				direccion		 = \'CALLE #422\',\r\n				colonia		 	 = \'\',\r\n				telefono 		 = \'FSDFSDF\',\r\n				id_sector 		 = \'1\',\r\n				id_zona 		 = \'1\',\r\n				tamanio 		 = \'GRANDE\',\r\n				sitioweb 		 = \'\'\r\n			WHERE\r\n				id_cliente  	= \'13004\';', '', null, '2015-12-10 15:26:39', '4');
INSERT INTO `sis_logs` VALUES ('163', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'LG\',\r\n				razon_social 	 = \'ELECTRONICOS LG SA. DE CV\',\r\n				rfc 		 	 = \'ELE121212YT6\',\r\n				id_pais 		 = \'1\',\r\n				id_entidad 		 = \'2\',\r\n				id_municipio     = \'13\',\r\n				direccion		 = \'CALLE #422\',\r\n				colonia		 	 = \'\',\r\n				telefono 		 = \'FSDFSDF\',\r\n				id_sector 		 = \'3\',\r\n				id_zona 		 = \'1\',\r\n				tamanio 		 = \'GRANDE\',\r\n				sitioweb 		 = \'\'\r\n			WHERE\r\n				id_cliente  	= \'13004\';', '', null, '2015-12-10 15:27:17', '4');
INSERT INTO `sis_logs` VALUES ('164', 'tbl_operaciones', '9', 'INSERT', 'INSERT INTO tbl_operaciones SET \r\n				id_cliente			= \'12998\',\r\n				id_operacion_tipo	= \'1\',\r\n				fecha				= \'2015-12-01 15:32:17\',\r\n				hora				= \'11:25\',\r\n				detalle				= \'PRIMER ACERCAMIENTO\',\r\n				id_servicios		= \'2,4\',\r\n				id_contactos		= \'\',\r\n				id_personal			= \'3\',\r\n				id_usuario			= \'3\',\r\n				comentarios			= \'NA\',\r\n				timestamp 		 	= \'2015-12-10 15:32:17\'\r\n			;', '', null, '2015-12-10 15:32:17', '3');
INSERT INTO `sis_logs` VALUES ('165', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'0\'\r\n			WHERE id_contacto 	= \'4\';', '', null, '2015-12-10 17:41:06', '1');
INSERT INTO `sis_logs` VALUES ('166', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'4\';', '', null, '2015-12-10 17:44:21', '1');
INSERT INTO `sis_logs` VALUES ('167', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12995\'\r\n			WHERE id_contacto 	= \'4\';', '', null, '2015-12-10 17:44:31', '1');
INSERT INTO `sis_logs` VALUES ('168', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'4\';', '', null, '2015-12-10 17:44:34', '1');
INSERT INTO `sis_logs` VALUES ('169', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'788\'\r\n			WHERE id_personal 	= \'4\';', '', null, '2015-12-10 17:51:14', '2');
INSERT INTO `sis_logs` VALUES ('170', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'CLIENTE\'\r\n			WHERE id_cliente = 12997;', '', null, '2015-12-10 17:55:54', '6');
INSERT INTO `sis_logs` VALUES ('171', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'SUSPENDIDO\'\r\n			WHERE id_cliente = 12997;', '', null, '2015-12-10 17:55:56', '6');
INSERT INTO `sis_logs` VALUES ('172', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'PROSPECTO\'\r\n			WHERE id_cliente = 12996;', '', null, '2015-12-10 17:55:58', '6');
INSERT INTO `sis_logs` VALUES ('173', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'BAJA\'\r\n			WHERE id_cliente = 12996;', '', null, '2015-12-10 17:55:59', '6');
INSERT INTO `sis_logs` VALUES ('174', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'PLATICOS GENERALES\',\r\n				razon_social 	 = \'PLASTIMEX SA\',\r\n				rfc 		 	 = \'PAG020403H5R\',\r\n				id_pais 		 = \'1\',\r\n				id_entidad 		 = \'1\',\r\n				id_municipio     = \'2\',\r\n				direccion		 = \'CALLE ONCE #9845 BIS 2\',\r\n				colonia		 	 = \'HÉROES\',\r\n				telefono 		 = \'46675645\',\r\n				id_sector 		 = \'1\',\r\n				id_zona 		 = \'1\',\r\n				tamanio 		 = \'GRANDE\',\r\n				sitioweb 		 = \'www.plastimex.mx\'\r\n			WHERE\r\n				id_cliente  	= \'13005\';', '', null, '2015-12-10 17:58:27', '6');
INSERT INTO `sis_logs` VALUES ('175', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'ANGÉLICA\',\r\n				paterno 	 	= \'RÁMOS\',\r\n				materno 		= \'DUARTE\',\r\n				sexo 		 	= \'F\',\r\n				puesto 		 	= \'GERENTE\',\r\n				tel_oficina     = \'554255634\',\r\n				tel_movil		= \'44234535345634\',\r\n				tel_personal 	= \'34234534\',\r\n				email_personal 	= \'email@personal\',\r\n				cumpleanios_fec = \'2015-02-12\',\r\n				pago 		 	= \'1\'\r\n			WHERE \r\n				id_contacto 	= 5;', '', null, '2015-12-10 17:59:10', '6');
INSERT INTO `sis_logs` VALUES ('176', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'ERNESTO\',\r\n				paterno 	 	= \'JIMÉNEZ\',\r\n				materno 		= \'GRACÍA\',\r\n				sexo 		 	= \'M\',\r\n				puesto 		 	= \'DIRECTOR RH\',\r\n				tel_oficina     = \'9574551\',\r\n				tel_movil		= \'5245441213\',\r\n				tel_personal 	= \'12154648\',\r\n				email_personal 	= \'o@o.om\',\r\n				cumpleanios_fec = \'0000-00-00\',\r\n				pago 		 	= \'0\'\r\n			WHERE \r\n				id_contacto 	= 6;', '', null, '2015-12-10 17:59:52', '6');
INSERT INTO `sis_logs` VALUES ('177', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'MARISOL\',\r\n				paterno 	 	= \'PERALTA\',\r\n				materno 		= \'MORENO\',\r\n				sexo 		 	= \'F\',\r\n				puesto 		 	= \'SUDIRECTORA DE ALMACÉN\',\r\n				tel_oficina     = \'2125643\',\r\n				tel_movil		= \'125464154\',\r\n				tel_personal 	= \'\',\r\n				email_personal 	= \'email@yo.nic\',\r\n				cumpleanios_fec = \'0000-00-00\',\r\n				pago 		 	= \'0\'\r\n			WHERE \r\n				id_contacto 	= 7;', '', null, '2015-12-10 18:01:15', '6');
INSERT INTO `sis_logs` VALUES ('178', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'ANDRÉS\',\r\n				paterno 	 	= \'PÉREZ\',\r\n				materno 		= \'MORALES\',\r\n				sexo 		 	= \'M\',\r\n				puesto 		 	= \'GERENTE\',\r\n				tel_oficina     = \'245456465\',\r\n				tel_movil		= \'4123456498\',\r\n				tel_personal 	= \'15648949\',\r\n				email_personal 	= \'personal@personal.comk\',\r\n				cumpleanios_fec = \'2015-12-07\',\r\n				pago 		 	= \'0\'\r\n			WHERE \r\n				id_contacto 	= 8;', '', null, '2015-12-10 18:01:53', '6');
INSERT INTO `sis_logs` VALUES ('179', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'ALBERTO\',\r\n				paterno 	 	= \'GUTIERREZ\',\r\n				materno 		= \'\',\r\n				sexo 		 	= \'M\',\r\n				puesto 		 	= \'DUEÑO\',\r\n				tel_oficina     = \'524456456\',\r\n				tel_movil		= \'115464486\',\r\n				tel_personal 	= \'4546513\',\r\n				email_personal 	= \'egut534@yah.mx\',\r\n				cumpleanios_fec = \'2015-12-01\',\r\n				pago 		 	= \'0\'\r\n			WHERE \r\n				id_contacto 	= 14;', '', null, '2015-12-10 18:02:39', '6');
INSERT INTO `sis_logs` VALUES ('180', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'AUTOMOVILES FAST\',\r\n				razon_social 	 = \'AUTOFAST CV\',\r\n				rfc 		 	 = \'154987654845\',\r\n				id_pais 		 = \'1\',\r\n				id_entidad 		 = \'1\',\r\n				id_municipio     = \'4\',\r\n				direccion		 = \'av prospecto\',\r\n				colonia		 	 = \'HEROES\',\r\n				telefono 		 = \'44444444\',\r\n				id_sector 		 = \'7\',\r\n				id_zona 		 = \'1\',\r\n				tamanio 		 = \'MEDIANA\',\r\n				sitioweb 		 = \'prospecto.com\'\r\n			WHERE\r\n				id_cliente  	= \'12999\';', '', null, '2015-12-10 18:05:04', '6');
INSERT INTO `sis_logs` VALUES ('181', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'LIBRERIAS SOTANO\',\r\n				razon_social 	 = \'SONTANO SA DE CV\',\r\n				rfc 		 	 = \'1234567890123\',\r\n				id_pais 		 = \'1\',\r\n				id_entidad 		 = \'3\',\r\n				id_municipio     = \'19\',\r\n				direccion		 = \'direccion\',\r\n				colonia		 	 = \'COLONIA\',\r\n				telefono 		 = \'telefono\',\r\n				id_sector 		 = \'6\',\r\n				id_zona 		 = \'1\',\r\n				tamanio 		 = \'MEDIANA\',\r\n				sitioweb 		 = \'sitio\'\r\n			WHERE\r\n				id_cliente  	= \'12996\';', '', null, '2015-12-10 18:06:44', '6');
INSERT INTO `sis_logs` VALUES ('182', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'LIBRERIAS SOTANO\',\r\n				razon_social 	 = \'SONTANO SA DE CV\',\r\n				rfc 		 	 = \'1234567890123\',\r\n				id_pais 		 = \'1\',\r\n				id_entidad 		 = \'3\',\r\n				id_municipio     = \'19\',\r\n				direccion		 = \'direccion\',\r\n				colonia		 	 = \'COLONIA\',\r\n				telefono 		 = \'telefono\',\r\n				id_sector 		 = \'9\',\r\n				id_zona 		 = \'1\',\r\n				tamanio 		 = \'MEDIANA\',\r\n				sitioweb 		 = \'sitio\'\r\n			WHERE\r\n				id_cliente  	= \'12996\';', '', null, '2015-12-10 18:06:53', '6');
INSERT INTO `sis_logs` VALUES ('183', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'SUPER TECH\',\r\n				razon_social 	 = \'SUPER TECH CV DE LR\',\r\n				rfc 		 	 = \'231545678456\',\r\n				id_pais 		 = \'1\',\r\n				id_entidad 		 = \'3\',\r\n				id_municipio     = \'21\',\r\n				direccion		 = \'MORAS 3454\',\r\n				colonia		 	 = \'OTRA BANDA\',\r\n				telefono 		 = \'55555555\',\r\n				id_sector 		 = \'8\',\r\n				id_zona 		 = \'1\',\r\n				tamanio 		 = \'PYME\',\r\n				sitioweb 		 = \'sitio.web\'\r\n			WHERE\r\n				id_cliente  	= \'12997\';', '', null, '2015-12-10 18:07:39', '6');
INSERT INTO `sis_logs` VALUES ('184', '\r\n				tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE \r\n				tbl_clientes\r\n			SET \r\n				nombre_comercial = \'SEGOB\',\r\n				razon_social 	 = \'SECRETARÍA DE GOBERNACIÓN\',\r\n				rfc 		 	 = \'SEG030402JFG5\',\r\n				id_pais 		 = \'1\',\r\n				id_entidad 		 = \'9\',\r\n				id_municipio     = \'270\',\r\n				direccion		 = \'AV LOS ALAMOS 8267634\',\r\n				colonia		 	 = \'\',\r\n				telefono 		 = \'55464615\',\r\n				id_sector 		 = \'1\',\r\n				id_zona 		 = \'3\',\r\n				tamanio 		 = \'GRANDE\',\r\n				sitioweb 		 = \'\'\r\n			WHERE\r\n				id_cliente  	= \'13000\';', '', null, '2015-12-10 18:10:50', '6');
INSERT INTO `sis_logs` VALUES ('185', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'ROBERTO\',\r\n				paterno 	 	= \'DE LA O\',\r\n				materno 		= \'MARTÍNEZ\',\r\n				sexo 		 	= \'M\',\r\n				puesto 		 	= \'FACTURACION\',\r\n				tel_oficina     = \'55669988774\',\r\n				tel_movil		= \'347654352\',\r\n				tel_personal 	= \'56543453\',\r\n				email_personal 	= \'mail@personal.mx\',\r\n				cumpleanios_fec = \'1985-01-06\',\r\n				pago 		 	= \'1\'\r\n			WHERE \r\n				id_contacto 	= 2;', '', null, '2015-12-10 18:12:41', '2');
INSERT INTO `sis_logs` VALUES ('186', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'IGNACIO\',\r\n				paterno 	 	= \'MENDOZA\',\r\n				materno 		= \'OCAMPO\',\r\n				sexo 		 	= \'M\',\r\n				puesto 		 	= \'FACTURACION\',\r\n				tel_oficina     = \'55669988447\',\r\n				tel_movil		= \'044558796954235\',\r\n				tel_personal 	= \'0445521369874\',\r\n				email_personal 	= \'mail@personal.mx\',\r\n				cumpleanios_fec = \'1956-06-06\',\r\n				pago 		 	= \'1\'\r\n			WHERE \r\n				id_contacto 	= 1;', '', null, '2015-12-10 18:13:04', '2');
INSERT INTO `sis_logs` VALUES ('187', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET \r\n				nombres 		= \'GABRIEL\',\r\n				paterno 	 	= \'DÍAZ\',\r\n				materno 		= \'HERNÁNDEZ\',\r\n				sexo 		 	= \'M\',\r\n				puesto 		 	= \'SUBDIRECTOR RH\',\r\n				tel_oficina     = \'568657867876\',\r\n				tel_movil		= \'474345453\',\r\n				tel_personal 	= \'654645 54\',\r\n				email_personal 	= \'mail@personal.mx\',\r\n				cumpleanios_fec = \'1978-09-25\',\r\n				pago 		 	= \'0\'\r\n			WHERE \r\n				id_contacto 	= 3;', '', null, '2015-12-10 18:13:50', '2');
INSERT INTO `sis_logs` VALUES ('188', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'0\'\r\n			WHERE id_personal 	= \'3\';', '', null, '2015-12-11 13:23:51', '2');
INSERT INTO `sis_logs` VALUES ('189', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET id_supervisor 		= \'10\'\r\n			WHERE id_personal 	= \'3\';', '', null, '2015-12-11 13:23:54', '2');
INSERT INTO `sis_logs` VALUES ('190', 'cat_servicios\r\n			set', '0', 'UPDATE', 'UPDATE cat_servicios\r\n			SET \r\n				servicio 		= \'ADMINISTRACIÓN DE PERSONAL 2\',\r\n				servicio_cve 	= \'ADMIN-PER 2\',\r\n				descripcion 	= \'ADMINISTRACIÓN DE PERSONAL 2\'\r\n			WHERE \r\n				id_servicio 	= 1;', '', null, '2015-12-14 13:20:56', '2');
INSERT INTO `sis_logs` VALUES ('191', 'cat_servicios\r\n			set', '0', 'UPDATE', 'UPDATE cat_servicios\r\n			SET \r\n				servicio 		= \'ADMINISTRACIÓN DE PERSONAL\',\r\n				servicio_cve 	= \'ADMIN-PER\',\r\n				descripcion 	= \'ADMINISTRACIÓN DE PERSONAL\'\r\n			WHERE \r\n				id_servicio 	= 1;', '', null, '2015-12-14 13:21:10', '2');
INSERT INTO `sis_logs` VALUES ('192', 'cat_servicios\r\n			set', '0', 'UPDATE', 'UPDATE cat_servicios\r\n			SET \r\n				servicio 		= \'RECLUTAMIENTO Y SELECCIÓN\',\r\n				servicio_cve 	= \'REC-SELEC\',\r\n				descripcion 	= \'RECLUTAMIENTO Y SELECCIÓN DE PERSONAL\'\r\n			WHERE \r\n				id_servicio 	= 3;', '', null, '2015-12-14 13:22:21', '2');
INSERT INTO `sis_logs` VALUES ('193', 'cat_zonas\r\n			set', '0', 'UPDATE', 'UPDATE cat_zonas\r\n			SET \r\n				zona 	= \'SUR A\',\r\n				tipo 	= \'ZONA B\'\r\n			WHERE \r\n				id_zona = 3;', '', null, '2015-12-14 16:25:57', '2');
INSERT INTO `sis_logs` VALUES ('194', 'cat_zonas\r\n			set', '0', 'UPDATE', 'UPDATE cat_zonas\r\n			SET \r\n				zona 	= \'SUR A\',\r\n				tipo 	= \'2\'\r\n			WHERE \r\n				id_zona = 3;', '', null, '2015-12-14 16:45:25', '2');
INSERT INTO `sis_logs` VALUES ('195', 'cat_zonas\r\n			set', '0', 'UPDATE', 'UPDATE cat_zonas\r\n			SET \r\n				zona 	= \'SUR A\',\r\n				tipo 	= cast(tipo as char(2))\r\n			WHERE \r\n				id_zona = 3;', '', null, '2015-12-14 16:53:46', '2');
INSERT INTO `sis_logs` VALUES ('196', 'cat_zonas\r\n			set', '0', 'UPDATE', 'UPDATE cat_zonas\r\n			SET \r\n				zona 	= \'SUR A\',\r\n				tipo 	= \'ZONA\'\r\n			WHERE \r\n				id_zona = 3;', '', null, '2015-12-14 17:00:09', '2');
INSERT INTO `sis_logs` VALUES ('197', 'cat_zonas\r\n			set', '0', 'UPDATE', 'UPDATE cat_zonas\r\n			SET \r\n				zona 	= \'SUR A\',\r\n				tipo 	= \'MICROZONA\'\r\n			WHERE \r\n				id_zona = 3;', '', null, '2015-12-14 17:00:17', '2');
INSERT INTO `sis_logs` VALUES ('198', 'cat_zonas\r\n			set', '0', 'UPDATE', 'UPDATE cat_zonas\r\n			SET \r\n				zona 	= \'ZONA 1\',\r\n				tipo 	= \'ZONA\'\r\n			WHERE \r\n				id_zona = 1;', '', null, '2015-12-14 17:00:24', '2');
INSERT INTO `sis_logs` VALUES ('199', 'cat_zonas\r\n			set', '0', 'UPDATE', 'UPDATE cat_zonas\r\n			SET \r\n				zona 	= \'ZONA 12\',\r\n				tipo 	= \'ZONA\'\r\n			WHERE \r\n				id_zona = 1;', '', null, '2015-12-14 17:33:41', '2');
INSERT INTO `sis_logs` VALUES ('200', 'cat_zonas\r\n			set', '0', 'UPDATE', 'UPDATE cat_zonas\r\n			SET \r\n				zona 	= \'ZONA 1\',\r\n				tipo 	= \'ZONA\'\r\n			WHERE \r\n				id_zona = 1;', '', null, '2015-12-14 17:33:49', '2');
INSERT INTO `sis_logs` VALUES ('201', 'cat_zonas\r\n			set', '0', 'UPDATE', 'UPDATE cat_zonas\r\n			SET \r\n				zona 		= \'TEST\',\r\n				tipo 		= \'MICROZONA\',\r\n				timestamp 	= \'2015-12-14 17:43:53\';', '', null, '2015-12-14 17:43:53', '2');
INSERT INTO `sis_logs` VALUES ('202', 'cat_zonas\r\n			set', '0', 'UPDATE', 'UPDATE cat_zonas\r\n			SET \r\n				zona 	= \'ZONA 1\',\r\n				tipo 	= \'MICROZONA\'\r\n			WHERE \r\n				id_zona = 1;', '', null, '2015-12-14 17:44:19', '2');
INSERT INTO `sis_logs` VALUES ('203', 'cat_zonas\r\n			set', '0', 'UPDATE', 'UPDATE cat_zonas\r\n			SET \r\n				zona 	= \'ZONA 2\',\r\n				tipo 	= \'MICROZONA\'\r\n			WHERE \r\n				id_zona = 2;', '', null, '2015-12-14 17:44:31', '2');
INSERT INTO `sis_logs` VALUES ('204', 'cat_zonas\r\n			set', '0', 'UPDATE', 'UPDATE cat_zonas\r\n			SET \r\n				zona 	= \'ZONA 3\',\r\n				tipo 	= \'MICROZONA\'\r\n			WHERE \r\n				id_zona = 3;', '', null, '2015-12-14 17:44:40', '2');
INSERT INTO `sis_logs` VALUES ('205', 'cat_zonas\r\n			set', '4', 'INSERT', 'INSERT INTO cat_zonas\r\n			SET \r\n				zona 		= \'ZONA\',\r\n				tipo 		= \'ZONA\',\r\n				timestamp 	= \'2015-12-14 17:45:04\';', '', null, '2015-12-14 17:45:04', '2');
INSERT INTO `sis_logs` VALUES ('206', 'cat_zonas\r\n			set', '5', 'INSERT', 'INSERT INTO cat_zonas\r\n			SET \r\n				zona 		= \'ZONA 5\',\r\n				tipo 		= \'MICROZONA\',\r\n				timestamp 	= \'2015-12-14 17:45:54\';', '', null, '2015-12-14 17:45:54', '2');
INSERT INTO `sis_logs` VALUES ('207', 'cat_sectores\r\n			set', '0', 'UPDATE', 'UPDATE cat_sectores\r\n			SET \r\n				sector 	= \'AUTOMOTRIZ 7\',\r\n				clave 	= \'AUTO 7\'\r\n			WHERE \r\n				id_sector = 7;', '', null, '2015-12-15 10:23:10', '2');
INSERT INTO `sis_logs` VALUES ('208', 'cat_sectores\r\n			set', '0', 'UPDATE', 'UPDATE cat_sectores\r\n			SET \r\n				sector 	= \'AUTOMOTRIZ\',\r\n				clave 	= \'AUTO\'\r\n			WHERE \r\n				id_sector = 7;', '', null, '2015-12-15 10:23:19', '2');
INSERT INTO `sis_logs` VALUES ('209', 'cat_sectores\r\n			set', '0', 'UPDATE', 'UPDATE cat_sectores\r\n			SET \r\n				sector 	= \'FARMACÉUTICO 2\',\r\n				clave 	= \'FARM\'\r\n			WHERE \r\n				id_sector = 2;', '', null, '2015-12-15 10:23:26', '2');
INSERT INTO `sis_logs` VALUES ('210', 'cat_sectores\r\n			set', '0', 'UPDATE', 'UPDATE cat_sectores\r\n			SET \r\n				sector 	= \'FARMACÉUTICO\',\r\n				clave 	= \'FARM 2\'\r\n			WHERE \r\n				id_sector = 2;', '', null, '2015-12-15 10:23:35', '2');
INSERT INTO `sis_logs` VALUES ('211', 'cat_sectores\r\n			set', '0', 'UPDATE', 'UPDATE cat_sectores\r\n			SET \r\n				sector 	= \'FARMACÉUTICO\',\r\n				clave 	= \'FARM\'\r\n			WHERE \r\n				id_sector = 2;', '', null, '2015-12-15 10:23:42', '2');
INSERT INTO `sis_logs` VALUES ('212', 'cat_zonas\r\n			set', '6', 'INSERT', 'INSERT INTO cat_zonas\r\n			SET \r\n				zona 		= \'\',\r\n				tipo 		= \'MICROZONA\',\r\n				timestamp 	= \'2015-12-15 10:53:51\';', '', null, '2015-12-15 10:53:51', '2');
INSERT INTO `sis_logs` VALUES ('213', 'cat_sectores\r\n			set', '15', 'INSERT', 'INSERT INTO cat_sectores\r\n			SET \r\n				sector 		= \'NUEVO SECTOR\',\r\n				clave 		= \'CLAVE\',\r\n				timestamp 	= \'2015-12-15 10:54:57\';', '', null, '2015-12-15 10:54:57', '2');
INSERT INTO `sis_logs` VALUES ('214', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'SUSPENDIDO\'\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-16 18:05:07', '2');
INSERT INTO `sis_logs` VALUES ('215', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'CLIENTE\'\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-16 18:05:08', '2');
INSERT INTO `sis_logs` VALUES ('216', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET activo = 1\r\n			WHERE id_contacto = 1;', '', null, '2015-12-16 18:05:54', '2');
INSERT INTO `sis_logs` VALUES ('217', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET activo = 0\r\n			WHERE id_contacto = 1;', '', null, '2015-12-16 18:05:55', '2');
INSERT INTO `sis_logs` VALUES ('218', 'sis_personal\r\n			set', '0', 'UPDATE', 'UPDATE sis_personal\r\n			SET \r\n				nombre 				= \'ADMINISTRADOR\',\r\n				paterno 	 		= \'PAE\',\r\n				materno 			= \'SISTEMA\',\r\n				email 		 		= \'oscar.maldonado@isolution.mx\',\r\n				puesto 		 		= \'ADMINISTRADOR\',\r\n				telefono_oficina    = \'3333333333\',\r\n				telefono_movil		= \'oscar.maldonado@isolution.mx\',\r\n				id_pais 			=  1,\r\n				id_entidad 			=  4,\r\n				id_municipio 		=  23,\r\n				id_zona 			=  1\r\n			WHERE \r\n				id_personal = 2;', '', null, '2015-12-16 18:06:04', '2');
INSERT INTO `sis_logs` VALUES ('219', 'tbl_operaciones', '10', 'INSERT', 'INSERT INTO tbl_operaciones SET \r\n				id_cliente			= \'12998\',\r\n				id_operacion_tipo	= \'1\',\r\n				fecha				= \'2015-12-09 18:06:57\',\r\n				hora				= \'18:06\',\r\n				detalle				= \'NUEVA VISITA\',\r\n				id_servicios		= \'4\',\r\n				id_contactos		= \'\',\r\n				id_personal			= \'2\',\r\n				id_usuario			= \'2\',\r\n				comentarios			= \'\',\r\n				timestamp 		 	= \'2015-12-16 18:06:57\'\r\n			;', '', null, '2015-12-16 18:06:57', '2');
INSERT INTO `sis_logs` VALUES ('220', 'sis_perfiles\r\n			set', '72', 'INSERT', 'INSERT INTO sis_perfiles\r\n			SET \r\n				id_grupo 		= 1,\r\n				perfil 			= \'PRUEBA\',\r\n				visible 		= \'2,3,4,7\',\r\n				visible_submenu = \'1,2,3,4,5,6,14,15,16,17,18,19,20,21,22\',\r\n				timestamp 		= \'2015-12-17 12:49:19\';', '', null, '2015-12-17 12:49:19', '2');
INSERT INTO `sis_logs` VALUES ('221', 'sis_perfiles\r\n			set', '5', 'INSERT', 'INSERT INTO sis_perfiles\r\n			SET \r\n				id_grupo 		= 2,\r\n				perfil 			= \'\',\r\n				visible 		= \'2,3,4\',\r\n				visible_submenu = \'1,4,5,14,17\',\r\n				timestamp 		= \'2015-12-17 17:03:53\';', '', null, '2015-12-17 17:03:53', '2');
INSERT INTO `sis_logs` VALUES ('222', 'sis_perfiles\r\n			set', '0', 'UPDATE', 'UPDATE sis_perfiles\r\n			SET \r\n				id_grupo 			= 2,\r\n				perfil 				= \'PRUEBA 2\',\r\n				visible 			= \'2,3,4\',\r\n				visible_submenu 	= \'1,4,5,14,17\',\r\n				invisible 			= \'\',\r\n				invisible_submenu 	= \'\'\r\n			WHERE \r\n				id_perfil = 5;', '', null, '2015-12-17 17:56:03', '2');
INSERT INTO `sis_logs` VALUES ('223', 'sis_perfiles\r\n			set', '0', 'UPDATE', 'UPDATE sis_perfiles\r\n			SET \r\n				id_grupo 			= 2,\r\n				perfil 				= \'PRUEBA 2\',\r\n				visible 			= \'2,3,4,7\',\r\n				visible_submenu 	= \'1,4,5,14,17,18,20,22\',\r\n				invisible 			= \'\',\r\n				invisible_submenu 	= \'\'\r\n			WHERE \r\n				id_perfil = 5;', '', null, '2015-12-17 17:56:26', '2');
INSERT INTO `sis_logs` VALUES ('224', 'sis_perfiles\r\n			set', '0', 'UPDATE', 'UPDATE sis_perfiles\r\n			SET \r\n				id_grupo 			= 3,\r\n				perfil 				= \'EJECUTIVOS\',\r\n				visible 			= \'1,2,3,5,6\',\r\n				visible_submenu 	= \'1,2,3,4,5,6,10,9,11,12,13,23,24,25\',\r\n				invisible 			= \'\',\r\n				invisible_submenu 	= \'\'\r\n			WHERE \r\n				id_perfil = 3;', '', null, '2015-12-18 09:39:16', '2');
INSERT INTO `sis_logs` VALUES ('225', 'sis_perfiles\r\n			set', '0', 'UPDATE', 'UPDATE sis_perfiles\r\n			SET \r\n				id_grupo 			= 2,\r\n				perfil 				= \'SUPERVISORES\',\r\n				visible 			= \'1,2,3,4,5,6\',\r\n				visible_submenu 	= \'1,2,3,4,5,6,14,15,16,10,9,11,12,13,23,24,25\',\r\n				invisible 			= \'\',\r\n				invisible_submenu 	= \'\'\r\n			WHERE \r\n				id_perfil = 2;', '', null, '2015-12-18 09:40:29', '2');
INSERT INTO `sis_logs` VALUES ('226', 'sis_perfiles\r\n			set', '0', 'UPDATE', 'UPDATE sis_perfiles\r\n			SET \r\n				id_grupo 			= 3,\r\n				perfil 				= \'EJECUTIVOS\',\r\n				visible 			= \'1\',\r\n				visible_submenu 	= \'\',\r\n				invisible 			= \'\',\r\n				invisible_submenu 	= \'\'\r\n			WHERE \r\n				id_perfil = 3;', '', null, '2015-12-18 09:42:38', '2');
INSERT INTO `sis_logs` VALUES ('227', 'sis_perfiles\r\n			set', '0', 'UPDATE', 'UPDATE sis_perfiles\r\n			SET \r\n				id_grupo 			= 3,\r\n				perfil 				= \'EJECUTIVOS\',\r\n				visible 			= \'\',\r\n				visible_submenu 	= \'\',\r\n				invisible 			= \'\',\r\n				invisible_submenu 	= \'\'\r\n			WHERE \r\n				id_perfil = 3;', '', null, '2015-12-18 09:43:36', '2');
INSERT INTO `sis_logs` VALUES ('228', 'sis_perfiles\r\n			set', '0', 'UPDATE', 'UPDATE sis_perfiles\r\n			SET \r\n				id_grupo 			= 3,\r\n				perfil 				= \'EJECUTIVOS\',\r\n				visible 			= \'1,2,3,5,6\',\r\n				visible_submenu 	= \'1,2,3,4,5,6,10,9,11,12,13,23,24,25\',\r\n				invisible 			= \'\',\r\n				invisible_submenu 	= \'\'\r\n			WHERE \r\n				id_perfil = 3;', '', null, '2015-12-18 09:45:46', '3');
INSERT INTO `sis_logs` VALUES ('229', 'tbl_operaciones', '11', 'INSERT', 'INSERT INTO tbl_operaciones SET \r\n				id_cliente			= \'12994\',\r\n				id_operacion_tipo	= \'3\',\r\n				fecha				= \'2015-08-01 14:46:28\',\r\n				hora				= \'14:46\',\r\n				detalle				= \'dfsdfsd\',\r\n				id_servicios		= \'4\',\r\n				id_contactos		= \'3\',\r\n				id_personal			= \'2\',\r\n				id_usuario			= \'2\',\r\n				comentarios			= \'sdfsdfsdfsdfsd\',\r\n				timestamp 		 	= \'2015-12-18 14:46:28\'\r\n			;', '', null, '2015-12-18 14:46:28', '2');
INSERT INTO `sis_logs` VALUES ('230', 'tbl_operaciones', '12', 'INSERT', 'INSERT INTO tbl_operaciones SET \r\n				id_cliente			= \'12998\',\r\n				id_operacion_tipo	= \'4\',\r\n				fecha				= \'2015-09-16 14:46:49\',\r\n				hora				= \'14:46\',\r\n				detalle				= \'fsdfsdfsdf\',\r\n				id_servicios		= \'2\',\r\n				id_contactos		= \'\',\r\n				id_personal			= \'2\',\r\n				id_usuario			= \'2\',\r\n				comentarios			= \'fsdfsdfsdfs\',\r\n				timestamp 		 	= \'2015-12-18 14:46:49\'\r\n			;', '', null, '2015-12-18 14:46:49', '2');
INSERT INTO `sis_logs` VALUES ('231', 'tbl_operaciones', '13', 'INSERT', 'INSERT INTO tbl_operaciones SET \r\n				id_cliente			= \'12994\',\r\n				id_operacion_tipo	= \'2\',\r\n				fecha				= \'2015-10-16 14:47:21\',\r\n				hora				= \'14:47\',\r\n				detalle				= \'werewrwer\',\r\n				id_servicios		= \'5\',\r\n				id_contactos		= \'4\',\r\n				id_personal			= \'2\',\r\n				id_usuario			= \'2\',\r\n				comentarios			= \'rwerwer\',\r\n				timestamp 		 	= \'2015-12-18 14:47:21\'\r\n			;', '', null, '2015-12-18 14:47:21', '2');
INSERT INTO `sis_logs` VALUES ('232', 'sis_perfiles\r\n			set', '6', 'INSERT', 'INSERT INTO sis_perfiles\r\n			SET \r\n				id_grupo 		= 2,\r\n				perfil 			= \'PERFIL NUEVO\',\r\n				visible 		= \'1,2,4,7\',\r\n				visible_submenu = \'1,2,3,4,14,15,16,17,18,19,20,21,22\',\r\n				timestamp 		= \'2015-12-22 09:35:52\';', '', null, '2015-12-22 09:35:52', '2');
INSERT INTO `sis_logs` VALUES ('233', 'sis_perfiles\r\n			set', '0', 'UPDATE', 'UPDATE sis_perfiles\r\n			SET \r\n				id_grupo 			= 2,\r\n				perfil 				= \'PERFIL NUEVO\',\r\n				visible 			= \'1,2,4,7\',\r\n				visible_submenu 	= \'1,2,3,4,14,15,16,17,18,19,20,21,22\',\r\n				invisible 			= \'\',\r\n				invisible_submenu 	= \'\'\r\n			WHERE \r\n				id_perfil = 6;', '', null, '2015-12-22 09:36:11', '2');
INSERT INTO `sis_logs` VALUES ('234', 'sis_usuarios\r\n			set', '0', 'UPDATE', 'UPDATE sis_usuarios\r\n			SET \r\n				usuario 		= \'EJECUTIVO4\',\r\n				id_perfil 		= \'3\',\r\n				visible 		= \'1,2\',\r\n				visible_submenu = \'1,2,3\'\r\n			WHERE \r\n				id_usuario 	= 6;', '', null, '2015-12-22 09:58:52', '2');
INSERT INTO `sis_logs` VALUES ('235', 'sis_usuarios\r\n			set', '0', 'UPDATE', 'UPDATE sis_usuarios\r\n			SET \r\n				usuario 		= \'EJECUTIVO4\',\r\n				id_perfil 		= \'3\',\r\n				visible 		= \'1,2,6\',\r\n				visible_submenu = \'1,2,3,23,24\'\r\n			WHERE \r\n				id_usuario 	= 6;', '', null, '2015-12-22 09:59:31', '2');
INSERT INTO `sis_logs` VALUES ('236', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'0\'\r\n			WHERE id_contacto 	= \'4\';', '', null, '2015-12-22 12:43:32', '2');
INSERT INTO `sis_logs` VALUES ('237', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'4\';', '', null, '2015-12-22 12:43:35', '2');
INSERT INTO `sis_logs` VALUES ('238', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'SUSPENDIDO\'\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-22 12:43:49', '2');
INSERT INTO `sis_logs` VALUES ('239', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET estatus = \'CLIENTE\'\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-22 12:43:53', '2');
INSERT INTO `sis_logs` VALUES ('240', 'tbl_clientes\r\n			set', '0', 'UPDATE', 'UPDATE tbl_clientes\r\n			SET activo = 0\r\n			WHERE id_cliente = 12994;', '', null, '2015-12-22 12:44:09', '2');
INSERT INTO `sis_logs` VALUES ('241', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'0\'\r\n			WHERE id_contacto 	= \'1\';', '', null, '2015-12-22 12:50:01', '2');
INSERT INTO `sis_logs` VALUES ('242', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET id_cliente 		= \'12994\'\r\n			WHERE id_contacto 	= \'1\';', '', null, '2015-12-22 12:50:04', '2');
INSERT INTO `sis_logs` VALUES ('243', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET activo = 0\r\n			WHERE id_contacto = 2;', '', null, '2015-12-22 12:50:19', '2');
INSERT INTO `sis_logs` VALUES ('244', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET activo = 1\r\n			WHERE id_contacto = 2;', '', null, '2015-12-22 12:50:21', '2');
INSERT INTO `sis_logs` VALUES ('245', 'tbl_contactos\r\n			set', '0', 'UPDATE', 'UPDATE tbl_contactos\r\n			SET activo = 1\r\n			WHERE id_contacto = 1;', '', null, '2015-12-22 12:50:27', '2');
INSERT INTO `sis_logs` VALUES ('246', 'tbl_operaciones', '52', 'INSERT', 'INSERT INTO tbl_operaciones SET \r\n				id_cliente			= \'12994\',\r\n				id_operacion_tipo	= \'1\',\r\n				fecha				= \'\',\r\n				hora				= \'\',\r\n				detalle				= \'\',\r\n				id_servicios		= \'\',\r\n				id_contactos		= \'\',\r\n				id_personal			= \'2\',\r\n				id_usuario			= \'\',\r\n				comentarios			= \'\',\r\n				timestamp 		 	= \'2015-12-22 13:00:00\'\r\n			;', '', null, '2015-12-22 13:00:00', '2');
INSERT INTO `sis_logs` VALUES ('247', 'tbl_operaciones', '53', 'INSERT', 'INSERT INTO tbl_operaciones SET \r\n				id_cliente			= \'12998\',\r\n				id_operacion_tipo	= \'2\',\r\n				fecha				= \'2015-03-17 13:00:55\',\r\n				hora				= \'13:00\',\r\n				detalle				= \'ACERCAMIENTO\',\r\n				id_servicios		= \'1\',\r\n				id_contactos		= \'\',\r\n				id_personal			= \'2\',\r\n				id_usuario			= \'\',\r\n				comentarios			= \'\',\r\n				timestamp 		 	= \'2015-12-22 13:00:55\'\r\n			;', '', null, '2015-12-22 13:00:55', '2');
INSERT INTO `sis_logs` VALUES ('248', 'cat_categorias\r\n			set', '17', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'\' ;', '', null, '2016-01-05 13:36:14', '2');
INSERT INTO `sis_logs` VALUES ('249', 'cat_categorias\r\n			set', '18', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'\' ;', '', null, '2016-01-05 13:39:07', '2');
INSERT INTO `sis_logs` VALUES ('250', 'cat_categorias\r\n			set', '19', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'\' ;', '', null, '2016-01-05 15:35:23', '2');
INSERT INTO `sis_logs` VALUES ('251', 'cat_categorias\r\n			set', '20', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'NUEVA\' ;', '', null, '2016-01-05 15:36:39', '2');
INSERT INTO `sis_logs` VALUES ('252', 'cat_categorias\r\n			set', '35', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'NUEVA CATEGORíA CON Ñ /\' ;', '', null, '2016-01-05 15:54:26', '2');
INSERT INTO `sis_logs` VALUES ('253', 'cat_categorias\r\n			set', '36', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'OTRA MáS\' ;', '', null, '2016-01-05 15:56:44', '2');
INSERT INTO `sis_logs` VALUES ('254', 'cat_categorias\r\n			set', '37', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'CATEGORIA FINAL\' ;', '', null, '2016-01-05 15:57:39', '2');
INSERT INTO `sis_logs` VALUES ('255', 'cat_categorias\r\n			set', '38', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'TYUYJFGHDFGDS\' ;', '', null, '2016-01-05 15:58:29', '2');
INSERT INTO `sis_logs` VALUES ('256', 'cat_categorias\r\n			set', '39', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'OLUYJHRTFGED\' ;', '', null, '2016-01-05 15:59:05', '2');
INSERT INTO `sis_logs` VALUES ('257', 'cat_categorias\r\n			set', '40', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'REFGDVC\' ;', '', null, '2016-01-05 15:59:39', '2');
INSERT INTO `sis_logs` VALUES ('258', 'cat_categorias\r\n			set', '41', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'8Y9HUIJKRFD\' ;', '', null, '2016-01-05 16:00:17', '2');
INSERT INTO `sis_logs` VALUES ('259', 'cat_categorias\r\n			set', '43', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'FGHFGHFGHFGHFH5ERDGFBV4ERTFG\' ;', '', null, '2016-01-05 16:00:57', '2');
INSERT INTO `sis_logs` VALUES ('260', 'cat_categorias\r\n			set', '44', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'RTFGVB4ER\' ;', '', null, '2016-01-05 16:01:29', '2');
INSERT INTO `sis_logs` VALUES ('261', 'cat_categorias\r\n			set', '45', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'FS4ERF\' ;', '', null, '2016-01-05 16:01:52', '2');
INSERT INTO `sis_logs` VALUES ('262', 'cat_categorias\r\n			set', '46', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'7TYGHBV\' ;', '', null, '2016-01-05 16:02:06', '2');
INSERT INTO `sis_logs` VALUES ('263', 'cat_categorias\r\n			set', '47', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'REDFCV\' ;', '', null, '2016-01-05 16:02:21', '2');
INSERT INTO `sis_logs` VALUES ('264', 'cat_categorias\r\n			set', '48', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'KDFNGJDNF\' ;', '', null, '2016-01-05 16:02:34', '2');
INSERT INTO `sis_logs` VALUES ('265', 'cat_categorias\r\n			set', '49', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'FSDFS4RE423WERDF\' ;', '', null, '2016-01-05 16:03:20', '2');
INSERT INTO `sis_logs` VALUES ('266', 'cat_categorias\r\n			set', '50', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'654YRTHFGB\' ;', '', null, '2016-01-05 16:03:59', '2');
INSERT INTO `sis_logs` VALUES ('267', 'cat_categorias\r\n			set', '51', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'F67UTHFG\' ;', '', null, '2016-01-05 16:04:58', '2');
INSERT INTO `sis_logs` VALUES ('268', 'cat_categorias\r\n			set', '52', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'DFGDFGDFG6U7687UJYTGRF\' ;', '', null, '2016-01-05 16:05:15', '2');
INSERT INTO `sis_logs` VALUES ('269', 'cat_categorias\r\n			set', '53', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'98IUJTFG\' ;', '', null, '2016-01-05 16:05:30', '2');
INSERT INTO `sis_logs` VALUES ('270', 'cat_categorias\r\n			set', '54', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'\' ;', '', null, '2016-01-05 16:06:31', '2');
INSERT INTO `sis_logs` VALUES ('271', 'cat_categorias\r\n			set', '58', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'ñÑóéáíúü OSCAR\\\'S (2015) [SLOW] - MIX 123_1234\' ;', '', null, '2016-01-05 16:24:05', '2');
INSERT INTO `sis_logs` VALUES ('272', 'cat_categorias\r\n			set', '59', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'ñÑóé\\\"\\\"\\\'\\\'áíúü OSCAR\\\'S (2015) [SLOW] - MIX 123_1234\' ;', '', null, '2016-01-05 16:28:12', '2');
INSERT INTO `sis_logs` VALUES ('273', 'cat_categorias\r\n			set', '60', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'ñ()/(\\\\\\\"#3Ñóé\\\\\\\"\\\\\\\"\\\\\\\'\\\\\\\'áíúü OSCAR\\\\\\\'S (2015) [SLOW] - MIX 123_1234\' ;', '', null, '2016-01-05 16:39:55', '2');
INSERT INTO `sis_logs` VALUES ('274', 'cat_categorias\r\n			set', '61', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'ñ%Ñóé\\\"\\\"\\\'\\\'áí)(/&/()\\\\\\\\\\\\úü OSCAR\\\'S (2015) [SLOW] - MIX 123_1234\' ;', '', null, '2016-01-05 16:41:09', '2');
INSERT INTO `sis_logs` VALUES ('275', 'cat_categorias\r\n			set', '62', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'ASDFV\' ;', '', null, '2016-01-05 16:42:27', '2');
INSERT INTO `sis_logs` VALUES ('276', 'cat_categorias\r\n			set', '66', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'ñ()/(\\\\\\\"#3Ñóé\\\\\\\"\\\\\\\'\\\\\\\'áíúü OSCAR\\\\\\\'S (2015) [SLOW] -\' ;', '', null, '2016-01-05 16:43:25', '2');
INSERT INTO `sis_logs` VALUES ('277', 'cat_categorias\r\n			set', '17', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'AVIVAMIENTO\' ;', '', null, '2016-01-05 16:44:54', '2');
INSERT INTO `sis_logs` VALUES ('278', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'ALEGRÍAS\' \r\n			WHERE id_categoria=\'8\'\r\n			LIMIT 1;', '', null, '2016-01-05 18:54:59', '2');
INSERT INTO `sis_logs` VALUES ('279', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'ALEGRÍA\' \r\n			WHERE id_categoria=\'8\'\r\n			LIMIT 1;', '', null, '2016-01-05 18:55:31', '2');
INSERT INTO `sis_logs` VALUES ('280', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 10:00:42', '2');
INSERT INTO `sis_logs` VALUES ('281', 'cat_categorias\r\n			set', '18', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'FSDFSDFSDFSDFSDSDFSDFSDFS\' ;', '', null, '2016-01-06 10:00:54', '2');
INSERT INTO `sis_logs` VALUES ('282', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'NUEVO\' \r\n			WHERE id_categoria=\'18\'\r\n			LIMIT 1;', '', null, '2016-01-06 10:01:13', '2');
INSERT INTO `sis_logs` VALUES ('283', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'134\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:01:11', '2');
INSERT INTO `sis_logs` VALUES ('284', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:01:18', '2');
INSERT INTO `sis_logs` VALUES ('285', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'323\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:01:33', '2');
INSERT INTO `sis_logs` VALUES ('286', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'323F\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:02:08', '2');
INSERT INTO `sis_logs` VALUES ('287', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'323\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:05:41', '2');
INSERT INTO `sis_logs` VALUES ('288', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'323D\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:05:49', '2');
INSERT INTO `sis_logs` VALUES ('289', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'323\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:06:07', '2');
INSERT INTO `sis_logs` VALUES ('290', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'323E\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:07:04', '2');
INSERT INTO `sis_logs` VALUES ('291', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'123\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:07:40', '2');
INSERT INTO `sis_logs` VALUES ('292', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'1232\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:08:03', '2');
INSERT INTO `sis_logs` VALUES ('293', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'123\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:10:13', '2');
INSERT INTO `sis_logs` VALUES ('294', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'1232\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:11:09', '2');
INSERT INTO `sis_logs` VALUES ('295', 'cat_categorias\r\n			set', '19', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'123\' ;', '', null, '2016-01-06 12:11:16', '2');
INSERT INTO `sis_logs` VALUES ('296', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'\' \r\n			WHERE id_categoria=\'19\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:11:35', '2');
INSERT INTO `sis_logs` VALUES ('297', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'1\' \r\n			WHERE id_categoria=\'19\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:24:23', '2');
INSERT INTO `sis_logs` VALUES ('298', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'\' \r\n			WHERE id_categoria=\'19\'\r\n			LIMIT 1;', '', null, '2016-01-06 12:24:28', '2');
INSERT INTO `sis_logs` VALUES ('299', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'2\' \r\n			WHERE id_categoria=\'19\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:10:59', '2');
INSERT INTO `sis_logs` VALUES ('300', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'19\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:11:25', '2');
INSERT INTO `sis_logs` VALUES ('301', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:12:19', '2');
INSERT INTO `sis_logs` VALUES ('302', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'1\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:12:29', '2');
INSERT INTO `sis_logs` VALUES ('303', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'3\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:12:33', '2');
INSERT INTO `sis_logs` VALUES ('304', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'19\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:13:16', '2');
INSERT INTO `sis_logs` VALUES ('305', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:13:20', '2');
INSERT INTO `sis_logs` VALUES ('306', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'8\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:13:35', '2');
INSERT INTO `sis_logs` VALUES ('307', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'17\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:13:38', '2');
INSERT INTO `sis_logs` VALUES ('308', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'1\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:14:18', '2');
INSERT INTO `sis_logs` VALUES ('309', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'4\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:14:20', '2');
INSERT INTO `sis_logs` VALUES ('310', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'13\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:14:23', '2');
INSERT INTO `sis_logs` VALUES ('311', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'19\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:14:36', '2');
INSERT INTO `sis_logs` VALUES ('312', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'1\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:14:39', '2');
INSERT INTO `sis_logs` VALUES ('313', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'8\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:14:42', '2');
INSERT INTO `sis_logs` VALUES ('314', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'3\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:14:49', '2');
INSERT INTO `sis_logs` VALUES ('315', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'19\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:21:55', '2');
INSERT INTO `sis_logs` VALUES ('316', 'cat_categorias\r\n			set', '20', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'OTRO\' ;', '', null, '2016-01-06 13:22:10', '2');
INSERT INTO `sis_logs` VALUES ('317', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \' 1\' \r\n			WHERE id_categoria=\'20\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:22:28', '2');
INSERT INTO `sis_logs` VALUES ('318', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'12\' \r\n			WHERE id_categoria=\'20\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:23:18', '2');
INSERT INTO `sis_logs` VALUES ('319', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'1\' \r\n			WHERE id_categoria=\'20\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:27:23', '2');
INSERT INTO `sis_logs` VALUES ('320', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'1232R\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:27:27', '2');
INSERT INTO `sis_logs` VALUES ('321', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:27:41', '2');
INSERT INTO `sis_logs` VALUES ('322', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'20\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:28:17', '2');
INSERT INTO `sis_logs` VALUES ('323', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'17\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:28:20', '2');
INSERT INTO `sis_logs` VALUES ('324', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'13\' \r\n			WHERE id_categoria=\'20\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:42:40', '2');
INSERT INTO `sis_logs` VALUES ('325', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET activo = \'0\' \r\n			WHERE id_categoria=\'19\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:42:43', '2');
INSERT INTO `sis_logs` VALUES ('326', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'312\' \r\n			WHERE id_categoria=\'20\'\r\n			LIMIT 1;', '', null, '2016-01-06 13:42:59', '2');
INSERT INTO `sis_logs` VALUES ('327', 'cat_categorias\r\n			set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n			SET categoria = \'1232RU\' \r\n			WHERE id_categoria=\'2\'\r\n			LIMIT 1;', '', null, '2016-01-06 14:00:26', '2');
INSERT INTO `sis_logs` VALUES ('328', 'cat_ritmos\r\n			set', '5', 'INSERT', 'INSERT INTO cat_ritmos\r\n			SET ritmo = \'ALLEGRO\' ;', '', null, '2016-01-06 15:39:29', '2');
INSERT INTO `sis_logs` VALUES ('329', 'cat_ritmos\r\n				set', '0', 'UPDATE', 'UPDATE cat_ritmos\r\n				SET  ritmo=\'ALLEGROS\'\r\n				WHERE id_ritmo=\'5\'\r\n				LIMIT 1;', '', null, '2016-01-06 15:48:42', '2');
INSERT INTO `sis_logs` VALUES ('330', 'cat_ritmos\r\n				set', '0', 'UPDATE', 'UPDATE cat_ritmos\r\n				SET  ritmo=\'\'\r\n				WHERE id_ritmo=\'5\'\r\n				LIMIT 1;', '', null, '2016-01-06 15:49:00', '2');
INSERT INTO `sis_logs` VALUES ('331', 'cat_ritmos\r\n				set', '0', 'UPDATE', 'UPDATE cat_ritmos\r\n				SET  activo=\'0\'\r\n				WHERE id_ritmo=\'5\'\r\n				LIMIT 1;', '', null, '2016-01-06 15:49:57', '2');
INSERT INTO `sis_logs` VALUES ('332', 'cat_ritmos\r\n				set', '0', 'UPDATE', 'UPDATE cat_ritmos\r\n				SET  activo=\'0\'\r\n				WHERE id_ritmo=\'2\'\r\n				LIMIT 1;', '', null, '2016-01-06 15:50:05', '2');
INSERT INTO `sis_logs` VALUES ('333', 'cat_categorias\r\n				set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n				SET  categoria=\'F\'\r\n				WHERE id_categoria=\'19\'\r\n				LIMIT 1;', '', null, '2016-01-06 15:52:07', '2');
INSERT INTO `sis_logs` VALUES ('334', 'cat_categorias\r\n				set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n				SET  categoria=\'\'\r\n				WHERE id_categoria=\'19\'\r\n				LIMIT 1;', '', null, '2016-01-06 15:52:15', '2');
INSERT INTO `sis_logs` VALUES ('335', 'cat_categorias\r\n			set', '21', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'ZZZZZZZZZZZZZZZZZZZ\' ;', '', null, '2016-01-06 15:52:23', '2');
INSERT INTO `sis_logs` VALUES ('336', 'cat_categorias\r\n				set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n				SET  categoria=\'112233\'\r\n				WHERE id_categoria=\'21\'\r\n				LIMIT 1;', '', null, '2016-01-06 15:52:40', '2');
INSERT INTO `sis_logs` VALUES ('337', 'cat_categorias\r\n				set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n				SET  activo=\'0\'\r\n				WHERE id_categoria=\'21\'\r\n				LIMIT 1;', '', null, '2016-01-06 15:53:18', '2');
INSERT INTO `sis_logs` VALUES ('338', 'cat_compases\r\n			set', '11', 'INSERT', 'INSERT INTO cat_compases\r\n			SET compas = \'123/123\' ;', '', null, '2016-01-06 16:12:17', '2');
INSERT INTO `sis_logs` VALUES ('339', 'cat_compases\r\n				set', '0', 'UPDATE', 'UPDATE cat_compases\r\n				SET  compas=\'\'\r\n				WHERE id_compas=\'11\'\r\n				LIMIT 1;', '', null, '2016-01-06 16:12:30', '2');
INSERT INTO `sis_logs` VALUES ('340', 'cat_compases\r\n				set', '0', 'UPDATE', 'UPDATE cat_compases\r\n				SET  activo=\'0\'\r\n				WHERE id_compas=\'11\'\r\n				LIMIT 1;', '', null, '2016-01-06 16:12:34', '2');
INSERT INTO `sis_logs` VALUES ('341', 'cat_compases\r\n				set', '0', 'UPDATE', 'UPDATE cat_compases\r\n				SET  activo=\'0\'\r\n				WHERE id_compas=\'11\'\r\n				LIMIT 1;', '', null, '2016-01-06 16:12:49', '2');
INSERT INTO `sis_logs` VALUES ('342', 'cat_escalas\r\n			set', '34', 'INSERT', 'INSERT INTO cat_escalas\r\n			SET escala = \'ZZZNEW\' ;', '', null, '2016-01-06 16:21:44', '2');
INSERT INTO `sis_logs` VALUES ('343', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  activo=\'0\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-06 16:23:14', '2');
INSERT INTO `sis_logs` VALUES ('344', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  escala=\'  D\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-06 16:23:30', '2');
INSERT INTO `sis_logs` VALUES ('345', 'cat_categorias\r\n				set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n				SET  categoria=\'   DFF\'\r\n				WHERE id_categoria=\'19\'\r\n				LIMIT 1;', '', null, '2016-01-06 16:24:37', '2');
INSERT INTO `sis_logs` VALUES ('346', 'cat_categorias\r\n				set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n				SET  categoria=\'\'\r\n				WHERE id_categoria=\'19\'\r\n				LIMIT 1;', '', null, '2016-01-06 16:24:42', '2');
INSERT INTO `sis_logs` VALUES ('347', 'cat_categorias\r\n				set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n				SET  categoria=\'  FSD\'\r\n				WHERE id_categoria=\'19\'\r\n				LIMIT 1;', '', null, '2016-01-06 16:25:18', '2');
INSERT INTO `sis_logs` VALUES ('348', 'cat_categorias\r\n				set', '0', 'UPDATE', 'UPDATE cat_categorias\r\n				SET  categoria=\'\'\r\n				WHERE id_categoria=\'19\'\r\n				LIMIT 1;', '', null, '2016-01-06 16:25:23', '2');
INSERT INTO `sis_logs` VALUES ('349', 'cat_notas\r\n		', '148', 'INSERT', 'INSERT INTO cat_notas\r\n		  	SET \r\n				nota_es 	= \'NUEVA\',\r\n				nota_en 	= \'1234\' ,\r\n				alteracion 	= \'NA\' \r\n			;', '', null, '2016-01-06 16:46:40', '2');
INSERT INTO `sis_logs` VALUES ('350', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  activo=\'0\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-06 16:48:10', '2');
INSERT INTO `sis_logs` VALUES ('351', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'\',nota_en=\'\',alteracion=\'\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-06 17:52:10', '2');
INSERT INTO `sis_logs` VALUES ('352', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'\',nota_en=\'\',alteracion=\'\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-06 18:14:01', '2');
INSERT INTO `sis_logs` VALUES ('353', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'\',nota_en=\'\',alteracion=\'\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 12:33:08', '2');
INSERT INTO `sis_logs` VALUES ('354', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'dsds\',nota_en=\'2332\',alteracion=\'SD\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 15:31:16', '2');
INSERT INTO `sis_logs` VALUES ('355', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'2332\',nota_en=\'\',alteracion=\'\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 15:38:51', '2');
INSERT INTO `sis_logs` VALUES ('356', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'12354\',nota_en=\'  ccd\',alteracion=\'G\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 15:46:53', '2');
INSERT INTO `sis_logs` VALUES ('357', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'ccd\',nota_en=\'12354\',alteracion=\'GE\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 15:48:21', '2');
INSERT INTO `sis_logs` VALUES ('358', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'12354\',nota_en=\'ccd\',alteracion=\'GEF\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 15:49:54', '2');
INSERT INTO `sis_logs` VALUES ('359', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'   dfsd\',nota_en=\'12354\',alteracion=\'GEF33\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 15:50:56', '2');
INSERT INTO `sis_logs` VALUES ('360', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'12354\',nota_en=\'   dfsd\',alteracion=\'GEF33D\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 15:51:47', '2');
INSERT INTO `sis_logs` VALUES ('361', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'dfs\',nota_en=\'12354\',alteracion=\'GE\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 15:52:06', '2');
INSERT INTO `sis_logs` VALUES ('362', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'12354\',nota_en=\'dfs\',alteracion=\'GEVV\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 15:53:07', '2');
INSERT INTO `sis_logs` VALUES ('363', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'  dfs\',nota_en=\'12354\',alteracion=\'\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 15:55:41', '2');
INSERT INTO `sis_logs` VALUES ('364', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'\',nota_en=\'\',alteracion=\'\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 15:55:54', '2');
INSERT INTO `sis_logs` VALUES ('365', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'Ene # maj\',nota_en=\'N#maj\',alteracion=\'Inventada\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 16:24:14', '2');
INSERT INTO `sis_logs` VALUES ('366', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  activo=\'0\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 16:26:07', '2');
INSERT INTO `sis_logs` VALUES ('367', 'cat_escalas\r\n			set', '35', 'INSERT', 'INSERT INTO cat_escalas\r\n			SET escala = \'inventada\' ;', '', null, '2016-01-07 17:12:22', '2');
INSERT INTO `sis_logs` VALUES ('368', 'cat_escalas\r\n			set', '36', 'INSERT', 'INSERT INTO cat_escalas\r\n			SET \r\n				escala 		= \'nueva\',\r\n				categoria 	= \'inventada\',\r\n				grado1 		= \'A#aug\',\r\n				grado2 		= \'D\',\r\n				grado3 		= \'C#aug\',\r\n				grado4 		= \'E#aug\',\r\n				grado5 		= \'F#dim\',\r\n				grado6 		= \'B#m\',\r\n				grado7 		= \'G#7\',\r\n				armadura 	= \'oscarina\'\r\n			;', '', null, '2016-01-07 17:15:57', '2');
INSERT INTO `sis_logs` VALUES ('369', 'cat_notas\r\n				set', '0', 'UPDATE', 'UPDATE cat_notas\r\n				SET  nota_es=\'N#maj\',nota_en=\'Ene # ma\',alteracion=\'Inventada ed\'\r\n				WHERE id_nota=\'148\'\r\n				LIMIT 1;', '', null, '2016-01-07 17:25:22', '2');
INSERT INTO `sis_logs` VALUES ('370', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  categoria=\'f\',escala=\'f\',grado1=\'f\',grado2=\'f\',grado3=\'f\',grado4=\'f\',grado5=\'f\',grado6=\'f\',grado7=\'f\',armadura=\'f\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-07 17:42:58', '2');
INSERT INTO `sis_logs` VALUES ('371', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  activo=\'0\'\r\n				WHERE id_escala=\'10\'\r\n				LIMIT 1;', '', null, '2016-01-07 17:43:54', '2');
INSERT INTO `sis_logs` VALUES ('372', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  categoria=\'\',escala=\'\',grado1=\'\',grado2=\'\',grado3=\'\',grado4=\'\',grado5=\'\',grado6=\'\',grado7=\'\',armadura=\'\'\r\n				WHERE id_escala=\'36\'\r\n				LIMIT 1;', '', null, '2016-01-07 17:44:32', '2');
INSERT INTO `sis_logs` VALUES ('373', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  categoria=\'4\',escala=\'4\',grado1=\'4\',grado2=\'4\',grado3=\'4\',grado4=\'4\',grado5=\'4\',grado6=\'4\',grado7=\'4\',armadura=\'4\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-07 17:46:13', '2');
INSERT INTO `sis_logs` VALUES ('374', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  armadura=\'algo\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-07 17:55:05', '2');
INSERT INTO `sis_logs` VALUES ('375', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  escala=\'nueva\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-07 17:55:18', '2');
INSERT INTO `sis_logs` VALUES ('376', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  categoria=\'inventada\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-07 17:55:24', '2');
INSERT INTO `sis_logs` VALUES ('377', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  grado1=\'priemr\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-07 17:55:53', '2');
INSERT INTO `sis_logs` VALUES ('378', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  activo=\'0\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-07 17:56:04', '2');
INSERT INTO `sis_logs` VALUES ('379', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  activo=\'0\'\r\n				WHERE id_escala=\'36\'\r\n				LIMIT 1;', '', null, '2016-01-07 17:56:10', '2');
INSERT INTO `sis_logs` VALUES ('380', 'cat_categorias\r\n			set', '19', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'SDFSDFS\' ;', '', null, '2016-01-08 17:34:10', '2');
INSERT INTO `sis_logs` VALUES ('381', 'cat_categorias\r\n			set', '20', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'FDFDFD\' ;', '', null, '2016-01-08 17:35:10', '2');
INSERT INTO `sis_logs` VALUES ('382', 'cat_categorias\r\n			set', '21', 'INSERT', 'INSERT INTO cat_categorias\r\n			SET categoria = \'UIKJHGF\' ;', '', null, '2016-01-08 17:35:20', '2');
INSERT INTO `sis_logs` VALUES ('383', 'tbl_artistas	set', '2', 'INSERT', 'INSERT INTO tbl_artistas	SET  artista=\'nuevo\',iglesia=\'iglesia\',ministerio=\'\',pais=\'México\',id_usuario = \'2\',timestamp 	= \'timestamp()\' ;', '', null, '2016-01-08 17:39:08', '2');
INSERT INTO `sis_logs` VALUES ('384', 'tbl_artistas	set', '3', 'INSERT', 'INSERT INTO tbl_artistas	SET  artista=\'fsd\',iglesia=\'fsd\',ministerio=\'\',pais=\'sdfsd\',id_usuario = \'2\',timestamp 	= \'2016-01-08 17:40:22\' ;', '', null, '2016-01-08 17:40:22', '2');
INSERT INTO `sis_logs` VALUES ('385', 'tbl_artistas\r\n				set', '0', 'UPDATE', 'UPDATE tbl_artistas\r\n				SET  ministerio=\'1234\',id_usuario = \'\',timestamp 	= \'timestamp()\'\r\n				WHERE id_artista=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-08 17:50:39', '2');
INSERT INTO `sis_logs` VALUES ('386', 'tbl_artistas\r\n				set', '0', 'UPDATE', 'UPDATE tbl_artistas\r\n				SET  ministerio=\'DDF\',id_usuario = \'\',timestamp 	= \'timestamp()\'\r\n				WHERE id_artista=\'1\'\r\n				LIMIT 1;', '', null, '2016-01-08 17:50:53', '2');
INSERT INTO `sis_logs` VALUES ('387', 'tbl_artistas\r\n				set', '0', 'UPDATE', 'UPDATE tbl_artistas\r\n				SET  ministerio=\'\',id_usuario = \'\',timestamp 	= \'timestamp()\'\r\n				WHERE id_artista=\'1\'\r\n				LIMIT 1;', '', null, '2016-01-08 17:51:00', '2');
INSERT INTO `sis_logs` VALUES ('388', 'tbl_artistas\r\n				set', '0', 'UPDATE', 'UPDATE tbl_artistas\r\n				SET  activo=\'0\',id_usuario = \'\',timestamp 	= \'timestamp()\'\r\n				WHERE id_artista=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-08 17:51:15', '2');
INSERT INTO `sis_logs` VALUES ('389', 'tbl_artistas\r\n				set', '0', 'UPDATE', 'UPDATE tbl_artistas\r\n				SET  activo=\'0\',id_usuario = \'\',timestamp 	= \'timestamp()\'\r\n				WHERE id_artista=\'2\'\r\n				LIMIT 1;', '', null, '2016-01-08 17:51:24', '2');
INSERT INTO `sis_logs` VALUES ('390', 'tbl_artistas\r\n				set', '0', 'UPDATE', 'UPDATE tbl_artistas\r\n				SET  activo=\'0\',id_usuario = \'\',timestamp 	= \'2016-01-08 17:52:26\'\r\n				WHERE id_artista=\'2\'\r\n				LIMIT 1;', '', null, '2016-01-08 17:52:26', '2');
INSERT INTO `sis_logs` VALUES ('391', 'tbl_artistas\r\n				set', '0', 'UPDATE', 'UPDATE tbl_artistas\r\n				SET  activo=\'0\',id_usuario = \'\',timestamp 	= \'2016-01-08 17:52:33\'\r\n				WHERE id_artista=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-08 17:52:33', '2');
INSERT INTO `sis_logs` VALUES ('392', 'tbl_artistas\r\n				set', '0', 'UPDATE', 'UPDATE tbl_artistas\r\n				SET  activo=\'0\',id_usuario = \'2\',timestamp 	= \'2016-01-08 17:53:03\'\r\n				WHERE id_artista=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-08 17:53:03', '2');
INSERT INTO `sis_logs` VALUES ('393', 'tbl_artistas\r\n				set', '0', 'UPDATE', 'UPDATE tbl_artistas\r\n				SET  ministerio=\'MINISTERIO\',id_usuario = \'2\',timestamp 	= \'2016-01-08 17:53:11\'\r\n				WHERE id_artista=\'2\'\r\n				LIMIT 1;', '', null, '2016-01-08 17:53:11', '2');
INSERT INTO `sis_logs` VALUES ('394', 'tbl_artistas\r\n				set', '0', 'UPDATE', 'UPDATE tbl_artistas\r\n				SET  activo=\'0\',id_usuario = \'2\',timestamp 	= \'2016-01-08 17:53:20\'\r\n				WHERE id_artista=\'2\'\r\n				LIMIT 1;', '', null, '2016-01-08 17:53:20', '2');
INSERT INTO `sis_logs` VALUES ('395', 'tbl_albums	set', '2', 'INSERT', 'INSERT INTO tbl_albums	SET  album=\'NUEVO\',subtitulo=\'SUTITULO\',id_artista=\'\',anio=\'2016\',pistas=\'10\',discos=\'1\',portada=\'portada\',id_usuario = \'2\',timestamp 	= \'2016-01-12 12:39:24\' ;', '', null, '2016-01-12 12:39:24', '2');
INSERT INTO `sis_logs` VALUES ('396', 'tbl_albums	set', '3', 'INSERT', 'INSERT INTO tbl_albums	SET  album=\'NUEVO\',subtitulo=\'SUBTITULO\',id_artista=\'2\',anio=\'2016\',pistas=\'12\',discos=\'1\',portada=\'portada\',id_usuario = \'2\',timestamp 	= \'2016-01-12 12:43:50\' ;', '', null, '2016-01-12 12:43:50', '2');
INSERT INTO `sis_logs` VALUES ('397', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'PORTADA1\',id_usuario = \'2\',timestamp 	= \'2016-01-12 12:46:11\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 12:46:11', '2');
INSERT INTO `sis_logs` VALUES ('398', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  anio=\'2015\',id_usuario = \'2\',timestamp 	= \'2016-01-12 12:46:20\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 12:46:20', '2');
INSERT INTO `sis_logs` VALUES ('399', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  discos=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-12 12:46:25\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 12:46:25', '2');
INSERT INTO `sis_logs` VALUES ('400', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  discos=\'1\',id_usuario = \'2\',timestamp 	= \'2016-01-12 12:46:33\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 12:46:33', '2');
INSERT INTO `sis_logs` VALUES ('401', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-12 13:02:38\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 13:02:38', '2');
INSERT INTO `sis_logs` VALUES ('402', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 16:42:34\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 16:42:34', '2');
INSERT INTO `sis_logs` VALUES ('403', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 16:48:26\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 16:48:26', '2');
INSERT INTO `sis_logs` VALUES ('404', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:03:31\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:03:31', '2');
INSERT INTO `sis_logs` VALUES ('405', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:08:46\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:08:46', '2');
INSERT INTO `sis_logs` VALUES ('406', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:11:33\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:11:33', '2');
INSERT INTO `sis_logs` VALUES ('407', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:15:19\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:15:19', '2');
INSERT INTO `sis_logs` VALUES ('408', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:18:08\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:18:08', '2');
INSERT INTO `sis_logs` VALUES ('409', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:18:48\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:18:48', '2');
INSERT INTO `sis_logs` VALUES ('410', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:20:10\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:20:10', '2');
INSERT INTO `sis_logs` VALUES ('411', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:21:55\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:21:55', '2');
INSERT INTO `sis_logs` VALUES ('412', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:23:52\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:23:52', '2');
INSERT INTO `sis_logs` VALUES ('413', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:24:14\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:24:14', '2');
INSERT INTO `sis_logs` VALUES ('414', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  grado3=\'dfdf\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:27:27', '2');
INSERT INTO `sis_logs` VALUES ('415', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  grado5=\'rerer\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:27:41', '2');
INSERT INTO `sis_logs` VALUES ('416', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  grado4=\'fdfdf\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:27:59', '2');
INSERT INTO `sis_logs` VALUES ('417', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  grado6=\'f\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:28:20', '2');
INSERT INTO `sis_logs` VALUES ('418', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  grado2=\'fdf\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:29:11', '2');
INSERT INTO `sis_logs` VALUES ('419', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  grado4=\'\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:29:21', '2');
INSERT INTO `sis_logs` VALUES ('420', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  grado3=\'\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:29:25', '2');
INSERT INTO `sis_logs` VALUES ('421', 'cat_escalas\r\n				set', '0', 'UPDATE', 'UPDATE cat_escalas\r\n				SET  grado4=\'fd\'\r\n				WHERE id_escala=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:29:31', '2');
INSERT INTO `sis_logs` VALUES ('422', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:30:29\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:30:29', '2');
INSERT INTO `sis_logs` VALUES ('423', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:31:12\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:31:12', '2');
INSERT INTO `sis_logs` VALUES ('424', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:31:46\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:31:46', '2');
INSERT INTO `sis_logs` VALUES ('425', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:33:27\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:33:27', '2');
INSERT INTO `sis_logs` VALUES ('426', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:35:04\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:35:04', '2');
INSERT INTO `sis_logs` VALUES ('427', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:36:12\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:36:12', '2');
INSERT INTO `sis_logs` VALUES ('428', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:36:35\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:36:35', '2');
INSERT INTO `sis_logs` VALUES ('429', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:37:16\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:37:16', '2');
INSERT INTO `sis_logs` VALUES ('430', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:39:04\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:39:04', '2');
INSERT INTO `sis_logs` VALUES ('431', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:39:25\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:39:25', '2');
INSERT INTO `sis_logs` VALUES ('432', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:40:00\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:40:00', '2');
INSERT INTO `sis_logs` VALUES ('433', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'c\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:41:11\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:41:11', '2');
INSERT INTO `sis_logs` VALUES ('434', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:45:41\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:45:41', '2');
INSERT INTO `sis_logs` VALUES ('435', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:48:03\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:48:04', '2');
INSERT INTO `sis_logs` VALUES ('436', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:50:24\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:50:24', '2');
INSERT INTO `sis_logs` VALUES ('437', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:51:19\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:51:19', '2');
INSERT INTO `sis_logs` VALUES ('438', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:51:39\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:51:39', '2');
INSERT INTO `sis_logs` VALUES ('439', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:52:49\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:52:49', '2');
INSERT INTO `sis_logs` VALUES ('440', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:53:57\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:53:57', '2');
INSERT INTO `sis_logs` VALUES ('441', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:55:33\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:55:33', '2');
INSERT INTO `sis_logs` VALUES ('442', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:55:51\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:55:51', '2');
INSERT INTO `sis_logs` VALUES ('443', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:56:24\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:56:24', '2');
INSERT INTO `sis_logs` VALUES ('444', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:56:45\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:56:45', '2');
INSERT INTO `sis_logs` VALUES ('445', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 17:59:17\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 17:59:17', '2');
INSERT INTO `sis_logs` VALUES ('446', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 18:00:28\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 18:00:28', '2');
INSERT INTO `sis_logs` VALUES ('447', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 18:03:57\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 18:03:57', '2');
INSERT INTO `sis_logs` VALUES ('448', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 18:04:08\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 18:04:08', '2');
INSERT INTO `sis_logs` VALUES ('449', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 18:04:52\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 18:04:52', '2');
INSERT INTO `sis_logs` VALUES ('450', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 18:07:10\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 18:07:10', '2');
INSERT INTO `sis_logs` VALUES ('451', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 18:08:23\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 18:08:23', '2');
INSERT INTO `sis_logs` VALUES ('452', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 18:09:17\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 18:09:17', '2');
INSERT INTO `sis_logs` VALUES ('453', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 18:11:50\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 18:11:50', '2');
INSERT INTO `sis_logs` VALUES ('454', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_3.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 18:12:07\'\r\n				WHERE id_album=\'3\'\r\n				LIMIT 1;', '', null, '2016-01-12 18:12:07', '2');
INSERT INTO `sis_logs` VALUES ('455', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_1.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 18:12:44\'\r\n				WHERE id_album=\'1\'\r\n				LIMIT 1;', '', null, '2016-01-12 18:12:44', '2');
INSERT INTO `sis_logs` VALUES ('456', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_1.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-12 18:15:39\'\r\n				WHERE id_album=\'1\'\r\n				LIMIT 1;', '', null, '2016-01-12 18:15:39', '2');
INSERT INTO `sis_logs` VALUES ('457', 'tbl_cantos	set', '137', 'INSERT', 'INSERT INTO tbl_cantos	SET  canto=\'No sueltes de mi mano\',alias=\'Oh Cristo!\',autor=\'Oscar Maldonado\',id_album=\'3\',id_escala=\'10\',id_variacion=\'\',id_compas=\'3\',tempo=\'68\',id_ritmo=\'1\',acordes=\'21,23,1,6,19\',id_categorias=\'1,4\',id_usuario = \'2\',timestamp 	= \'2016-01-13 12:40:50\' ;', '', null, '2016-01-13 12:40:50', '2');
INSERT INTO `sis_logs` VALUES ('458', 'tbl_cantos	set', '138', 'INSERT', 'INSERT INTO tbl_cantos	SET  canto=\'fsdf\',alias=\'sdfret\',autor=\'tert\',id_album=\'3\',id_escala=\'26\',id_variacion=\'\',id_compas=\'1\',tempo=\'93\',id_ritmo=\'3\',acordes=\'11,16\',id_categorias=\'16,20\',id_usuario = \'2\',timestamp 	= \'2016-01-13 13:23:08\' ;', '', null, '2016-01-13 13:23:08', '2');
INSERT INTO `sis_logs` VALUES ('459', 'cat_acordes\r\n		', '26', 'INSERT', 'INSERT INTO cat_acordes\r\n		  	SET \r\n				tipo 	= \'NUEVO\',\r\n				acorde 	= \'mio#7aug\',\r\n				notas 	= \'\' ,\r\n				imagen 	= \'C:\\\\fakepath\\\\Logo AD Tlalpan w-b.png\' \r\n			;', '', null, '2016-01-13 14:23:29', '2');
INSERT INTO `sis_logs` VALUES ('460', 'cat_acordes\r\n		', '27', 'INSERT', 'INSERT INTO cat_acordes\r\n		  	SET \r\n				tipo 	= \'NUEVA\',\r\n				acorde 	= \'mio#7aug\',\r\n				notas 	= \'\' ,\r\n				imagen 	= \'C:\\\\fakepath\\\\Logo AD Tlalpan w-b[68x74].png\' \r\n			;', '', null, '2016-01-13 14:28:00', '2');
INSERT INTO `sis_logs` VALUES ('461', 'cat_acordes\r\n		', '28', 'INSERT', 'INSERT INTO cat_acordes\r\n		  	SET \r\n				tipo 	= \'GDFG\',\r\n				acorde 	= \'dfgdf\',\r\n				notas 	= \'A,Abm7,Faug\' ,\r\n				imagen 	= \'C:\\\\fakepath\\\\Logo AD Tlalpan w-b.png\' \r\n			;', '', null, '2016-01-13 14:29:08', '2');
INSERT INTO `sis_logs` VALUES ('462', 'cat_acordes	set', '29', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'UJYHRTGF\',acorde=\'erthtrg\',notas=\'A#,E#7,G#7\',imagen=\'C:\\\\fakepath\\\\Logo AD Tlalpan fondo.png\',id_usuario = \'2\',timestamp 	= \'2016-01-13 14:31:48\' ;', '', null, '2016-01-13 14:31:48', '2');
INSERT INTO `sis_logs` VALUES ('463', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'ACORDE_30.JPG\',id_usuario = \'2\',timestamp 	= \'2016-01-13 14:48:47\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 14:48:47', '2');
INSERT INTO `sis_logs` VALUES ('464', 'cat_acordes	set', '31', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'RTGREFDSF\',acorde=\'redfgdfsv\',notas=\'A,B#aug,B7\',imagen=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-13 16:49:14\' ;', '', null, '2016-01-13 16:49:14', '2');
INSERT INTO `sis_logs` VALUES ('465', 'cat_acordes	set', '32', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'UYJRTGEF\',acorde=\'werty\',notas=\'A,Ab,B#m\',imagen=\'acorde_.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-13 16:59:40\' ;', '', null, '2016-01-13 16:59:40', '2');
INSERT INTO `sis_logs` VALUES ('466', 'cat_acordes	set', '33', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'GDFGDF\',acorde=\'dfgdfg\',notas=\'A\',imagen=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:01:15\' ;', '', null, '2016-01-13 17:01:15', '2');
INSERT INTO `sis_logs` VALUES ('467', 'cat_acordes	set', '34', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'GDFGDF\',acorde=\'dfgdfg\',notas=\'A\',imagen=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:01:35\' ;', '', null, '2016-01-13 17:01:35', '2');
INSERT INTO `sis_logs` VALUES ('468', 'cat_acordes	set', '35', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'FSDFSD\',acorde=\'retretr\',notas=\'A,A#\',imagen=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:02:41\' ;', '', null, '2016-01-13 17:02:41', '2');
INSERT INTO `sis_logs` VALUES ('469', 'cat_acordes	set', '36', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'TERTE\',acorde=\'dfgdfgd\',notas=\'A\',imagen=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:03:57\' ;', '', null, '2016-01-13 17:03:57', '2');
INSERT INTO `sis_logs` VALUES ('470', 'cat_acordes	set', '37', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'TERTE\',acorde=\'dfgdfgd\',notas=\'A\',imagen=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:05:08\' ;', '', null, '2016-01-13 17:05:08', '2');
INSERT INTO `sis_logs` VALUES ('471', 'cat_acordes	set', '38', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'TERTE\',acorde=\'dfgdfgd\',notas=\'A\',imagen=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:08:01\' ;', '', null, '2016-01-13 17:08:01', '2');
INSERT INTO `sis_logs` VALUES ('472', 'cat_acordes	set', '39', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'ERTERT\',acorde=\'hgfhgfhfg\',notas=\'A\',imagen=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:08:26\' ;', '', null, '2016-01-13 17:08:26', '2');
INSERT INTO `sis_logs` VALUES ('473', 'cat_acordes	set', '40', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'ERTERT\',acorde=\'hgfhgfhfg\',notas=\'A\',imagen=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:08:38\' ;', '', null, '2016-01-13 17:08:38', '2');
INSERT INTO `sis_logs` VALUES ('474', 'cat_acordes	set', '41', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'ERTERT\',acorde=\'hgfhgfhfg\',notas=\'A\',imagen=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:10:19\' ;', '', null, '2016-01-13 17:10:19', '2');
INSERT INTO `sis_logs` VALUES ('475', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_41.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:10:19\'\r\n				WHERE id_acorde=\'41\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:10:19', '2');
INSERT INTO `sis_logs` VALUES ('476', 'cat_acordes	set', '42', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'TRHGWE\',acorde=\'ertfgh\',notas=\'A#,A#7\',imagen=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:11:27\' ;', '', null, '2016-01-13 17:11:27', '2');
INSERT INTO `sis_logs` VALUES ('477', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_42.png\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:11:27\'\r\n				WHERE id_acorde=\'42\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:11:27', '2');
INSERT INTO `sis_logs` VALUES ('478', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_.\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:13:32\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:13:32', '2');
INSERT INTO `sis_logs` VALUES ('479', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_.\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:15:19\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:15:19', '2');
INSERT INTO `sis_logs` VALUES ('480', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_.\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:16:23\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:16:23', '2');
INSERT INTO `sis_logs` VALUES ('481', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_.\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:17:21\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:17:21', '2');
INSERT INTO `sis_logs` VALUES ('482', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_.\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:17:36\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:17:36', '2');
INSERT INTO `sis_logs` VALUES ('483', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:18:56\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:18:56', '2');
INSERT INTO `sis_logs` VALUES ('484', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_30.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:19:17\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:19:17', '2');
INSERT INTO `sis_logs` VALUES ('485', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_30.png\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:19:38\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:19:38', '2');
INSERT INTO `sis_logs` VALUES ('486', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_30.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:20:31\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:20:31', '2');
INSERT INTO `sis_logs` VALUES ('487', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_30.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:22:29\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:22:29', '2');
INSERT INTO `sis_logs` VALUES ('488', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_30.png\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:22:42\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:22:42', '2');
INSERT INTO `sis_logs` VALUES ('489', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_30.png\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:23:56\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:23:56', '2');
INSERT INTO `sis_logs` VALUES ('490', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'acorde_1.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:27:38\'\r\n				WHERE id_album=\'1\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:27:38', '2');
INSERT INTO `sis_logs` VALUES ('491', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_1.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:28:27\'\r\n				WHERE id_album=\'1\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:28:27', '2');
INSERT INTO `sis_logs` VALUES ('492', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_1.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:28:41\'\r\n				WHERE id_album=\'1\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:28:41', '2');
INSERT INTO `sis_logs` VALUES ('493', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_1.png\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:28:54\'\r\n				WHERE id_album=\'1\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:28:54', '2');
INSERT INTO `sis_logs` VALUES ('494', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_1.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:34:45\'\r\n				WHERE id_album=\'1\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:34:45', '2');
INSERT INTO `sis_logs` VALUES ('495', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_1.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:36:41\'\r\n				WHERE id_album=\'1\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:36:41', '2');
INSERT INTO `sis_logs` VALUES ('496', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_30.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:38:18\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:38:18', '2');
INSERT INTO `sis_logs` VALUES ('497', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_30.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:39:03\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:39:03', '2');
INSERT INTO `sis_logs` VALUES ('498', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_30.png\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:39:14\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:39:14', '2');
INSERT INTO `sis_logs` VALUES ('499', 'cat_acordes	set', '43', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'UGHJHG\',acorde=\'jghj\',notas=\'A#\',imagen=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:41:45\' ;', '', null, '2016-01-13 17:41:45', '2');
INSERT INTO `sis_logs` VALUES ('500', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  imagen=\'acorde_43.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:41:45\'\r\n				WHERE id_acorde=\'43\'\r\n				LIMIT 1;', '', null, '2016-01-13 17:41:45', '2');
INSERT INTO `sis_logs` VALUES ('501', 'tbl_albums	set', '4', 'INSERT', 'INSERT INTO tbl_albums	SET  album=\'UNDEFINED\',subtitulo=\'UNDEFINED\',id_artista=\'\',anio=\'UNDEFINED\',pistas=\'UNDEFINED\',discos=\'UNDEFINED\',portada=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-13 17:51:48\' ;', '', null, '2016-01-13 17:51:48', '2');
INSERT INTO `sis_logs` VALUES ('502', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde_30_piano.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-14 15:16:10\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-14 15:16:10', '2');
INSERT INTO `sis_logs` VALUES ('503', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde_30_piano.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-14 15:19:07\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-14 15:19:07', '2');
INSERT INTO `sis_logs` VALUES ('504', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde_30_piano.png\',id_usuario = \'2\',timestamp 	= \'2016-01-14 15:20:17\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-14 15:20:17', '2');
INSERT INTO `sis_logs` VALUES ('505', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde_30_piano.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-14 15:21:00\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-14 15:21:00', '2');
INSERT INTO `sis_logs` VALUES ('506', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_bass=\'acorde_30_bass.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-14 15:21:29\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-14 15:21:29', '2');
INSERT INTO `sis_logs` VALUES ('507', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_guitar=\'acorde_30_guitar.png\',id_usuario = \'2\',timestamp 	= \'2016-01-14 15:21:46\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-14 15:21:46', '2');
INSERT INTO `sis_logs` VALUES ('508', 'cat_acordes	set', '31', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'FSDF\',acorde=\'werw\',notas=\'A\',img_guitar=\'\',img_piano=\'\',img_bass=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:05:29\' ;', '', null, '2016-01-14 16:05:29', '2');
INSERT INTO `sis_logs` VALUES ('509', 'cat_acordes	set', '32', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'FSDF\',acorde=\'werw\',notas=\'A\',img_guitar=\'\',img_piano=\'\',img_bass=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:23:03\' ;', '', null, '2016-01-14 16:23:03', '2');
INSERT INTO `sis_logs` VALUES ('510', 'cat_acordes	set', '33', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'FSDF\',acorde=\'werw\',notas=\'A\',img_guitar=\'\',img_piano=\'\',img_bass=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:25:43\' ;', '', null, '2016-01-14 16:25:43', '2');
INSERT INTO `sis_logs` VALUES ('511', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_guitar=\'acorde__guitar.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:25:43\'\r\n				WHERE id_acorde=\'33\'\r\n				LIMIT 1;', '', null, '2016-01-14 16:25:43', '2');
INSERT INTO `sis_logs` VALUES ('512', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde__piano.png\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:25:43\'\r\n				WHERE id_acorde=\'33\'\r\n				LIMIT 1;', '', null, '2016-01-14 16:25:43', '2');
INSERT INTO `sis_logs` VALUES ('513', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_bass=\'acorde__bass.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:25:43\'\r\n				WHERE id_acorde=\'33\'\r\n				LIMIT 1;', '', null, '2016-01-14 16:25:43', '2');
INSERT INTO `sis_logs` VALUES ('514', 'cat_acordes	set', '34', 'INSERT', 'INSERT INTO cat_acordes	SET  tipo=\'UYJRTGEDWS\',acorde=\'aSDFGH\',notas=\'A,A#aug,A#Maj7\',img_guitar=\'\',img_piano=\'\',img_bass=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:26:38\' ;', '', null, '2016-01-14 16:26:38', '2');
INSERT INTO `sis_logs` VALUES ('515', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_guitar=\'acorde_34_guitar.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:26:38\'\r\n				WHERE id_acorde=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-14 16:26:38', '2');
INSERT INTO `sis_logs` VALUES ('516', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde_34_piano.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:26:38\'\r\n				WHERE id_acorde=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-14 16:26:38', '2');
INSERT INTO `sis_logs` VALUES ('517', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_bass=\'acorde_34_bass.png\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:26:38\'\r\n				WHERE id_acorde=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-14 16:26:38', '2');
INSERT INTO `sis_logs` VALUES ('518', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde_34_piano.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:27:05\'\r\n				WHERE id_acorde=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-14 16:27:05', '2');
INSERT INTO `sis_logs` VALUES ('519', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  notas=\'C#, A\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:39:34\'\r\n				WHERE id_acorde=\'30\'\r\n				LIMIT 1;', '', null, '2016-01-14 16:39:34', '2');
INSERT INTO `sis_logs` VALUES ('520', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde_34_piano.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:43:54\'\r\n				WHERE id_acorde=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-14 16:43:54', '2');
INSERT INTO `sis_logs` VALUES ('521', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_bass=\'acorde_34_bass.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:49:21\'\r\n				WHERE id_acorde=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-14 16:49:21', '2');
INSERT INTO `sis_logs` VALUES ('522', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_bass=\'acorde_34_bass.png\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:49:31\'\r\n				WHERE id_acorde=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-14 16:49:31', '2');
INSERT INTO `sis_logs` VALUES ('523', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_bass=\'acorde_34_bass.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:50:55\'\r\n				WHERE id_acorde=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-14 16:50:55', '2');
INSERT INTO `sis_logs` VALUES ('524', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_bass=\'acorde_34_bass.png\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:51:05\'\r\n				WHERE id_acorde=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-14 16:51:05', '2');
INSERT INTO `sis_logs` VALUES ('525', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_bass=\'acorde_34_bass.png\',id_usuario = \'2\',timestamp 	= \'2016-01-14 16:54:29\'\r\n				WHERE id_acorde=\'34\'\r\n				LIMIT 1;', '', null, '2016-01-14 16:54:29', '2');
INSERT INTO `sis_logs` VALUES ('526', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'fsdf\',alias=\'nuevo de prueba\',autor=\'tert\',id_album=\'3\',id_escala=\'26\',id_variacion=\'\',id_compas=\'1\',tempo=\'\',id_ritmo=\'3\',acordes=\'11,11,16\',id_categorias=\'8,8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-14 18:33:26\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-14 18:33:26', '2');
INSERT INTO `sis_logs` VALUES ('527', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'fsdf\',alias=\'nuevo de prueba\',autor=\'tert\',id_album=\'3\',id_escala=\'26\',id_variacion=\'\',id_compas=\'1\',tempo=\'\',id_ritmo=\'3\',acordes=\'11,11,16\',id_categorias=\'8,8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-14 18:34:51\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-14 18:34:51', '2');
INSERT INTO `sis_logs` VALUES ('528', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'fsdf\',alias=\'nuevo de prueba\',autor=\'tert\',id_album=\'3\',id_escala=\'26\',id_variacion=\'\',id_compas=\'1\',tempo=\'\',id_ritmo=\'3\',acordes=\'11,11,11,16\',id_categorias=\'8,8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-14 18:36:33\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-14 18:36:33', '2');
INSERT INTO `sis_logs` VALUES ('529', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'123123\',alias=\'nuevo de prueba\',autor=\'tert\',id_album=\'3\',id_escala=\'26\',id_variacion=\'\',id_compas=\'1\',tempo=\'\',id_ritmo=\'3\',acordes=\'11,11,11,11,16\',id_categorias=\'8,8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-14 18:38:19\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-14 18:38:19', '2');
INSERT INTO `sis_logs` VALUES ('530', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'123123\',alias=\'nuevo de prueba\',autor=\'tert\',id_album=\'3\',id_escala=\'26\',id_variacion=\'\',id_compas=\'1\',tempo=\'\',id_ritmo=\'3\',acordes=\'11,11,11,11,11,16\',id_categorias=\'8,8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-14 18:38:51\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-14 18:38:51', '2');
INSERT INTO `sis_logs` VALUES ('531', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'123123\',alias=\'nuevo de prueba\',autor=\'tert\',id_album=\'3\',id_escala=\'26\',id_variacion=\'\',id_compas=\'1\',tempo=\'\',id_ritmo=\'3\',acordes=\'11,11,11,11,11,11,16\',id_categorias=\'8,8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-14 18:39:30\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-14 18:39:30', '2');
INSERT INTO `sis_logs` VALUES ('532', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  activo=\'0\',id_usuario = \'2\',timestamp 	= \'2016-01-14 18:41:31\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-14 18:41:31', '2');
INSERT INTO `sis_logs` VALUES ('533', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'123123\',alias=\'nuevo de prueba\',autor=\'tert\',id_album=\'3\',id_escala=\'26\',id_variacion=\'\',id_compas=\'1\',tempo=\'\',id_ritmo=\'3\',acordes=\'11,11,11,11,11,11,11,16\',id_categorias=\'8,8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-14 18:42:54\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-14 18:42:54', '2');
INSERT INTO `sis_logs` VALUES ('534', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'123123\',alias=\'nuevo de prueba\',autor=\'tert\',id_album=\'3\',id_escala=\'26\',id_variacion=\'\',id_compas=\'1\',tempo=\'114\',id_ritmo=\'3\',acordes=\'11,16\',id_categorias=\'8,8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-14 18:43:21\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-14 18:43:21', '2');
INSERT INTO `sis_logs` VALUES ('535', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'123123\',alias=\'nuevo de prueba\',autor=\'tert\',id_album=\'3\',id_escala=\'26\',id_variacion=\'\',id_compas=\'1\',tempo=\'\',id_ritmo=\'3\',acordes=\'11,16\',id_categorias=\'8,8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-14 18:43:49\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-14 18:43:49', '2');
INSERT INTO `sis_logs` VALUES ('536', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'123123\',alias=\'nuevo de prueba\',autor=\'tert\',id_album=\'3\',id_escala=\'26\',id_variacion=\'\',id_compas=\'1\',tempo=\'\',id_ritmo=\'3\',acordes=\'11,16\',id_categorias=\'8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-14 18:46:02\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-14 18:46:02', '2');
INSERT INTO `sis_logs` VALUES ('537', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'12312355\',id_usuario = \'2\',timestamp 	= \'2016-01-18 10:30:06\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-18 10:30:06', '2');
INSERT INTO `sis_logs` VALUES ('538', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  alias=\'nuevo de prueba|\',id_usuario = \'2\',timestamp 	= \'2016-01-18 10:30:08\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-18 10:30:08', '2');
INSERT INTO `sis_logs` VALUES ('539', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  alias=\'nuevo de prueba1\',id_usuario = \'2\',timestamp 	= \'2016-01-18 10:30:11\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-18 10:30:11', '2');
INSERT INTO `sis_logs` VALUES ('540', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  autor=\'tert1\',id_usuario = \'2\',timestamp 	= \'2016-01-18 10:30:15\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-18 10:30:15', '2');
INSERT INTO `sis_logs` VALUES ('541', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'12312355\',alias=\'nuevo de prueba123\',autor=\'tert1\',id_album=\'3\',id_escala=\'26\',id_variacion=\'\',id_compas=\'1\',tempo=\'\',id_ritmo=\'3\',acordes=\'11,16\',id_categorias=\'8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-18 10:30:27\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-18 10:30:27', '2');
INSERT INTO `sis_logs` VALUES ('542', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'12312355\',alias=\'nuevo de prueba123\',autor=\'tert1\',id_album=\'3\',id_escala=\'26\',id_variacion=\'\',id_compas=\'1\',tempo=\'112\',id_ritmo=\'3\',acordes=\'11,16\',id_categorias=\'8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-18 10:30:41\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-18 10:30:41', '2');
INSERT INTO `sis_logs` VALUES ('543', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_guitar=\'acorde_10_guitar.png\',id_usuario = \'2\',timestamp 	= \'2016-01-18 11:35:42\'\r\n				WHERE id_acorde=\'10\'\r\n				LIMIT 1;', '', null, '2016-01-18 11:35:42', '2');
INSERT INTO `sis_logs` VALUES ('544', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_guitar=\'acorde_10_guitar.png\',id_usuario = \'2\',timestamp 	= \'2016-01-18 11:43:42\'\r\n				WHERE id_acorde=\'10\'\r\n				LIMIT 1;', '', null, '2016-01-18 11:43:42', '2');
INSERT INTO `sis_logs` VALUES ('545', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde_10_piano.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-18 11:44:18\'\r\n				WHERE id_acorde=\'10\'\r\n				LIMIT 1;', '', null, '2016-01-18 11:44:18', '2');
INSERT INTO `sis_logs` VALUES ('546', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde_10_piano.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-18 12:04:01\'\r\n				WHERE id_acorde=\'10\'\r\n				LIMIT 1;', '', null, '2016-01-18 12:04:01', '2');
INSERT INTO `sis_logs` VALUES ('547', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_guitar=\'acorde_11_guitar.png\',id_usuario = \'2\',timestamp 	= \'2016-01-18 12:06:19\'\r\n				WHERE id_acorde=\'11\'\r\n				LIMIT 1;', '', null, '2016-01-18 12:06:19', '2');
INSERT INTO `sis_logs` VALUES ('548', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde_11_piano.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-18 12:06:49\'\r\n				WHERE id_acorde=\'11\'\r\n				LIMIT 1;', '', null, '2016-01-18 12:06:49', '2');
INSERT INTO `sis_logs` VALUES ('549', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde_11_piano.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-18 12:10:25\'\r\n				WHERE id_acorde=\'11\'\r\n				LIMIT 1;', '', null, '2016-01-18 12:10:25', '2');
INSERT INTO `sis_logs` VALUES ('550', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_guitar=\'acorde_22_guitar.png\',id_usuario = \'2\',timestamp 	= \'2016-01-18 12:12:07\'\r\n				WHERE id_acorde=\'22\'\r\n				LIMIT 1;', '', null, '2016-01-18 12:12:07', '2');
INSERT INTO `sis_logs` VALUES ('551', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde_22_piano.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-18 12:14:14\'\r\n				WHERE id_acorde=\'22\'\r\n				LIMIT 1;', '', null, '2016-01-18 12:14:14', '2');
INSERT INTO `sis_logs` VALUES ('552', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_guitar=\'acorde_21_guitar.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-18 12:15:20\'\r\n				WHERE id_acorde=\'21\'\r\n				LIMIT 1;', '', null, '2016-01-18 12:15:20', '2');
INSERT INTO `sis_logs` VALUES ('553', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde_21_piano.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-18 12:15:28\'\r\n				WHERE id_acorde=\'21\'\r\n				LIMIT 1;', '', null, '2016-01-18 12:15:28', '2');
INSERT INTO `sis_logs` VALUES ('554', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_guitar=\'acorde_21_guitar.png\',id_usuario = \'2\',timestamp 	= \'2016-01-18 12:15:44\'\r\n				WHERE id_acorde=\'21\'\r\n				LIMIT 1;', '', null, '2016-01-18 12:15:44', '2');
INSERT INTO `sis_logs` VALUES ('555', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_guitar=\'acorde_24_guitar.png\',id_usuario = \'2\',timestamp 	= \'2016-01-18 12:20:48\'\r\n				WHERE id_acorde=\'24\'\r\n				LIMIT 1;', '', null, '2016-01-18 12:20:48', '2');
INSERT INTO `sis_logs` VALUES ('556', 'cat_acordes\r\n				set', '0', 'UPDATE', 'UPDATE cat_acordes\r\n				SET  img_piano=\'acorde_24_piano.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-18 12:21:05\'\r\n				WHERE id_acorde=\'24\'\r\n				LIMIT 1;', '', null, '2016-01-18 12:21:05', '2');
INSERT INTO `sis_logs` VALUES ('557', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  interprete=\'inter\',id_usuario = \'2\',timestamp 	= \'2016-01-18 13:09:01\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-18 13:09:01', '2');
INSERT INTO `sis_logs` VALUES ('558', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  anio=\'2016\',id_usuario = \'2\',timestamp 	= \'2016-01-18 13:09:18\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-18 13:09:19', '2');
INSERT INTO `sis_logs` VALUES ('559', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  interprete=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-18 13:09:43\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-18 13:09:44', '2');
INSERT INTO `sis_logs` VALUES ('560', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'12312355\',alias=\'nuevo de prueba123\',autor=\'tert1\',interprete=\'fsdfsdg\',anio=\'2016\',id_album=\'3\',id_categorias=\'8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-18 13:12:29\'\r\n				WHERE id_canto=\'138\'\r\n				LIMIT 1;', '', null, '2016-01-18 13:12:30', '2');
INSERT INTO `sis_logs` VALUES ('561', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'No sueltes de mi mano\',alias=\'Oh Cristo!\',autor=\'Oscar Maldonado\',interprete=\'Mahanaim Tlalpan\',anio=\'2015\',id_album=\'3\',id_categorias=\'8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-18 13:58:17\'\r\n				WHERE id_canto=\'137\'\r\n				LIMIT 1;', '', null, '2016-01-18 13:58:17', '2');
INSERT INTO `sis_logs` VALUES ('562', 'tbl_cifrados	set', '2', 'INSERT', 'INSERT INTO tbl_cifrados	SET  id_canto=\'\',id_escala=\'5\',id_variacion=\'\',id_compas=\'3\',tempo=\'165\',id_ritmo=\'3\',acordes=\'21,16,6,8\',cifrado=\'[Am]///A su Majestad, [(Am-G)]\n[F]Bienvenido Rey, [(F/F#)]\n[G]A su Majestad, daré la [E]honra y el ho[Am]nor///\',piano=\'Piano\',trompeta=\'trompeta\',sax=\'saxofón\',comentarios=\'Comentarios\',id_usuario = \'2\',timestamp 	= \'2016-01-18 14:37:57\' ;', '', null, '2016-01-18 14:37:57', '2');
INSERT INTO `sis_logs` VALUES ('563', 'tbl_cifrados	set', '3', 'INSERT', 'INSERT INTO tbl_cifrados	SET  id_canto=\'\',id_escala=\'5\',id_variacion=\'\',id_compas=\'3\',tempo=\'144\',id_ritmo=\'3\',acordes=\'21,16,6,8\',cifrado=\'[Am]///A su Majestad, [(Am-G)]\n[F]Bienvenido Rey, [(F/F#)]\n[G]A su Majestad, daré la [E]honra y el ho[Am]nor///\',piano=\'Piano\',trompeta=\'Trompeta\',sax=\'Saxofón\',comentarios=\'Comentarios\',id_usuario = \'2\',timestamp 	= \'2016-01-18 14:42:34\' ;', '', null, '2016-01-18 14:42:34', '2');
INSERT INTO `sis_logs` VALUES ('564', 'tbl_cifrados	set', '4', 'INSERT', 'INSERT INTO tbl_cifrados	SET  id_canto=\'123\',id_escala=\'5\',id_variacion=\'\',id_compas=\'3\',tempo=\'122\',id_ritmo=\'3\',acordes=\'21,16,6,8\',cifrado=\'[Am]///A su Majestad, [(Am-G)]\n[F]Bienvenido Rey, [(F/F#)]\n[G]A su Majestad, daré la [E]honra y el ho[Am]nor///\',piano=\'Piano\',trompeta=\'Trompeta\',sax=\'Saxofón\',comentarios=\'Comentarios\',id_usuario = \'2\',timestamp 	= \'2016-01-18 14:46:04\' ;', '', null, '2016-01-18 14:46:04', '2');
INSERT INTO `sis_logs` VALUES ('565', 'tbl_albums	set', '4', 'INSERT', 'INSERT INTO tbl_albums	SET  album=\'A SU MAJESTAD\',subtitulo=\'A\',id_artista=\'\',anio=\'2010\',pistas=\'10\',discos=\'1\',portada=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-18 14:48:10\' ;', '', null, '2016-01-18 14:48:10', '2');
INSERT INTO `sis_logs` VALUES ('566', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_1.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-18 14:48:11\'\r\n				WHERE id_album=\'1\'\r\n				LIMIT 1;', '', null, '2016-01-18 14:48:11', '2');
INSERT INTO `sis_logs` VALUES ('567', 'tbl_albums	set', '5', 'INSERT', 'INSERT INTO tbl_albums	SET  album=\'A SU MAJESTAD\',subtitulo=\'\',id_artista=\'\',anio=\'2010\',pistas=\'10\',discos=\'1\',portada=\'\',id_usuario = \'2\',timestamp 	= \'2016-01-18 14:51:08\' ;', '', null, '2016-01-18 14:51:08', '2');
INSERT INTO `sis_logs` VALUES ('568', 'tbl_albums\r\n				set', '0', 'UPDATE', 'UPDATE tbl_albums\r\n				SET  portada=\'cover_5.jpg\',id_usuario = \'2\',timestamp 	= \'2016-01-18 14:51:08\'\r\n				WHERE id_album=\'5\'\r\n				LIMIT 1;', '', null, '2016-01-18 14:51:08', '2');
INSERT INTO `sis_logs` VALUES ('569', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'A Su Majestad\',alias=\'A Su Majestad\',autor=\'\',interprete=\'\',anio=\'2010\',id_album=\'5\',id_categorias=\'8,9\',id_usuario = \'2\',timestamp 	= \'2016-01-18 14:55:40\'\r\n				WHERE id_canto=\'123\'\r\n				LIMIT 1;', '', null, '2016-01-18 14:55:40', '2');
INSERT INTO `sis_logs` VALUES ('570', 'tbl_cantos\r\n				set', '0', 'UPDATE', 'UPDATE tbl_cantos\r\n				SET  canto=\'A Su Majestad\',alias=\'A Su Majestad\',autor=\'\',interprete=\'\',anio=\'2010\',id_album=\'5\',id_categorias=\'8\',id_usuario = \'2\',timestamp 	= \'2016-01-18 14:56:06\'\r\n				WHERE id_canto=\'123\'\r\n				LIMIT 1;', '', null, '2016-01-18 14:56:06', '2');

-- ----------------------------
-- Table structure for sis_menu
-- ----------------------------
DROP TABLE IF EXISTS `sis_menu`;
CREATE TABLE `sis_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_grupo` int(11) DEFAULT NULL,
  `id_superior` int(11) DEFAULT NULL,
  `nivel` tinyint(1) DEFAULT '1',
  `menu` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ico` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` smallint(3) DEFAULT NULL,
  `link` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_menu`),
  KEY `i_superior` (`id_superior`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sis_menu
-- ----------------------------
INSERT INTO `sis_menu` VALUES ('1', '1', '1', '0', 'ALABANZAS-01', null, '1', null, 'alabanzas01', null, '1');
INSERT INTO `sis_menu` VALUES ('2', '1', '1', '1', 'ALABANZAS-01-1', 'icon-music-tone-alt text-info', '1', 'CAPTURA/LISTADO', 'alabanzas02', null, '1');
INSERT INTO `sis_menu` VALUES ('3', '1', '1', '1', 'ALABANZAS-01-2', 'icon-disc text-success', '2', 'CAPTURA/LISTADO', 'alabanzas03', null, '1');
INSERT INTO `sis_menu` VALUES ('4', '1', '1', '1', 'ALABANZAS-01-3', 'fa fa-users text-primary-lter', '3', 'CAPTURA/LISTADO', 'alabanzas04', null, '1');
INSERT INTO `sis_menu` VALUES ('5', '5', '5', '0', 'CAPTURA-01', null, '1', null, 'captura01', null, '1');
INSERT INTO `sis_menu` VALUES ('6', '5', '5', '1', 'CAPTURA-01-1', 'icon-playlist icon text-info-dker', '1', 'CAPTURA/LISTADO', 'captura02', null, '1');
INSERT INTO `sis_menu` VALUES ('7', '6', '6', '2', 'CAPTURA-01-1-1', 'icon-microphone icon', '2', 'CAPTURA/CANTOS', 'captura03', null, '1');
INSERT INTO `sis_menu` VALUES ('23', '6', '6', '2', 'CAPTURA-01-1-2', 'icon-disc icon', '3', 'CAPTURA/ALBUMS', 'captura04', null, '1');
INSERT INTO `sis_menu` VALUES ('24', '6', '6', '2', 'CAPTURA-01-1-3', 'fa fa-users', '4', 'CAPTURA/ARTISTAS', 'captura05', null, '1');
INSERT INTO `sis_menu` VALUES ('25', '25', '25', '0', 'IGLESIA-01', null, '1', null, 'iglesia01', null, '1');
INSERT INTO `sis_menu` VALUES ('26', '25', '25', '1', 'IGLESIA-01-1', 'icon-home icon text-warning', '1', 'IGLESIA/IGLESIA', 'iglesia02', null, '1');
INSERT INTO `sis_menu` VALUES ('27', '25', '25', '1', 'IGLESIA-01-2', 'icon-bubbles icon text-warning', '2', 'IGLESIA/CONTACTO', 'iglesia03', null, '1');
INSERT INTO `sis_menu` VALUES ('28', '25', '25', '1', 'IGLESIA-01-3', 'icon-pointer icon text-warning', '3', 'IGLESIA/UBICACION', 'iglesia04', null, '1');
INSERT INTO `sis_menu` VALUES ('29', '25', '25', '1', 'IGLESIA-01-4', 'icon-social-facebook icon text-info-dker', '4', 'IGLESIA/FACEBOOK', 'iglesia05', null, '1');
INSERT INTO `sis_menu` VALUES ('30', '25', '25', '1', 'IGLESIA-01-5', 'icon-social-twitter icon text-info-dker', '5', 'IGLESIA/TWITTER', 'iglesia06', null, '1');
INSERT INTO `sis_menu` VALUES ('31', '25', '25', '1', 'IGLESIA-01-6', 'icon-social-youtube icon text-info-dker', '6', 'IGLESIA/YOUTUBE', 'iglesia07', null, '1');
INSERT INTO `sis_menu` VALUES ('32', '32', '32', '0', 'PMIEL-01', '', '1', null, 'pmiel01', null, '1');
INSERT INTO `sis_menu` VALUES ('33', '32', '32', '1', 'PMIEL-01-1', 'icon-globe icon text-success-lter', '1', 'PMIEL/RED', 'pmiel02', null, '1');
INSERT INTO `sis_menu` VALUES ('34', '6', '6', '2', 'CATALOGOS-01-1-4', 'icon-folder', '5', null, 'captura06', null, '1');
INSERT INTO `sis_menu` VALUES ('35', '6', '34', '3', 'CATALOGOS-01-1-4-1', 'icon-settings', '1', 'CATALOGOS/CATEGORIAS', 'captura07', null, '1');
INSERT INTO `sis_menu` VALUES ('36', '6', '34', '3', 'CATALOGOS-01-1-4-2', 'icon-settings', '2', 'CATALOGOS/RITMOS', 'captura08', null, '1');
INSERT INTO `sis_menu` VALUES ('37', '6', '34', '3', 'CATALOGOS-01-1-4-3', 'icon-settings', '3', 'CATALOGOS/COMPASES', 'captura09', null, '1');
INSERT INTO `sis_menu` VALUES ('38', '6', '34', '3', 'CATALOGOS-01-1-4-4', 'icon-settings', '4', 'CATALOGOS/ESCALAS', 'captura10', null, '1');
INSERT INTO `sis_menu` VALUES ('39', '6', '34', '3', 'CATALOGOS-01-1-4-5', 'icon-settings', '5', 'CATALOGOS/NOTAS', 'captura11', null, '1');
INSERT INTO `sis_menu` VALUES ('40', '40', '40', '0', 'ADMIN-01', null, '1', '', 'admin01', null, '1');
INSERT INTO `sis_menu` VALUES ('41', '40', '40', '1', 'ADMIN-02', ' icon-wrench text-danger', '1', '', 'admin02', null, '1');
INSERT INTO `sis_menu` VALUES ('42', '41', '41', '2', 'ADMIN-03', 'fa fa-users ', '1', 'ADMIN/USUARIOS', 'admin03', null, '1');
INSERT INTO `sis_menu` VALUES ('43', '41', '41', '2', 'ADMIN-04', 'fa fa-sitemap ', '2', 'ADMIN/PERFILES', 'admin04', null, '1');
INSERT INTO `sis_menu` VALUES ('44', '6', '34', '3', 'CATALOGOS-01-1-4-6', 'icon-settings', '6', 'CATALOGOS/ACORDES', 'captura12', null, '1');
INSERT INTO `sis_menu` VALUES ('45', '6', '6', '2', 'CAPTURA-01-1-4', 'icon-music-tone icon', '1', 'CAPTURA/CIFRADOS', 'captura13', null, '1');

-- ----------------------------
-- Table structure for sis_menu_lateral
-- ----------------------------
DROP TABLE IF EXISTS `sis_menu_lateral`;
CREATE TABLE `sis_menu_lateral` (
  `id_menu_lateral` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu` tinyint(2) DEFAULT NULL,
  `id_grupo` int(11) DEFAULT NULL,
  `id_superior` int(11) DEFAULT NULL,
  `nivel` tinyint(1) DEFAULT '1',
  `menu` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ico` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` smallint(3) DEFAULT NULL,
  `link` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_menu_lateral`),
  KEY `i_superior` (`id_superior`)
) ENGINE=MyISAM AUTO_INCREMENT=265 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sis_menu_lateral
-- ----------------------------
INSERT INTO `sis_menu_lateral` VALUES ('1', '2', '1', '1', '1', 'CAPTURA-01', 'visita.png', '1', 'CAPTURA/LISTADO', 'submenu01', null, '1');
INSERT INTO `sis_menu_lateral` VALUES ('2', '2', '2', '2', '1', 'CAPTURA-02', 'visita.png', '2', 'CAPTURA/CATEGORIAS', 'submenu02', null, '1');
INSERT INTO `sis_menu_lateral` VALUES ('3', '2', '3', '3', '1', 'CAPTURA-03', 'visita.png', '3', 'CAPTURA/COMPASES', 'submenu03', null, '1');
INSERT INTO `sis_menu_lateral` VALUES ('4', '2', '4', '4', '1', 'CAPTURA-04', 'visita.png', '4', 'CAPTURA/ESCALAS', 'submenu04', null, '1');

-- ----------------------------
-- Table structure for sis_modulos
-- ----------------------------
DROP TABLE IF EXISTS `sis_modulos`;
CREATE TABLE `sis_modulos` (
  `id_modulo` smallint(3) NOT NULL AUTO_INCREMENT,
  `id_nivel` smallint(3) DEFAULT '0',
  `modulo` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `icono` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_superior` smallint(3) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_modulo`),
  KEY `i_nivel` (`id_nivel`),
  KEY `i_superior` (`id_superior`),
  KEY `i_activo` (`activo`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sis_modulos
-- ----------------------------
INSERT INTO `sis_modulos` VALUES ('1', '0', 'ADMINISTRACION', null, null, '1');
INSERT INTO `sis_modulos` VALUES ('2', '0', 'INICIO', null, null, '1');
INSERT INTO `sis_modulos` VALUES ('3', '0', 'CAPTURA', null, null, '1');
INSERT INTO `sis_modulos` VALUES ('4', '0', 'CONSULTA', null, null, '1');
INSERT INTO `sis_modulos` VALUES ('5', '0', 'REPORTES', null, null, '1');

-- ----------------------------
-- Table structure for sis_online
-- ----------------------------
DROP TABLE IF EXISTS `sis_online`;
CREATE TABLE `sis_online` (
  `id_online` mediumint(4) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `online` int(12) DEFAULT NULL,
  PRIMARY KEY (`id_online`),
  KEY `i_usuario` (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sis_online
-- ----------------------------
INSERT INTO `sis_online` VALUES ('1', '2', '1453160662');
INSERT INTO `sis_online` VALUES ('2', '0', '1448641146');
INSERT INTO `sis_online` VALUES ('3', '8', '1444853002');
INSERT INTO `sis_online` VALUES ('4', '3', '1450882810');
INSERT INTO `sis_online` VALUES ('5', '1', '1449855389');
INSERT INTO `sis_online` VALUES ('6', '2', '1448474969');
INSERT INTO `sis_online` VALUES ('7', '2', '1448475009');
INSERT INTO `sis_online` VALUES ('8', '2', '1448475106');
INSERT INTO `sis_online` VALUES ('9', '2', '1448567881');
INSERT INTO `sis_online` VALUES ('10', '775', '1449250408');
INSERT INTO `sis_online` VALUES ('11', '776', '1449256931');
INSERT INTO `sis_online` VALUES ('12', '10', '1450453259');
INSERT INTO `sis_online` VALUES ('13', '4', '1449783157');
INSERT INTO `sis_online` VALUES ('14', '779', '1449784524');
INSERT INTO `sis_online` VALUES ('15', '7', '1449791655');
INSERT INTO `sis_online` VALUES ('16', '6', '1449792704');
INSERT INTO `sis_online` VALUES ('17', '5', '1450306975');

-- ----------------------------
-- Table structure for sis_paises
-- ----------------------------
DROP TABLE IF EXISTS `sis_paises`;
CREATE TABLE `sis_paises` (
  `id_pais` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_pais` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pais` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `clave` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `activo` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sis_paises
-- ----------------------------
INSERT INTO `sis_paises` VALUES ('1', 'MÉXICO', 'MÉXICO', 'MX', '1');
INSERT INTO `sis_paises` VALUES ('2', 'PERÚ', 'PERÚ', 'PR', '1');
INSERT INTO `sis_paises` VALUES ('3', 'EL SALVADOR', 'EL SALVADOR', 'ES', '1');
INSERT INTO `sis_paises` VALUES ('4', 'COSTA RICA', 'COSTA RICA', 'CR', '1');

-- ----------------------------
-- Table structure for sis_perfiles
-- ----------------------------
DROP TABLE IF EXISTS `sis_perfiles`;
CREATE TABLE `sis_perfiles` (
  `id_perfil` tinyint(2) NOT NULL AUTO_INCREMENT,
  `id_grupo` tinyint(2) DEFAULT '3',
  `perfil` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `visible` text COLLATE utf8_spanish_ci,
  `invisible` text COLLATE utf8_spanish_ci,
  `visible_submenu` text COLLATE utf8_spanish_ci,
  `invisible_submenu` text COLLATE utf8_spanish_ci,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id_perfil`),
  KEY `i_id_grupo` (`id_grupo`),
  KEY `i_activo` (`activo`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sis_perfiles
-- ----------------------------
INSERT INTO `sis_perfiles` VALUES ('1', '1', 'administradores', null, null, null, null, '1', null);
INSERT INTO `sis_perfiles` VALUES ('2', '2', 'SUPERVISORES', '1,2,3,4,5,6', '', '1,2,3,4,5,6,14,15,16,10,9,11,12,13,23,24,25', '', '1', null);
INSERT INTO `sis_perfiles` VALUES ('3', '3', 'EJECUTIVOS', '1,2,3,5,6', '', '1,2,3,4,5,6,10,9,11,12,13,23,24,25', '', '1', null);
INSERT INTO `sis_perfiles` VALUES ('7', '0', 'root', null, null, null, null, '1', null);
INSERT INTO `sis_perfiles` VALUES ('4', '1', 'PRUEBA', '2,3,4,7', null, '1,2,3,4,5,6,14,15,16,17,18,19,20,21,22', null, '1', '2015-12-17 12:49:19');
INSERT INTO `sis_perfiles` VALUES ('5', '2', 'PRUEBA 2', '2,3,4,7', '', '1,4,5,14,17,18,20,22', '', '1', '2015-12-17 17:03:53');
INSERT INTO `sis_perfiles` VALUES ('6', '2', 'PERFIL NUEVO', '1,2,4,7', '', '1,2,3,4,14,15,16,17,18,19,20,21,22', '', '1', '2015-12-22 09:35:52');

-- ----------------------------
-- Table structure for sis_personal
-- ----------------------------
DROP TABLE IF EXISTS `sis_personal`;
CREATE TABLE `sis_personal` (
  `id_personal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paterno` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `materno` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sucursal` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono_movil` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono_oficina` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `puesto` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_pais` int(10) DEFAULT NULL,
  `id_entidad` int(10) DEFAULT NULL,
  `id_municipio` int(10) DEFAULT NULL,
  `id_zona` int(10) DEFAULT NULL,
  `id_sector` int(10) DEFAULT NULL,
  `empleado_num` int(11) DEFAULT NULL,
  `id_empresa` smallint(4) DEFAULT '1',
  `id_supervisor` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_personal`),
  KEY `i_empresa` (`id_empresa`),
  KEY `i_activo` (`activo`),
  KEY `i_puesto` (`id_empresa`,`puesto`),
  KEY `i_empleado_num` (`empleado_num`),
  KEY `fk_usuario` (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=789 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sis_personal
-- ----------------------------
INSERT INTO `sis_personal` VALUES ('1', 'Root', 'del', 'sistema', 'oscar.maldonado@isolution.mx', '', 'oscar.maldonado@isolution.mx', '3333333333', 'Root', '1', '4', '23', '1', '2', '0', '1', null, null, null, '1');
INSERT INTO `sis_personal` VALUES ('2', 'ADMINISTRADOR', 'DEL', 'SISTEMA', 'oscar.maldonado@isolution.mx', '', 'oscar.maldonado@isolution.mx', '3333333333', 'ADMINISTRADOR', '1', '4', '23', '1', '2', '0', '1', null, null, null, '1');
INSERT INTO `sis_personal` VALUES ('3', 'Ejecutivo', '#', '1', 'oscar.maldonado@isolution.mx', '', 'oscar.maldonado@isolution.mx', '3333333333', 'Ejecutivo', '1', '4', '23', '1', '2', '0', '1', '10', null, null, '1');
INSERT INTO `sis_personal` VALUES ('4', 'Supervisor', '#', '1', 'oscar.maldonado@isolution.mx', '', 'oscar.maldonado@isolution.mx', '3333333333', 'Supervisor A', '1', '4', '23', '1', '2', '0', '1', null, '0000-00-00 00:00:00', null, '1');

-- ----------------------------
-- Table structure for sis_usuarios
-- ----------------------------
DROP TABLE IF EXISTS `sis_usuarios`;
CREATE TABLE `sis_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clave` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_perfil` tinyint(2) DEFAULT '60',
  `visible` text COLLATE utf8_spanish_ci,
  `invisible` text COLLATE utf8_spanish_ci,
  `visible_submenu` text COLLATE utf8_spanish_ci,
  `invisible_submenu` text COLLATE utf8_spanish_ci,
  `id_personal` int(11) DEFAULT NULL,
  `id_pais` mediumint(3) DEFAULT '1',
  `timestamp` datetime DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `login` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_usuario`),
  KEY `i_grupo` (`id_perfil`),
  KEY `i_activo` (`activo`),
  KEY `i_personal` (`id_personal`)
) ENGINE=MyISAM AUTO_INCREMENT=780 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sis_usuarios
-- ----------------------------
INSERT INTO `sis_usuarios` VALUES ('1', 'root', '63a9f0ea7bb98050796b649e85481845', '0', null, null, null, null, '1', '1', null, '1', '1');
INSERT INTO `sis_usuarios` VALUES ('2', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', null, null, null, null, '2', '1', null, '1', '1');
INSERT INTO `sis_usuarios` VALUES ('3', 'ejecutivo1', 'f79462b15ef1688bb8d1a4411cf6a4e6', '3', null, null, null, null, '3', '1', null, '1', '1');
INSERT INTO `sis_usuarios` VALUES ('4', 'ejecutivo2', 'f79462b15ef1688bb8d1a4411cf6a4e6', '3', null, null, null, null, '4', '1', null, '1', '0');
INSERT INTO `sis_usuarios` VALUES ('5', 'ejecutivo3', 'f79462b15ef1688bb8d1a4411cf6a4e6', '3', null, null, null, null, '5', '1', null, '1', '1');
INSERT INTO `sis_usuarios` VALUES ('6', 'EJECUTIVO4', 'f79462b15ef1688bb8d1a4411cf6a4e6', '3', '1,2,6', null, '1,2,3,23,24', null, '6', '1', null, '1', '1');
INSERT INTO `sis_usuarios` VALUES ('7', 'ejecutivo5', 'f79462b15ef1688bb8d1a4411cf6a4e6', '3', null, null, null, null, '7', '1', null, '1', '1');
INSERT INTO `sis_usuarios` VALUES ('8', 'ejecutivo6', 'f79462b15ef1688bb8d1a4411cf6a4e6', '3', null, null, null, null, '8', '1', null, '1', '1');
INSERT INTO `sis_usuarios` VALUES ('9', 'ejecutivo7', 'f79462b15ef1688bb8d1a4411cf6a4e6', '3', null, null, null, null, '9', '1', null, '1', '1');
INSERT INTO `sis_usuarios` VALUES ('10', 'supervisor1', '09348c20a019be0318387c08df7a783d', '2', null, null, null, null, '10', '1', null, '1', '1');
INSERT INTO `sis_usuarios` VALUES ('779', 'supervisor2', '09348c20a019be0318387c08df7a783d', '2', null, null, null, null, '788', '1', '2015-12-07 13:22:02', '1', '0');

-- ----------------------------
-- Table structure for tbl_albums
-- ----------------------------
DROP TABLE IF EXISTS `tbl_albums`;
CREATE TABLE `tbl_albums` (
  `id_album` int(11) NOT NULL AUTO_INCREMENT,
  `album` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `subtitulo` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_artista` int(11) DEFAULT NULL,
  `anio` mediumint(4) DEFAULT NULL,
  `pistas` smallint(3) DEFAULT NULL,
  `discos` tinyint(2) DEFAULT '1',
  `portada` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_album`),
  KEY `i_id_artista` (`id_artista`),
  KEY `i_anio` (`anio`),
  KEY `i_id_usuario` (`id_usuario`),
  KEY `i_activo` (`activo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tbl_albums
-- ----------------------------
INSERT INTO `tbl_albums` VALUES ('1', 'DOMÍNIO PÚBLICO', '', '1', null, null, null, 'cover_1.jpg', '2', '2016-01-18 14:48:11', '1');
INSERT INTO `tbl_albums` VALUES ('3', 'NUEVO', 'SUBTITULO', '2', '2015', '12', '1', 'cover_3.jpg', '2', '2016-01-12 18:12:07', '1');
INSERT INTO `tbl_albums` VALUES ('5', 'A SU MAJESTAD', '', '0', '2010', '10', '1', 'cover_5.jpg', '2', '2016-01-18 14:51:08', '1');

-- ----------------------------
-- Table structure for tbl_artistas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_artistas`;
CREATE TABLE `tbl_artistas` (
  `id_artista` int(11) NOT NULL AUTO_INCREMENT,
  `artista` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `iglesia` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ministerio` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pais` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_artista`),
  KEY `i_id_usuario` (`id_usuario`),
  KEY `i_activo` (`activo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tbl_artistas
-- ----------------------------
INSERT INTO `tbl_artistas` VALUES ('1', 'DESCONOCIDO', null, null, null, '0', null, '1');
INSERT INTO `tbl_artistas` VALUES ('2', 'nuevo', 'iglesia', 'MINISTERIO', 'México', '2', '2016-01-08 17:53:20', '1');
INSERT INTO `tbl_artistas` VALUES ('3', 'fsd', 'fsd', '1234', 'sdfsd', '2', '2016-01-08 17:53:03', '1');

-- ----------------------------
-- Table structure for tbl_cantos
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cantos`;
CREATE TABLE `tbl_cantos` (
  `id_canto` int(11) NOT NULL AUTO_INCREMENT,
  `canto` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `alias` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `autor` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `interprete` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `anio` mediumint(4) DEFAULT NULL,
  `id_album` int(11) DEFAULT NULL,
  `num_pista` smallint(3) DEFAULT NULL,
  `id_categorias` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_canto`),
  KEY `i_id_usuario` (`id_usuario`),
  KEY `i_activo` (`activo`),
  KEY `i_album` (`id_album`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tbl_cantos
-- ----------------------------
INSERT INTO `tbl_cantos` VALUES ('1', 'Quiero Ungir Tu Cabeza', 'Quiero Ungir Tu Cabeza', 'Elim', null, null, '1', null, '1', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('2', 'La Niña De Tus Ojos', 'La Niña De Tus Ojos', null, null, null, '1', null, '2,3', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('3', 'Exquisita Presencia', 'Exquisita Presencia', 'Elim', null, null, null, null, 'presencia,clamor', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('4', 'Gracias Cristo (Levantemos…)', 'Gracias Cristo (Levantemos…)', null, null, null, null, null, 'gratitud,adoracion', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('5', 'Mi Alma Tiene Sed', 'Mi Alma Tiene Sed', 'Santiago Atitlan', null, null, null, null, 'llenura,clamor,necesidad', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('6', 'Condúceme A Las Aguas', 'Condúceme A Las Aguas', 'Santiago Atitlan', null, null, null, null, 'clamor,llenura', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('7', 'Digno Eres De Gloria', 'Digno Eres De Gloria', null, null, null, null, null, 'adoracion,exaltacion', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('8', 'Cuando Pienso En Ti', 'Cuando Pienso En Ti', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('9', 'Así Es Mi Padre', 'Así Es Mi Padre', null, null, null, null, null, 'exaltacion,adoracion', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('10', 'Oh Que Grata Tu Amistad', 'Oh Que Grata Tu Amistad', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('11', 'No Hay Nadie Que Me Ame Cómo Él', 'No Hay Nadie Que Me Ame Cómo Él', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('12', 'Vine A Adorar A Dios', 'Vine A Adorar A Dios', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('13', 'Escuchar Tu Voz', 'Escuchar Tu Voz', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('14', 'Grandes Cosas Ha Hecho Jehová Con Nosotros', 'Grandes Cosas Ha Hecho Jehová Con Nosotros', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('15', 'Dame De Beber', 'Dame De Beber', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('16', 'Quiero Derramar Mi Corazón', 'Quiero Derramar Mi Corazón', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('17', 'En Tu Presencia, Sólo En Tu Presencia', 'En Tu Presencia, Sólo En Tu Presencia', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('18', 'Oh Jehová, Fortaleza Mía', 'Oh Jehová, Fortaleza Mía', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('19', 'Dios Está Aquí', 'Dios Está Aquí', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('20', 'El Espíritu De Dios Está En Este Lugar', 'El Espíritu De Dios Está En Este Lugar', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('21', 'Jesús, Jesús', 'Jesús, Jesús', 'Santiago Atitlan', null, null, null, null, 'adoracion,jesus', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('22', 'Tu Fidelidad', 'Tu Fidelidad', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('23', 'Al Que Está Sentado En El Trono', 'Al Que Está Sentado En El Trono', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('24', 'Canción Del Espíritu', 'Canción Del Espíritu', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('25', 'Hoy He Venido Con Dulces Palabras', 'Hoy He Venido Con Dulces Palabras', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('26', 'Señor Estoy Aquí', 'Señor Estoy Aquí', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('27', 'Hoy He Venido - Te Adoraré', 'Hoy He Venido - Te Adoraré', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('28', 'Santo Es El Señor (Empieza En G)', 'Santo Es El Señor (Empieza En G)', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('29', 'Hay Una Fuente En Mi', 'Hay Una Fuente En Mi', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('30', 'Yo Quiero Estar Donde Tú Estas', 'Yo Quiero Estar Donde Tú Estas', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('31', 'Menesteroso - Padre Celestial', 'Menesteroso - Padre Celestial', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('32', 'Él Me Escogió - Nada Merecía', 'Él Me Escogió - Nada Merecía', 'Mahanim', null, null, null, null, 'gratitud', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('33', 'Cúbreme Señor', 'Cúbreme Señor', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('34', 'A Ti Levantaré Mi Cántico', 'A Ti Levantaré Mi Cántico', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('35', 'Hay Momentos', 'Hay Momentos', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('36', 'Es A Tus Pies', 'Es A Tus Pies', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('37', 'Quiero Decirte Que Te Amo', 'Quiero Decirte Que Te Amo', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('38', 'Cuando No Era Nada', 'Cuando No Era Nada', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('39', 'Este Es Mi Respirar', 'Este Es Mi Respirar', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('40', 'Que Nunca Falte Tu Gloria', 'Que Nunca Falte Tu Gloria', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('41', 'El Señor Es Mi Rey', 'El Señor Es Mi Rey', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('42', 'Torre Fuerte', 'Torre Fuerte', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('43', 'Gracias - Por Tu Sangre Tengo Entrada', 'Gracias - Por Tu Sangre Tengo Entrada', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('44', 'Bienvenido Padre', 'Bienvenido Padre', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('45', 'Jesús Mi Amado', 'Jesús Mi Amado', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('46', 'Mi Vida Ofreceré', 'Mi Vida Ofreceré', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('47', 'Aleluya', 'Aleluya', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('48', 'Al Rey Jesús', 'Al Rey Jesús', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('49', 'Ven Amado Mío', 'Ven Amado Mío', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('50', 'Cuando Estoy En Tu Presencia', 'Cuando Estoy En Tu Presencia', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('51', 'Déjame Tocar Tu Manto', 'Déjame Tocar Tu Manto', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('52', 'Inconmovible', 'Inconmovible', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('53', 'Canto De Amor (Sube: A)', 'Canto De Amor (Sube: A)', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('54', 'Me Rindo, Todo A Ti', 'Me Rindo, Todo A Ti', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('55', 'Señor Tú Eres Mi Roca', 'Señor Tú Eres Mi Roca', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('56', 'Jehová Es La Fortaleza', 'Jehová Es La Fortaleza', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('57', 'Grande Es Mi Señor', 'Grande Es Mi Señor', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('58', 'Quiero Amarte Señor Jesús', 'Quiero Amarte Señor Jesús', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('59', 'Oh Altísimo Señor', 'Oh Altísimo Señor', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('60', 'Favores No Merecía', 'Favores No Merecía', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('61', 'Te Adoramos', 'Te Adoramos', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('62', 'Espíritu De Dios, Llena Mi Vida', 'Espíritu De Dios, Llena Mi Vida', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('63', 'Amamos Tu Presencia', 'Amamos Tu Presencia', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('64', 'Fiel A Tu Palabra', 'Fiel A Tu Palabra', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('65', 'Te Adoraré', 'Te Adoraré', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('66', 'Dejame Tocar Tu Manto', 'Dejame Tocar Tu Manto', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('67', 'Te Doy Gracias Señor', 'Te Doy Gracias Señor', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('68', 'Dios, El Más Grande', 'Dios, El Más Grande', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('69', 'Salmo 150 (Lo Que Respire…)', 'Salmo 150 (Lo Que Respire…)', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('70', 'Cantaré A Jesús Mi Amado', 'Cantaré A Jesús Mi Amado', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('71', 'Noble Sostén', 'Noble Sostén', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('72', 'Cuan Bello Es Mi Dios', 'Cuan Bello Es Mi Dios', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('73', 'Hay Poder En Jesús', 'Hay Poder En Jesús', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('74', 'Atráeme Señor (Y Correremos…)', 'Atráeme Señor (Y Correremos…)', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('75', 'Empieza A Llover', 'Empieza A Llover', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('76', 'Santa Unción (Que Tu Santa Unción Caiga...)', 'Santa Unción (Que Tu Santa Unción Caiga...)', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('77', 'Oh Santo Espíritu', 'Oh Santo Espíritu', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('78', 'Aceite Del Cielo', 'Aceite Del Cielo', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('79', 'La Nube De Tu Gloria', 'La Nube De Tu Gloria', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('80', 'Mío Es El Señor Jesús', 'Mío Es El Señor Jesús', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('81', 'Yo He Venido A Alabar', 'Yo He Venido A Alabar', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('82', 'Ahora Ya No Soy Igual', 'Ahora Ya No Soy Igual', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('83', 'Alguien Está Aquí', 'Alguien Está Aquí', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('84', 'Libre, Tu Me Hiciste Libe', 'Libre, Tu Me Hiciste Libe', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('85', 'Libre Por La Sangre De Cristo', 'Libre Por La Sangre De Cristo', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('86', 'Oh Jesús, Bienvenido', 'Oh Jesús, Bienvenido', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('87', 'Yo Quiero Cantar', 'Yo Quiero Cantar', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('88', 'Jehová Eterno Es Tu Poder', 'Jehová Eterno Es Tu Poder', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('89', 'No Temeré', 'No Temeré', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('90', 'Cómo Hizo David (Am)', 'Cómo Hizo David (Am)', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('91', 'Grita, Canta, Danza (Am)', 'Grita, Canta, Danza (Am)', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('92', 'El Poderoso De Israel (Am)', 'El Poderoso De Israel (Am)', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('93', 'Él Viene Por Mi', 'Él Viene Por Mi', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('94', 'Jesús Maravilloso', 'Jesús Maravilloso', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('95', 'Cantaré A Jehová', 'Cantaré A Jehová', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('96', 'Regocíjate Sión', 'Regocíjate Sión', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('97', 'Yo Tengo Un Dios Grande Y Sublime', 'Yo Tengo Un Dios Grande Y Sublime', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('98', 'El Nombre De Jesús Es Poder', 'El Nombre De Jesús Es Poder', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('99', 'Canción Feliz', 'Canción Feliz', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('100', 'Soy Feliz', 'Soy Feliz', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('101', 'Gózate Delante Del Señor', 'Gózate Delante Del Señor', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('102', 'Aplaudid', 'Aplaudid', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('103', 'Mis Pecados De Ayer', 'Mis Pecados De Ayer', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('104', 'Gracias Salvador Divino', 'Gracias Salvador Divino', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('105', 'Quién Como Jehová', 'Quién Como Jehová', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('106', 'Entraré Por Sus Puertas - Y Me Gozaré', 'Entraré Por Sus Puertas - Y Me Gozaré', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('107', 'No Hay Dios Como Mi Dios', 'No Hay Dios Como Mi Dios', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('108', 'Grande Es Mi Señor Jesús', 'Grande Es Mi Señor Jesús', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('109', 'Cantaré Al Señor Por Siempre', 'Cantaré Al Señor Por Siempre', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('110', 'El Señor Me Ha Levantado Con Poder', 'El Señor Me Ha Levantado Con Poder', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('111', 'A Ti Oh Precioso Jesús', 'A Ti Oh Precioso Jesús', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('112', 'La Fiesta Ya Empezó', 'La Fiesta Ya Empezó', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('113', 'Te Bendecimos Señor', 'Te Bendecimos Señor', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('114', 'Él Está Aquí', 'Él Está Aquí', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('115', 'Santo Es Él', 'Santo Es Él', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('116', 'Ven A Adorar A Cristo', 'Ven A Adorar A Cristo', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('117', 'Cristo Viene', 'Cristo Viene', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('118', 'Ya Ha Llegado El Momento', 'Ya Ha Llegado El Momento', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('119', 'No A Nosotros', 'No A Nosotros', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('120', 'Santo, Santo, Santo Es El Señor Jehová', 'Santo, Santo, Santo Es El Señor Jehová', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('121', 'Fiesta En Tu Honor', 'Fiesta En Tu Honor', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('122', 'Jesucristo Volverá', 'Jesucristo Volverá', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('123', 'A Su Majestad', 'A Su Majestad', '', '', '2010', '5', null, '8', '2', '2016-01-18 14:56:06', '1');
INSERT INTO `tbl_cantos` VALUES ('124', 'Hacedor De Maravillas', 'Hacedor De Maravillas', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('125', 'Varón De Guerra', 'Varón De Guerra', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('126', 'Poderoso', 'Poderoso', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('127', 'No Es Con Nuestras Fuerzas', 'No Es Con Nuestras Fuerzas', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('128', 'El Santo De Israel', 'El Santo De Israel', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('129', 'Con Oleo De Alegría - Toda La Noche Sin Parar', 'Con Oleo De Alegría - Toda La Noche Sin Parar', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('130', 'Con Gozo Cantaré A Jehová', 'Con Gozo Cantaré A Jehová', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('131', 'No Puedo Parar de Alabar', 'No Puedo Parar de Alabar', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('132', 'Abrió El Mar', 'Abrió El Mar', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('133', 'No Puedo Parar De Alabar', 'No Puedo Parar De Alabar', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('134', 'Ya Viene Tu Salvador', 'Ya Viene Tu Salvador', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('135', 'Jehová Levántate (Coro: Gm)', 'Jehová Levántate (Coro: Gm)', null, null, null, null, null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('136', 'Su Nombre Guerrero Es Jehová (Coro: Gm)', 'Su Nombre Guerrero Es Jehová (Coro: Gm)', 'Santiago Atitlan', null, null, '0', null, 'alabanza,danza,guerra,exclamacion+', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('137', 'No sueltes de mi mano', 'Oh Cristo!', 'Oscar Maldonado', 'Mahanaim Tlalpan', '2015', '3', null, '8,9', '2', '2016-01-18 13:58:17', '1');
INSERT INTO `tbl_cantos` VALUES ('138', '12312355', 'nuevo de prueba123', 'tert1', 'fsdfsdg', '2016', '3', null, '8,9', '2', '2016-01-18 13:12:29', '1');

-- ----------------------------
-- Table structure for tbl_cifrados
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cifrados`;
CREATE TABLE `tbl_cifrados` (
  `id_cifrado` int(11) NOT NULL AUTO_INCREMENT,
  `id_canto` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_escala` smallint(3) DEFAULT NULL,
  `id_variacion` smallint(3) DEFAULT NULL,
  `id_compas` tinyint(2) DEFAULT NULL,
  `tempo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_ritmo` tinyint(2) DEFAULT NULL,
  `acordes` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cifrado` text COLLATE utf8_spanish_ci,
  `piano` text COLLATE utf8_spanish_ci,
  `trompeta` text COLLATE utf8_spanish_ci,
  `sax` text COLLATE utf8_spanish_ci,
  `comentarios` text COLLATE utf8_spanish_ci,
  `id_usuario` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_cifrado`),
  KEY `i_id_usuario` (`id_usuario`),
  KEY `i_activo` (`activo`),
  KEY `i_escala` (`id_escala`),
  KEY `i_variacion` (`id_variacion`),
  KEY `i_compas` (`id_compas`),
  KEY `i_tempo` (`tempo`),
  KEY `i_ritmo` (`id_ritmo`),
  KEY `i_id_canto` (`id_canto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tbl_cifrados
-- ----------------------------
INSERT INTO `tbl_cifrados` VALUES ('1', '137', '20', '0', '1', '112', '3', '11,16', '[Am]///A su Majestad, [(Am-G)]\n[F]Bienvenido Rey, [(F/F#)]\n[G]A su Majestad, daré la [E]honra y el ho[Am]nor///', null, null, null, null, null, null, '1');
INSERT INTO `tbl_cifrados` VALUES ('4', '123', '5', '9', '3', '122', '3', '21,16,6,8', '[Am]///A su Majestad, [(Am-G)]\n[F]Bienvenido Rey, [(F/F#)]\n[G]A su Majestad, daré la [E]honra y el ho[Am]nor///', 'Piano', 'Trompeta', 'Saxofón', 'Comentarios', '2', '2016-01-18 14:46:04', '1');
