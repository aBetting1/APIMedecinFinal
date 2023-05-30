-- phpMyAdmin SQL Dump
-- version 5.0.4deb2~bpo10+1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 30 mai 2023 à 14:41
-- Version du serveur :  10.3.34-MariaDB-0+deb10u1
-- Version de PHP : 7.3.31-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ProjetMedecin`
--

-- --------------------------------------------------------

--
-- Structure de la table `authentification`
--

CREATE TABLE `authentification` (
  `token` varchar(255) NOT NULL,
  `idPatient` int(11) NOT NULL,
  `ipAppareil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `authentification`
--

INSERT INTO `authentification` (`token`, `idPatient`, `ipAppareil`) VALUES
('1cbb7b2b00f0fce76500afcf4f464cac516bf740503c027cbe893aeea518', 24, '172.18.204.15'),
('50bb62973634500f59c36046f8e1cb8ec08a5aac8b73ed3587147e5e4f34', 24, '172.18.204.15'),
('5d32933a96dce977137e6860de1964cdd81dbc1890238e5a39e68cc2ebf2', 24, '172.18.204.15'),
('6a987057a9572d0e1672b4c84a7993bb3e2044db9aa1292d81e3adc82aa6', 24, '172.18.204.15'),
('8aadaeb90639521133ac3273348bafb9bd629ca669d82a53fd4a4ab72206', 24, '172.18.109.15'),
('a54346cb07915ea34c7e7dfe7f7a591c5f0ff6573807096fd3e86d38dc89', 24, '172.18.204.15'),
('b6e728cec5e0a9278f721e4a6c4cf6a488750199a58c1573041ed7b88009', 24, '172.18.204.15');

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE `medecin` (
  `idMedecin` varchar(100) NOT NULL,
  `login` varchar(200) DEFAULT NULL,
  `mdp` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`idMedecin`, `login`, `mdp`) VALUES
('0f2770ae85551984374f60a8ae466d89c02e7906', NULL, NULL),
('10d2cf11e89240e2a61f9951c2370eb26d8cc02c', NULL, NULL),
('149635f4043520aebdea1fd4d38768ba24a64658', NULL, NULL),
('16e3cbd02663ea1d89c06efeca5bbdb1d683f490', NULL, NULL),
('27747c1b31f49173fac69769326249038e87b331', NULL, NULL),
('35f1ae494124096d175c4178b58b5f1d3684167d', NULL, NULL),
('3b3c457120a9827a32c9a83ef9059ce91d191112', NULL, NULL),
('491901eec066a524d52cb5cf0fb788ac845d61ca', NULL, NULL),
('5859c091492eb7e5aaa920c57a0016e2ca37c450', NULL, NULL),
('5f6f46886b826d15cce7d3bc2457701e655a5cf9', NULL, NULL),
('5ff8a93f2767b12ce8464dc20fc3b231acbf88a6', NULL, NULL),
('66a257fe8bf2ac247cc136fb15b823893da82061', NULL, NULL),
('6da92af04876b2dd388525071e80b729f2bd133a', NULL, NULL),
('6e7c3b5f3fa876cfc5856df1a1848cc8a7690c28', NULL, NULL),
('73288729bb3d0404856ab7a859ef7ddcd40f9311', NULL, NULL),
('75b5de8c054aae5daa204a44e1fd946e9af720f4', NULL, NULL),
('8ffc1b058df517a1365e4be9b1ce6205c0efaa81', NULL, NULL),
('96ac9f3dd86058c7ad2f75d0168d5d8d107407dd', NULL, NULL),
('995edf24872c38b1241a81acabfaef172ddf8e7c', NULL, NULL),
('a133ceafa517289ff3120ee1a8bf9ea175c57699', NULL, NULL),
('b49b4948c1b6bc3b591e44db5c2f62ee05d6e1f2', NULL, NULL),
('bbe793e7dd6e7e41b9321438471c697b9c3d72cd', NULL, NULL),
('bfcb366633089a542bfff19bffbf3318e35d9d11', NULL, NULL),
('d0084bea9049e11e0cb060dcef340c97d8f3e113', NULL, NULL),
('d533031ca70ff9e18c1601f476aea3ceb5031802', NULL, NULL),
('dbe4373de016f1c2949e2b70aa7ac9e47ceabd3e', NULL, NULL),
('f5b3e1b6efb2bf95d002f3a86b9d315838d35cb0', NULL, NULL),
('f83c9d4559d00183bfa10ee86909a180a1f05d9a', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `idPatient` int(11) NOT NULL,
  `nomPatient` varchar(50) NOT NULL,
  `prenomPatient` varchar(50) NOT NULL,
  `ruePatient` varchar(150) NOT NULL,
  `cpPatient` char(5) NOT NULL,
  `villePatient` varchar(150) NOT NULL,
  `telPatient` varchar(15) NOT NULL,
  `loginPatient` varchar(50) NOT NULL,
  `mdpPatient` varchar(1000) NOT NULL,
  `rdvManque` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`idPatient`, `nomPatient`, `prenomPatient`, `ruePatient`, `cpPatient`, `villePatient`, `telPatient`, `loginPatient`, `mdpPatient`, `rdvManque`, `status`) VALUES
(2, 'Durand', 'Paul', '2 rue des Arbres', '75002', 'Paris', '9876543210', 'pdurand', 'motdepasse', 1, NULL),
(3, 'Martin', 'Sophie', '3 rue des Champs', '75003', 'Paris', '1234567890', 'smartin', 'motdepasse', 1, NULL),
(5, 'Lefebvre', 'Marc', '5 rue des Jardins', '75005', 'Paris', '3456789012', 'mlefebvre', 'motdepasse', 0, NULL),
(6, 'Garnier', 'Julie', '6 rue des Musees', '75006', 'Paris', '4567890123', 'jgarnier', 'motdepasse', 0, NULL),
(7, 'Hernandez', 'Catherine', '7 rue des Monuments', '75007', 'Paris', '5678901234', 'chernandez', 'motdepasse', 0, NULL),
(8, 'Bourgeois', 'Loic', '8 rue des Villes', '75008', 'Paris', '6789012345', 'lbourgeois', 'motdepasse', 1, 1),
(9, 'Roussel', 'Chantal', '9 rue des Pays', '75009', 'Paris', '7890123456', 'croussel', 'motdepasse', 0, NULL),
(10, 'Garcia', 'Laure', '10 rue des Continents', '75010', 'Paris', '8901234567', 'lgarcia', 'motdepasse', 0, NULL),
(11, 'Bertrand', 'Eric', '11 rue des Oceans', '75011', 'Paris', '9012345678', 'ebertrand', 'motdepasse', 0, NULL),
(12, 'Perez', 'Elodie', '12 rue des Planetes', '75012', 'Paris', '0123456789', 'eperez', 'motdepasse', 0, NULL),
(13, 'Legrand', 'Thomas', '13 rue des Galaxies', '75013', 'Paris', '1234567890', 'tlegrand', 'motdepasse', 0, NULL),
(14, 'Pichon', 'Alexandra', '14 rue des Etoiles', '75014', 'Paris', '2345678901', 'apichon', 'motdepasse', 0, NULL),
(15, 'Girard', 'Damien', '15 rue des Constellations', '75015', 'Paris', '3456789012', 'dgirard', 'motdepasse', 0, NULL),
(16, 'Hamon', 'Véronique', '16 rue des Nebuleuses', '75016', 'Paris', '3456789012', 'lopari', 'motdepasse', 0, NULL),
(17, 'Rémybeau', 'Ouchenbeau', 'barleduc', '52100', 'ruedelapaix', '0756948324', 'Petitredpanda', '$2y$10$EZhIX4zU5QcaMWgm9cHO.eiTGhIqeGrUBc5oElj7l/2zCsiY8doJ.', 0, NULL),
(22, 'Rémybeau', 'Ouchenbeau', 'barleduc', '52100', 'ruedelapaix', '0756948324', 'orqangetitu', '$2y$10$r3cCm97U5W1ZX7lYbAhSQO9BPCkfCrQ/Xv8VRzVYsEfGclx4X0/nu', 0, NULL),
(23, 'Rémybeau', 'Ouchenbeau', 'barleduc', '52100', 'ruedelapaix', '0756948324', 'orqangetitu2', '$2y$10$7dzwxq3qswMu.PMYG0dpX.RpUmgvjdkhD5QY5tUF06MP2KYC1ITCa', 0, NULL),
(24, 'ftygyngnyf', 'rsthrtbhtr', 'dttyndrtb', 'sryn', 'rtbhzrbtv', '0536938246', 'Remy', '$2y$10$1FRmJGuhzM8wVu3.fBxeBOgXLCuE2zGJHG7IAsjLhBCOvKwvOxbx.', 1, NULL),
(25, 'gege', 'gegege', 'gegegeg', '58565', 'gegegeg', '0201020305', 'tomtomtoma', '$2y$10$0TfDSLl19qwAliuVDitHSOrvR070ltcz7UKibJzTnT8fO7jA6SuIS', 0, NULL),
(28, 'grze', 'greg', 'ae', 'geg', 'gregrege', '050500550', 'grfszf', '$2y$10$SeCsF8WOezwz3T6ZyinUMul25nd/RA8o..KvIVa59UmTEO9/NKcgO', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

CREATE TABLE `rdv` (
  `idRdv` int(11) NOT NULL,
  `date` date NOT NULL,
  `heure` varchar(50) NOT NULL,
  `idPatient` int(11) DEFAULT NULL,
  `idMedecin` varchar(200) DEFAULT NULL,
  `cptRendu` varchar(1000) DEFAULT NULL,
  `manque` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rdv`
--

INSERT INTO `rdv` (`idRdv`, `date`, `heure`, `idPatient`, `idMedecin`, `cptRendu`, `manque`) VALUES
(7, '0000-00-00', '16h50', 8, 'GH4GHN5GFNFGH5', 'Yvan est joli', 1),
(8, '0000-00-00', '', 8, 'GH4GHN5GFNFGH5', 'Yvan est joli', 1),
(11, '0000-00-00', '', 24, 'gggggggggggggg', 'Yvan est joli et est venu', 0),
(17, '0000-00-00', '', 24, '35f1ae494124096d175c4178b58b5f1d3684167d', NULL, NULL),
(18, '0000-00-00', '', 24, '35f1ae494124096d175c4178b58b5f1d3684167d', NULL, NULL);

--
-- Déclencheurs `rdv`
--
DELIMITER $$
CREATE TRIGGER `before_insert_rdv` BEFORE INSERT ON `rdv` FOR EACH ROW BEGIN
  SET @c = 0;
  SELECT COUNT(*) INTO @c FROM rdv WHERE idMedecin = NEW.idMedecin AND date = NEW.date AND heure = NEW.heure;
  IF @c != 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Le rendez-vous n''est pas disponible';
  END IF;
END
$$
DELIMITER ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `authentification`
--
ALTER TABLE `authentification`
  ADD PRIMARY KEY (`token`),
  ADD KEY `FK_authentification_patient` (`idPatient`);

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`idMedecin`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`idPatient`);

--
-- Index pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD PRIMARY KEY (`idRdv`),
  ADD KEY `idPatient` (`idPatient`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `idPatient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `rdv`
--
ALTER TABLE `rdv`
  MODIFY `idRdv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `authentification`
--
ALTER TABLE `authentification`
  ADD CONSTRAINT `authentification_ibfk_1` FOREIGN KEY (`idPatient`) REFERENCES `patient` (`idPatient`);

--
-- Contraintes pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD CONSTRAINT `rdv_ibfk_1` FOREIGN KEY (`idPatient`) REFERENCES `patient` (`idPatient`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
