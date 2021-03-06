CREATE TABLE IF NOT EXISTS `daemon_protocol` (
  `daemon_id` int(10) unsigned NOT NULL,
  `protocol_id` int(10) unsigned NOT NULL,
  `interface` varchar(63) DEFAULT NULL,
  `interface_arg` varchar(63) DEFAULT NULL,
  `interface_addr` varchar(63) DEFAULT NULL,
  `daemon_activated` tinyint(3) unsigned NOT NULL DEFAULT '1',
  KEY `daemon_id` (`daemon_id`),
  KEY `protocol_id` (`protocol_id`),
  CONSTRAINT `daemon_protocol_ibfk_1` FOREIGN KEY (`daemon_id`) REFERENCES `daemon` (`daemon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `daemon_protocol_ibfk_2` FOREIGN KEY (`protocol_id`) REFERENCES `protocol` (`protocol_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
