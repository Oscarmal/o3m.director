/*
Navicat MySQL Data Transfer

Source Server         : _localhost
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : o3m_director

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2015-12-31 14:24:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cat_categorias
-- ----------------------------
DROP TABLE IF EXISTS `cat_categorias`;
CREATE TABLE `cat_categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cat_categorias
-- ----------------------------
INSERT INTO `cat_categorias` VALUES ('1', 'ADORACIÓN');
INSERT INTO `cat_categorias` VALUES ('2', 'GRATITUD');
INSERT INTO `cat_categorias` VALUES ('3', 'AMOR');
INSERT INTO `cat_categorias` VALUES ('4', 'CLAMOR');
INSERT INTO `cat_categorias` VALUES ('5', 'PRESENCIA');
INSERT INTO `cat_categorias` VALUES ('6', 'EXHALTACIÓN');
INSERT INTO `cat_categorias` VALUES ('7', 'LLENURA');
INSERT INTO `cat_categorias` VALUES ('8', 'ALEGRÍA');
INSERT INTO `cat_categorias` VALUES ('9', 'JESÚS');
INSERT INTO `cat_categorias` VALUES ('10', 'ESPÍRITU SANTO');
INSERT INTO `cat_categorias` VALUES ('11', 'PADRE');
INSERT INTO `cat_categorias` VALUES ('12', 'NOVIA');
INSERT INTO `cat_categorias` VALUES ('13', 'ESPOSA');
INSERT INTO `cat_categorias` VALUES ('14', 'GUERRA');
INSERT INTO `cat_categorias` VALUES ('15', 'EXCLAMACIÓN');
INSERT INTO `cat_categorias` VALUES ('16', 'DANZA');

-- ----------------------------
-- Table structure for cat_compases
-- ----------------------------
DROP TABLE IF EXISTS `cat_compases`;
CREATE TABLE `cat_compases` (
  `id_compas` smallint(3) NOT NULL AUTO_INCREMENT,
  `compas` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_compas`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cat_compases
-- ----------------------------
INSERT INTO `cat_compases` VALUES ('1', '2/4');
INSERT INTO `cat_compases` VALUES ('2', '3/4');
INSERT INTO `cat_compases` VALUES ('3', '4/4');
INSERT INTO `cat_compases` VALUES ('4', '6/8');
INSERT INTO `cat_compases` VALUES ('5', '9/8');
INSERT INTO `cat_compases` VALUES ('6', '12/8');
INSERT INTO `cat_compases` VALUES ('7', '2/2');
INSERT INTO `cat_compases` VALUES ('8', '6/4');
INSERT INTO `cat_compases` VALUES ('9', '7/4');
INSERT INTO `cat_compases` VALUES ('10', '5/4');

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

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

-- ----------------------------
-- Table structure for cat_notas
-- ----------------------------
DROP TABLE IF EXISTS `cat_notas`;
CREATE TABLE `cat_notas` (
  `id_nota` smallint(3) NOT NULL AUTO_INCREMENT,
  `nota_es` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nota_en` varchar(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `alteracion` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_nota`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cat_notas
-- ----------------------------
INSERT INTO `cat_notas` VALUES ('1', 'Do', 'C', 'Mayores');
INSERT INTO `cat_notas` VALUES ('2', 'Re', 'D', 'Mayores');
INSERT INTO `cat_notas` VALUES ('3', 'Mi', 'E', 'Mayores');
INSERT INTO `cat_notas` VALUES ('4', 'Fa', 'F', 'Mayores');
INSERT INTO `cat_notas` VALUES ('5', 'Sol', 'G', 'Mayores');
INSERT INTO `cat_notas` VALUES ('6', 'La', 'A', 'Mayores');
INSERT INTO `cat_notas` VALUES ('7', 'Si', 'B', 'Mayores');
INSERT INTO `cat_notas` VALUES ('8', 'Dom', 'Cm', 'Menores');
INSERT INTO `cat_notas` VALUES ('9', 'Rem', 'Dm', 'Menores');
INSERT INTO `cat_notas` VALUES ('10', 'Mim', 'Em', 'Menores');
INSERT INTO `cat_notas` VALUES ('11', 'Fam', 'Fm', 'Menores');
INSERT INTO `cat_notas` VALUES ('12', 'Solm', 'Gm', 'Menores');
INSERT INTO `cat_notas` VALUES ('13', 'Lam', 'Am', 'Menores');
INSERT INTO `cat_notas` VALUES ('14', 'Sim', 'Bm', 'Menores');
INSERT INTO `cat_notas` VALUES ('15', 'Do7', 'C7', 'Séptimas');
INSERT INTO `cat_notas` VALUES ('16', 'Re7', 'D7', 'Séptimas');
INSERT INTO `cat_notas` VALUES ('17', 'Mi7', 'E7', 'Séptimas');
INSERT INTO `cat_notas` VALUES ('18', 'Fa7', 'F7', 'Séptimas');
INSERT INTO `cat_notas` VALUES ('19', 'Sol7', 'G7', 'Séptimas');
INSERT INTO `cat_notas` VALUES ('20', 'La7', 'A7', 'Séptimas');
INSERT INTO `cat_notas` VALUES ('21', 'Si7', 'B7', 'Séptimas');
INSERT INTO `cat_notas` VALUES ('22', 'Dom7', 'Cm7', 'Séptimas Menores');
INSERT INTO `cat_notas` VALUES ('23', 'Rem7', 'Dm7', 'Séptimas Menores');
INSERT INTO `cat_notas` VALUES ('24', 'Mim7', 'Em7', 'Séptimas Menores');
INSERT INTO `cat_notas` VALUES ('25', 'Fam7', 'Fm7', 'Séptimas Menores');
INSERT INTO `cat_notas` VALUES ('26', 'Solm7', 'Gm7', 'Séptimas Menores');
INSERT INTO `cat_notas` VALUES ('27', 'Lam7', 'Am7', 'Séptimas Menores');
INSERT INTO `cat_notas` VALUES ('28', 'Sim7', 'Bm7', 'Séptimas Menores');
INSERT INTO `cat_notas` VALUES ('29', 'Doaug', 'Caug', 'Aumentadas');
INSERT INTO `cat_notas` VALUES ('30', 'Reaug', 'Daug', 'Aumentadas');
INSERT INTO `cat_notas` VALUES ('31', 'Miaug', 'Eaug', 'Aumentadas');
INSERT INTO `cat_notas` VALUES ('32', 'Faaug', 'Faug', 'Aumentadas');
INSERT INTO `cat_notas` VALUES ('33', 'Solaug', 'Gaug', 'Aumentadas');
INSERT INTO `cat_notas` VALUES ('34', 'Laaug', 'Aaug', 'Aumentadas');
INSERT INTO `cat_notas` VALUES ('35', 'Siaug', 'Baug', 'Aumentadas');
INSERT INTO `cat_notas` VALUES ('36', 'Dodim', 'Cdim', 'Disminuciones');
INSERT INTO `cat_notas` VALUES ('37', 'Redim', 'Ddim', 'Disminuciones');
INSERT INTO `cat_notas` VALUES ('38', 'Midim', 'Edim', 'Disminuciones');
INSERT INTO `cat_notas` VALUES ('39', 'Fadim', 'Fdim', 'Disminuciones');
INSERT INTO `cat_notas` VALUES ('40', 'Soldim', 'Gdim', 'Disminuciones');
INSERT INTO `cat_notas` VALUES ('41', 'Ladim', 'Adim', 'Disminuciones');
INSERT INTO `cat_notas` VALUES ('42', 'Sidim', 'Bdim', 'Disminuciones');
INSERT INTO `cat_notas` VALUES ('43', 'DoMaj7', 'CMaj7', 'Septimas Mayores');
INSERT INTO `cat_notas` VALUES ('44', 'ReMaj7', 'DMaj7', 'Septimas Mayores');
INSERT INTO `cat_notas` VALUES ('45', 'MiMaj7', 'EMaj7', 'Septimas Mayores');
INSERT INTO `cat_notas` VALUES ('46', 'FaMaj7', 'FMaj7', 'Septimas Mayores');
INSERT INTO `cat_notas` VALUES ('47', 'SolMaj7', 'GMaj7', 'Septimas Mayores');
INSERT INTO `cat_notas` VALUES ('48', 'LaMaj7', 'AMaj7', 'Septimas Mayores');
INSERT INTO `cat_notas` VALUES ('49', 'SiMaj7', 'BMaj7', 'Septimas Mayores');
INSERT INTO `cat_notas` VALUES ('50', 'Dob', 'Cb', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('51', 'Reb', 'Db', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('52', 'Mib', 'Eb', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('53', 'Fab', 'Fb', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('54', 'Solb', 'Gb', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('55', 'Lab', 'Ab', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('56', 'Sib', 'Bb', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('57', 'Dobm', 'Cbm', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('58', 'Rebm', 'Dbm', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('59', 'Mibm', 'Ebm', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('60', 'Fabm', 'Fbm', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('61', 'Solbm', 'Gbm', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('62', 'Labm', 'Abm', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('63', 'Sibm', 'Bbm', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('64', 'Dob7', 'Cb7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('65', 'Reb7', 'Db7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('66', 'Mib7', 'Eb7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('67', 'Fab7', 'Fb7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('68', 'Solb7', 'Gb7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('69', 'Lab7', 'Ab7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('70', 'Sib7', 'Bb7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('71', 'Dobm7', 'Cbm7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('72', 'Rebm7', 'Dbm7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('73', 'Mibm7', 'Ebm7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('74', 'Fabm7', 'Fbm7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('75', 'Solbm7', 'Gbm7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('76', 'Labm7', 'Abm7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('77', 'Sibm7', 'Bbm7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('78', 'Dobaug', 'Cbaug', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('79', 'Rebaug', 'Dbaug', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('80', 'Mibaug', 'Ebaug', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('81', 'Fabaug', 'Fbaug', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('82', 'Solbaug', 'Gbaug', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('83', 'Labaug', 'Abaug', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('84', 'Sibaug', 'Bbaug', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('85', 'Dobdim', 'Cbdim', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('86', 'Rebdim', 'Dbdim', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('87', 'Mibdim', 'Ebdim', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('88', 'Fabdim', 'Fbdim', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('89', 'Solbdim', 'Gbdim', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('90', 'Labdim', 'Abdim', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('91', 'Sibdim', 'Bbdim', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('92', 'DobMaj7', 'CbMaj7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('93', 'RebMaj7', 'DbMaj7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('94', 'MibMaj7', 'EbMaj7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('95', 'FabMaj7', 'FbMaj7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('96', 'SolbMaj7', 'GbMaj7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('97', 'LabMaj7', 'AbMaj7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('98', 'SibMaj7', 'BbMaj7', 'Bemoles (b)');
INSERT INTO `cat_notas` VALUES ('99', 'Do#', 'C#', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('100', 'Re#', 'D#', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('101', 'Mi#', 'E#', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('102', 'Fa#', 'F#', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('103', 'Sol#', 'G#', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('104', 'La#', 'A#', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('105', 'Si#', 'B#', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('106', 'Do#m', 'C#m', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('107', 'Re#m', 'D#m', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('108', 'Mi#m', 'E#m', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('109', 'Fa#m', 'F#m', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('110', 'Sol#m', 'G#m', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('111', 'La#m', 'A#m', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('112', 'Si#m', 'B#m', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('113', 'Do#7', 'C#7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('114', 'Re#7', 'D#7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('115', 'Mi#7', 'E#7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('116', 'Fa#7', 'F#7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('117', 'Sol#7', 'G#7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('118', 'La#7', 'A#7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('119', 'Si#7', 'B#7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('120', 'Do#m7', 'C#m7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('121', 'Re#m7', 'D#m7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('122', 'Mi#m7', 'E#m7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('123', 'Fa#m7', 'F#m7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('124', 'Sol#m7', 'G#m7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('125', 'La#m7', 'A#m7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('126', 'Si#m7', 'B#m7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('127', 'Do#aug', 'C#aug', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('128', 'Re#aug', 'D#aug', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('129', 'Mi#aug', 'E#aug', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('130', 'Fa#aug', 'F#aug', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('131', 'Sol#aug', 'G#aug', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('132', 'La#aug', 'A#aug', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('133', 'Si#aug', 'B#aug', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('134', 'Do#dim', 'C#dim', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('135', 'Re#dim', 'D#dim', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('136', 'Mi#dim', 'E#dim', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('137', 'Fa#dim', 'F#dim', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('138', 'Sol#dim', 'G#dim', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('139', 'La#dim', 'A#dim', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('140', 'Si#dim', 'B#dim', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('141', 'Do#Maj7', 'C#Maj7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('142', 'Re#Maj7', 'D#Maj7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('143', 'Mi#Maj7', 'E#Maj7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('144', 'Fa#Maj7', 'F#Maj7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('145', 'Sol#Maj7', 'G#Maj7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('146', 'La#Maj7', 'A#Maj7', 'Sostenidos (#)');
INSERT INTO `cat_notas` VALUES ('147', 'Si#Maj7', 'B#Maj7', 'Sostenidos (#)');

-- ----------------------------
-- Table structure for cat_ritmos
-- ----------------------------
DROP TABLE IF EXISTS `cat_ritmos`;
CREATE TABLE `cat_ritmos` (
  `id_ritmo` tinyint(2) NOT NULL AUTO_INCREMENT,
  `ritmo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_ritmo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of cat_ritmos
-- ----------------------------
INSERT INTO `cat_ritmos` VALUES ('1', 'LENTO');
INSERT INTO `cat_ritmos` VALUES ('2', 'MODERADO');
INSERT INTO `cat_ritmos` VALUES ('3', 'RÁPIDO');
INSERT INTO `cat_ritmos` VALUES ('4', 'MARCHA');

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
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of sis_menu
-- ----------------------------
INSERT INTO `sis_menu` VALUES ('1', '1', '1', '1', 'MODULO-01', 'inicio.png', '1', 'GENERAL/INICIO', 'mod01', null, '1');
INSERT INTO `sis_menu` VALUES ('2', '2', '2', '1', 'MODULO-02', 'visita.png', '2', 'CAPTURA/LISTADO', 'mod02', null, '1');
INSERT INTO `sis_menu` VALUES ('3', '3', '3', '1', 'MODULO-03', 'clientes.png', '3', 'CONTACTOS/LISTADO', 'mod03', null, '1');
INSERT INTO `sis_menu` VALUES ('4', '4', '4', '1', 'MODULO-04', 'consultores.png', '4', 'EJECUTIVOS/LISTADO', 'mod04', null, '1');
INSERT INTO `sis_menu` VALUES ('5', '5', '5', '1', 'MODULO-05', 'visita.png', '5', 'OPERACION/LISTADO', 'mod05', null, '1');
INSERT INTO `sis_menu` VALUES ('6', '6', '6', '1', 'MODULO-06', 'consultas.png', '6', 'REPORTES/GENERAL', 'mod06', null, '1');
INSERT INTO `sis_menu` VALUES ('7', '7', '7', '1', 'MODULO-07', 'inicio.png', '7', 'CATALOGOS/LISTADO', 'mod07', null, '1');

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
INSERT INTO `sis_online` VALUES ('1', '2', '1451519000');
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
  `pistas_total` smallint(3) DEFAULT NULL,
  `discos_total` tinyint(2) DEFAULT '1',
  `portada` blob,
  `id_usuario` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_album`),
  KEY `i_id_artista` (`id_artista`),
  KEY `i_anio` (`anio`),
  KEY `i_id_usuario` (`id_usuario`),
  KEY `i_activo` (`activo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tbl_albums
-- ----------------------------
INSERT INTO `tbl_albums` VALUES ('1', 'DOMÍNIO PÚBLICO', '', '1', null, null, null, null, null, null, '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tbl_artistas
-- ----------------------------
INSERT INTO `tbl_artistas` VALUES ('1', 'DESCONOCIDO', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for tbl_cantos
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cantos`;
CREATE TABLE `tbl_cantos` (
  `id_canto` int(11) NOT NULL AUTO_INCREMENT,
  `canto` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `alias` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `autor` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_album` int(11) DEFAULT NULL,
  `id_escala` smallint(3) DEFAULT NULL,
  `id_variacion` smallint(3) DEFAULT NULL,
  `id_compas` tinyint(2) DEFAULT NULL,
  `tempo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_ritmo` tinyint(2) DEFAULT NULL,
  `acordes` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_categorias` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_canto`),
  KEY `i_id_usuario` (`id_usuario`),
  KEY `i_activo` (`activo`),
  KEY `i_album` (`id_album`),
  KEY `i_escala` (`id_escala`),
  KEY `i_variacion` (`id_variacion`),
  KEY `i_compas` (`id_compas`),
  KEY `i_tempo` (`tempo`),
  KEY `i_ritmo` (`id_ritmo`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tbl_cantos
-- ----------------------------
INSERT INTO `tbl_cantos` VALUES ('1', 'Quiero Ungir Tu Cabeza', 'Quiero Ungir Tu Cabeza', 'Elim', '1', '4', null, '3', null, '1', null, '1', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('2', 'La Niña De Tus Ojos', 'La Niña De Tus Ojos', null, '1', '4', null, '3', null, '1', null, '2,3', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('3', 'Exquisita Presencia', 'Exquisita Presencia', 'Elim', null, '0', null, null, null, '1', null, 'presencia,clamor', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('4', 'Gracias Cristo (Levantemos…)', 'Gracias Cristo (Levantemos…)', null, null, '0', null, null, null, '1', null, 'gratitud,adoracion', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('5', 'Mi Alma Tiene Sed', 'Mi Alma Tiene Sed', 'Santiago Atitlan', null, '0', null, null, null, '1', null, 'llenura,clamor,necesidad', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('6', 'Condúceme A Las Aguas', 'Condúceme A Las Aguas', 'Santiago Atitlan', null, '0', null, null, null, '1', null, 'clamor,llenura', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('7', 'Digno Eres De Gloria', 'Digno Eres De Gloria', null, null, '0', null, null, null, '1', null, 'adoracion,exaltacion', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('8', 'Cuando Pienso En Ti', 'Cuando Pienso En Ti', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('9', 'Así Es Mi Padre', 'Así Es Mi Padre', null, null, '0', null, null, null, '1', null, 'exaltacion,adoracion', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('10', 'Oh Que Grata Tu Amistad', 'Oh Que Grata Tu Amistad', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('11', 'No Hay Nadie Que Me Ame Cómo Él', 'No Hay Nadie Que Me Ame Cómo Él', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('12', 'Vine A Adorar A Dios', 'Vine A Adorar A Dios', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('13', 'Escuchar Tu Voz', 'Escuchar Tu Voz', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('14', 'Grandes Cosas Ha Hecho Jehová Con Nosotros', 'Grandes Cosas Ha Hecho Jehová Con Nosotros', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('15', 'Dame De Beber', 'Dame De Beber', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('16', 'Quiero Derramar Mi Corazón', 'Quiero Derramar Mi Corazón', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('17', 'En Tu Presencia, Sólo En Tu Presencia', 'En Tu Presencia, Sólo En Tu Presencia', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('18', 'Oh Jehová, Fortaleza Mía', 'Oh Jehová, Fortaleza Mía', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('19', 'Dios Está Aquí', 'Dios Está Aquí', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('20', 'El Espíritu De Dios Está En Este Lugar', 'El Espíritu De Dios Está En Este Lugar', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('21', 'Jesús, Jesús', 'Jesús, Jesús', 'Santiago Atitlan', null, '0', null, null, null, '1', null, 'adoracion,jesus', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('22', 'Tu Fidelidad', 'Tu Fidelidad', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('23', 'Al Que Está Sentado En El Trono', 'Al Que Está Sentado En El Trono', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('24', 'Canción Del Espíritu', 'Canción Del Espíritu', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('25', 'Hoy He Venido Con Dulces Palabras', 'Hoy He Venido Con Dulces Palabras', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('26', 'Señor Estoy Aquí', 'Señor Estoy Aquí', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('27', 'Hoy He Venido - Te Adoraré', 'Hoy He Venido - Te Adoraré', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('28', 'Santo Es El Señor (Empieza En G)', 'Santo Es El Señor (Empieza En G)', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('29', 'Hay Una Fuente En Mi', 'Hay Una Fuente En Mi', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('30', 'Yo Quiero Estar Donde Tú Estas', 'Yo Quiero Estar Donde Tú Estas', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('31', 'Menesteroso - Padre Celestial', 'Menesteroso - Padre Celestial', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('32', 'Él Me Escogió - Nada Merecía', 'Él Me Escogió - Nada Merecía', 'Mahanim', null, '0', null, null, null, '1', null, 'gratitud', null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('33', 'Cúbreme Señor', 'Cúbreme Señor', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('34', 'A Ti Levantaré Mi Cántico', 'A Ti Levantaré Mi Cántico', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('35', 'Hay Momentos', 'Hay Momentos', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('36', 'Es A Tus Pies', 'Es A Tus Pies', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('37', 'Quiero Decirte Que Te Amo', 'Quiero Decirte Que Te Amo', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('38', 'Cuando No Era Nada', 'Cuando No Era Nada', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('39', 'Este Es Mi Respirar', 'Este Es Mi Respirar', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('40', 'Que Nunca Falte Tu Gloria', 'Que Nunca Falte Tu Gloria', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('41', 'El Señor Es Mi Rey', 'El Señor Es Mi Rey', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('42', 'Torre Fuerte', 'Torre Fuerte', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('43', 'Gracias - Por Tu Sangre Tengo Entrada', 'Gracias - Por Tu Sangre Tengo Entrada', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('44', 'Bienvenido Padre', 'Bienvenido Padre', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('45', 'Jesús Mi Amado', 'Jesús Mi Amado', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('46', 'Mi Vida Ofreceré', 'Mi Vida Ofreceré', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('47', 'Aleluya', 'Aleluya', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('48', 'Al Rey Jesús', 'Al Rey Jesús', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('49', 'Ven Amado Mío', 'Ven Amado Mío', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('50', 'Cuando Estoy En Tu Presencia', 'Cuando Estoy En Tu Presencia', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('51', 'Déjame Tocar Tu Manto', 'Déjame Tocar Tu Manto', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('52', 'Inconmovible', 'Inconmovible', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('53', 'Canto De Amor (Sube: A)', 'Canto De Amor (Sube: A)', null, null, '0', '0', null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('54', 'Me Rindo, Todo A Ti', 'Me Rindo, Todo A Ti', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('55', 'Señor Tú Eres Mi Roca', 'Señor Tú Eres Mi Roca', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('56', 'Jehová Es La Fortaleza', 'Jehová Es La Fortaleza', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('57', 'Grande Es Mi Señor', 'Grande Es Mi Señor', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('58', 'Quiero Amarte Señor Jesús', 'Quiero Amarte Señor Jesús', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('59', 'Oh Altísimo Señor', 'Oh Altísimo Señor', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('60', 'Favores No Merecía', 'Favores No Merecía', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('61', 'Te Adoramos', 'Te Adoramos', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('62', 'Espíritu De Dios, Llena Mi Vida', 'Espíritu De Dios, Llena Mi Vida', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('63', 'Amamos Tu Presencia', 'Amamos Tu Presencia', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('64', 'Fiel A Tu Palabra', 'Fiel A Tu Palabra', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('65', 'Te Adoraré', 'Te Adoraré', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('66', 'Dejame Tocar Tu Manto', 'Dejame Tocar Tu Manto', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('67', 'Te Doy Gracias Señor', 'Te Doy Gracias Señor', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('68', 'Dios, El Más Grande', 'Dios, El Más Grande', null, null, '0', null, null, null, '1', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('69', 'Salmo 150 (Lo Que Respire…)', 'Salmo 150 (Lo Que Respire…)', null, null, '0', null, null, null, '2', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('70', 'Cantaré A Jesús Mi Amado', 'Cantaré A Jesús Mi Amado', null, null, '0', null, null, null, '2', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('71', 'Noble Sostén', 'Noble Sostén', null, null, '0', null, null, null, '2', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('72', 'Cuan Bello Es Mi Dios', 'Cuan Bello Es Mi Dios', null, null, '0', null, null, null, '2', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('73', 'Hay Poder En Jesús', 'Hay Poder En Jesús', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('74', 'Atráeme Señor (Y Correremos…)', 'Atráeme Señor (Y Correremos…)', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('75', 'Empieza A Llover', 'Empieza A Llover', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('76', 'Santa Unción (Que Tu Santa Unción Caiga...)', 'Santa Unción (Que Tu Santa Unción Caiga...)', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('77', 'Oh Santo Espíritu', 'Oh Santo Espíritu', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('78', 'Aceite Del Cielo', 'Aceite Del Cielo', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('79', 'La Nube De Tu Gloria', 'La Nube De Tu Gloria', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('80', 'Mío Es El Señor Jesús', 'Mío Es El Señor Jesús', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('81', 'Yo He Venido A Alabar', 'Yo He Venido A Alabar', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('82', 'Ahora Ya No Soy Igual', 'Ahora Ya No Soy Igual', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('83', 'Alguien Está Aquí', 'Alguien Está Aquí', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('84', 'Libre, Tu Me Hiciste Libe', 'Libre, Tu Me Hiciste Libe', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('85', 'Libre Por La Sangre De Cristo', 'Libre Por La Sangre De Cristo', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('86', 'Oh Jesús, Bienvenido', 'Oh Jesús, Bienvenido', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('87', 'Yo Quiero Cantar', 'Yo Quiero Cantar', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('88', 'Jehová Eterno Es Tu Poder', 'Jehová Eterno Es Tu Poder', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('89', 'No Temeré', 'No Temeré', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('90', 'Cómo Hizo David (Am)', 'Cómo Hizo David (Am)', null, null, '0', '0', null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('91', 'Grita, Canta, Danza (Am)', 'Grita, Canta, Danza (Am)', null, null, '0', '0', null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('92', 'El Poderoso De Israel (Am)', 'El Poderoso De Israel (Am)', null, null, '0', '0', null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('93', 'Él Viene Por Mi', 'Él Viene Por Mi', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('94', 'Jesús Maravilloso', 'Jesús Maravilloso', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('95', 'Cantaré A Jehová', 'Cantaré A Jehová', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('96', 'Regocíjate Sión', 'Regocíjate Sión', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('97', 'Yo Tengo Un Dios Grande Y Sublime', 'Yo Tengo Un Dios Grande Y Sublime', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('98', 'El Nombre De Jesús Es Poder', 'El Nombre De Jesús Es Poder', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('99', 'Canción Feliz', 'Canción Feliz', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('100', 'Soy Feliz', 'Soy Feliz', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('101', 'Gózate Delante Del Señor', 'Gózate Delante Del Señor', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('102', 'Aplaudid', 'Aplaudid', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('103', 'Mis Pecados De Ayer', 'Mis Pecados De Ayer', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('104', 'Gracias Salvador Divino', 'Gracias Salvador Divino', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('105', 'Quién Como Jehová', 'Quién Como Jehová', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('106', 'Entraré Por Sus Puertas - Y Me Gozaré', 'Entraré Por Sus Puertas - Y Me Gozaré', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('107', 'No Hay Dios Como Mi Dios', 'No Hay Dios Como Mi Dios', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('108', 'Grande Es Mi Señor Jesús', 'Grande Es Mi Señor Jesús', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('109', 'Cantaré Al Señor Por Siempre', 'Cantaré Al Señor Por Siempre', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('110', 'El Señor Me Ha Levantado Con Poder', 'El Señor Me Ha Levantado Con Poder', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('111', 'A Ti Oh Precioso Jesús', 'A Ti Oh Precioso Jesús', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('112', 'La Fiesta Ya Empezó', 'La Fiesta Ya Empezó', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('113', 'Te Bendecimos Señor', 'Te Bendecimos Señor', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('114', 'Él Está Aquí', 'Él Está Aquí', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('115', 'Santo Es Él', 'Santo Es Él', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('116', 'Ven A Adorar A Cristo', 'Ven A Adorar A Cristo', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('117', 'Cristo Viene', 'Cristo Viene', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('118', 'Ya Ha Llegado El Momento', 'Ya Ha Llegado El Momento', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('119', 'No A Nosotros', 'No A Nosotros', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('120', 'Santo, Santo, Santo Es El Señor Jehová', 'Santo, Santo, Santo Es El Señor Jehová', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('121', 'Fiesta En Tu Honor', 'Fiesta En Tu Honor', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('122', 'Jesucristo Volverá', 'Jesucristo Volverá', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('123', 'A Su Majestad', 'A Su Majestad', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('124', 'Hacedor De Maravillas', 'Hacedor De Maravillas', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('125', 'Varón De Guerra', 'Varón De Guerra', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('126', 'Poderoso', 'Poderoso', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('127', 'No Es Con Nuestras Fuerzas', 'No Es Con Nuestras Fuerzas', null, null, '0', '0', null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('128', 'El Santo De Israel', 'El Santo De Israel', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('129', 'Con Oleo De Alegría - Toda La Noche Sin Parar', 'Con Oleo De Alegría - Toda La Noche Sin Parar', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('130', 'Con Gozo Cantaré A Jehová', 'Con Gozo Cantaré A Jehová', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('131', 'No Puedo Parar de Alabar', 'No Puedo Parar de Alabar', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('132', 'Abrió El Mar', 'Abrió El Mar', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('133', 'No Puedo Parar De Alabar', 'No Puedo Parar De Alabar', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('134', 'Ya Viene Tu Salvador', 'Ya Viene Tu Salvador', null, null, '0', null, null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('135', 'Jehová Levántate (Coro: Gm)', 'Jehová Levántate (Coro: Gm)', null, null, '0', '0', null, null, '3', null, null, null, null, '1');
INSERT INTO `tbl_cantos` VALUES ('136', 'Su Nombre Guerrero Es Jehová (Coro: Gm)', 'Su Nombre Guerrero Es Jehová (Coro: Gm)', 'Santiago Atitlan', '0', '0', null, null, null, '3', null, 'alabanza,danza,guerra,exclamacion+', null, null, '1');
