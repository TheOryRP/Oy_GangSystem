CREATE TABLE IF NOT EXISTS `gangs` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `label` VARCHAR(50) NOT NULL,
    `money` INT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS `gang_members` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `identifier` VARCHAR(50) NOT NULL,
    `gang` VARCHAR(50) NOT NULL,
    `rank` INT DEFAULT 0
);
