-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 11 Mai 2018 à 14:18
-- Version du serveur :  5.7.14-log
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gsb`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `id_med` int(11) NOT NULL,
  `med_depotLEGAL` text COLLATE utf8_unicode_ci NOT NULL,
  `fam_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `med_nomcommercial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nb_med_commande` int(11) NOT NULL,
  `total_prixHT` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `famille`
--

CREATE TABLE `famille` (
  `id_fam` int(11) NOT NULL,
  `FAM_CODE` varchar(3) DEFAULT NULL,
  `FAM_LIBELLE` varchar(67) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `famille`
--

INSERT INTO `famille` (`id_fam`, `FAM_CODE`, `FAM_LIBELLE`) VALUES
(1, 'FAM', 'FAM_LIBELLE'),
(2, 'AA', 'Antalgiques en association'),
(3, 'AAA', 'Antalgiques antipyr?tiques en association'),
(4, 'AAC', 'Antid?presseur d\'action centrale'),
(5, 'AAH', 'Antivertigineux antihistaminique H1'),
(6, 'ABA', 'Antibiotique antituberculeux'),
(7, 'ABC', 'Antibiotique antiacn?ique local'),
(8, 'ABP', 'Antibiotique de la famille des b?ta-lactamines (p?nicilline A)'),
(9, 'AFC', 'Antibiotique de la famille des cyclines'),
(10, 'AFM', 'Antibiotique de la famille des macrolides'),
(11, 'AH', 'Antihistaminique H1 local'),
(12, 'AIM', 'Antid?presseur imipraminique (tricyclique)'),
(13, 'AIN', 'Antid?presseur inhibiteur s?lectif de la recapture de la s?rotonine'),
(14, 'ALO', 'Antibiotique local (ORL)'),
(15, 'ANS', 'Antid?presseur IMAO non s?lectif'),
(16, 'AO', 'Antibiotique ophtalmique'),
(17, 'AP', 'Antipsychotique normothymique'),
(18, 'AUM', 'Antibiotique urinaire minute'),
(19, 'CRT', 'Cortico?de, antibiotique et antifongique ?? usage local'),
(20, 'HYP', 'Hypnotique antihistaminique'),
(21, 'PSA', 'Psychostimulant, antiasth?nique'),
(22, 'FAM', 'FAM_LIBELLE'),
(23, 'AA', 'Antalgiques en association'),
(24, 'AAA', 'Antalgiques antipyr?tiques en association'),
(25, 'AAC', 'Antid?presseur d\'action centrale'),
(26, 'AAH', 'Antivertigineux antihistaminique H1'),
(27, 'ABA', 'Antibiotique antituberculeux'),
(28, 'ABC', 'Antibiotique antiacn?ique local'),
(29, 'ABP', 'Antibiotique de la famille des b?ta-lactamines (p?nicilline A)'),
(30, 'AFC', 'Antibiotique de la famille des cyclines'),
(31, 'AFM', 'Antibiotique de la famille des macrolides'),
(32, 'AH', 'Antihistaminique H1 local'),
(33, 'AIM', 'Antid?presseur imipraminique (tricyclique)'),
(34, 'AIN', 'Antid?presseur inhibiteur s?lectif de la recapture de la s?rotonine'),
(35, 'ALO', 'Antibiotique local (ORL)'),
(36, 'ANS', 'Antid?presseur IMAO non s?lectif'),
(37, 'AO', 'Antibiotique ophtalmique'),
(38, 'AP', 'Antipsychotique normothymique'),
(39, 'AUM', 'Antibiotique urinaire minute'),
(40, 'CRT', 'Cortico?de, antibiotique et antifongique ?? usage local'),
(41, 'HYP', 'Hypnotique antihistaminique'),
(42, 'PSA', 'Psychostimulant, antiasth?nique');

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE `medicament` (
  `id_med` int(11) NOT NULL,
  `MED_DEPOTLEGAL` varchar(9) DEFAULT NULL,
  `MED_NOMCOMMERCIAL` varchar(19) DEFAULT NULL,
  `FAM_CODE` varchar(3) DEFAULT NULL,
  `MED_COMPOSITION` varchar(80) DEFAULT NULL,
  `MED_EFFETS` varchar(194) DEFAULT NULL,
  `MED_CONTREINDIC` varchar(236) DEFAULT NULL,
  `prixht` decimal(10,0) NOT NULL,
  `nbstock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `medicament`
--

INSERT INTO `medicament` (`id_med`, `MED_DEPOTLEGAL`, `MED_NOMCOMMERCIAL`, `FAM_CODE`, `MED_COMPOSITION`, `MED_EFFETS`, `MED_CONTREINDIC`, `prixht`, `nbstock`) VALUES
(1, '3MYC7', 'TRIMYCINE', 'CRT', 'Triamcinolone (ac?tonide)   N?omycine   Nystatine', 'Ce m?dicament est un cortico?de ?? activit? forte ou tr?s forte associ? ?? un antibiotique et un antifongique, utilis? en application locale dans certaines atteintes cutan?es surinfect?es.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie ?? l\'un des constituants, d\'infections de la peau ou de parasitisme non trait?s, d\'acn?. Ne pas appliquer sur une plaie, ni sous un pansement occlusif.', '2', 150),
(2, 'ADIMOL9', 'ADIMOL', 'ABP', 'Amoxicilline   Acide clavulanique', 'Ce m?dicament, plus puissant que les p?nicillines simples, est utilis? pour traiter des infections bact?riennes sp?cifiques.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie aux p?nicillines ou aux c?phalosporines.', '7', 477),
(3, 'AMOPIL7', 'AMOPIL', 'ABP', 'Amoxicilline', 'Ce m?dicament, plus puissant que les p?nicillines simples, est utilis? pour traiter des infections bact?riennes sp?cifiques.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie aux p?nicillines. Il doit ?tre administr? avec prudence en cas d\'allergie aux c?phalosporines.', '4', 500),
(4, 'AMOX45', 'AMOXAR', 'ABP', 'Amoxicilline', '            Ce m?dicament, plus puissant que les p?nicillines simples, est utilis? pour traiter des infections bact?riennes sp?cifiques.\r\n            ', '            La prise de ce m?dicament peut rendre positifs les tests de d?pistage du dopage.\r\n            ', '0', 0),
(5, 'AMOXIG12', 'AMOXI G?', 'ABP', 'Amoxicilline', '            Ce medicament, plus puissant que les penicillines simples, est utilise pour traiter des infections bacteriennes specifiques.            ', '            Ce m?dicament est contre-indiqu? en cas d\'allergie aux p?nicillines. Il doit ?tre administr? avec prudence en cas d\'allergie aux c?phalosporines.            ', '0', 80),
(6, 'APATOUX22', 'APATOUX Vitamine C', 'ALO', 'Tyrothricine + T?traca?ne + Acide ascorbique (Vitamine C)', 'Ce m?dicament est utilis? pour traiter les affections de la bouche et de la gorge.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie ?? l\'un des constituants, en cas de ph?nylc?tonurie et chez l\'enfant de moins de 6 ans.', '0', 0),
(7, 'BACTIG10', 'BACTIGEL', 'ABC', 'Erythromycine', 'Ce m?dicament est utilis? en application locale pour traiter l\'acn? et les infections cutan?es bact?riennes associ?es.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie aux antibiotiques de la famille des macrolides ou des lincosanides.', '2', 630),
(8, 'BACTIV13', 'BACTIVIL', 'AFM', 'Erythromycine', 'Ce m?dicament est utilis? pour traiter des infections bact?riennes sp?cifiques.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie aux macrolides (dont le chef de file est l\'?rythromycine).', '0', 0),
(9, 'BITALV', 'BIVALIC', 'AAA', 'Dextropropoxyph?ne + Parac?tamol', 'Ce m?dicament est utilis? pour traiter les douleurs d\'intensit? mod?r?e ou intense.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie aux m?dicaments de cette famille, d\'insuffisance h?patique ou d\'insuffisance r?nale.', '0', 0),
(10, '3MYC7', 'TRIMYCINE', 'CRT', 'Triamcinolone (ac?tonide)   N?omycine   Nystatine', 'Ce m?dicament est un cortico?de ?? activit? forte ou tr?s forte associ? ?? un antibiotique et un antifongique, utilis? en application locale dans certaines atteintes cutan?es surinfect?es.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie ?? l\'un des constituants, d\'infections de la peau ou de parasitisme non trait?s, d\'acn?. Ne pas appliquer sur une plaie, ni sous un pansement occlusif.', '3', 200),
(11, 'CLAZER6', 'CLAZER', 'AFM', 'Clarithromycine', 'Ce m?dicament est utilis? pour traiter des infections bact?riennes sp?cifiques. Il est ?galement utilis? dans le traitement de l\'ulc?re gastro-duod?nal, en association avec d\'autres m?dicaments.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie aux macrolides (dont le chef de file est l\'?rythromycine).', '0', 0),
(12, 'DEPRIL9', 'DEPRAMIL', 'AIM', 'Clomipramine', 'Ce m?dicament est utilis? pour traiter les ?pisodes d?pressifs s?v?res, certaines douleurs rebelles, les troubles obsessionnels compulsifs et certaines ?nur?sies chez l\'enfant.', 'Ce m?dicament est contre-indiqu? en cas de glaucome ou d\'ad?nome de la prostate, d\'infarctus r?cent, ou si vous avez re??u un traitement par IMAO durant les 2 semaines pr?c?dentes ou en cas d\'allergie aux antid?presseurs imipraminiques.', '0', 0),
(13, 'DIMIRTAM6', 'DIMIRTAM', 'AAC', 'Mirtazapine', '            Ce m?dicament est utilis? pour traiter les ?pisodes d?pressifs s?v?res.\r\n            ', '            La prise de ce produit est contre-indiqu?e en cas de d\'allergie ?? l\'un des constituants.\r\n            ', '0', 0),
(14, 'DOLRIL7', 'DOLORIL', 'AAA', 'Acide ac?tylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Parac?tamol', '                                                Ce m?dicament est utilis? dans le traitement symptomatique de la douleur ou de la fi?vre.\r\n            \r\n            \r\n            \r\n            ', '                                                Ce m?dicament est contre-indiqu? en cas d\'allergie au parac?tamol ou aux salicylates.\r\n            \r\n            \r\n            \r\n            ', '0', 0),
(15, 'DORNOM8', 'NORMADOR', 'HYP', 'Doxylamine', '            Ce m?dicament est utilis? pour traiter l\'insomnie chez l\'adulte.\r\n            ', '            Ce m?dicament est contre-indiqu? en cas de glaucome, de certains troubles urinaires (r?tention urinaire) et chez l\'enfant de moins de 15 ans.\r\n            ', '0', 0),
(16, 'EQUILARX6', 'EQUILAR', 'AAH', 'Meclozine', '                                                                        Ce m?dicament est utilis? pour traiter les vertiges et pour pr?venir le mal des transports.\r\n            \r\n            \r\n ', '                                                                        Ce m?dicament ne doit pas ?tre utilis? en cas d\'allergie au produit, en cas de glaucome ou de r?tention urinaire.\r\n            \r\n            \r\n            \r\n       ', '0', 0),
(17, 'EVILR7', 'EVEILLOR', 'PSA', 'Adrafinil', '                        Ce m?dicament est utilis? pour traiter les troubles de la vigilance et certains symptomes neurologiques chez le sujet ag?.\r\n            \r\n            ', '                        Ce m?dicament est contre-indiqu? en cas d\'allergie ?? l\'un des constituants.\r\n            \r\n            ', '0', 0),
(18, 'INSXT5', 'INSECTIL', 'AH', 'Diph?nydramine', '            Ce m?dicament est utilis? en application locale sur les piq?res d\'insecte et l\'urticaire.\r\n            ', '            Ce m?dicament est contre-indiqu? en cas d\'allergie aux antihistaminiques.\r\n            ', '0', 0),
(19, 'JOVAI8', 'JOVENIL', 'AFM', 'Josamycine', 'Ce m?dicament est utilis? pour traiter des infections bact?riennes sp?cifiques.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie aux macrolides (dont le chef de file est l\'?rythromycine).', '0', 0),
(20, 'LIDOXY23', 'LIDOXYTRACINE', 'AFC', 'Oxyt?tracycline +Lidoca?ne', 'Ce m?dicament est utilis? en injection intramusculaire pour traiter certaines infections sp?cifiques.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie ?? l\'un des constituants. Il ne doit pas ?tre associ? aux r?tino?des.', '0', 0),
(21, 'LITHOR12', 'LITHORINE', 'AP', 'Lithium', 'Ce m?dicament est indiqu? dans la pr?vention des psychoses maniaco-d?pressives ou pour traiter les ?tats maniaques.', 'Ce m?dicament ne doit pas ?tre utilis? si vous ?tes allergique au lithium. Avant de prendre ce traitement, signalez ?? votre m?decin traitant si vous souffrez d\'insuffisance r?nale, ou si vous avez un r?gime sans sel.', '0', 0),
(22, 'PARMOL16', 'PARMOCODEINE', 'AA', 'Cod?ine + Parac?tamol', 'Ce m?dicament est utilis? pour le traitement des douleurs lorsque des antalgiques simples ne sont pas assez efficaces.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie ?? l\'un des constituants, chez l\'enfant de moins de 15 Kg, en cas d\'insuffisance h?patique ou respiratoire, d\'asthme, de ph?nylc?tonurie et chez la femme qui allaite.', '0', 0),
(23, 'PHYSOI8', 'PHYSICOR', 'PSA', 'Sulbutiamine', 'Ce m?dicament est utilis? pour traiter les baisses d\'activit? physique ou psychique, souvent dans un contexte de d?pression.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie ?? l\'un des constituants.', '0', 0),
(24, 'PIRIZ8', 'PIRIZAN', 'ABA', 'Pyrazinamide', 'Ce m?dicament est utilis?, en association ?? d\'autres antibiotiques, pour traiter la tuberculose.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie ?? l\'un des constituants, d\'insuffisance r?nale ou h?patique, d\'hyperuric?mie ou de porphyrie.', '0', 0),
(25, 'POMDI20', 'POMADINE', 'AO', 'Bacitracine', 'Ce m?dicament est utilis? pour traiter les infections oculaires de la surface de l\'oeil.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie aux antibiotiques appliqu?s localement.', '0', 0),
(26, 'TROXT21', 'TROXADET', 'AIN', 'Parox?tine', 'Ce m?dicament est utilis? pour traiter la d?pression et les troubles obsessionnels compulsifs. Il peut ?galement ?tre utilis? en pr?vention des crises de panique avec ou sans agoraphobie.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie au produit.', '0', 0),
(27, 'TXISOL22', 'TOUXISOL Vitamine C', 'ALO', 'Tyrothricine + Acide ascorbique (Vitamine C)', 'Ce m?dicament est utilis? pour traiter les affections de la bouche et de la gorge.', 'Ce m?dicament est contre-indiqu? en cas d\'allergie ?? l\'un des constituants et chez l\'enfant de moins de 6 ans.', '0', 0),
(28, 'URIEG6', 'URIREGUL', 'AUM', 'Fosfomycine trom?tamol', 'Ce m?dicament est utilis? pour traiter les infections urinaires simples chez la femme de moins de 65 ans.', 'La prise de ce m?dicament est contre-indiqu?e en cas d\'allergie ?? l\'un des constituants et d\'insuffisance r?nale.', '3', 230);

-- --------------------------------------------------------

--
-- Structure de la table `med_prixht`
--

CREATE TABLE `med_prixht` (
  `id_med` int(11) NOT NULL,
  `med_depotLEGAL` text COLLATE utf8_unicode_ci NOT NULL,
  `med_nomcommercial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prix_medHT` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `med_prixht`
--

INSERT INTO `med_prixht` (`id_med`, `med_depotLEGAL`, `med_nomcommercial`, `prix_medHT`) VALUES
(14, 'DOLRIL7', 'DOLORIL', 11),
(17, 'EVILR7', 'EVEILLOR', 1),
(4, 'AMOX45', 'AMOXAR', 6),
(16, 'EQUILARX6', 'EQUILAR', 15),
(10, 'CARTION6', 'CARTION', 2),
(18, 'INSXT5', 'INSECTIL', 5);

-- --------------------------------------------------------

--
-- Structure de la table `med_stock`
--

CREATE TABLE `med_stock` (
  `id_med` int(11) NOT NULL,
  `med_depotLEGAL` text COLLATE utf8_unicode_ci NOT NULL,
  `med_nomcommercial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nb_stock` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `med_stock`
--

INSERT INTO `med_stock` (`id_med`, `med_depotLEGAL`, `med_nomcommercial`, `nb_stock`) VALUES
(14, 'DOLRIL7', 'DOLORIL', 250),
(17, 'EVILR7', 'EVEILLOR', 3),
(16, 'EQUILARX6', 'EQUILAR', 200),
(4, 'AMOX45', 'AMOXAR', 600),
(10, 'CARTION6', 'CARTION', 566),
(18, 'INSXT5', 'INSECTIL', 755);

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mdp` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`id`, `nom`, `mdp`) VALUES
(1, 'pierre', '123456');

-- --------------------------------------------------------

--
-- Structure de la table `praticien`
--

CREATE TABLE `praticien` (
  `PRA_NUM` int(2) NOT NULL,
  `PRA_NOM` varchar(16) DEFAULT NULL,
  `PRA_PRENOM` varchar(15) DEFAULT NULL,
  `PRA_ADRESSE` varchar(29) DEFAULT NULL,
  `PRA_CP` int(5) DEFAULT NULL,
  `PRA_VILLE` varchar(19) DEFAULT NULL,
  `PRA_COEFNOTORIETE` varchar(11) DEFAULT NULL,
  `TYP_CODE` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `praticien`
--

INSERT INTO `praticien` (`PRA_NUM`, `PRA_NOM`, `PRA_PRENOM`, `PRA_ADRESSE`, `PRA_CP`, `PRA_VILLE`, `PRA_COEFNOTORIETE`, `TYP_CODE`) VALUES
(1, 'Notini', 'Alain', '114 r Authie', 85000, 'LA ROCHE SUR YON', '290,0299988', 'MH'),
(2, 'Gosselin', 'Albert', '13 r Devon', 41000, 'BLOIS', '307,4899902', 'MV'),
(3, 'Delahaye', 'Andr?', '36 av 6 Juin', 25000, 'BESANCON', '185,7899933', 'PS'),
(4, 'Leroux', 'Andr?', '47 av Robert Schuman', 60000, 'BEAUVAIS', '172,0399933', 'PH'),
(5, 'Desmoulins', 'Anne', '31 r St Jean', 30000, 'NIMES', '94,75', 'PO'),
(6, 'Mouel', 'Anne', '27 r Auvergne', 80000, 'AMIENS', '45,20000076', 'MH'),
(7, 'Desgranges-Lentz', 'Antoine', '1 r Albert de Mun', 29000, 'MORLAIX', '20,06999969', 'MV'),
(8, 'Marcouiller', 'Arnaud', '31 r St Jean', 68000, 'MULHOUSE', '396,519989', 'PS'),
(9, 'Dupuy', 'Benoit', '9 r Demolombe', 34000, 'MONTPELLIER', '395,6600037', 'PH'),
(10, 'Lerat', 'Bernard', '31 r St Jean', 59000, 'LILLE', '257,7900085', 'PO'),
(11, 'Mar?ais-Lefebvre', 'Bertrand', '86Bis r Basse', 67000, 'STRASBOURG', '450,9599915', 'MH'),
(12, 'Boscher', 'Bruno', '94 r Falaise', 10000, 'TROYES', '356,1400146', 'MV'),
(13, 'Morel', 'Catherine', '21 r Chateaubriand', 75000, 'PARIS', '379,5700073', 'PS'),
(14, 'Guivarch', 'Chantal', '4 av G?n Laperrine', 45000, 'ORLEANS', '114,5599976', 'PH'),
(15, 'Bessin-Grosdoit', 'Christophe', '92 r Falaise', 6000, 'NICE', '222,0599976', 'PO'),
(16, 'Rossa', 'Claire', '14 av Thi?s', 6000, 'NICE', '529,7800293', 'MH'),
(17, 'Cauchy', 'Denis', '5 av Ste Th?r?se', 11000, 'NARBONNE', '458,8200073', 'MV'),
(18, 'Gaff?', 'Dominique', '9 av 1?re Arm?e Fran?aise', 35000, 'RENNES', '213,3999939', 'PS'),
(19, 'Guenon', 'Dominique', '98 bd Mar Lyautey', 44000, 'NANTES', '175,8899994', 'PH'),
(20, 'Pr?vot', 'Dominique', '29 r Lucien Nelle', 87000, 'LIMOGES', '151,3600006', 'PO'),
(21, 'Houchard', 'Eliane', '9 r Demolombe', 49100, 'ANGERS', '436,9599915', 'MH'),
(22, 'Desmons', 'Elisabeth', '51 r Berni?res', 29000, 'QUIMPER', '281,1700134', 'MV'),
(23, 'Flament', 'Elisabeth', '11 r Pasteur', 35000, 'RENNES', '315,6000061', 'PS'),
(24, 'Goussard', 'Emmanuel', '9 r Demolombe', 41000, 'BLOIS', '40,72000122', 'PH'),
(25, 'Desprez', 'Eric', '9 r Vaucelles', 33000, 'BORDEAUX', '406,8500061', 'PO'),
(26, 'Coste', 'Evelyne', '29 r Lucien Nelle', 19000, 'TULLE', '441,8699951', 'MH'),
(27, 'Lefebvre', 'Fr?d?ric', '2 pl Wurzburg', 55000, 'VERDUN', '573,6300049', 'MV'),
(28, 'Lem?e', 'Fr?d?ric', '29 av 6 Juin', 56000, 'VANNES', '326,3999939', 'PS'),
(29, 'Martin', 'Fr?d?ric', 'B?t A 90 r Bayeux', 70000, 'VESOUL', '506,0599976', 'PH'),
(30, 'Marie', 'Fr?d?rique', '172 r Caponi?re', 70000, 'VESOUL', '313,3099976', 'PO'),
(31, 'Rosenstech', 'Genevi?ve', '27 r Auvergne', 75000, 'PARIS', '366,8200073', 'MH'),
(32, 'Pontavice', 'Ghislaine', '8 r Gaillon', 86000, 'POITIERS', '265,5799866', 'MV'),
(33, 'Leveneur-Mosquet', 'Guillaume', '47 av Robert Schuman', 64000, 'PAU', '184,9700012', 'PS'),
(34, 'Blanchais', 'Guy', '30 r Authie', 8000, 'SEDAN', '502,480011', 'PH'),
(35, 'Leveneur', 'Hugues', '7 pl St Gilles', 62000, 'ARRAS', '7,389999866', 'PO'),
(36, 'Mosquet', 'Isabelle', '22 r Jules Verne', 76000, 'ROUEN', '77,09999847', 'MH'),
(37, 'Giraudon', 'Jean-Christophe', '1 r Albert de Mun', 38100, 'VIENNE', '92,62000275', 'MV'),
(38, 'Marie', 'Jean-Claude', '26 r H?rouville', 69000, 'LYON', '120,0999985', 'PS'),
(39, 'Maury', 'Jean-Fran?ois', '5 r Pierre Girard', 71000, 'CHALON SUR SAONE', '13,72999954', 'PH'),
(40, 'Dennel', 'Jean-Louis', '7 pl St Gilles', 28000, 'CHARTRES', '550,6900024', 'PO'),
(41, 'Ain', 'Jean-Pierre', '4 r?sid Olympia', 2000, 'LAON', '5,590000153', 'MH'),
(42, 'Chemery', 'Jean-Pierre', '51 pl Ancienne Boucherie', 14000, 'CAEN', '396,5799866', 'MV'),
(43, 'Comoz', 'Jean-Pierre', '35 r Auguste Lechesne', 18000, 'BOURGES', '340,3500061', 'PS'),
(44, 'Desfaudais', 'Jean-Pierre', '7 pl St Gilles', 29000, 'BREST', '71,76000214', 'PH'),
(45, 'Phan', 'J?r??me', '9 r Clos Caillet', 79000, 'NIORT', '451,6099854', 'PO'),
(46, 'Riou', 'Line', '43 bd G?n Vanier', 77000, 'MARNE LA VALLEE', '193,25', 'MH'),
(47, 'Chubilleau', 'Louis', '46 r Eglise', 17000, 'SAINTES', '202,0700073', 'MV'),
(48, 'Lebrun', 'Lucette', '178 r Auge', 54000, 'NANCY', '410,4100037', 'PS'),
(49, 'Goessens', 'Marc', '6 av 6 Juin', 39000, 'DOLE', '548,5700073', 'PH'),
(50, 'Laforge', 'Marc', '5 r?sid Prairie', 50000, 'SAINT LO', '265,0499878', 'PO'),
(51, 'Millereau', 'Marc', '36 av 6 Juin', 72000, 'LA FERTE BERNARD', '430,4200134', 'MH'),
(52, 'Dauverne', 'Marie-Christine', '69 av Charlemagne', 21000, 'DIJON', '281,0499878', 'MV'),
(53, 'Vittorio', 'Myriam', '3 pl Champlain', 94000, 'BOISSY SAINT LEGER', '356,230011', 'PS'),
(54, 'Lapasset', 'Nhieu', '31 av 6 Juin', 52000, 'CHAUMONT', '107', 'PH'),
(55, 'Plantet-Besnier', 'Nicole', '10 av 1?re Arm?e Fran?aise', 86000, 'CHATELLEREAULT', '369,9400024', 'PO'),
(56, 'Chubilleau', 'Pascal', '3 r Hastings', 15000, 'AURRILLAC', '290,75', 'MH'),
(57, 'Robert', 'Pascal', '31 r St Jean', 93000, 'BOBIGNY', '162,4100037', 'MV'),
(58, 'Jean', 'Pascale', '114 r Authie', 49100, 'SAUMUR', '375,519989', 'PS'),
(59, 'Chanteloube', 'Patrice', '14 av Thi?s', 13000, 'MARSEILLE', '478,0100098', 'PH'),
(60, 'Lecuirot', 'Patrice', 'r?sid St P?res 55 r Pigaci?re', 54000, 'NANCY', '239,6600037', 'PO'),
(61, 'Gandon', 'Patrick', '47 av Robert Schuman', 37000, 'TOURS', '599,0599976', 'MH'),
(62, 'Mirouf', 'Patrick', '22 r Puits Picard', 74000, 'ANNECY', '458,4200134', 'MV'),
(63, 'Boireaux', 'Philippe', '14 av Thi?s', 10000, 'CHALON EN CHAMPAGNE', '454,480011', 'PS'),
(64, 'Cendrier', 'Philippe', '7 pl St Gilles', 12000, 'RODEZ', '164,1600037', 'PH'),
(65, 'Duhamel', 'Philippe', '114 r Authie', 34000, 'MONTPELLIER', '98,62000275', 'PO'),
(66, 'Grigy', 'Philippe', '15 r M?lingue', 44000, 'CLISSON', '285,1000061', 'MH'),
(67, 'Linard', 'Philippe', '1 r Albert de Mun', 81000, 'ALBI', '486,2999878', 'MV'),
(68, 'Lozier', 'Philippe', '8 r Gaillon', 31000, 'TOULOUSE', '48,40000153', 'PS'),
(69, 'Dech?tre', 'Pierre', '63 av Thi?s', 23000, 'MONTLUCON', '253,75', 'PH'),
(70, 'Goessens', 'Pierre', '22 r Jean Romain', 40000, 'MONT DE MARSAN', '426,1900024', 'PO'),
(71, 'Lem?nager', 'Pierre', '39 av 6 Juin', 57000, 'METZ', '118,6999969', 'MH'),
(72, 'N?e', 'Pierre', '39 av 6 Juin', 82000, 'MONTAUBAN', '72,54000092', 'MV'),
(73, 'Guyot', 'Pierre-Laurent', '43 bd G?n Vanier', 48000, 'MENDE', '352,3099976', 'PS'),
(74, 'Chauchard', 'Roger', '9 r Vaucelles', 13000, 'MARSEILLE', '552,1900024', 'PH'),
(75, 'Mabire', 'Roland', '11 r Boutiques', 67000, 'STRASBOURG', '422,3900146', 'PO'),
(76, 'Leroy', 'Soazig', '45 r Boutiques', 61000, 'ALENCON', '570,6699829', 'MH'),
(77, 'Guyot', 'St?phane', '26 r H?rouville', 46000, 'FIGEAC', '28,85000038', 'MV'),
(78, 'Delposen', 'Sylvain', '39 av 6 Juin', 27000, 'DREUX', '292,0100098', 'PS'),
(79, 'Rault', 'Sylvie', '15 bd Richemond', 2000, 'SOISSON', '526,5999756', 'PH'),
(80, 'Renouf', 'Sylvie', '98 bd Mar Lyautey', 88000, 'EPINAL', '425,2399902', 'PO'),
(81, 'Alliet-Grach', 'Thierry', '14 av Thi?s', 7000, 'PRIVAS', '451,3099976', 'MH'),
(82, 'Bayard', 'Thierry', '92 r Falaise', 42000, 'SAINT ETIENNE', '271,7099915', 'MV'),
(83, 'Gauchet', 'Thierry', '7 r Desmoueux', 38100, 'GRENOBLE', '406,1000061', 'PS'),
(84, 'Bobichon', 'Tristan', '219 r Caponi?re', 9000, 'FOIX', '218,3600006', 'PH'),
(85, 'Duchemin-Laniel', 'V?ronique', '130 r St Jean', 33000, 'LIBOURNE', '265,6099854', 'PO'),
(86, 'Laurent', 'Youn?s', '34 r Demolombe', 53000, 'MAYENNE', '496,1000061', 'MH');

-- --------------------------------------------------------

--
-- Structure de la table `proposer`
--

CREATE TABLE `proposer` (
  `v_num` int(11) NOT NULL,
  `ech_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `id_reg` int(11) NOT NULL,
  `REG_CODE` varchar(2) DEFAULT NULL,
  `SEC_CODE` varchar(1) DEFAULT NULL,
  `REG_NOM` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE `specialite` (
  `id_spe` int(11) NOT NULL,
  `TYP_CODE` varchar(2) DEFAULT NULL,
  `TYP_LIBELLE` varchar(22) DEFAULT NULL,
  `TYP_LIEU` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `specialite`
--

INSERT INTO `specialite` (`id_spe`, `TYP_CODE`, `TYP_LIBELLE`, `TYP_LIEU`) VALUES
(1, 'MH', 'M?decin Hospitalier', 'Hopital ou clinique'),
(2, 'MV', 'M?decine de Ville', 'Cabinet'),
(3, 'PH', 'Pharmacien Hospitalier', 'Hopital ou clinique'),
(4, 'PO', 'Pharmacien Officine', 'Pharmacie'),
(5, 'PS', 'Personnel de sant?', 'Centre param?dical');

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

CREATE TABLE `visite` (
  `VIS_MATRICULE` varchar(4) DEFAULT NULL,
  `V_NUM` int(11) NOT NULL,
  `PRA_NUM` int(2) DEFAULT NULL,
  `V_DATE` varchar(10) DEFAULT NULL,
  `V_DESCRIPTION` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `visite`
--

INSERT INTO `visite` (`VIS_MATRICULE`, `V_NUM`, `PRA_NUM`, `V_DATE`, `V_DESCRIPTION`) VALUES
('a131', 3, 23, '18/04/2002', 'M?decin curieux, ? recontacer en d?cembre pour r?union'),
('a17', 4, 4, '21/05/2003', 'Changement de direction, red?finition de la politique m?dicamenteuse, recours au g?n?rique'),
('a131', 7, 41, '23/03/2003', 'RAS\r\nChangement de tel : 05 89 89 89 89');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE `visiteur` (
  `id_visiteur` int(11) NOT NULL,
  `VIS_MATRICULE` varchar(4) DEFAULT NULL,
  `VIS_NOM` varchar(15) DEFAULT NULL,
  `Vis_PRENOM` varchar(12) DEFAULT NULL,
  `VIS_ADRESSE` varchar(31) DEFAULT NULL,
  `VIS_CP` varchar(5) DEFAULT NULL,
  `VIS_VILLE` varchar(19) DEFAULT NULL,
  `VIS_DATEEMBAUCHE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `visiteur`
--

INSERT INTO `visiteur` (`id_visiteur`, `VIS_MATRICULE`, `VIS_NOM`, `Vis_PRENOM`, `VIS_ADRESSE`, `VIS_CP`, `VIS_VILLE`, `VIS_DATEEMBAUCHE`) VALUES
(1, 'm35', 'Lejard', 'Agnes', '4 r Anthoard', '82000', 'MONTAUBAN', '06/10/1987'),
(2, 'f4', 'Gest', 'Alain', '30 r Authie', '46000', 'FIGEAC', '03/05/1994'),
(3, 't55', 'Trehet', 'Alain', '7D chem Barral', '12000', 'RODEZ', '29/11/1994'),
(4, 'o26', 'Mancini', 'Anne', '5 r D\'Agier', '48000', 'MENDE', '05/01/1995'),
(5, 'b28', 'Cacheux', 'Bernard', '114 r Authie', '34000', 'MONTPELLIER', '02/08/2000'),
(6, 'k4', 'Lanne', 'Bernard', '4 r Bayeux', '30000', 'NIMES', '21/11/1996'),
(7, 'zzz', 'swiss', 'bourdin', '', '', '', '18/06/2003'),
(8, 'e5', 'Enault-Pascreau', 'Celine', '25B r Stalingrad', '40000', 'MONT DE MARSAN', '27/11/1990'),
(9, 'g7', 'Guindon', 'Caroline', '40 r Mar Montgomery', '87000', 'LIMOGES', '13/01/1996'),
(10, 'b4', 'Charoze', 'Catherine', '100 pl Geants', '33000', 'BORDEAUX', '25/09/1997'),
(11, 'p6', 'Pascreau', 'Charles', '57 bd Mar Foch', '64000', 'PAU', '30/03/1997'),
(12, 'a55', 'Bedos', 'Christian', '1 r Benedictins', '65000', 'TARBES', '17/07/1987'),
(13, 'b50', 'Clepkens', 'Christophe', '12 r Federico Garcia Lorca', '13000', 'MARSEILLE', '18/01/1998'),
(14, 'e49', 'Duncombe', 'Claude', '19 av Alsace Lorraine', '9000', 'FOIX', '19/02/1996'),
(15, 'p7', 'Pernot', 'Claude-Noel', '6 r Alexandre 1 de Yougoslavie', '11000', 'NARBONNE', '01/03/1990'),
(16, 'a17', 'Andre', 'David', '1 r Aimon de Chissee', '38100', 'GRENOBLE', '26/08/1991'),
(17, 'p49', 'Onfroy', 'Den', '5 r Sidonie Jacolin', '37000', 'TOURS', '03/10/1977'),
(18, 'b25', 'Bunisset', 'Denise', '1 r Lionne', '49100', 'ANGERS', '03/07/1994'),
(19, 'n58', 'Loirat', 'Didier', 'Les Pechers cite Bourg la Croix', '45000', 'ORLEANS', '30/08/1992'),
(20, 'b34', 'Cadic', 'Eric', '123 r Caponiere', '41000', 'BLOIS', '06/12/1993'),
(21, 'f39', 'Fremont', 'Fernande', '4 r Jean Giono', '69000', 'LYON', '15/02/1997'),
(22, 'e39', 'Dudouit', 'Frederic', '18 quai Xavier Jouvin', '75000', 'PARIS', '26/04/1988'),
(23, 'c14', 'Daburon', 'Franeois', '13 r Champs Elysees', '6000', 'NICE', '01/02/1989'),
(24, 'h13', 'Guindon', 'Franeois', '44 r Picotiere', '19000', 'TULLE', '08/05/1993'),
(25, 'p41', 'Montecot', 'Franeoise', '6 r Paul Valery', '17000', 'SAINTES', '27/07/1998'),
(26, 'b19', 'Bunisset', 'Francis', '10 r Nicolas Chorier', '85000', 'LA ROCHE SUR YON', '31/01/1999'),
(27, 'p32', 'Marcouiller', 'Gerard', '7 pl St Gilles', '91000', 'ISSY LES MOULINEAUX', '24/12/1992'),
(28, 'g19', 'Gheysen', 'Galassus', '32 bd Mar Foch', '75000', 'PARIS', '18/01/1996'),
(29, 'h30', 'Igigabel', 'Guy', '33 gal Arlequin', '94000', 'CRETEIL', '26/04/1998'),
(30, 'j8', 'Langeard', 'Hugues', '39 av Jean Perrot', '93000', 'BAGNOLET', '18/06/1998'),
(31, 'f21', 'Finck', 'Jacques', 'rte Montreuil Bellay', '74000', 'ANNECY', '08/06/1993'),
(32, 'l14', 'Le', 'Jean', '39 r Raspail', '53000', 'LAVAL', '02/02/1995'),
(33, 'l46', 'Lecornu', 'Jean-Bernard', '4 bd Mar Foch', '72000', 'LA FERTE BERNARD', '24/01/1997'),
(34, 'p40', 'Michel', 'Jean-Claude', '5 r Gabriel Peri', '61000', 'FLERS', '14/12/1992'),
(35, 'q17', 'Petit', 'Jean-Louis', '7 r Ernest Renan', '50000', 'SAINT LO', '06/09/1997'),
(36, 'd13', 'Debelle', 'Jeanne', '134 r Stalingrad', '44000', 'NANTES', '05/12/1991'),
(37, 'r58', 'Quiquandon', 'Joel', '7 r Ernest Renan', '29000', 'QUIMPER', '30/06/1990'),
(38, 's10', 'Retailleau', 'Josselin', '88Bis r Saumuroise', '39000', 'DOLE', '14/11/1995'),
(39, 't60', 'Tusseau', 'Josselin', '63 r Bon Repos', '28000', 'CHARTRES', '29/03/1991'),
(40, 'a131', 'Villechalane', 'Louis', '8 cours Lafontaine', '29000', 'BREST', '11/12/1992'),
(41, 'a93', 'Tusseau', 'Louis', '22 r Renou', '86000', 'POITIERS', '02/01/1999'),
(42, 'b16', 'Bioret', 'Luc', '1 r Linne', '35000', 'RENNES', '21/03/1997'),
(43, 'g53', 'Gombert', 'Luc', '32 r Emile Gueymard', '56000', 'VANNES', '02/10/1985'),
(44, 'l56', 'Lecornu', 'Ludovic', '4 r Abel Servien', '25000', 'BESANCON', '27/02/1996'),
(45, 'p8', 'Perrier', 'Maetre', '6 r Aubert Dubayet', '71000', 'CHALON SUR SAONE', '23/06/1991'),
(46, 't43', 'Souron', 'Maryse', '7B r Gay Lussac', '21000', 'DIJON', '09/03/1995'),
(47, 'c54', 'Debelle', 'Michel', '181 r Caponiere', '88000', 'EPINAL', '09/04/1991'),
(48, 'd51', 'Debroise', 'Michel', '2 av 6 Juin', '70000', 'VESOUL', '18/11/1997'),
(49, 'e22', 'Desmarquest', 'Nathalie', '14 r Federico Garcia Lorca', '54000', 'NANCY', '24/03/1989'),
(50, 'k53', 'Le', 'Noel', '4 av Beauvert', '68000', 'MULHOUSE', '23/03/1983'),
(51, 'b13', 'Bentot', 'Pascal', '11 av 6 Juin', '67000', 'STRASBOURG', '11/03/1996'),
(52, 'm45', 'Lesaulnier', 'Pascal', '47 r Thiers', '57000', 'METZ', '13/10/1990'),
(53, 's21', 'Retailleau', 'Pascal', '32 bd Ayrault', '23000', 'MONTLUCON', '25/09/1992'),
(54, 'r24', 'Piquery', 'Patrick', '9 r Vaucelles', '14000', 'CAEN', '29/07/1984'),
(55, 't47', 'Tiphagne', 'Patrick', '7B r Gay Lussac', '62000', 'ARRAS', '29/08/1997'),
(56, 'c3', 'De', 'Philippe', '13 r Charles Peguy', '10000', 'TROYES', '05/05/1992'),
(57, 'j50', 'Landre', 'Philippe', '4 av Gen Laperrine', '59000', 'LILLE', '16/12/1992'),
(58, 'e24', 'Desnost', 'Pierre', '16 r Barral de Montferrat', '55000', 'VERDUN', '17/05/1993'),
(59, 'h35', 'Jourdren', 'Pierre', '34 av Jean Perrot', '15000', 'AURRILLAC', '26/08/1993'),
(60, 'h40', 'Juttard', 'Pierre-Raoul', '34 cours Jean Jaures', '8000', 'SEDAN', '01/11/1992'),
(61, 'j45', 'Laboure-Morel', 'Saout', '38 cours Berriat', '52000', 'CHAUMONT', '25/02/1998'),
(62, 'l23', 'Leclercq', 'Servane', '11 r Quinconce', '18000', 'BOURGES', '05/06/1995'),
(63, 'n42', 'Letessier', 'Stephane', '5 chem Capuche', '27000', 'EVREUX', '06/03/1996'),
(64, 'n59', 'Maffezzoli', 'Thibaud', '5 r Chateaubriand', '2000', 'LAON', '19/12/1994'),
(65, 'e52', 'Eynde', 'Valerie', '3 r Henri Moissan', '76000', 'ROUEN', '31/10/1991'),
(66, 'p42', 'Notini', 'Veronique', '5 r Lieut Chabal', '60000', 'BEAUVAIS', '12/12/1994'),
(67, 'b59', 'Cottin', 'Vincenne', '36 sq Capucins', '5000', 'GAP', '21/10/1995'),
(68, 'g30', 'Girard', 'Yvon', '31 av 6 Juin', '80000', 'AMIENS', '27/03/1999');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`);

--
-- Index pour la table `famille`
--
ALTER TABLE `famille`
  ADD PRIMARY KEY (`id_fam`);

--
-- Index pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD PRIMARY KEY (`id_med`);

--
-- Index pour la table `med_prixht`
--
ALTER TABLE `med_prixht`
  ADD PRIMARY KEY (`id_med`);

--
-- Index pour la table `med_stock`
--
ALTER TABLE `med_stock`
  ADD PRIMARY KEY (`id_med`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD PRIMARY KEY (`PRA_NUM`);

--
-- Index pour la table `proposer`
--
ALTER TABLE `proposer`
  ADD PRIMARY KEY (`v_num`,`ech_num`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id_reg`);

--
-- Index pour la table `specialite`
--
ALTER TABLE `specialite`
  ADD PRIMARY KEY (`id_spe`);

--
-- Index pour la table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`V_NUM`);

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`id_visiteur`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `famille`
--
ALTER TABLE `famille`
  MODIFY `id_fam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `medicament`
--
ALTER TABLE `medicament`
  MODIFY `id_med` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `id_reg` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `specialite`
--
ALTER TABLE `specialite`
  MODIFY `id_spe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `visiteur`
--
ALTER TABLE `visiteur`
  MODIFY `id_visiteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
