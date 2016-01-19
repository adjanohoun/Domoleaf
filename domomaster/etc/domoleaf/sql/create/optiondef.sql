SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS optiondef;

CREATE TABLE `optiondef` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(63) DEFAULT NULL,
  `namede` varchar(63) NOT NULL DEFAULT '',
  `namees` varchar(63) NOT NULL DEFAULT '',
  `namefr` varchar(63) NOT NULL DEFAULT '',
  `nameit` varchar(63) NOT NULL DEFAULT '',
  PRIMARY KEY (`option_id`),
  KEY `name` (`name`),
  KEY `namede` (`namede`),
  KEY `namees` (`namees`),
  KEY `namefr` (`namefr`),
  KEY `nameit` (`nameit`)
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=latin1;

INSERT INTO `optiondef` (`option_id`, `name`, `namede`, `namees`, `namefr`, `nameit`)
VALUES
	(6, 'Hygrométrie', '', '', 'Hygrométrie', ''),
	(12, 'ON/OFF', '', '', 'ON/OFF', ''),
	(13, 'Varié', '', '', 'Varié', ''),
	(54, 'Montée/Descente', '', '', 'Montée/Descente', ''),
	(72, NULL, '', '', 'Température', ''),
	(73, NULL, '', '', 'CO2', ''),
	(79, NULL, '', '', 'Luminosité', ''),
	(92, NULL, '', '', 'Lumineuse', ''),
	(96, NULL, '', '', 'Ouverture/Fermeture', ''),
	(97, NULL, '', '', 'Détection de mouvements', ''),
	(112, NULL, '', '', 'Détection InfraRouge', ''),
	(113, NULL, '', '', 'Détection UltraSonic', ''),
	(153, NULL, '', '', 'Détection de courant', ''),
	(173, NULL, '', '', 'Pluie', ''),
	(174, NULL, '', '', 'Vent', ''),
	(176, NULL, '', '', 'Diagnostic Bus', ''),
	(181, NULL, '', '', 'Option 1', ''),
	(182, NULL, '', '', 'Option 2', ''),
	(189, NULL, '', '', 'Option 3', ''),
	(191, NULL, '', '', 'Option 4', ''),
	(195, NULL, '', '', 'Option 5', ''),
	(196, NULL, '', '', 'Option 6', ''),
	(197, NULL, '', '', 'Option 7', ''),
	(198, NULL, '', '', 'Option 8', ''),
	(199, NULL, '', '', 'Option 9', ''),
	(355, NULL, '', '', 'Image JPG', ''),
	(356, NULL, '', '', 'MJPEG', ''),
	(357, NULL, '', '', 'Haut', ''),
	(358, NULL, '', '', 'Bas', ''),
	(359, NULL, '', '', 'Gauche', ''),
	(360, NULL, '', '', 'Droite', ''),
	(361, NULL, '', '', 'Home', ''),
	(363, NULL, '', '', 'Lecture', ''),
	(364, NULL, '', '', 'Pause', ''),
	(365, NULL, '', '', 'Stop', ''),
	(366, NULL, '', '', 'Suivant', ''),
	(367, NULL, '', '', 'Précédent', ''),
	(368, NULL, '', '', 'Muet', ''),
	(371, NULL, '', '', 'Sirène', ''),
	(383, NULL, '', '', 'Volume', ''),
	(388, NULL, '', '', 'Température de consigne', ''),
	(392, NULL, '', '', 'Varié Rouge', ''),
	(393, NULL, '', '', 'Varié Vert', ''),
	(394, NULL, '', '', 'Varié Bleu', ''),
	(399, 'Consumption', '', '', 'Consommation', ''),
	(400, 'Ventilation 0', '', '', 'Ventilation 0', ''),
	(401, 'Ventilation 1', '', '', 'Ventilation 1', ''),
	(402, 'Ventilation 2', '', '', 'Ventilation 2', ''),
	(403, 'Ventilation 3', '', '', 'Ventilation 3', ''),
	(404, 'Ventilation 4', '', '', 'Ventilation 4', ''),
	(405, 'Ventilation 5', '', '', 'Ventilation 5', ''),
	(406, 'Ventilation 6', '', '', 'Ventilation 6', ''),
	(407, 'Power', '', '', 'Puissance', ''),
	(408, 'Picture', '', '', 'Photo', ''),
	(410, NULL, '', '', 'Varié Blanc', ''),
	(412, 'Comfort', '', '', 'Confort', ''),
	(413, 'Night', '', '', 'Nuit', ''),
	(414, 'Eco', '', '', 'Eco', ''),
	(415, 'Frost free', '', '', 'Hors gel', ''),
	(416, 'Comfort -1°C', '', '', 'Confort -1°C', ''),
	(417, 'Comfort -2°C', '', '', 'Confort -2°C', '');

SET FOREIGN_KEY_CHECKS=1;
