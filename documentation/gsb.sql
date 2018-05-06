Base de données : `gsb`
--
 
-- --------------------------------------------------------
 
--
-- Structure de la table `echantillonmedic`
--
 
CREATE TABLE IF NOT EXISTS `echantillonmedic` (
`ech_num` int(11) NOT NULL,
`ech_prixHT` double DEFAULT NULL,
`med_depotLegal` int(11) DEFAULT NULL,
PRIMARY KEY (`ech_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
-- --------------------------------------------------------
 
--
-- Structure de la table `famille`
--
 
CREATE TABLE IF NOT EXISTS `famille` (
`FAM_CODE` varchar(3) DEFAULT NULL,
`FAM_LIBELLE` varchar(67) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
--
-- Contenu de la table `famille`
--
 
INSERT INTO `famille` (`FAM_CODE`, `FAM_LIBELLE`) VALUES
('FAM', 'FAM_LIBELLE'),
('AA', 'Antalgiques en association'),
('AAA', 'Antalgiques antipyr?tiques en association'),
('AAC', 'Antid?presseur d''action centrale'),
('AAH', 'Antivertigineux antihistaminique H1'),
('ABA', 'Antibiotique antituberculeux'),
('ABC', 'Antibiotique antiacn?ique local'),
('ABP', 'Antibiotique de la famille des b?ta-lactamines (p?nicilline A)'),
('AFC', 'Antibiotique de la famille des cyclines'),
('AFM', 'Antibiotique de la famille des macrolides'),
('AH', 'Antihistaminique H1 local'),
('AIM', 'Antid?presseur imipraminique (tricyclique)'),
('AIN', 'Antid?presseur inhibiteur s?lectif de la recapture de la s?rotonine'),
('ALO', 'Antibiotique local (ORL)'),
('ANS', 'Antid?presseur IMAO non s?lectif'),
('AO', 'Antibiotique ophtalmique'),
('AP', 'Antipsychotique normothymique'),
('AUM', 'Antibiotique urinaire minute'),
('CRT', 'Cortico?de, antibiotique et antifongique ?? usage local'),
('HYP', 'Hypnotique antihistaminique'),
('PSA', 'Psychostimulant, antiasth?nique'),
('FAM', 'FAM_LIBELLE'),
('AA', 'Antalgiques en association'),
('AAA', 'Antalgiques antipyr?tiques en association'),
('AAC', 'Antid?presseur d''action centrale'),
('AAH', 'Antivertigineux antihistaminique H1'),
('ABA', 'Antibiotique antituberculeux'),
('ABC', 'Antibiotique antiacn?ique local'),
('ABP', 'Antibiotique de la famille des b?ta-lactamines (p?nicilline A)'),
('AFC', 'Antibiotique de la famille des cyclines'),
('AFM', 'Antibiotique de la famille des macrolides'),
('AH', 'Antihistaminique H1 local'),
('AIM', 'Antid?presseur imipraminique (tricyclique)'),
('AIN', 'Antid?presseur inhibiteur s?lectif de la recapture de la s?rotonine'),
('ALO', 'Antibiotique local (ORL)'),
('ANS', 'Antid?presseur IMAO non s?lectif'),
('AO', 'Antibiotique ophtalmique'),
('AP', 'Antipsychotique normothymique'),
('AUM', 'Antibiotique urinaire minute'),
('CRT', 'Cortico?de, antibiotique et antifongique ?? usage local'),
('HYP', 'Hypnotique antihistaminique'),
('PSA', 'Psychostimulant, antiasth?nique');
 
-- --------------------------------------------------------
 
--
-- Structure de la table `medicament`
--
 
CREATE TABLE IF NOT EXISTS `medicament` (
`MED_DEPOTLEGAL` varchar(9) DEFAULT NULL,
`MED_NOMCOMMERCIAL` varchar(19) DEFAULT NULL,
`FAM_CODE` varchar(3) DEFAULT NULL,
`MED_COMPOSITION` varchar(80) DEFAULT NULL,
`MED_EFFETS` varchar(194) DEFAULT NULL,
`MED_CONTREINDIC` varchar(236) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
--
-- Contenu de la table `medicament`
--
 
INSERT INTO `medicament` (`MED_DEPOTLEGAL`, `MED_NOMCOMMERCIAL`, `FAM_CODE`, `MED_COMPOSITION`, `MED_EFFETS`, `MED_CONTREINDIC`) VALUES
('3MYC7', 'TRIMYCINE', 'CRT', 'Triamcinolone (ac?tonide) + N?omycine + Nystatine', 'Ce m?dicament est un cortico?de ?? activit? forte ou tr?s forte associ? ?? un antibiotique et un antifongique, utilis? en application locale dans certaines atteintes cutan?es surinfect?es.', 'Ce m?dicament est contre-indiqu? en cas d''allergie ?? l''un des constituants, d''infections de la peau ou de parasitisme non trait?s, d''acn?. Ne pas appliquer sur une plaie, ni sous un pansement occlusif.'),
('ADIMOL9', 'ADIMOL', 'ABP', 'Amoxicilline + Acide clavulanique', 'Ce m?dicament, plus puissant que les p?nicillines simples, est utilis? pour traiter des infections bact?riennes sp?cifiques.', 'Ce m?dicament est contre-indiqu? en cas d''allergie aux p?nicillines ou aux c?phalosporines.'),
('AMOPIL7', 'AMOPIL', 'ABP', 'Amoxicilline', 'Ce m?dicament, plus puissant que les p?nicillines simples, est utilis? pour traiter des infections bact?riennes sp?cifiques.', 'Ce m?dicament est contre-indiqu? en cas d''allergie aux p?nicillines. Il doit ?tre administr? avec prudence en cas d''allergie aux c?phalosporines.'),
('AMOX45', 'AMOXAR', 'ABP', 'Amoxicilline', 'Ce m?dicament, plus puissant que les p?nicillines simples, est utilis? pour traiter des infections bact?riennes sp?cifiques.', 'La prise de ce m?dicament peut rendre positifs les tests de d?pistage du dopage.'),
('AMOXIG12', 'AMOXI G?', 'ABP', 'Amoxicilline', 'Ce m?dicament, plus puissant que les p?nicillines simples, est utilis? pour traiter des infections bact?riennes sp?cifiques.', 'Ce m?dicament est contre-indiqu? en cas d''allergie aux p?nicillines. Il doit ?tre administr? avec prudence en cas d''allergie aux c?phalosporines.'),
('APATOUX22', 'APATOUX Vitamine C', 'ALO', 'Tyrothricine + T?traca?ne + Acide ascorbique (Vitamine C)', 'Ce m?dicament est utilis? pour traiter les affections de la bouche et de la gorge.', 'Ce m?dicament est contre-indiqu? en cas d''allergie ?? l''un des constituants, en cas de ph?nylc?tonurie et chez l''enfant de moins de 6 ans.'),
('BACTIG10', 'BACTIGEL', 'ABC', 'Erythromycine', 'Ce m?dicament est utilis? en application locale pour traiter l''acn? et les infections cutan?es bact?riennes associ?es.', 'Ce m?dicament est contre-indiqu? en cas d''allergie aux antibiotiques de la famille des macrolides ou des lincosanides.'),
('BACTIV13', 'BACTIVIL', 'AFM', 'Erythromycine', 'Ce m?dicament est utilis? pour traiter des infections bact?riennes sp?cifiques.', 'Ce m?dicament est contre-indiqu? en cas d''allergie aux macrolides (dont le chef de file est l''?rythromycine).'),
('BITALV', 'BIVALIC', 'AAA', 'Dextropropoxyph?ne + Parac?tamol', 'Ce m?dicament est utilis? pour traiter les douleurs d''intensit? mod?r?e ou intense.', 'Ce m?dicament est contre-indiqu? en cas d''allergie aux m?dicaments de cette famille, d''insuffisance h?patique ou d''insuffisance r?nale.'),
('CARTION6', 'CARTION', 'AAA', 'Acide ac?tylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Parac?tamol', 'Ce m?dicament est utilis? dans le traitement symptomatique de la douleur ou de la fi?vre.', 'Ce m?dicament est contre-indiqu? en cas de troubles de la coagulation (tendances aux h?morragies), d''ulc?re gastroduod?nal, maladies graves du foie.'),
('CLAZER6', 'CLAZER', 'AFM', 'Clarithromycine', 'Ce m?dicament est utilis? pour traiter des infections bact?riennes sp?cifiques. Il est ?galement utilis? dans le traitement de l''ulc?re gastro-duod?nal, en association avec d''autres m?dicaments.', 'Ce m?dicament est contre-indiqu? en cas d''allergie aux macrolides (dont le chef de file est l''?rythromycine).'),
('DEPRIL9', 'DEPRAMIL', 'AIM', 'Clomipramine', 'Ce m?dicament est utilis? pour traiter les ?pisodes d?pressifs s?v?res, certaines douleurs rebelles, les troubles obsessionnels compulsifs et certaines ?nur?sies chez l''enfant.', 'Ce m?dicament est contre-indiqu? en cas de glaucome ou d''ad?nome de la prostate, d''infarctus r?cent, ou si vous avez re??u un traitement par IMAO durant les 2 semaines pr?c?dentes ou en cas d''allergie aux antid?presseurs imipraminiques.'),
('DIMIRTAM6', 'DIMIRTAM', 'AAC', 'Mirtazapine', 'Ce m?dicament est utilis? pour traiter les ?pisodes d?pressifs s?v?res.', 'La prise de ce produit est contre-indiqu?e en cas de d''allergie ?? l''un des constituants.'),
('DOLRIL7', 'DOLORIL', 'AAA', 'Acide ac?tylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Parac?tamol', 'Ce m?dicament est utilis? dans le traitement symptomatique de la douleur ou de la fi?vre.', 'Ce m?dicament est contre-indiqu? en cas d''allergie au parac?tamol ou aux salicylates.'),
('DORNOM8', 'NORMADOR', 'HYP', 'Doxylamine', 'Ce m?dicament est utilis? pour traiter l''insomnie chez l''adulte.', 'Ce m?dicament est contre-indiqu? en cas de glaucome, de certains troubles urinaires (r?tention urinaire) et chez l''enfant de moins de 15 ans.'),
('EQUILARX6', 'EQUILAR', 'AAH', 'M?clozine', 'Ce m?dicament est utilis? pour traiter les vertiges et pour pr?venir le mal des transports.', 'Ce m?dicament ne doit pas ?tre utilis? en cas d''allergie au produit, en cas de glaucome ou de r?tention urinaire.'),
('EVILR7', 'EVEILLOR', 'PSA', 'Adrafinil', 'Ce m?dicament est utilis? pour traiter les troubles de la vigilance et certains symptomes neurologiques chez le sujet ag?.', 'Ce m?dicament est contre-indiqu? en cas d''allergie ?? l''un des constituants.'),
('INSXT5', 'INSECTIL', 'AH', 'Diph?nydramine', 'Ce m?dicament est utilis? en application locale sur les piq?res d''insecte et l''urticaire.', 'Ce m?dicament est contre-indiqu? en cas d''allergie aux antihistaminiques.'),
('JOVAI8', 'JOVENIL', 'AFM', 'Josamycine', 'Ce m?dicament est utilis? pour traiter des infections bact?riennes sp?cifiques.', 'Ce m?dicament est contre-indiqu? en cas d''allergie aux macrolides (dont le chef de file est l''?rythromycine).'),
('LIDOXY23', 'LIDOXYTRACINE', 'AFC', 'Oxyt?tracycline +Lidoca?ne', 'Ce m?dicament est utilis? en injection intramusculaire pour traiter certaines infections sp?cifiques.', 'Ce m?dicament est contre-indiqu? en cas d''allergie ?? l''un des constituants. Il ne doit pas ?tre associ? aux r?tino?des.'),
('LITHOR12', 'LITHORINE', 'AP', 'Lithium', 'Ce m?dicament est indiqu? dans la pr?vention des psychoses maniaco-d?pressives ou pour traiter les ?tats maniaques.', 'Ce m?dicament ne doit pas ?tre utilis? si vous ?tes allergique au lithium. Avant de prendre ce traitement, signalez ?? votre m?decin traitant si vous souffrez d''insuffisance r?nale, ou si vous avez un r?gime sans sel.'),
('PARMOL16', 'PARMOCODEINE', 'AA', 'Cod?ine + Parac?tamol', 'Ce m?dicament est utilis? pour le traitement des douleurs lorsque des antalgiques simples ne sont pas assez efficaces.', 'Ce m?dicament est contre-indiqu? en cas d''allergie ?? l''un des constituants, chez l''enfant de moins de 15 Kg, en cas d''insuffisance h?patique ou respiratoire, d''asthme, de ph?nylc?tonurie et chez la femme qui allaite.'),
('PHYSOI8', 'PHYSICOR', 'PSA', 'Sulbutiamine', 'Ce m?dicament est utilis? pour traiter les baisses d''activit? physique ou psychique, souvent dans un contexte de d?pression.', 'Ce m?dicament est contre-indiqu? en cas d''allergie ?? l''un des constituants.'),
('PIRIZ8', 'PIRIZAN', 'ABA', 'Pyrazinamide', 'Ce m?dicament est utilis?, en association ?? d''autres antibiotiques, pour traiter la tuberculose.', 'Ce m?dicament est contre-indiqu? en cas d''allergie ?? l''un des constituants, d''insuffisance r?nale ou h?patique, d''hyperuric?mie ou de porphyrie.'),
('POMDI20', 'POMADINE', 'AO', 'Bacitracine', 'Ce m?dicament est utilis? pour traiter les infections oculaires de la surface de l''oeil.', 'Ce m?dicament est contre-indiqu? en cas d''allergie aux antibiotiques appliqu?s localement.'),
('TROXT21', 'TROXADET', 'AIN', 'Parox?tine', 'Ce m?dicament est utilis? pour traiter la d?pression et les troubles obsessionnels compulsifs. Il peut ?galement ?tre utilis? en pr?vention des crises de panique avec ou sans agoraphobie.', 'Ce m?dicament est contre-indiqu? en cas d''allergie au produit.'),
('TXISOL22', 'TOUXISOL Vitamine C', 'ALO', 'Tyrothricine + Acide ascorbique (Vitamine C)', 'Ce m?dicament est utilis? pour traiter les affections de la bouche et de la gorge.', 'Ce m?dicament est contre-indiqu? en cas d''allergie ?? l''un des constituants et chez l''enfant de moins de 6 ans.'),
('URIEG6', 'URIREGUL', 'AUM', 'Fosfomycine trom?tamol', 'Ce m?dicament est utilis? pour traiter les infections urinaires simples chez la femme de moins de 65 ans.', 'La prise de ce m?dicament est contre-indiqu?e en cas d''allergie ?? l''un des constituants et d''insuffisance r?nale.');
 
-- --------------------------------------------------------
 
--
-- Structure de la table `praticien`
--
 
CREATE TABLE IF NOT EXISTS `praticien` (
`PRA_NUM` int(2) DEFAULT NULL,
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
 
CREATE TABLE IF NOT EXISTS `proposer` (
`v_num` int(11) NOT NULL,
`ech_num` int(11) NOT NULL,
PRIMARY KEY (`v_num`,`ech_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
-- --------------------------------------------------------
 
--
-- Structure de la table `region`
--
 
CREATE TABLE IF NOT EXISTS `region` (
`REG_CODE` varchar(2) DEFAULT NULL,
`SEC_CODE` varchar(1) DEFAULT NULL,
`REG_NOM` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
--
-- Contenu de la table `region`
--
 
-- A FAIRE
 
-- --------------------------------------------------------
 
--
-- Structure de la table `specialite`
--
 
CREATE TABLE IF NOT EXISTS `specialite` (
`TYP_CODE` varchar(2) DEFAULT NULL,
`TYP_LIBELLE` varchar(22) DEFAULT NULL,
`TYP_LIEU` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
--
-- Contenu de la table `specialite`
--
 
INSERT INTO `specialite` (`TYP_CODE`, `TYP_LIBELLE`, `TYP_LIEU`) VALUES
('MH', 'M?decin Hospitalier', 'Hopital ou clinique'),
('MV', 'M?decine de Ville', 'Cabinet'),
('PH', 'Pharmacien Hospitalier', 'Hopital ou clinique'),
('PO', 'Pharmacien Officine', 'Pharmacie'),
('PS', 'Personnel de sant?', 'Centre param?dical');
 
-- --------------------------------------------------------
 
--
-- Structure de la table `visite`
--
 
CREATE TABLE IF NOT EXISTS `visite` (
`VIS_MATRICULE` varchar(4) DEFAULT NULL,
`V_NUM` int(11) NOT NULL,
`PRA_NUM` int(2) DEFAULT NULL,
`V_DATE` varchar(10) DEFAULT NULL,
`V_DESCRIPTION` varchar(90) DEFAULT NULL,
PRIMARY KEY (`V_NUM`)
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
 
CREATE TABLE IF NOT EXISTS `visiteur` (
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
 
INSERT INTO `visiteur` (`VIS_MATRICULE`, `VIS_NOM`, `Vis_PRENOM`, `VIS_ADRESSE`, `VIS_CP`, `VIS_VILLE`, `VIS_DATEEMBAUCHE`) VALUES
('a131', 'Villechalane', 'Louis', '8 cours Lafontaine', '29000', 'BREST', '11/12/1992'),
('a17', 'Andre', 'David', '1 r Aimon de Chiss?e', '38100', 'GRENOBLE', '26/08/1991'),
('a55', 'Bedos', 'Christian', '1 r B?n?dictins', '65000', 'TARBES', '17/07/1987'),
('a93', 'Tusseau', 'Louis', '22 r Renou', '86000', 'POITIERS', '02/01/1999'),
('b13', 'Bentot', 'Pascal', '11 av 6 Juin', '67000', 'STRASBOURG', '11/03/1996'),
('b16', 'Bioret', 'Luc', '1 r Linne', '35000', 'RENNES', '21/03/1997'),
('b19', 'Bunisset', 'Francis', '10 r Nicolas Chorier', '85000', 'LA ROCHE SUR YON', '31/01/1999'),
('b25', 'Bunisset', 'Denise', '1 r Lionne', '49100', 'ANGERS', '03/07/1994'),
('b28', 'Cacheux', 'Bernard', '114 r Authie', '34000', 'MONTPELLIER', '02/08/2000'),
('b34', 'Cadic', 'Eric', '123 r Caponi?re', '41000', 'BLOIS', '06/12/1993'),
('b4', 'Charoze', 'Catherine', '100 pl G?ants', '33000', 'BORDEAUX', '25/09/1997'),
('b50', 'Clepkens', 'Christophe', '12 r F?d?rico Garcia Lorca', '13000', 'MARSEILLE', '18/01/1998'),
('b59', 'Cottin', 'Vincenne', '36 sq Capucins', '5000', 'GAP', '21/10/1995'),
('c14', 'Daburon', 'Fran?ois', '13 r Champs Elys?es', '6000', 'NICE', '01/02/1989'),
('c3', 'De', 'Philippe', '13 r Charles Peguy', '10000', 'TROYES', '05/05/1992'),
('c54', 'Debelle', 'Michel', '181 r Caponi?re', '88000', 'EPINAL', '09/04/1991'),
('d13', 'Debelle', 'Jeanne', '134 r Stalingrad', '44000', 'NANTES', '05/12/1991'),
('d51', 'Debroise', 'Michel', '2 av 6 Juin', '70000', 'VESOUL', '18/11/1997'),
('e22', 'Desmarquest', 'Nathalie', '14 r F?d?rico Garcia Lorca', '54000', 'NANCY', '24/03/1989'),
('e24', 'Desnost', 'Pierre', '16 r Barral de Montferrat', '55000', 'VERDUN', '17/05/1993'),
('e39', 'Dudouit', 'Fr?d?ric', '18 quai Xavier Jouvin', '75000', 'PARIS', '26/04/1988'),
('e49', 'Duncombe', 'Claude', '19 av Alsace Lorraine', '9000', 'FOIX', '19/02/1996'),
('e5', 'Enault-Pascreau', 'C?line', '25B r Stalingrad', '40000', 'MONT DE MARSAN', '27/11/1990'),
('e52', 'Eynde', 'Val?rie', '3 r Henri Moissan', '76000', 'ROUEN', '31/10/1991'),
('f21', 'Finck', 'Jacques', 'rte Montreuil Bellay', '74000', 'ANNECY', '08/06/1993'),
('f39', 'Fr?mont', 'Fernande', '4 r Jean Giono', '69000', 'LYON', '15/02/1997'),
('f4', 'Gest', 'Alain', '30 r Authie', '46000', 'FIGEAC', '03/05/1994'),
('g19', 'Gheysen', 'Galassus', '32 bd Mar Foch', '75000', 'PARIS', '18/01/1996'),
('g30', 'Girard', 'Yvon', '31 av 6 Juin', '80000', 'AMIENS', '27/03/1999'),
('g53', 'Gombert', 'Luc', '32 r Emile Gueymard', '56000', 'VANNES', '02/10/1985'),
('g7', 'Guindon', 'Caroline', '40 r Mar Montgomery', '87000', 'LIMOGES', '13/01/1996'),
('h13', 'Guindon', 'Fran?ois', '44 r Picoti?re', '19000', 'TULLE', '08/05/1993'),
('h30', 'Igigabel', 'Guy', '33 gal Arlequin', '94000', 'CRETEIL', '26/04/1998'),
('h35', 'Jourdren', 'Pierre', '34 av Jean Perrot', '15000', 'AURRILLAC', '26/08/1993'),
('h40', 'Juttard', 'Pierre-Raoul', '34 cours Jean Jaur?s', '8000', 'SEDAN', '01/11/1992'),
('j45', 'Labour?-Morel', 'Saout', '38 cours Berriat', '52000', 'CHAUMONT', '25/02/1998'),
('j50', 'Landr?', 'Philippe', '4 av G?n Laperrine', '59000', 'LILLE', '16/12/1992'),
('j8', 'Langeard', 'Hugues', '39 av Jean Perrot', '93000', 'BAGNOLET', '18/06/1998'),
('k4', 'Lanne', 'Bernard', '4 r Bayeux', '30000', 'NIMES', '21/11/1996'),
('k53', 'Le', 'No?l', '4 av Beauvert', '68000', 'MULHOUSE', '23/03/1983'),
('l14', 'Le', 'Jean', '39 r Raspail', '53000', 'LAVAL', '02/02/1995'),
('l23', 'Leclercq', 'Servane', '11 r Quinconce', '18000', 'BOURGES', '05/06/1995'),
('l46', 'Lecornu', 'Jean-Bernard', '4 bd Mar Foch', '72000', 'LA FERTE BERNARD', '24/01/1997'),
('l56', 'Lecornu', 'Ludovic', '4 r Abel Servien', '25000', 'BESANCON', '27/02/1996'),
('m35', 'Lejard', 'Agn?s', '4 r Anthoard', '82000', 'MONTAUBAN', '06/10/1987'),
('m45', 'Lesaulnier', 'Pascal', '47 r Thiers', '57000', 'METZ', '13/10/1990'),
('n42', 'Letessier', 'St?phane', '5 chem Capuche', '27000', 'EVREUX', '06/03/1996'),
('n58', 'Loirat', 'Didier', 'Les P?chers cit? Bourg la Croix', '45000', 'ORLEANS', '30/08/1992'),
('n59', 'Maffezzoli', 'Thibaud', '5 r Chateaubriand', '2000', 'LAON', '19/12/1994'),
('o26', 'Mancini', 'Anne', '5 r D''Agier', '48000', 'MENDE', '05/01/1995'),
('p32', 'Marcouiller', 'G?rard', '7 pl St Gilles', '91000', 'ISSY LES MOULINEAUX', '24/12/1992'),
('p40', 'Michel', 'Jean-Claude', '5 r Gabriel P?ri', '61000', 'FLERS', '14/12/1992'),
('p41', 'Montecot', 'Fran?oise', '6 r Paul Val?ry', '17000', 'SAINTES', '27/07/1998'),
('p42', 'Notini', 'Veronique', '5 r Lieut Chabal', '60000', 'BEAUVAIS', '12/12/1994'),
('p49', 'Onfroy', 'Den', '5 r Sidonie Jacolin', '37000', 'TOURS', '03/10/1977'),
('p6', 'Pascreau', 'Charles', '57 bd Mar Foch', '64000', 'PAU', '30/03/1997'),
('p7', 'Pernot', 'Claude-No?l', '6 r Alexandre 1 de Yougoslavie', '11000', 'NARBONNE', '01/03/1990'),
('p8', 'Perrier', 'Ma?tre', '6 r Aubert Dubayet', '71000', 'CHALON SUR SAONE', '23/06/1991'),
('q17', 'Petit', 'Jean-Louis', '7 r Ernest Renan', '50000', 'SAINT LO', '06/09/1997'),
('r24', 'Piquery', 'Patrick', '9 r Vaucelles', '14000', 'CAEN', '29/07/1984'),
('r58', 'Quiquandon', 'Jo?l', '7 r Ernest Renan', '29000', 'QUIMPER', '30/06/1990'),
('s10', 'Retailleau', 'Josselin', '88Bis r Saumuroise', '39000', 'DOLE', '14/11/1995'),
('s21', 'Retailleau', 'Pascal', '32 bd Ayrault', '23000', 'MONTLUCON', '25/09/1992'),
('t43', 'Souron', 'Maryse', '7B r Gay Lussac', '21000', 'DIJON', '09/03/1995'),
('t47', 'Tiphagne', 'Patrick', '7B r Gay Lussac', '62000', 'ARRAS', '29/08/1997'),
('t55', 'Tr?het', 'Alain', '7D chem Barral', '12000', 'RODEZ', '29/11/1994'),
('t60', 'Tusseau', 'Josselin', '63 r Bon Repos', '28000', 'CHARTRES', '29/03/1991'),
('zzz', 'swiss', 'bourdin', '', '', '', '18/06/2003');