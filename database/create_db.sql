--
-- Database: `df_framework`
--

DROP SCHEMA IF EXISTS df_framework;
CREATE SCHEMA df_framework;
USE df_framework;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Table structure for table `digital_investigator`
--

CREATE TABLE `digital_investigator` (
    `id` SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `surname` VARCHAR(50) NOT NULL,
    `agency` VARCHAR(50) NOT NULL,
    `category` VARCHAR(50) NOT NULL,
    `specialization` VARCHAR(50) NOT NULL
);

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
    `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `brand` VARCHAR(20) DEFAULT NULL,
    `model` VARCHAR(20) DEFAULT NULL,
    `owner_name` VARCHAR(50) DEFAULT NULL,
    `owner_surname` VARCHAR(50) DEFAULT NULL,
    `type` VARCHAR(50) NOT NULL,
    `notes` TEXT
);

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
    `id` BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `report_number` INT NOT NULL,
    `acquisition_place` VARCHAR(255) NOT NULL,
    `notes` TEXT,
    `id_device` INT UNSIGNED NOT NULL,
    FOREIGN KEY (`id_device`) REFERENCES `device`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

--
-- Table structure for table `log_investigator`
--

CREATE TABLE `log_investigator` (
    `id_investigator` SMALLINT UNSIGNED NOT NULL,
    `id_log` BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (`id_investigator`, `id_log`),
    FOREIGN KEY (`id_investigator`) REFERENCES `digital_investigator`(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (`id_log`) REFERENCES `log`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

--
-- Table structure for table `measurement`
--

CREATE TABLE `measurement` (
    `id` BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `timestamp` VARCHAR(30) NOT NULL,
    `notes` TEXT,
    `id_log` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`id_log`) REFERENCES `log`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

--
-- Table structure for table `battery`
--

CREATE TABLE `battery` (
    `id` BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `brand` VARCHAR(30) DEFAULT NULL,
    `model` VARCHAR(30) DEFAULT NULL,
    `voltage` INT DEFAULT NULL,
    `id_measurement` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`id_measurement`) REFERENCES `measurement`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

--
-- Table structure for table `barometer`
--

CREATE TABLE `barometer` (
    `id` BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `brand` VARCHAR(30) DEFAULT NULL,
    `model` VARCHAR(30) DEFAULT NULL,
    `altitude` INT DEFAULT NULL,
    `id_measurement` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`id_measurement`) REFERENCES `measurement`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

--
-- Table structure for table `gps`
--

CREATE TABLE `gps` (
    `id` BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `brand` VARCHAR(30) DEFAULT NULL,
    `model` VARCHAR(30) DEFAULT NULL,
    `satellites_number` INT DEFAULT NULL,
    `coordinates` VARCHAR(50) DEFAULT NULL,
    `id_measurement` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`id_measurement`) REFERENCES `measurement`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
    `id` BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `brand` VARCHAR(30) DEFAULT NULL,
    `model` VARCHAR(30) DEFAULT NULL,
    `path` VARCHAR(255) DEFAULT NULL,
    `size` VARCHAR(255) DEFAULT NULL,
    `id_measurement` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`id_measurement`) REFERENCES `measurement`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
    `id` BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `brand` VARCHAR(30) DEFAULT NULL,
    `model` VARCHAR(30) DEFAULT NULL,
    `length` VARCHAR(255) DEFAULT NULL,
    `path` VARCHAR(255) DEFAULT NULL,
    `size` VARCHAR(255) DEFAULT NULL,
    `id_measurement` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`id_measurement`) REFERENCES `measurement`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

--
-- Table structure for table `accelerometer`
--

CREATE TABLE `accelerometer` (
    `id` BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `brand` VARCHAR(30) DEFAULT NULL,
    `model` VARCHAR(30) DEFAULT NULL,
    `acceleration` VARCHAR(255) DEFAULT NULL,
    `id_measurement` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`id_measurement`) REFERENCES `measurement`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

--
-- Table structure for table `gyroscope`
--

CREATE TABLE `gyroscope` (
    `id` BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `brand` VARCHAR(30) DEFAULT NULL,
    `model` VARCHAR(30) DEFAULT NULL,
    `rotation` VARCHAR(255) DEFAULT NULL,
    `id_measurement` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`id_measurement`) REFERENCES `measurement`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

--
-- Table structure for table `wss` (Wheel Speed Sensor)
--

CREATE TABLE `wss` (
    `id` BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `brand` VARCHAR(30) DEFAULT NULL,
    `model` VARCHAR(30) DEFAULT NULL,
    `speed` INT DEFAULT NULL,
    `id_measurement` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`id_measurement`) REFERENCES `measurement`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

--
-- Table structure for table `potentiometer`
--

CREATE TABLE `potentiometer` (
    `id` BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `brand` VARCHAR(30) DEFAULT NULL,
    `model` VARCHAR(30) DEFAULT NULL,
    `accelerator_angle` INT UNSIGNED DEFAULT NULL,
    `id_measurement` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`id_measurement`) REFERENCES `measurement`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

--
-- Table structure for table `brake_sensor`
--

CREATE TABLE `brake_sensor` (
    `id` BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `brand` VARCHAR(30) DEFAULT NULL,
    `model` VARCHAR(30) DEFAULT NULL,
    `pressure` FLOAT DEFAULT NULL,
    `id_measurement` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`id_measurement`) REFERENCES `measurement`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

--
-- Table structure for table `tachometer`
--

CREATE TABLE `tachometer` (
    `id` BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `brand` VARCHAR(30) DEFAULT NULL,
    `model` VARCHAR(30) DEFAULT NULL,
    `rpm` INT UNSIGNED DEFAULT NULL,
    `id_measurement` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`id_measurement`) REFERENCES `measurement`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

--
-- Table structure for table `hrm` (Heart Rate Monitor)
--

CREATE TABLE `hrm` (
    `id` BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `brand` VARCHAR(30) DEFAULT NULL,
    `model` VARCHAR(30) DEFAULT NULL,
    `heart_rate` INT UNSIGNED DEFAULT NULL,
    `id_measurement` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`id_measurement`) REFERENCES `measurement`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);