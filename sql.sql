-- SQL optionnel pour le tracking
CREATE TABLE IF NOT EXISTS `player_sits` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `identifier` VARCHAR(60) NOT NULL,
    `model` VARCHAR(100) NOT NULL,
    `coords` TEXT NOT NULL,
    `type` VARCHAR(50) NOT NULL,
    `start_time` INT(11) NOT NULL,
    `end_time` INT(11) DEFAULT NULL,
    `duration` INT(11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX `identifier` (`identifier`),
    INDEX `start_time` (`start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
