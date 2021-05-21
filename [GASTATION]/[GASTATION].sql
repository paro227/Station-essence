CREATE TABLE IF NOT EXISTS `gas_station_business`( `gas_station_id` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci', 

`user_id` VARCHAR(50) NOT NULL, `stock` INT(10) UNSIGNED NOT NULL DEFAULT '0', 
`price` INT(10) UNSIGNED NOT NULL DEFAULT '0', 
`stock_upgrade` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0', 
`truck_upgrade` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0', 
`relationship_upgrade` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0', 
`money` INT(10) UNSIGNED NOT NULL DEFAULT '0', 
`total_money_earned` INT(10) UNSIGNED NOT NULL DEFAULT '0', 
`total_money_spent` INT(10) UNSIGNED NOT NULL DEFAULT '0', 
`gas_bought` INT(10) UNSIGNED NOT NULL DEFAULT '0', 
`gas_sold` INT(10) UNSIGNED NOT NULL DEFAULT '0', 
`distance_traveled` DOUBLE UNSIGNED NOT NULL DEFAULT '0', 
`total_visits` INT(10) UNSIGNED NOT NULL DEFAULT '0', 
`customers` INT(10) UNSIGNED NOT NULL DEFAULT '0', 
`timer` INT(10) UNSIGNED NOT NULL DEFAULT '0', 
PRIMARY KEY (`gas_station_id`) USING BTREE) COLLATE='utf8mb4_general_ci' ENGINE=InnoDB ; 

CREATE TABLE IF NOT EXISTS `gas_station_balance` ( `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
 
`gas_station_id` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci', 
`income` BIT(1) NOT NULL, 
`title` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci', 
`amount` INT(10) UNSIGNED NOT NULL, 
`date` INT(10) UNSIGNED NOT NULL, PRIMARY KEY (`id`) USING BTREE ) COLLATE='utf8mb4_general_ci' ENGINE=InnoDB ; 

CREATE TABLE IF NOT EXISTS `gas_station_jobs` ( `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
 
`gas_station_id` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci', 
`name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci', 
`reward` INT(10) UNSIGNED NOT NULL DEFAULT '0', 
`amount` INT(11) NOT NULL DEFAULT '0', 
`progress` BIT(1) NOT NULL DEFAULT b'0', 
PRIMARY KEY (`id`) USING BTREE ) COLLATE='utf8mb4_general_ci' ENGINE=InnoDB ;