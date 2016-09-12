-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.16-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for pi
CREATE DATABASE IF NOT EXISTS `pi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pi`;


-- Dumping structure for table pi.biologicalsampling
DROP TABLE IF EXISTS `biologicalsampling`;
CREATE TABLE IF NOT EXISTS `biologicalsampling` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `class_uuid` varchar(99) DEFAULT NULL,
  `netStudents` varchar(255) DEFAULT NULL,
  `methodsTableId` varchar(50) DEFAULT NULL,
  `collections` varchar(50) DEFAULT NULL,
  `totalIndividuals` varchar(50) DEFAULT NULL,
  `surveyId` varchar(50) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table pi.chemicalanalysis
DROP TABLE IF EXISTS `chemicalanalysis`;
CREATE TABLE IF NOT EXISTS `chemicalanalysis` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `class_uuid` bigint(255) NOT NULL DEFAULT '0',
  `waterTempId` int(11) DEFAULT NULL,
  `averageTempC` varchar(50) DEFAULT NULL,
  `averageTempF` varchar(50) DEFAULT NULL,
  `oxygenId` varchar(50) DEFAULT NULL,
  `pHLocation` varchar(255) DEFAULT NULL,
  `pHTime` varchar(50) DEFAULT NULL,
  `reading1` varchar(50) DEFAULT NULL,
  `reading2` varchar(50) DEFAULT NULL,
  `reading3` varchar(50) DEFAULT NULL,
  `average` varchar(50) DEFAULT NULL,
  `optLocation` varchar(255) DEFAULT NULL,
  `optTime` varchar(50) DEFAULT NULL,
  `optReading1` varchar(50) DEFAULT NULL,
  `optReading2` varchar(50) DEFAULT NULL,
  `optReading3` varchar(50) DEFAULT NULL,
  `optAverage` varchar(50) DEFAULT NULL,
  `salinityLocation` varchar(255) DEFAULT NULL,
  `salinityTime` varchar(50) DEFAULT NULL,
  `salinityReading1` varchar(50) DEFAULT NULL,
  `salinityReading2` varchar(50) DEFAULT NULL,
  `salinityReading3` varchar(50) DEFAULT NULL,
  `salinityAverage` varchar(50) DEFAULT NULL,
  `turbiditySecchiLocation` varchar(255) DEFAULT NULL,
  `turbiditySecchiTime` varchar(50) DEFAULT NULL,
  `turbiditySecchiReading1` varchar(50) DEFAULT NULL,
  `turbiditySecchiReading2` varchar(50) DEFAULT NULL,
  `turbiditySecchiReading3` varchar(50) DEFAULT NULL,
  `turbiditySecchiAverage` varchar(50) DEFAULT NULL,
  `turbidityShortLocation` varchar(255) DEFAULT NULL,
  `turbidityShortTime` varchar(50) DEFAULT NULL,
  `turbidityShortReading1` varchar(50) DEFAULT NULL,
  `turbidityShortReading2` varchar(50) DEFAULT NULL,
  `turbidityShortReading3` varchar(50) DEFAULT NULL,
  `turbidityShortAverage` varchar(50) DEFAULT NULL,
  `turbidityLongLocation` varchar(255) DEFAULT NULL,
  `turbidityLongTime` varchar(50) DEFAULT NULL,
  `turbidityLongReading1` varchar(50) DEFAULT NULL,
  `turbidityLongReading2` varchar(50) DEFAULT NULL,
  `turbidityLongReading3` varchar(50) DEFAULT NULL,
  `turbidityLongAverage` varchar(50) DEFAULT NULL,
  `turbidityTurbidimeterLocation` varchar(255) DEFAULT NULL,
  `turbidityTurbidimeterTime` varchar(50) DEFAULT NULL,
  `turbidityTurbidimeterReading1` varchar(50) DEFAULT NULL,
  `turbidityTurbidimeterReading2` varchar(50) DEFAULT NULL,
  `turbidityTurbidimeterReading3` varchar(50) DEFAULT NULL,
  `turbidityTurbidimeterAverage` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table pi.config
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_uuid` varchar(99) DEFAULT NULL,
  `river` varchar(69) DEFAULT NULL,
  `location` varchar(69) DEFAULT NULL,
  `site` varchar(69) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table pi.documentation
DROP TABLE IF EXISTS `documentation`;
CREATE TABLE IF NOT EXISTS `documentation` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `photos` longblob,
  `description` text,
  `teamsId` varchar(50) DEFAULT NULL,
  `questions` text,
  `groupPhoto` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table pi.methods
DROP TABLE IF EXISTS `methods`;
CREATE TABLE IF NOT EXISTS `methods` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `key` bigint(255) DEFAULT NULL,
  `methodType` varchar(255) DEFAULT NULL,
  `netLength` varchar(50) DEFAULT NULL,
  `netWidth` varchar(50) DEFAULT NULL,
  `netMeshSize` varchar(50) DEFAULT NULL,
  `pullLength` varchar(50) DEFAULT NULL,
  `speciesTableId` varchar(50) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table pi.physical_data
DROP TABLE IF EXISTS `physical_data`;
CREATE TABLE IF NOT EXISTS `physical_data` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `tideChangeAtTime10` varchar(50) DEFAULT NULL,
  `tideIsRFUAtTime10` varchar(15) DEFAULT NULL,
  `tideChangeAtTime20` varchar(50) DEFAULT NULL,
  `tideIsRFUAtTime20` varchar(15) DEFAULT NULL,
  `tideChangeAtTime30` varchar(50) DEFAULT NULL,
  `tideIsRFUAtTime30` varchar(15) DEFAULT NULL,
  `totalTideChange` varchar(50) DEFAULT NULL,
  `waterCurrentMeasurementObject` varchar(20) DEFAULT NULL,
  `currentSpeedCMpSAvg` varchar(50) DEFAULT NULL,
  `currentSpeedKntsAvg` varchar(50) DEFAULT NULL,
  `time1` varchar(32) DEFAULT NULL,
  `tempF1` varchar(50) DEFAULT NULL,
  `tempC1` varchar(50) DEFAULT NULL,
  `time2` varchar(32) DEFAULT NULL,
  `tempF2` varchar(50) DEFAULT NULL,
  `tempC2` varchar(50) DEFAULT NULL,
  `time3` varchar(32) DEFAULT NULL,
  `tempF3` varchar(50) DEFAULT NULL,
  `tempC3` varchar(50) DEFAULT NULL,
  `cloudCover` varchar(20) DEFAULT NULL,
  `windDirection` varchar(20) DEFAULT NULL,
  `windSpeedMph` varchar(50) DEFAULT NULL,
  `windSpeedKnots` varchar(50) DEFAULT NULL,
  `windBeaufortScale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table pi.site_description
DROP TABLE IF EXISTS `site_description`;
CREATE TABLE IF NOT EXISTS `site_description` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `g2CheckboxArray` varchar(255) DEFAULT NULL,
  `riverBayIs` varchar(50) DEFAULT NULL,
  `vegBottomPercent` varchar(50) DEFAULT NULL,
  `vegSurfacePercent` varchar(50) DEFAULT NULL,
  `sedimentSample` longblob,
  `sedimentSketch` longblob,
  `lengthSedimentCore` varchar(50) DEFAULT NULL,
  `lengthOxidizedCore` varchar(50) DEFAULT NULL,
  `lengthAnoxicCore` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table pi.speciesfound
DROP TABLE IF EXISTS `speciesfound`;
CREATE TABLE IF NOT EXISTS `speciesfound` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `speciesName` varchar(255) DEFAULT NULL,
  `totalNumber` varchar(50) DEFAULT NULL,
  `largestSize` varchar(50) DEFAULT NULL,
  `units` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table pi.speciestable2
DROP TABLE IF EXISTS `speciestable2`;
CREATE TABLE IF NOT EXISTS `speciestable2` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `key` bigint(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `species` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table pi.students
DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_uuid` varchar(99) NOT NULL,
  `student_uuid` varchar(99) NOT NULL,
  `student_name` varchar(99) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table pi.teammembers
DROP TABLE IF EXISTS `teammembers`;
CREATE TABLE IF NOT EXISTS `teammembers` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `group1` varchar(255) DEFAULT NULL,
  `group2` varchar(255) DEFAULT NULL,
  `group3` varchar(255) DEFAULT NULL,
  `group4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table pi.watercurrenttable
DROP TABLE IF EXISTS `watercurrenttable`;
CREATE TABLE IF NOT EXISTS `watercurrenttable` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `key` bigint(255) NOT NULL DEFAULT '0',
  `startTime` varchar(32) DEFAULT NULL,
  `stopTime` varchar(32) DEFAULT NULL,
  `distanceTraveled` varchar(255) DEFAULT NULL,
  `direction` varchar(20) DEFAULT NULL,
  `currentSpeedCmPerSec` varchar(50) DEFAULT NULL,
  `currentSpeedKnots` varchar(50) DEFAULT NULL,
  `ebbFlowSlack` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
