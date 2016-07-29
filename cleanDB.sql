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
CREATE TABLE IF NOT EXISTS `biologicalsampling` (
  `netLength` float(4,3) DEFAULT NULL,
  `netWidth` float(4,3) DEFAULT NULL,
  `meshSize` float(4,3) DEFAULT NULL,
  `netStudents` varchar(255) DEFAULT NULL,
  `methodsTableId` int(11) DEFAULT NULL,
  `collections` int(11) DEFAULT NULL,
  `totalIndividuals` int(11) DEFAULT NULL,
  `surveyId` int(11) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pi.biologicalsampling: ~0 rows (approximately)
/*!40000 ALTER TABLE `biologicalsampling` DISABLE KEYS */;
/*!40000 ALTER TABLE `biologicalsampling` ENABLE KEYS */;


-- Dumping structure for table pi.chemicalanalysis
CREATE TABLE IF NOT EXISTS `chemicalanalysis` (
  `waterTempId` int(11) DEFAULT NULL,
  `averageTempC` float(2,2) DEFAULT NULL,
  `averageTempF` float(3,2) DEFAULT NULL,
  `oxygenId` int(11) DEFAULT NULL,
  `pHLocation` varchar(255) DEFAULT NULL,
  `pHTime` time DEFAULT NULL,
  `reading1` float(1,1) DEFAULT NULL,
  `reading2` float(1,1) DEFAULT NULL,
  `reading3` float(1,1) DEFAULT NULL,
  `average` float(5,5) DEFAULT NULL,
  `optLocation` varchar(255) DEFAULT NULL,
  `optTime` time DEFAULT NULL,
  `optReading1` float(1,1) DEFAULT NULL,
  `optReading2` float(1,1) DEFAULT NULL,
  `optReading3` float(1,1) DEFAULT NULL,
  `optAverage` float(5,5) DEFAULT NULL,
  `salinityLocation` varchar(255) DEFAULT NULL,
  `salinityTime` time DEFAULT NULL,
  `salinityReading1` float(4,3) DEFAULT NULL,
  `salinityReading2` float(4,3) DEFAULT NULL,
  `salinityReading3` float(4,3) DEFAULT NULL,
  `salinityAverage` float(5,5) DEFAULT NULL,
  `turbiditySecchiLocation` varchar(255) DEFAULT NULL,
  `turbiditySecchiTime` time DEFAULT NULL,
  `turbiditySecchiReading1` float(4,3) DEFAULT NULL,
  `turbiditySecchiReading2` float(4,3) DEFAULT NULL,
  `turbiditySecchiReading3` float(4,3) DEFAULT NULL,
  `turbiditySecchiAverage` float(5,5) DEFAULT NULL,
  `turbidityShortLocation` varchar(255) DEFAULT NULL,
  `turbidityShortTime` time DEFAULT NULL,
  `turbidityShortReading1` float(4,3) DEFAULT NULL,
  `turbidityShortReading2` float(4,3) DEFAULT NULL,
  `turbidityShortReading3` float(4,3) DEFAULT NULL,
  `turbidityShortAverage` float(5,5) DEFAULT NULL,
  `turbidityLongLocation` varchar(255) DEFAULT NULL,
  `turbidityLongTime` time DEFAULT NULL,
  `turbidityLongReading1` float(4,3) DEFAULT NULL,
  `turbidityLongReading2` float(4,3) DEFAULT NULL,
  `turbidityLongReading3` float(4,3) DEFAULT NULL,
  `turbidityLongAverage` float(5,5) DEFAULT NULL,
  `turbidityTurbidimeterLocation` varchar(255) DEFAULT NULL,
  `turbidityTurbidimeterTime` time DEFAULT NULL,
  `turbidityTurbidimeterReading1` float(4,3) DEFAULT NULL,
  `turbidityTurbidimeterReading2` float(4,3) DEFAULT NULL,
  `turbidityTurbidimeterReading3` float(4,3) DEFAULT NULL,
  `turbidityTurbidimeterAverage` float(5,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pi.chemicalanalysis: ~0 rows (approximately)
/*!40000 ALTER TABLE `chemicalanalysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `chemicalanalysis` ENABLE KEYS */;


-- Dumping structure for table pi.config
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `river` varchar(69) DEFAULT NULL,
  `location` varchar(69) DEFAULT NULL,
  `site` varchar(69) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table pi.config: ~1 rows (approximately)
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`id`, `river`, `location`, `site`) VALUES
	(1, 'AARiver', 'h', 'l6');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;


-- Dumping structure for table pi.documentation
CREATE TABLE IF NOT EXISTS `documentation` (
  `photos` longblob,
  `description` text,
  `teamsId` int(11) DEFAULT NULL,
  `questions` text,
  `groupPhoto` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pi.documentation: ~0 rows (approximately)
/*!40000 ALTER TABLE `documentation` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentation` ENABLE KEYS */;


-- Dumping structure for table pi.methods
CREATE TABLE IF NOT EXISTS `methods` (
  `id` int(11) DEFAULT NULL,
  `methodType` varchar(255) DEFAULT NULL,
  `netDistance` float(4,3) DEFAULT NULL,
  `speciesTableId` int(11) DEFAULT NULL,
  `fishTotal` int(11) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pi.methods: ~0 rows (approximately)
/*!40000 ALTER TABLE `methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `methods` ENABLE KEYS */;


-- Dumping structure for table pi.physical_data
CREATE TABLE IF NOT EXISTS `physical_data` (
  `tideChangeAtTime0` float(4,3) DEFAULT NULL,
  `tideIsRFUAtTime0` enum('0','1','2') DEFAULT NULL,
  `tideChangeAtTime10` float(4,3) DEFAULT NULL,
  `tideIsRFUAtTime10` enum('0','1','2') DEFAULT NULL,
  `tideChangeAtTime20` float(4,3) DEFAULT NULL,
  `tideIsRFUAtTime20` enum('0','1','2') DEFAULT NULL,
  `tideChangeAtTime30` float(4,3) DEFAULT NULL,
  `tideIsRFUAtTime30` enum('0','1','2') DEFAULT NULL,
  `totalTideChange` float(4,3) DEFAULT NULL,
  `waterCurrentMeasurementObject` varchar(20) DEFAULT NULL,
  `waterCurrentTable` int(11) DEFAULT NULL,
  `tempTableId` int(11) DEFAULT NULL,
  `time1` varchar(32) DEFAULT NULL,
  `tempF1` float(4,3) DEFAULT NULL,
  `tempC1` float(4,3) DEFAULT NULL,
  `cloudCoverage` enum('0','1','2','3') DEFAULT NULL,
  `windDirection` varchar(20) DEFAULT NULL,
  `windSpeedMph` float(4,3) DEFAULT NULL,
  `windSpeedKnots` float(4,3) DEFAULT NULL,
  `monthYear` varchar(25) DEFAULT NULL,
  `beaufortDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pi.physical_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `physical_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `physical_data` ENABLE KEYS */;


-- Dumping structure for table pi.site_description
CREATE TABLE IF NOT EXISTS `site_description` (
  `latitude` float(3,2) DEFAULT NULL,
  `longitude` float(3,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `riverDescription` enum('0','1','2','3','4') DEFAULT NULL,
  `vegetationBottom` enum('0','1','2','3') DEFAULT NULL,
  `vegetationSurface` enum('0','1','2','3') DEFAULT NULL,
  `sedimentSample` longblob,
  `sedimentSketch` longblob,
  `lengthSedimentCore` float(4,3) DEFAULT NULL,
  `lengthOxidizedCore` float(4,3) DEFAULT NULL,
  `lengthAnoxicCore` float(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pi.site_description: ~0 rows (approximately)
/*!40000 ALTER TABLE `site_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_description` ENABLE KEYS */;


-- Dumping structure for table pi.speciesfound
CREATE TABLE IF NOT EXISTS `speciesfound` (
  `id` int(11) DEFAULT NULL,
  `speciesName` varchar(255) DEFAULT NULL,
  `totalNumber` int(11) DEFAULT NULL,
  `largestSize` float(4,3) DEFAULT NULL,
  `units` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pi.speciesfound: ~0 rows (approximately)
/*!40000 ALTER TABLE `speciesfound` DISABLE KEYS */;
/*!40000 ALTER TABLE `speciesfound` ENABLE KEYS */;


-- Dumping structure for table pi.speciestable2
CREATE TABLE IF NOT EXISTS `speciestable2` (
  `id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `species` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pi.speciestable2: ~0 rows (approximately)
/*!40000 ALTER TABLE `speciestable2` DISABLE KEYS */;
/*!40000 ALTER TABLE `speciestable2` ENABLE KEYS */;


-- Dumping structure for table pi.teammembers
CREATE TABLE IF NOT EXISTS `teammembers` (
  `id` int(11) DEFAULT NULL,
  `group1` varchar(255) DEFAULT NULL,
  `group2` varchar(255) DEFAULT NULL,
  `group3` varchar(255) DEFAULT NULL,
  `group4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pi.teammembers: ~0 rows (approximately)
/*!40000 ALTER TABLE `teammembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `teammembers` ENABLE KEYS */;


-- Dumping structure for table pi.watercurrenttable
CREATE TABLE IF NOT EXISTS `watercurrenttable` (
  `location` varchar(255) DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `stopTime` time DEFAULT NULL,
  `distanceTraveled` float(4,3) DEFAULT NULL,
  `direction` varchar(20) DEFAULT NULL,
  `currentSpeedCmPerSec` float(4,3) DEFAULT NULL,
  `currentSpeedKnots` float(4,3) DEFAULT NULL,
  `ebbFlowSlack` enum('0','1','2') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pi.watercurrenttable: ~0 rows (approximately)
/*!40000 ALTER TABLE `watercurrenttable` DISABLE KEYS */;
/*!40000 ALTER TABLE `watercurrenttable` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
