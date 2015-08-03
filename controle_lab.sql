-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/08/2015 às 19:20
-- Versão do servidor: 5.6.17
-- Versão do PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `controle_lab`
--
CREATE DATABASE IF NOT EXISTS `controle_lab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `controle_lab`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0531c49ad119f99df2568aa6fda72777c3427ec7', '::1', 1438005748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030353535323b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('0571ad4536ce41da836c394d5b4aaa913bdeae45', '::1', 1438006926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030363932363b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('0b7f0c32fbbfd4fa2c01045e1929bfee80510bc6', '::1', 1438042546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383034323533303b),
('11f63980c8da77710e3ad3b2dfa09977e5d4b513', '::1', 1438132368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133323134393b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('1492d89b8fc898f6e89eccef5ae8b8d5d0a893a3', '::1', 1438037365, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383033373239383b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('1926526cafada98347a44695b9a4a03496e17c76', '::1', 1438004082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030333934373b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('1b486797380c63d349a725c06fa8b3f8ef59bf11', '::1', 1438001936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030313636313b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('1e60684b7abf741831b236cea8d5a335c85e1161', '::1', 1438004594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030343239373b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('2b5d4e8b1644799a0124e7a2d4e57ce4db7858f3', '::1', 1438130443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133303139303b69647c733a313a2236223b6e6f6d657c733a32323a22524f445249474f20414c564553204d45535155495441223b7469706f7c733a313a2232223b6c6f6761646f7c623a313b),
('2df21f9b92f26690c66f993e86d4126547b42e18', '::1', 1438128412, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383132383333363b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('48d0b6f14b199924005257821b49f3161323f4f2', '::1', 1438621316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383632313036333b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('4ed90da431e2fdd2aecd9cea35ce624f681a1da4', '::1', 1438139505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133393335343b69647c733a313a2236223b6e6f6d657c733a32323a22524f445249474f20414c564553204d45535155495441223b7469706f7c733a313a2232223b6c6f6761646f7c623a313b),
('5094b911342ca411ee470d687f5d6a9572dadca4', '::1', 1438131821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133313731353b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('526607789dc3554a0c7b7170b0e1e4f4a04bebb4', '::1', 1438139927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133393635373b69647c733a313a2236223b6e6f6d657c733a32323a22524f445249474f20414c564553204d45535155495441223b7469706f7c733a313a2232223b6c6f6761646f7c623a313b),
('55c5dfdbee6fb5163f1ae78ee8eb2bd2bf3438bc', '::1', 1438621541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383632313534313b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('56caa8d6d3bcce3795093733baabb57189a0b213', '::1', 1438136977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133363732353b69647c733a313a2236223b6e6f6d657c733a32323a22524f445249474f20414c564553204d45535155495441223b7469706f7c733a313a2232223b6c6f6761646f7c623a313b),
('5b3208d80018d8bf2559a0909e60cfc01d3744b1', '::1', 1438135243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133353137343b69647c733a313a2236223b6e6f6d657c733a32323a22524f445249474f20414c564553204d45535155495441223b7469706f7c733a313a2232223b6c6f6761646f7c623a313b),
('5d69160cba54fc077c37969e72c9fc43922d4d7f', '::1', 1438002371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030323332393b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('5fe4fd4897e4a5b5342c4d8d8353da02ca195f3e', '::1', 1438614464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383631343436343b),
('60f81f3959d368075ab2c7d79a0943c6bd2cc8e1', '::1', 1438131069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133313032363b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('637a1b985e75649af36cc9624b99227f6ea85a6a', '::1', 1438137598, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133373335303b69647c733a313a2236223b6e6f6d657c733a32323a22524f445249474f20414c564553204d45535155495441223b7469706f7c733a313a2232223b6c6f6761646f7c623a313b),
('656488a66a126223f5330b030dd66c45384eebd7', '::1', 1437692889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433373639323837383b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('682f0a97b100ebfa6028659661810fb9a903fc6c', '::1', 1438132741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133323438303b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('6b89b4e5e74370792514511eb0b94fd1943c95fc', '::1', 1438004880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030343631363b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('78c78e14827398f6b011235bbed97ecb115c6f82', '::1', 1438129944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383132393639343b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('7f205b419e3e1371ec98f727e7d5e413e9cfa5de', '::1', 1438132955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133323739333b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('7f20630177473ffd02f9fc514791a752ff6fe302', '::1', 1438138079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133373834313b69647c733a313a2236223b6e6f6d657c733a32323a22524f445249474f20414c564553204d45535155495441223b7469706f7c733a313a2232223b6c6f6761646f7c623a313b),
('8380d23f75ed4ae53d20ba32e6789dbec403d61c', '::1', 1438002257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030323030363b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('8765d5dfe0552c14458547e6d4df3bb64da51d9a', '::1', 1438129521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383132393235363b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('89e69e06cd5a587697d6dd294601202c621c985d', '::1', 1438005463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030353138333b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('8df139c21fc29b2528f61f801ec701a348b81558', '::1', 1438140379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383134303234353b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('99a23b0e30dda1cdb3c24d5e1e460222d8b13a39', '::1', 1438041864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383034313639323b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('9b28ac36880891b85c53e173f55470a70bc95d3d', '::1', 1438612917, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383631323931373b),
('9cec7fcae88f99682ac8e055a9172c8021e7ac1c', '::1', 1438134174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133343133383b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('9d5e572a30e43df19228b17d8c47d3afba888ce2', '::1', 1438003466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030333137303b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('9de83b2bf5c43aef5c23a9ae61998a054c46fb84', '::1', 1437693574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433373639333537323b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('a446cd89f86a0b7ac7abc92a8f06a42bfe653c27', '::1', 1438006042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030353936303b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('a4e42ecea09555f7b947c4103a3625c253e40b61', '::1', 1438131690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133313339393b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('b32ac3afb38a6ef461d96eaf3fed979feb95e6d3', '::1', 1438043389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383034333237363b),
('b39c08b63ead58fd4d8e97b32662f150e2eb3ca5', '::1', 1438126925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383132363833383b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('b6dab1e79a48bdd33fcaef274da97d65623e199d', '::1', 1438001203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030303937333b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('b88ca1b91da95419948afd2acbadc25dfd47d9cf', '::1', 1438136464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133363430373b69647c733a313a2236223b6e6f6d657c733a32323a22524f445249474f20414c564553204d45535155495441223b7469706f7c733a313a2232223b6c6f6761646f7c623a313b),
('cd494562be7c8774c4b05cd15355c8abdc0103fa', '::1', 1438003863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030333537383b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('d2932828bf8482936137f1fcf558aab1219d2280', '::1', 1438127941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383132373835373b69647c733a313a2233223b6e6f6d657c733a31393a224d4152434f53204a554c49414e4f205245474f223b7469706f7c733a313a2233223b6c6f6761646f7c623a313b),
('e274521906912af5bb4c8db8d293392bf423a36e', '::1', 1438130719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133303439343b69647c733a313a2236223b6e6f6d657c733a32323a22524f445249474f20414c564553204d45535155495441223b7469706f7c733a313a2232223b6c6f6761646f7c623a313b),
('e2f5977dd5699d367d2f2b78bd9d5a1cad6cc1f9', '::1', 1438133371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133333334393b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('e6ed7dca53b46e0dcf3c987953d671dc53ca92aa', '::1', 1438613332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383631333333323b),
('ee5fd0a13ed8e4978455f5e92faa3fd9b7d710ce', '::1', 1438139195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133393139353b69647c733a313a2233223b6e6f6d657c733a31393a224d4152434f53204a554c49414e4f205245474f223b7469706f7c733a313a2233223b6c6f6761646f7c623a313b),
('f67f4e84e177956ae1189a0cff9848ac1209ddfb', '::1', 1438129213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383132383933343b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('f86c239011d55bc030b0b7d412265f0197642a24', '::1', 1438125216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383132353135343b),
('fc621cf8f1a7a248f4d7b8bd1a0d3c089cbd1a5f', '::1', 1438139009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133383839333b69647c733a313a2233223b6e6f6d657c733a31393a224d4152434f53204a554c49414e4f205245474f223b7469706f7c733a313a2233223b6c6f6761646f7c623a313b),
('fe136fe07d7007b2ac28f5fa673e7da1bbd15e1d', '::1', 1438006446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030363339393b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('fe7c64a94c4827f336fa85c79c25a502a7afd1af', '::1', 1437693557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433373639333235373b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblcurso`
--

CREATE TABLE IF NOT EXISTS `tblcurso` (
  `cursoid` int(11) NOT NULL,
  `cursodesc` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tblcurso`
--

INSERT INTO `tblcurso` (`cursoid`, `cursodesc`) VALUES
(1, 'ADMINISTRAÇÃO'),
(2, 'ARQUITETURA E URBANISMO'),
(3, 'CIÊNCIAS CONTÁBEIS'),
(4, 'CIÊNCIA DA COMPUTAÇÃO'),
(5, 'CST - GESTÃO COMERCIAL'),
(6, 'CST - GESTÃO FINANCEIRA'),
(7, 'CST - GESTÃO DE RH'),
(8, 'CST - LOGÍSTICA'),
(9, 'CST - REDE DE COMPUTADORES'),
(10, 'DIREITO'),
(11, 'EDUCAÇÃO FÍSICA - BACHARELADO'),
(12, 'EDUCAÇÃO FÍSICA - LICENCIATURA'),
(13, 'ENGENHARIA AMBIENTAL'),
(14, 'ENGENHARIA CIVIL'),
(15, 'ENGENHARIA DE CONTROLE E AUTOMAÇÃO'),
(16, 'ENGENHARIA DE PRODUÇÃO'),
(17, 'ENGENHARIA ELÉTRICA'),
(18, 'ENGENHARIA MECÂNICA'),
(19, 'ENGENHARIA QUÍMICA'),
(20, 'LETRAS'),
(21, 'PEDAGOGIA'),
(22, 'SERVIÇO SOCIAL'),
(23, 'ENFERMAGEM'),
(24, 'FARMÁCIA'),
(25, 'FISIOTERAPIA'),
(26, 'PSICOLOGIA'),
(27, 'SECRETARIADO EXECUTIVO BILINGUE');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbldisciplina`
--

CREATE TABLE IF NOT EXISTS `tbldisciplina` (
  `disciplinaid` int(11) NOT NULL,
  `disciplinadesc` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbldisciplina`
--

INSERT INTO `tbldisciplina` (`disciplinaid`, `disciplinadesc`) VALUES
(1, 'Abordagens Psicológicas da Aprendizagem I'),
(2, 'Acionamentos Hidráulicos e Pneumáticos'),
(3, 'Aconselhamento e Orientação Em Psicologia'),
(4, 'Acumulação Capitalista e Desigualdade Social'),
(5, 'Administração de Materiais'),
(6, 'Administração de Serviços em Sistemas Operacionais de Arquitetura Aberta'),
(7, 'Administração do Processo de Trabalho em Enfermagem'),
(8, 'Administração e Planejamento em Serviço Social'),
(9, 'Alfabetização e Letramento'),
(10, 'ALGORITMOS E ESTRUTURA DE DADOS'),
(11, 'Algoritmos e Estrutura de Dados I'),
(12, 'ALGORITMOS E LÓGICA DE PROGRAMAÇÃO '),
(13, 'ALGORITMOS E TÉCNICAS DE PROGRAMAÇÃO'),
(14, 'Análise de Algoritmos'),
(15, 'Análise de Investimentos'),
(16, 'Análise de Políticas Sociais'),
(17, 'Análise do Discurso e Pragmática'),
(18, 'Análise Experimental do Comportamento'),
(19, 'Análise Instrumental'),
(20, 'Arquitetura'),
(21, 'Arquitetura Brasileira'),
(22, 'Arte Educação'),
(23, 'Assistência de Enfermagem em Centro Cirúrgico'),
(24, 'Assistência de Enfermagem Neonatal'),
(25, 'Assistência Farmacêutica'),
(26, 'Assistência Integral à Saúde da Criança e Adolescente'),
(27, 'Atelier de Projeto de Arquitetura I'),
(28, 'Atelier de Projeto de Arquitetura II'),
(29, 'Atelier de Projeto de Arquitetura III'),
(30, 'Auditoria'),
(31, 'Auditoria e Consultoria em RH'),
(32, 'Automação Industrial'),
(33, 'Avaliação Institucional'),
(34, 'Banco de Dados I'),
(35, 'Banco de Dados II'),
(36, 'Biologia Geral e Aplicada'),
(37, 'Cálculo Avançado'),
(38, 'CÁLCULO DIFERENCIAL E INTEGRAL'),
(39, 'Cálculo Diferencial e Integral III'),
(40, 'Cálculo Diferencial Integral II'),
(41, 'Cálculo Numérico'),
(42, 'Cartografia Aplicada e Topografia'),
(43, 'CIÊNCIAS MORFOFUNCIONAIS DOS SISTEMAS DIGESTÓRIO  ENDÓCRINO E RENAL'),
(44, 'Ciências Morfofuncionais IV'),
(45, 'CIRCUITOS DIGITAIS'),
(46, 'Circuitos Elétricos I'),
(47, 'Climatologia Aplicada à Engenharia Ambiental'),
(48, 'Comunicação na Prática do Assistente Social'),
(49, 'Conforto Ambiental I'),
(50, 'CONTABILIDADE'),
(51, 'Contabilidade Avançada'),
(52, 'Contabilidade Comercial'),
(53, 'Contabilidade de Custos'),
(54, 'Contabilidade Social e Ambiental'),
(55, 'Contabilidade Tributária'),
(56, 'Controladoria'),
(57, 'Controle Estatístico da Qualidade'),
(58, 'Conversão Eletromecânica de Energia'),
(59, 'Cosmetologia'),
(60, 'Crimes Contra a Administração Pública e Costumes'),
(61, 'Crimes Contra a Pessoa'),
(62, 'Custos da Produção'),
(63, 'Desempenho de Redes'),
(64, 'Desenho Arquitetonico'),
(65, 'Desenho Técnico Mecânico'),
(66, 'Desenvolvimento de Comunidade'),
(67, 'Desenvolvimento Humano II'),
(68, 'Desenvolvimento Humano III'),
(69, 'Desenvolvimento Sustentável e Meio Ambiente'),
(70, 'Diagnóstico Empresarial'),
(71, 'Dinâmica'),
(72, 'Dinâmicas e Jogos Vivenciais'),
(73, 'Direito Administrativo I '),
(74, 'Direito Ambiental'),
(75, 'Direito Aplicado à Informática'),
(76, 'Direito Cambial e Contratos Mercantis'),
(77, 'Direito Cambial e Contratos Mercantis'),
(78, 'DIREITO CIVIL - ATOS E FATOS JURÍDICOS'),
(79, 'Direito Civil - Contratos'),
(80, 'Direito Civil - Obrigações'),
(81, 'Direito Civil V (Família)'),
(82, 'Direito Civil VI (Sucessões)'),
(83, 'Direito Civil VII (Direito das Coisas)'),
(84, 'DIREITO CONSTITUCIONAL'),
(85, 'Direito da Sociedade da Informação'),
(86, 'Direito das Relações de Consumo'),
(87, 'Direito do Trabalho'),
(88, 'Direito do Trabalho II'),
(89, 'Direito e Seguridade Social'),
(90, 'Direito Empresarial '),
(91, 'Direito Financeiro'),
(92, 'DIREITO PENAL - PARTE GERAL'),
(93, 'Direito Penal IV (Parte Especial)'),
(94, 'Direito Processual Civil II (Conhecimento e Recurso)'),
(95, 'Direito Processual Penal I '),
(96, 'Direito Tributário'),
(97, 'Direito Tributário I'),
(98, 'Drenagem e Irrigação'),
(99, 'Economia Política'),
(100, 'Educação Ambiental e Cidadania '),
(101, 'Educação e Tecnologias'),
(102, 'Educação Inclusiva'),
(103, 'Elementos de Máquinas'),
(104, 'Eletiva I'),
(105, 'Eletiva II'),
(106, 'Eletrônica Analógica II'),
(107, 'Eletrônica de Potência'),
(108, 'Ênfase I'),
(109, 'Ênfase II'),
(110, 'Ênfase III'),
(111, 'Ênfase IV'),
(112, 'Ênfase V'),
(113, 'Ênfase VI'),
(114, 'Enfermagem em Saúde Mental'),
(115, 'Enfermagem na Estratégia da Saúde da Família'),
(116, 'Engenharia de Software I'),
(117, 'Engenharia de Software II'),
(118, 'Engenharia do Produto'),
(119, 'Engenharia Ecônomica e Finanças'),
(120, 'Ensino de Ciências Naturais '),
(121, 'Ensino de Música'),
(122, 'Equações Diferenciais Ordinárias'),
(123, 'Ergonomia  Saúde e Segurança no Trabalho'),
(124, 'Estatística Avançada'),
(125, 'Estatística e Indicadores Sociais'),
(126, 'Estética e História da Arte'),
(127, 'Estradas e Pavimentação'),
(128, 'Estrutura das Demonstrações Contábeis'),
(129, 'Estruturas de Concreto Armado I'),
(130, 'Estudos da Matemática Na Educação Infantil'),
(131, 'Estudos da Natureza Na Educação Infantil'),
(132, 'Estudos da Sociedade Na Educação Infantil'),
(133, 'Ética e Legislação em Enfermagem'),
(134, 'Ética e Profissão'),
(135, 'Ética Profissional em Serviço Social'),
(136, 'Ética  Política e Sociedade'),
(137, 'ÉTICA  POLÍTICA E SOCIEDADE'),
(138, 'Farmácia Hospitalar '),
(139, 'FARMACOGNOSIA'),
(140, 'Farmacognosia I'),
(141, 'Farmacognosia II'),
(142, 'Farmacologia'),
(143, 'Ferramentas para Planejamento  Melhoria e Controle da Qualidade'),
(144, 'Filosofia da Educação '),
(145, 'Física Geral e Experimental : Energia '),
(146, 'Física Geral e Experimental: Mecânica'),
(147, 'Física: Ondas e Ótica'),
(148, 'Fisiopatologia e Farmacoterapia I'),
(149, 'Fisiopatologia e Farmacoterapia II'),
(150, 'Fisiopatologia e Farmacoterapia III'),
(151, 'Fisiopatologia e Farmacoterapia IV'),
(152, 'Fitoterapia'),
(153, 'Fonética e Fonologia da Língua Portuguesa'),
(154, 'Formação e Desenvolvimento de Equipes de Vendas'),
(155, 'Formação Integral a Saúde'),
(156, 'Fundamento das Políticas Sociais'),
(157, 'Fundamentos da Coordenação Pedagógica'),
(158, 'Fundamentos da Gestão Educacional'),
(159, 'Fundamentos de Marketing'),
(160, 'FUNDAMENTOS DE SISTEMAS OPERACIONAIS'),
(161, 'Fundamentos Filosóficos do Direito'),
(162, 'Fundamentos Históricos Teóricos e Metodológicos do Serviço Social III (FHTM III)'),
(163, 'Fundamentos Técnicos e Semiológicos de Enfermagem I'),
(164, 'Fundamentos Técnicos e Semiológicos de Enfermagem II'),
(165, 'Geologia Ambiental'),
(166, 'Geometria Analitica Aplicada a Arquitetura'),
(167, 'GEOMETRIA ANALÍTICA E ÁLGEBRA VETORIAL'),
(168, 'Geometria Descritiva Aplicada a Arquitetura I'),
(169, 'Geoprocessamento e Sensoriamento Remoto Aplicados ao Meio Ambiente'),
(170, 'Geotecnia Ambiental'),
(171, 'Geração, Transmissão e Distribuição de Energia Elétrica'),
(172, 'Gerência de Sistemas e Serviços de Saúde'),
(173, 'Gerência e Segurança de Redes'),
(174, 'Gerenciamento de Redes'),
(175, 'Gerenciamento de Redes'),
(176, 'Gerenciamento de Transportes'),
(177, 'Gestão Ambiental'),
(178, 'Gestão Ambiental na Construção Civil'),
(179, 'Gestão da Manutenção'),
(180, 'Gestão de Águas Pluviais e águas de irrigação'),
(181, 'Gestão de Custos Logísticos'),
(182, 'Gestão de Efluentes Atmosféricos'),
(183, 'Gestão de Operações em Serviços'),
(184, 'Gestão de Pessoas I'),
(185, 'Gestão de Projetos'),
(186, 'Gestão de Resíduos Sólidos'),
(187, 'Gestão de Serviços e Varejo'),
(188, 'Gestão e Auditoria Ambiental'),
(189, 'Gestão e Desenvolvimento de Pessoas'),
(190, 'Gestão Em Saúde Pública'),
(191, 'Gestão Estratégica de Pessoas'),
(192, 'Gestão Financeira'),
(193, 'Gestão Financeira em Logística'),
(194, 'Gestão por Competências e Gestão por Conhecimento'),
(195, 'Governança e Qualidade em Serviços de Tecnologia da Informação'),
(196, 'HABILIDADES'),
(197, 'Hidrologia e Gestão de Bacias Hidrográficas'),
(198, 'História da Educação'),
(199, 'História e Teoria da Arquitetura, Urbanismo e Paisagismo I'),
(200, 'História e Teoria da Arquitetura, Urbanismo e Paisagismo II'),
(201, 'HOMEM, CULTURA E SOCIEDADE'),
(202, 'Homeopatia'),
(203, 'Informática Aplicada À Arquitetura e Urbanismo I'),
(204, 'Informática Aplicada À Arquitetura e Urbanismo II'),
(205, 'Informática Industrial 1'),
(206, 'Informática Industrial 2'),
(207, 'INFRAESTRUTURA E CABEAMENTO ESTRUTURADO'),
(208, 'Inovação, Empreendedorismo e Marketing'),
(209, 'Instalações Elétricas I'),
(210, 'Instalações Elétricas II'),
(211, 'Instalações Hidro-Sanitárias'),
(212, 'Instrumentação'),
(213, 'Introdução à Ciência dos Materiais para Engenharia '),
(214, 'Introdução ao Projeto de Arquitetura e Urbanismo'),
(215, 'Introdução Gestão Ambiental '),
(216, 'Laboratório de Ensino de Gramática na Educação Básica'),
(217, 'Legislação Penal Extravagante e Execução Penal'),
(218, 'LEGISLAÇÃO SOCIAL E TRABALHISTA'),
(219, 'Legislação Trabalhista'),
(220, 'LEGISLAÇÃO TRIBUTÁRIA'),
(221, 'Legislação, Segurança e Medicina do Trabalho'),
(222, 'Linguagens Formais e Autômatos'),
(223, 'Linguística Textual '),
(224, 'Literatura Comparada'),
(225, 'Literaturas de Língua Portuguesa: Portuguesa e Brasileira I'),
(226, 'Literaturas de Língua Portuguesa: Portuguesa e Brasileira II'),
(227, 'Logística '),
(228, 'Logística e Cadeias de Suprimento'),
(229, 'Logística e Cadeias de Suprimento'),
(230, 'Logística e Cadeias de Suprimento'),
(231, 'Logística e Transportes'),
(232, 'Logística Empresarial'),
(233, 'Logística Internacional'),
(234, 'Lubrificação'),
(235, 'Manutenção Mecânica'),
(236, 'Máquinas de Fluxo'),
(237, 'Máquinas Elétricas I'),
(238, 'Máquinas Elétricas I'),
(239, 'MATEMÁTICA FINANCEIRA'),
(240, 'Materiais de Construção I'),
(241, 'Materiais e Tratamento Térmico'),
(242, 'Matrizes do Pensamento em Psicologia -  Cognitivo Comportamental'),
(243, 'Matrizes do Pensamento em Psicologia: Behaviorismo'),
(244, 'Matrizes do Pensamento Em Psicologia: Existencial'),
(245, 'Mecânica Aplicada'),
(246, 'Mecânica dos Fluídos'),
(247, 'Mecânica dos Solos II'),
(248, 'Mecânica Geral'),
(249, 'Medidas e Avaliação Em Psicologia I'),
(250, 'Medidas e Avaliação Em Psicologia II'),
(251, 'Medidas e Avaliação Em Psicologia III'),
(252, 'Medidas e Materiais Elétricos'),
(253, 'METODOLOGIA CIENTÍFICA'),
(254, 'Metodologia da Pesquisa Qualitativa'),
(255, 'Métodos Quantitativos'),
(256, 'Microbiologia de Alimentos'),
(257, 'Microcontroladores'),
(258, 'Motores de Combustão Interna'),
(259, 'Negociação e Compras'),
(260, 'Negócios Internacionais'),
(261, 'Oficina de Leitura e Escrita'),
(262, 'Optativa'),
(263, 'Optativa (Administração e Empreendimento em Informática)'),
(264, 'Optativa (Libras, Tópicos Especiais)'),
(265, 'Optativa I'),
(266, 'Optativa II'),
(267, 'Orçamento Público'),
(268, 'Organização do Estado'),
(269, 'Pedagogia em Ambientes Não-Escolares'),
(270, 'Pedagogia em Espaços Escolares e Não - Escolares'),
(271, 'Perícia, Mediação e Arbitragem'),
(272, 'Pesquisa de Mercado'),
(273, 'Pesquisa em Psicologia II'),
(274, 'Pesquisa Operacional '),
(275, 'Pesquisa Operacional: Programação Matemática'),
(276, 'Pesquisa Social I'),
(277, 'Planejamento Ambiental Regional e Urbano'),
(278, 'Planejamento de Cargos, Salários e Carreiras'),
(279, 'Planejamento de Fármacos'),
(280, 'Planejamento e Gestão de Recursos Energéticos'),
(281, 'Planejamento e Orçamento de Obras'),
(282, 'Planejamento Estratégico'),
(283, 'Planejamento Estratégico'),
(284, 'Planejamento Operacional da Produção'),
(285, 'Planejamento Tributário'),
(286, 'Planejamento, Programação e Controle de Produção'),
(287, 'Política e Direito Ambiental'),
(288, 'Política Social II'),
(289, 'Políticas Setoriais II'),
(290, 'Pontes e Estruturas Especiais'),
(291, 'Prática Em Laboratório Contábil I'),
(292, 'Prática Em Laboratório Contábil II'),
(293, 'Prática Em Laboratório Contábil III'),
(294, 'Prática Em Laboratório Contábil IV'),
(295, 'Prática Pedagógica Interdisciplinar - Infância e suas Linguagens Artísticas'),
(296, 'Príncipios de Eletricidade e Magnetismo '),
(297, 'Princípios Teórico-Metodológicos da Educação de Jovens e Adultos'),
(298, 'Princípios Teórico-Metodológicos do Ensino da Geografia'),
(299, 'Princípios Teórico-Metodológicos do Ensino da História'),
(300, 'Princípios Teóricos e Metodológicos da Educação Infantil'),
(301, 'Probabilidade e Estatística'),
(302, 'Processo do Conhecimento'),
(303, 'Processos Discretos e Contínuos de Produção'),
(304, 'Processos Escolares de Inclusão'),
(305, 'Processos Psicológicos Básicos II'),
(306, 'Produção do Conhecimento Em Enfermagem'),
(307, 'PROGRAMAÇÃO APLICADA À CIÊNCIA DA COMPUTAÇÃO'),
(308, 'Programação Orientada a Objetos'),
(309, 'Programação para WEB'),
(310, 'Projeto Assistido em Redes de Computadores I'),
(311, 'Projeto de Aterros Sanitários e Industriais'),
(312, 'Projeto de Fábrica'),
(313, 'Projeto e Análise de Algoritmos'),
(314, 'PROJETO INTEGRADO'),
(315, 'Projeto Integrador de Pesquisa III'),
(316, 'Projetos de Automação Industrial'),
(317, 'Projetos de Redes de Computadores I'),
(318, 'Projetos Mecânicos'),
(319, 'Proposta de Intervenção Empresarial'),
(320, 'Protocolos de Redes'),
(321, 'Psicofarmacologia'),
(322, 'Psicologia e Comunidade'),
(323, 'Psicologia e Necessidades Especiais'),
(324, 'Psicologia Escolar e Educacional'),
(325, 'Psicologia Organizacional e do Trabalho'),
(326, 'Psicologia Social II'),
(327, 'Psicopatologia I'),
(328, 'Psicopatologia II'),
(329, 'Questão Regional'),
(330, 'Química Ambiental'),
(331, 'Química Analítica'),
(332, 'Química Farmacêutica Medicinal'),
(333, 'Química Orgânica'),
(334, 'Recuperação de Áreas Degradadas'),
(335, 'Redes Convergentes'),
(336, 'Redes de Computadores 1'),
(337, 'Redes Sem Fio'),
(338, 'Refrigeração e Ar Condicionado'),
(339, 'RELAÇÕES AMBIENTE MICRORGANISMO'),
(340, 'Relações Microorganismos Hospedeiros'),
(341, 'Resistência dos Materiais'),
(342, 'Resistência dos Materiais Avançado'),
(343, 'Resistência dos Materiais II'),
(344, 'Robótica'),
(345, 'Roteadores e Roteamento'),
(346, 'Rotinas de Pessoas'),
(347, 'Saneamento Ambiental'),
(348, 'Saúde Coletiva'),
(349, 'Saúde do Trabalhador'),
(350, 'Saúde e Segurança no Trabalho'),
(351, 'Segurança da Informação'),
(352, 'Segurança em Sistemas e Redes'),
(353, 'Serviço Social e Processo de Trabalho'),
(354, 'Sistemas de Distribuição e Logística Reversa'),
(355, 'Sistemas de Gestão da Qualidade '),
(356, 'Sistemas de Informação'),
(357, 'SISTEMAS DE INFORMAÇÃO GERENCIAL'),
(358, 'Sistemas Digitais'),
(359, 'Sistemas Distribuidos'),
(360, 'Sistemas Elétricos de Potência I'),
(361, 'Sistemas Hidráulicos e Sanitários '),
(362, 'Sistemas Integrados de Manufatura'),
(363, 'Sistemas Operacionais'),
(364, 'Sistemas Operacionais 1'),
(365, 'Sistematização da Assistência de Enfermagem'),
(366, 'TCC'),
(367, 'Técnicas de Gestão e Empreendedorismo'),
(368, 'Técnicas de Vendas e Negociação'),
(369, 'Tecnologia da Construção I'),
(370, 'Tecnologia da Informação e da Comunicação'),
(371, 'Tecnologia de Alimentos'),
(372, 'Tecnologia Farmacêutica I'),
(373, 'Tecnologia Farmacêutica II'),
(374, 'Temas Educativos Transversais'),
(375, 'Teoria da Computação '),
(376, 'Teoria das Estruturas'),
(377, 'Teoria de Controle Moderno'),
(378, 'Teoria de Controle Moderno II'),
(379, 'Teoria dos Grafos'),
(380, 'Teoria Geral do Processo'),
(381, 'Teorias e Práticas do Currículo'),
(382, 'Teorias e Técnicas de Grupo'),
(383, 'Teorias e Técnicas Psicoterápicas'),
(384, 'Terapia Familiar Sistêmica'),
(385, 'Terapia Medicamentosa  Aplicada À Enfermagem'),
(386, 'Termodinâmica'),
(387, 'Tópicos Especiais em Educação II'),
(388, 'Tópicos Especiais em Engenharia Ambiental I '),
(389, 'Tópicos Especiais em Engenharia Ambiental II'),
(390, 'Tópicos Especiais em Secretariado Executivo II'),
(391, 'Tópicos Especiais I'),
(392, 'Tópicos Especiais II'),
(393, 'Tópicos Especiais na Web'),
(394, 'Topografia Aplicada à Arquitetura e Urbanismo'),
(395, 'Trabalho de Conclusão de Curso '),
(396, 'Trabalho e Sociabilidade'),
(397, 'Tradutores e Compiladores'),
(398, 'Transmissão de Dados'),
(399, 'Tratamento de Efluentes Municipais e Industriais'),
(400, 'Treinamento e Desenvolvimento e Avaliação de Desempenho'),
(401, 'DIDÁTICA'),
(402, 'POLÍTICAS PÚBLICAS DA EDUCAÇÃO BÁSICA'),
(403, 'PRÁTICA PEDAGÓGICA INTERDISCIPLINAR: ESCOLA E SOCIEDADE'),
(404, 'TEORIAS E PRÁTICAS DO CURRÍCULO'),
(405, 'AVALIAÇÃO DA APRENDIZAGEM'),
(406, 'LIBRAS - LÍNGUA BRASILEIRA DE SINAIS'),
(407, 'PSICOLOGIA DA EDUCAÇÃO E DA APRENDIZAGEM'),
(408, 'SEMINÁRIO DA PRÁTICA: EDUCAÇÃO E DIVERSIDADE'),
(409, 'Práticas Pedagógicas III'),
(410, 'ÉTICA, POLÍTICA E SOCIEDADE'),
(411, 'FUNDAMENTOS HISTÓRICOS TEÓRICOS E METODOLÓGICOS DO SERVIÇO SOCIAL II'),
(412, 'QUESTÃO SOCIAL E SERVIÇO SOCIAL'),
(413, 'SOCIOLOGIA'),
(414, 'TRABALHO E SOCIABILIDADE'),
(415, 'GESTÃO DE PROJETOS'),
(416, 'MÉTODOS QUANTITATIVOS'),
(417, 'PROJETO INTEGRADO'),
(418, 'RESPONSABILIDADE SOCIAL E AMBIENTAL'),
(419, 'GESTÃO DE PESSOAS'),
(420, 'RESPONSABILIDADE SOCIAL E AMBIENTAL'),
(421, 'DIREITO EMPRESARIAL'),
(422, 'LEGISLAÇÃO SOCIAL E TRABALHISTA'),
(423, 'MÉTODOS QUANTITATIVOS'),
(424, 'PROJETO INTEGRADO'),
(425, 'Ciências Morfofuncionais II'),
(426, 'Ciências Morfofuncionais III'),
(427, 'ÉTICA, POLÍTICA E SOCIEDADE'),
(428, 'Habilidades em saúde'),
(429, 'RELAÇÕES AMBIENTE MICRORGANISMO'),
(430, 'Assistencia Integral a saúde do adulto e do idoso'),
(431, 'Desenvolvimento Humano I'),
(432, 'Neuroanatomofisiologia'),
(433, 'Processos Psicológicos Básicos I'),
(434, 'Psicologia e Políticas Públicas'),
(435, 'Psicologia Social I'),
(436, 'FUNDAMENTOS HISTORICOS DO DIREITO'),
(437, 'INTRODUÇÃO AO ESTUDO DO DIREITO'),
(438, 'CIÊNCIA POLÍTICA'),
(439, 'CRIMINOLOGIA'),
(440, 'TEORIA DA ARGUMENTAÇÃO JURÍDICA'),
(441, 'DIREITO CIVIL (PESSOAS E BENS)'),
(442, 'ATELIER DE PROJETO DE ARQUITETURA I'),
(443, 'DESENHO ARQUITETÔNICO'),
(444, 'GEOMETRIA DESCRITIVA  APLICADA À ARQUITETURA I'),
(445, 'INTRODUÇÃO AO PROJETO DE ARQUITETURA E URBANISMO'),
(446, 'COMPORTAMENTO ORGANIZACIONAL'),
(447, 'COMUNICAÇÃO EMPRESARIAL'),
(448, 'FUNDAMENTOS DA ADMINISTRAÇÃO'),
(449, 'MICROECONOMIA'),
(450, 'CIÊNCIAS MOLECULARES E CELULARES'),
(451, 'CIÊNCIAS MORFOFUNCIONAIS I'),
(452, 'ENFERMAGEM E CIÊNCIA'),
(453, 'ENFERMAGEM E TRABALHO'),
(454, 'ANTROPOLOGIA'),
(455, 'FILOSOFIA'),
(456, 'FORMAÇÃO SOCIAL, HISTÓRICA E POLÍTICA DO BRASIL'),
(457, 'FUNDAMENTOS HISTÓRICOS TEÓRICOS E METODOLÓGICOS DO SERVIÇO SOCIAL I'),
(458, 'METODOLOGIA CIENTÍFICA'),
(459, 'HOMEM, CULTURA E SOCIEDADE'),
(460, 'CIÊNCIAS MOLECULARES E CELULARES'),
(461, 'CIÊNCIAS MORFOFUNCIONAIS I'),
(462, 'PRÁTICAS FISIOTERAPÊUTICAS NA ATENÇÃO PRIMÁRIA'),
(463, 'PRIMEIROS SOCORROS'),
(464, 'HOMEM, CULTURA E SOCIEDADE'),
(465, 'DESENHO TÉCNICO PROJETIVO'),
(466, 'INTRODUÇÃO À ENGENHARIA '),
(467, 'MATEMÁTICA INSTRUMENTAL'),
(468, 'QUÍMICA GERAL E EXPERIMENTAL'),
(469, 'FILOSOFIA DA EDUCAÇÃO'),
(470, 'HISTÓRIA DA EDUCAÇÃO'),
(471, 'COMUNICAÇÃO E LINGUAGEM'),
(472, 'PSICOLOGIA DA EDUCAÇÃO'),
(473, 'EDUCAÇÃO INCLUSIVA'),
(474, 'FILOSOFIA GERAL E DA EDUCAÇÃO'),
(475, 'INTRODUÇÃO AOS ESTUDOS LINGUÍSTICOS'),
(476, 'PRÁTICA PEDAGÓGICA I'),
(477, 'COMPORTAMENTO ORGANIZACIONAL'),
(478, 'CONTABILIDADE E MERCADO DE TRABALHO'),
(479, 'ECONOMIA'),
(480, 'FUNDAMENTOS DA ADMINISTRAÇÃO'),
(481, 'INTRODUÇÃO À COMPUTAÇÃO'),
(482, 'LÓGICA E MATEMÁTICA COMPUTACIONAL'),
(483, 'MATEMÁTICA INSTRUMENTAL'),
(484, 'SISTEMAS DE INFORMAÇÃO'),
(485, 'BASES BIOLÓGICAS DO COMPORTAMENTO'),
(486, 'HISTÓRIA DA PSICOLOGIA'),
(487, 'ENTREVISTA E OBSERVAÇÃO EM PSICOLOGIA'),
(488, 'ESTATÍSTICA APLICADA À PSICOLOGIA'),
(489, 'PSICOLOGIA, CIÊNCIA E PROFISSÃO'),
(490, 'CIÊNCIAS MOLECULARES E CELULARES'),
(491, 'CIÊNCIAS MORFOFUNCIONAIS I'),
(492, 'INTRODUÇÃO AO ESTUDO DA FARMÁCIA'),
(493, 'MATEMÁTICA'),
(494, 'QUÍMICA GERAL'),
(495, 'HOMEM, CULTURA E SOCIEDADE'),
(496, 'CIÊNCIAS MOLECULARES E CELULARES'),
(497, 'FUNDAMENTOS DO MOVIMENTO HUMANO'),
(498, 'JOGOS BRINQUEDOS E BRINCADEIRAS'),
(499, 'PRIMEIROS SOCORROS'),
(500, 'CIÊNCIAS MOLECULARES E CELULARES'),
(501, 'FUNDAMENTOS DO MOVIMENTO HUMANO'),
(502, 'HOMEM, CULTURA E SOCIEDADE'),
(503, 'INTRODUÇÃO À EDUCAÇÃO FÍSICA'),
(504, 'JOGOS, BRINQUEDOS E BRINCADEIRAS'),
(505, 'PRIMEIROS SOCORROS'),
(506, 'ARQUITETURA DE COMPUTADORES'),
(507, 'INGLÊS INSTRUMENTAL'),
(508, 'MATEMÁTICA COMPUTACIONAL'),
(509, 'TÉCNICA DE COMUNICAÇÃO ORAL E ESCRITA'),
(510, 'ECONOMIA'),
(511, 'EMPREENDEDORISMO'),
(512, 'MODELOS DE GESTÃO'),
(513, 'SISTEMAS DE INFORMAÇÃO'),
(514, 'ARMAZENAGEM E MOVIMENTAÇÃO DE MATERIAIS'),
(515, 'ESTRATÉGIA E PLANEJAMENTO LOGÍSTICO'),
(516, 'GESTÃO DA CADEIA E SUPRIMENTOS'),
(517, 'MATEMÁTICA FINANCEIRA'),
(518, 'METODOLOGIA CIENTÍFICA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblfiltroperiodo`
--

CREATE TABLE IF NOT EXISTS `tblfiltroperiodo` (
  `cursoid` int(11) NOT NULL,
  `periodoid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tblfiltroperiodo`
--

INSERT INTO `tblfiltroperiodo` (`cursoid`, `periodoid`) VALUES
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 5),
(12, 6),
(20, 7),
(1, 8),
(3, 8),
(4, 8),
(11, 8),
(21, 8),
(22, 8),
(2, 10),
(10, 10),
(13, 10),
(14, 10),
(15, 10),
(16, 10),
(17, 10),
(18, 10),
(19, 10),
(23, 10),
(24, 10),
(25, 10),
(26, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblgrade`
--

CREATE TABLE IF NOT EXISTS `tblgrade` (
  `cursoid` int(11) NOT NULL,
  `disciplinaid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tblgrade`
--

INSERT INTO `tblgrade` (`cursoid`, `disciplinaid`) VALUES
(9, 5),
(4, 6),
(4, 7),
(4, 8),
(9, 8),
(4, 9),
(9, 9),
(4, 10),
(4, 11),
(4, 12),
(9, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(9, 18),
(4, 19),
(9, 19);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbllaboratorio`
--

CREATE TABLE IF NOT EXISTS `tbllaboratorio` (
  `labid` int(11) NOT NULL,
  `tipolabid` int(11) NOT NULL,
  `labnome` varchar(100) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `unidadeid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbllaboratorio`
--

INSERT INTO `tbllaboratorio` (`labid`, `tipolabid`, `labnome`, `capacidade`, `unidadeid`) VALUES
(1, 2, 'LABORATORIO DE FÍSICA I', 30, 1),
(2, 2, 'LABORATÓRIO DE FÍSICA II', 25, 1),
(3, 1, 'LABORATORIO DE QUIMICA 01', NULL, 1),
(4, 1, 'LABORATORIO DE QUIMICA 02', NULL, 1),
(5, 2, 'LABORATORIO DE MICROBIOLOGIA E QUIMICA APLICADA', NULL, 1),
(6, 3, 'LABORATORIO DE ESTETICA', NULL, 1),
(7, 4, 'LABORATORIO DE IMAGEM PESSOAL', NULL, 1),
(8, 5, 'LABORATORIO DE DESENHO TECNICO 01', NULL, 1),
(9, 5, 'LABORATORIO DE DESENHO TECNICO 02', NULL, 1),
(10, 6, 'LABORATORIO DE MOTORES E PROCESSOS DE FABRICACAO', NULL, 1),
(11, 7, 'LABORATORIO DE MECANICA APLICADA 01', NULL, 1),
(14, 7, 'LABORATORIO DE MECANICA APLICADA 02', NULL, 1),
(15, 7, 'LABORATORIO DE MECANICA APLICADA 03 E SISTEMAS TERMICOS', NULL, 1),
(16, 7, 'LABORATORIO DE MECANICA APLICADA 04 E SISTEMAS HIDRAULICOS', NULL, 1),
(17, 8, 'LABORATORIO DE ELETRONICA E SISTEMAS ELETRICOS', NULL, 1),
(18, 9, 'LABORATORIO DE AUTOMACAO INDUSTRIAL E CONTROLE DE PROCESSO', NULL, 1),
(19, 10, 'LABORATORIO DE MATERIAIS DE CONSTRUCAO E TOPOGRAFIA', NULL, 1),
(20, 11, 'LABORATORIO DE MAQUETARIA', NULL, 1),
(21, 12, 'LABORATORIO DE PRE-CLINICO DE ODONTOLOGIA', NULL, 1),
(22, 13, 'LABORATORIO DE RAIO-X', NULL, 1),
(23, 14, 'LABORATORIO DE MORFOFUNCIONAIS', NULL, 1),
(24, 15, 'LABORATORIO DE BIOQUIMICA', NULL, 2),
(27, 16, 'LABORATORIO DE MICROSCOPIA 01', NULL, 2),
(28, 16, 'LABORATORIO DE MICROSCOPIA 02', NULL, 2),
(29, 16, 'LABORATORIO DE MICROSCOPIA E QUIMICA APLICADA', NULL, 2),
(30, 17, 'LABORATORIO DE FARMACOGNOSIA', NULL, 2),
(31, 18, 'LABORATORIO DE HABILIDADES 01', NULL, 2),
(32, 18, 'LABORATORIO DE HABILIDADES 02 E SEMIOLOGIA ', NULL, 2),
(33, 1, 'LABORATORIO DE QUIMICA', NULL, 2),
(35, 14, 'LABORATORIO DE MORFOFUNCIONAIS', NULL, 2),
(36, 19, 'LABORATORIO DE TECNLOGIA FARMACEUTICA', NULL, 2),
(37, 20, 'LABORATORIO DE BROMATOLOGIA', NULL, 2),
(38, 21, 'LABORATORIO DE PARASITOLOGIA E LIQUIDOS CORPORAIS', NULL, 2),
(39, 22, 'LABORATORIO DE TECNOLOGIA DE ALIMENTOS', NULL, 2),
(40, 23, 'LABORATORIO DE COZINHA PEDAGOGICA', NULL, 2),
(42, 24, 'LABORATORIO DE AVALIACAO NUTRICIONAL', NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblmaterial`
--

CREATE TABLE IF NOT EXISTS `tblmaterial` (
  `materialid` int(11) NOT NULL,
  `materialnome` varchar(200) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblperiodo`
--

CREATE TABLE IF NOT EXISTS `tblperiodo` (
  `periodoid` int(11) NOT NULL,
  `periododesc` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tblperiodo`
--

INSERT INTO `tblperiodo` (`periodoid`, `periododesc`) VALUES
(1, '1º período '),
(2, '2º período '),
(3, '3º período '),
(4, '4º período '),
(5, '5º período '),
(6, '6º período '),
(7, '7º período '),
(8, '8º período '),
(9, '9º período '),
(10, '10º período ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblreserva`
--

CREATE TABLE IF NOT EXISTS `tblreserva` (
  `reservaid` int(11) NOT NULL,
  `usuarioid` int(11) NOT NULL,
  `cursoid` int(11) NOT NULL,
  `disciplinaid` int(11) NOT NULL,
  `periodoid` int(11) NOT NULL,
  `turnoid` int(11) NOT NULL,
  `labid` int(11) NOT NULL,
  `unidadeid` int(11) NOT NULL,
  `descricao` longtext NOT NULL,
  `data_reserva` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data_aula` date NOT NULL,
  `titulo_aula` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tblreserva`
--

INSERT INTO `tblreserva` (`reservaid`, `usuarioid`, `cursoid`, `disciplinaid`, `periodoid`, `turnoid`, `labid`, `unidadeid`, `descricao`, `data_reserva`, `data_aula`, `titulo_aula`) VALUES
(10, 6, 4, 16, 6, 1, 19, 1, 'teste', '2015-07-17 02:32:01', '2015-07-17', ''),
(11, 6, 14, 4, 5, 2, 19, 2, 'teste', '2015-07-17 13:29:18', '2015-07-20', ''),
(12, 6, 9, 1, 4, 2, 20, 2, 'teste driver', '2015-07-17 18:52:20', '2015-07-21', ''),
(14, 6, 2, 3, 2, 2, 19, 2, 'teste', '2015-07-17 22:33:27', '2015-08-04', ''),
(15, 6, 2, 3, 2, 1, 18, 1, 'teste', '2015-07-17 22:58:45', '2015-06-30', ''),
(16, 6, 2, 3, 3, 2, 16, 2, 'teste', '2015-07-17 23:02:42', '2015-07-01', ''),
(17, 1, 1, 13, 10, 3, 20, 2, 'Teste ', '2015-07-18 01:28:57', '2015-07-17', ''),
(18, 1, 4, 16, 6, 2, 12, 1, 'teste', '2015-07-27 12:55:33', '2015-07-27', 'TESTE DRIVE');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbltipolab`
--

CREATE TABLE IF NOT EXISTS `tbltipolab` (
  `tipolabid` int(11) NOT NULL,
  `descricao` varchar(80) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbltipolab`
--

INSERT INTO `tbltipolab` (`tipolabid`, `descricao`) VALUES
(1, 'QUIMICA'),
(2, 'MICROBIOLOGIA E QUIMICA APLICADA'),
(3, 'ESTETICA'),
(4, 'IMAGEM PESSOAL'),
(5, 'DESENHO TECNICO'),
(6, 'MOTORES E PROCESSOS DE FABRICACAO'),
(7, 'MECANICA APLICADA'),
(8, 'ELETRONICA E SISTEMAS ELETRICOS'),
(9, 'AUTOMACAO INDUSTRIAL E CONTROLE DE PROCESSOS'),
(10, 'MATERIAIS DE CONSTRUCAO E TOPOGRAFIA'),
(11, 'MAQUETERIA'),
(12, 'PRE-CLINICO DE ODONTOLOGIA'),
(13, 'RAIO-X'),
(14, 'MORFOFUNCIONAIS'),
(15, 'BIOQUIMICA'),
(16, 'MICROSCOPIA'),
(17, 'FARMACOGNOSIA'),
(18, 'HABILIDADES '),
(19, 'TECNOLOGIA FARMACEUTICA'),
(20, ' BROMATOLOGIA'),
(21, 'PARASITOLOGIA E LIQUIDOS CORPORAIS'),
(22, 'TECNOLOGIA DE ALIMENTOS'),
(23, 'COZINHA PEDAGOGICA'),
(24, 'AVALIACAO NUTRICIONAL '),
(25, 'FISICA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbltipousuario`
--

CREATE TABLE IF NOT EXISTS `tbltipousuario` (
  `tipoid` int(11) NOT NULL,
  `tipodesc` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbltipousuario`
--

INSERT INTO `tbltipousuario` (`tipoid`, `tipodesc`) VALUES
(1, 'Administrador do Sistema'),
(2, 'Professor'),
(3, 'Técnico de Laboratório');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblturno`
--

CREATE TABLE IF NOT EXISTS `tblturno` (
  `turnoid` int(11) NOT NULL,
  `turnodesc` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tblturno`
--

INSERT INTO `tblturno` (`turnoid`, `turnodesc`) VALUES
(1, 'Matutino'),
(2, 'Vespertino'),
(3, 'Noturno');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblunidade`
--

CREATE TABLE IF NOT EXISTS `tblunidade` (
  `unidadeid` int(11) NOT NULL,
  `unidadedesc` varchar(50) NOT NULL,
  `localizacaodesc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tblunidade`
--

INSERT INTO `tblunidade` (`unidadeid`, `unidadedesc`, `localizacaodesc`) VALUES
(1, 'FACULDADE PITÁGORAS - TURU', NULL),
(2, 'FACULDADE PITÁGORAS - COHAMA', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblusuario`
--

CREATE TABLE IF NOT EXISTS `tblusuario` (
  `usuarioid` int(11) NOT NULL,
  `tipoid` int(11) NOT NULL,
  `nome` varchar(75) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `senha` varchar(8) NOT NULL,
  `matricula` varchar(20) NOT NULL,
  `email` varchar(75) NOT NULL,
  `contato` varchar(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tblusuario`
--

INSERT INTO `tblusuario` (`usuarioid`, `tipoid`, `nome`, `cpf`, `senha`, `matricula`, `email`, `contato`) VALUES
(1, 1, 'IVAN CABRAL BARRETO FILHO', '05145832311', '123456', '99999', 'IVAN@GMAIL.COM', '982566392'),
(3, 3, 'MARCOS JULIANO REGO', '25626351400', '123', '777777', 'MARCOS@GMAIL.COM', '988776653'),
(5, 3, 'ROBERTO PIMENTEL', '23002576544', 'semsenha', '1111111', 'roberto@gmail.com', '988645321'),
(6, 2, 'RODRIGO ALVES MESQUITA', '05065871345', '123', '321', 'rodrigo@gmail.com', '988645321');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Índices de tabela `tblcurso`
--
ALTER TABLE `tblcurso`
  ADD PRIMARY KEY (`cursoid`);

--
-- Índices de tabela `tbldisciplina`
--
ALTER TABLE `tbldisciplina`
  ADD PRIMARY KEY (`disciplinaid`);

--
-- Índices de tabela `tblfiltroperiodo`
--
ALTER TABLE `tblfiltroperiodo`
  ADD PRIMARY KEY (`cursoid`),
  ADD KEY `periodoid` (`periodoid`);

--
-- Índices de tabela `tblgrade`
--
ALTER TABLE `tblgrade`
  ADD UNIQUE KEY `cursoid` (`cursoid`,`disciplinaid`),
  ADD KEY `disciplinaid` (`disciplinaid`);

--
-- Índices de tabela `tbllaboratorio`
--
ALTER TABLE `tbllaboratorio`
  ADD PRIMARY KEY (`labid`),
  ADD KEY `tipolabid` (`tipolabid`,`unidadeid`),
  ADD KEY `capacidade` (`capacidade`),
  ADD KEY `unidadeid` (`unidadeid`);

--
-- Índices de tabela `tblmaterial`
--
ALTER TABLE `tblmaterial`
  ADD PRIMARY KEY (`materialid`);

--
-- Índices de tabela `tblperiodo`
--
ALTER TABLE `tblperiodo`
  ADD PRIMARY KEY (`periodoid`);

--
-- Índices de tabela `tblreserva`
--
ALTER TABLE `tblreserva`
  ADD PRIMARY KEY (`reservaid`),
  ADD KEY `usuarioid` (`usuarioid`,`cursoid`,`periodoid`,`turnoid`,`labid`),
  ADD KEY `instituicaoid` (`unidadeid`),
  ADD KEY `disciplinaid` (`disciplinaid`),
  ADD KEY `turnoid` (`turnoid`),
  ADD KEY `cursoid` (`cursoid`),
  ADD KEY `periodoid` (`periodoid`),
  ADD KEY `labid` (`labid`);

--
-- Índices de tabela `tbltipolab`
--
ALTER TABLE `tbltipolab`
  ADD PRIMARY KEY (`tipolabid`);

--
-- Índices de tabela `tbltipousuario`
--
ALTER TABLE `tbltipousuario`
  ADD PRIMARY KEY (`tipoid`),
  ADD KEY `descricao` (`tipodesc`);

--
-- Índices de tabela `tblturno`
--
ALTER TABLE `tblturno`
  ADD PRIMARY KEY (`turnoid`);

--
-- Índices de tabela `tblunidade`
--
ALTER TABLE `tblunidade`
  ADD PRIMARY KEY (`unidadeid`);

--
-- Índices de tabela `tblusuario`
--
ALTER TABLE `tblusuario`
  ADD PRIMARY KEY (`usuarioid`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `tipoid` (`tipoid`,`nome`,`matricula`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `tblcurso`
--
ALTER TABLE `tblcurso`
  MODIFY `cursoid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de tabela `tbldisciplina`
--
ALTER TABLE `tbldisciplina`
  MODIFY `disciplinaid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1024;
--
-- AUTO_INCREMENT de tabela `tbllaboratorio`
--
ALTER TABLE `tbllaboratorio`
  MODIFY `labid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de tabela `tblmaterial`
--
ALTER TABLE `tblmaterial`
  MODIFY `materialid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de tabela `tblperiodo`
--
ALTER TABLE `tblperiodo`
  MODIFY `periodoid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de tabela `tblreserva`
--
ALTER TABLE `tblreserva`
  MODIFY `reservaid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de tabela `tbltipolab`
--
ALTER TABLE `tbltipolab`
  MODIFY `tipolabid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de tabela `tbltipousuario`
--
ALTER TABLE `tbltipousuario`
  MODIFY `tipoid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `tblturno`
--
ALTER TABLE `tblturno`
  MODIFY `turnoid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `tblunidade`
--
ALTER TABLE `tblunidade`
  MODIFY `unidadeid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `tblusuario`
--
ALTER TABLE `tblusuario`
  MODIFY `usuarioid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `tblfiltroperiodo`
--
ALTER TABLE `tblfiltroperiodo`
  ADD CONSTRAINT `tblfiltroperiodo_ibfk_1` FOREIGN KEY (`periodoid`) REFERENCES `tblperiodo` (`periodoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblfiltroperiodo_ibfk_2` FOREIGN KEY (`cursoid`) REFERENCES `tblcurso` (`cursoid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tblgrade`
--
ALTER TABLE `tblgrade`
  ADD CONSTRAINT `tblgrade_ibfk_1` FOREIGN KEY (`disciplinaid`) REFERENCES `tbldisciplina` (`disciplinaid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tbllaboratorio`
--
ALTER TABLE `tbllaboratorio`
  ADD CONSTRAINT `tbllaboratorio_ibfk_2` FOREIGN KEY (`unidadeid`) REFERENCES `tblunidade` (`unidadeid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbllaboratorio_ibfk_3` FOREIGN KEY (`tipolabid`) REFERENCES `tbltipolab` (`tipolabid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tblreserva`
--
ALTER TABLE `tblreserva`
  ADD CONSTRAINT `tblreserva_ibfk_1` FOREIGN KEY (`turnoid`) REFERENCES `tblturno` (`turnoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblreserva_ibfk_4` FOREIGN KEY (`cursoid`) REFERENCES `tblcurso` (`cursoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblreserva_ibfk_6` FOREIGN KEY (`periodoid`) REFERENCES `tblperiodo` (`periodoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblreserva_ibfk_7` FOREIGN KEY (`unidadeid`) REFERENCES `tblunidade` (`unidadeid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblreserva_ibfk_8` FOREIGN KEY (`disciplinaid`) REFERENCES `tbldisciplina` (`disciplinaid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblreserva_ibfk_9` FOREIGN KEY (`usuarioid`) REFERENCES `tblusuario` (`usuarioid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tblusuario`
--
ALTER TABLE `tblusuario`
  ADD CONSTRAINT `tblusuario_ibfk_1` FOREIGN KEY (`tipoid`) REFERENCES `tbltipousuario` (`tipoid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
