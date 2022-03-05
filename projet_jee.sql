-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 05, 2022 at 02:58 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projet_jee`
--

-- --------------------------------------------------------

--
-- Table structure for table `achat`
--

DROP TABLE IF EXISTS `achat`;
CREATE TABLE IF NOT EXISTS `achat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `id_f` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_f` (`id_f`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `achat`
--

INSERT INTO `achat` (`id`, `intitule`, `date`, `id_f`) VALUES
(1, 'dkld', '2022-03-09', 1),
(2, 'deuxiemme Test', '2022-03-05', 1),
(3, 'deuxiemme Test', '2022-03-05', 1),
(4, 'deuxiemme Test', '2022-03-05', 1),
(5, 'deuxiemme Test', '2022-03-05', 1),
(6, 'deuxiemme Test', '2022-03-05', 1),
(7, 'deuxiemme Test', '2022-03-05', 1),
(8, 'deuxiemme Test', '2022-03-05', 1),
(9, 'deuxiemme Test', '2022-03-05', 1),
(10, 'deuxiemme Test', '2022-03-05', 1),
(11, 'deuxiemme Test', '2022-03-05', 1),
(12, 'deuxiemme Test', '2022-03-05', 1),
(13, 'deuxiemme Test', '2022-03-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(300) NOT NULL,
  `prenom` varchar(300) NOT NULL,
  `telephone` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `nom_client`, `prenom`, `telephone`) VALUES
(1, 'ghjgjhg', 'jgjhg', 46546);

-- --------------------------------------------------------

--
-- Table structure for table `element_achat`
--

DROP TABLE IF EXISTS `element_achat`;
CREATE TABLE IF NOT EXISTS `element_achat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_achat` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_achat` (`id_achat`),
  KEY `id_produit` (`id_produit`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `element_achat`
--

INSERT INTO `element_achat` (`id`, `id_achat`, `id_produit`, `quantite`) VALUES
(1, 1, 1, 444),
(2, 10, 1, 1),
(3, 10, 1, 1),
(4, 11, 1, 3),
(5, 11, 2, 2),
(6, 12, 1, 2),
(7, 13, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `element_vente`
--

DROP TABLE IF EXISTS `element_vente`;
CREATE TABLE IF NOT EXISTS `element_vente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_vente` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_produit` (`id_produit`),
  KEY `id_vente` (`id_vente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `element_vente`
--

INSERT INTO `element_vente` (`id`, `id_vente`, `id_produit`, `quantite`) VALUES
(2, 1, 1, 53),
(3, 2, 1, 1),
(4, 4, 1, 1),
(5, 5, 1, 3),
(6, 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_f` varchar(300) NOT NULL,
  `prenom_f` varchar(300) NOT NULL,
  `telephone` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `nom_f`, `prenom_f`, `telephone`) VALUES
(1, 'f1', 'f1', 653764);

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(300) NOT NULL,
  `quantite` int(11) NOT NULL,
  `date_exp` date DEFAULT NULL,
  `prix` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`id`, `intitule`, `quantite`, `date_exp`, `prix`) VALUES
(1, 'kdkdd', 24, '2022-03-09', 4),
(2, 'p2', 2, '2022-03-09', 0),
(3, 'p3', 0, NULL, 0),
(4, 'p4', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(300) NOT NULL,
  `prenom` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `username`, `password`, `type`) VALUES
(2, 'baye', 'bouye', 'baye', 'a31a391851984167c4cf85c3766f6c76', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vente`
--

DROP TABLE IF EXISTS `vente`;
CREATE TABLE IF NOT EXISTS `vente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(300) NOT NULL,
  `date_v` date NOT NULL,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vente`
--

INSERT INTO `vente` (`id`, `intitule`, `date_v`, `id_client`) VALUES
(1, 'kjdjd', '2022-03-09', 1),
(2, 'deuxiemme Test', '2022-03-05', 1),
(3, 'deuxiemme Test', '2022-03-05', 1),
(4, 'deuxiemme Test', '2022-03-05', 1),
(5, 'deuxiemme Test', '2022-03-05', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achat`
--
ALTER TABLE `achat`
  ADD CONSTRAINT `achat_ibfk_1` FOREIGN KEY (`id_f`) REFERENCES `fournisseur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `element_achat`
--
ALTER TABLE `element_achat`
  ADD CONSTRAINT `element_achat_ibfk_1` FOREIGN KEY (`id_achat`) REFERENCES `achat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `element_achat_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `element_vente`
--
ALTER TABLE `element_vente`
  ADD CONSTRAINT `element_vente_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `element_vente_ibfk_2` FOREIGN KEY (`id_vente`) REFERENCES `vente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vente`
--
ALTER TABLE `vente`
  ADD CONSTRAINT `vente_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
