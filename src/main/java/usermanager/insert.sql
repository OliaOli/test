CREATE TABLE IF NOT EXISTS `User` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

INSERT INTO `User` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES
  (1, 'user1', 21, 0, '2015-11-25 10:05:12'),
  (2, 'user2', 22, 0, '2015-11-25 10:06:25'),
  (3, 'user3', 23, 0, '2015-11-25 10:12:47'),
  (4, 'user4', 21, 1, '2016-11-25 10:20:30');
