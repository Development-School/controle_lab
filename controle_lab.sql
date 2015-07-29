-- phpMyAdmin SQL Dump
-- version 4.4.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29-Jul-2015 às 00:28
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `controle_lab`
--
CREATE DATABASE IF NOT EXISTS `controle_lab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `controle_lab`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ci_sessions`
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
('4ed90da431e2fdd2aecd9cea35ce624f681a1da4', '::1', 1438139505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133393335343b69647c733a313a2236223b6e6f6d657c733a32323a22524f445249474f20414c564553204d45535155495441223b7469706f7c733a313a2232223b6c6f6761646f7c623a313b),
('5094b911342ca411ee470d687f5d6a9572dadca4', '::1', 1438131821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133313731353b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('526607789dc3554a0c7b7170b0e1e4f4a04bebb4', '::1', 1438139927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133393635373b69647c733a313a2236223b6e6f6d657c733a32323a22524f445249474f20414c564553204d45535155495441223b7469706f7c733a313a2232223b6c6f6761646f7c623a313b),
('56caa8d6d3bcce3795093733baabb57189a0b213', '::1', 1438136977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133363732353b69647c733a313a2236223b6e6f6d657c733a32323a22524f445249474f20414c564553204d45535155495441223b7469706f7c733a313a2232223b6c6f6761646f7c623a313b),
('5b3208d80018d8bf2559a0909e60cfc01d3744b1', '::1', 1438135243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133353137343b69647c733a313a2236223b6e6f6d657c733a32323a22524f445249474f20414c564553204d45535155495441223b7469706f7c733a313a2232223b6c6f6761646f7c623a313b),
('5d69160cba54fc077c37969e72c9fc43922d4d7f', '::1', 1438002371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030323332393b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
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
('ee5fd0a13ed8e4978455f5e92faa3fd9b7d710ce', '::1', 1438139195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133393139353b69647c733a313a2233223b6e6f6d657c733a31393a224d4152434f53204a554c49414e4f205245474f223b7469706f7c733a313a2233223b6c6f6761646f7c623a313b),
('f67f4e84e177956ae1189a0cff9848ac1209ddfb', '::1', 1438129213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383132383933343b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b7469706f7c733a313a2231223b6c6f6761646f7c623a313b),
('f86c239011d55bc030b0b7d412265f0197642a24', '::1', 1438125216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383132353135343b),
('fc621cf8f1a7a248f4d7b8bd1a0d3c089cbd1a5f', '::1', 1438139009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383133383839333b69647c733a313a2233223b6e6f6d657c733a31393a224d4152434f53204a554c49414e4f205245474f223b7469706f7c733a313a2233223b6c6f6761646f7c623a313b),
('fe136fe07d7007b2ac28f5fa673e7da1bbd15e1d', '::1', 1438006446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433383030363339393b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b),
('fe7c64a94c4827f336fa85c79c25a502a7afd1af', '::1', 1437693557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313433373639333235373b69647c733a313a2231223b6e6f6d657c733a32353a224956414e2043414252414c204241525245544f2046494c484f223b6c6f6761646f7c623a313b);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcurso`
--

CREATE TABLE IF NOT EXISTS `tblcurso` (
  `cursoid` int(11) NOT NULL,
  `cursodesc` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblcurso`
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
(26, 'PSICOLOGIA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbldisciplina`
--

CREATE TABLE IF NOT EXISTS `tbldisciplina` (
  `disciplinaid` int(11) NOT NULL,
  `disciplinadesc` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbldisciplina`
--

INSERT INTO `tbldisciplina` (`disciplinaid`, `disciplinadesc`) VALUES
(1, 'Engenharia de Software'),
(2, 'Anatomia'),
(3, 'Analise de projetos'),
(4, 'Desenho técnico'),
(5, 'Metodologia Cientifica'),
(6, 'Banco de Dados 1'),
(7, 'Banco de Dados 2'),
(8, 'Calculo I'),
(9, 'Calculo II'),
(10, 'Engenharia de Software II'),
(11, 'Analise de Projetos e Sistemas'),
(12, 'Circuitos Digitais'),
(13, 'Sistemas Operacionais'),
(14, 'Analise de Algoritmos'),
(15, 'Organização de Arquivos'),
(16, 'Programação Orientada a Objetos'),
(17, 'Programação para Web'),
(18, 'Redes de Computadores 1'),
(19, 'Sistemas Multimidia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblfiltroperiodo`
--

CREATE TABLE IF NOT EXISTS `tblfiltroperiodo` (
  `cursoid` int(11) NOT NULL,
  `periodoid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblfiltroperiodo`
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
-- Estrutura da tabela `tblgrade`
--

CREATE TABLE IF NOT EXISTS `tblgrade` (
  `cursoid` int(11) NOT NULL,
  `disciplinaid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblgrade`
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
-- Estrutura da tabela `tbllaboratorio`
--

CREATE TABLE IF NOT EXISTS `tbllaboratorio` (
  `labid` int(11) NOT NULL,
  `tipolabid` int(11) NOT NULL,
  `labnome` varchar(50) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `unidadeid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbllaboratorio`
--

INSERT INTO `tbllaboratorio` (`labid`, `tipolabid`, `labnome`, `capacidade`, `unidadeid`) VALUES
(1, 2, 'LABORATORIO DE FÍSICA I', 30, 1),
(2, 2, 'LABORATÓRIO DE FÍSICA II', 25, 1),
(3, 3, 'Laboratorio de Quimica', NULL, 1),
(4, 4, 'Laboratorio de Circuitos Elétricos', NULL, 2),
(5, 5, 'Laboratorio de Eletrônica', NULL, 1),
(6, 6, 'Laboratorio de Materiais de Construçao', NULL, 2),
(7, 7, 'Analises Clinicas', NULL, 2),
(8, 8, 'Bioquimica', NULL, 1),
(9, 9, 'Bromatologia', NULL, 2),
(10, 10, 'Condicionamento Operante', NULL, 2),
(11, 11, 'Controle de Qualidade Biologico', NULL, 1),
(12, 12, 'Fisiologia', NULL, 2),
(13, 13, 'Microscopia', NULL, 2),
(14, 14, 'Praticas de Enfermagem', NULL, 2),
(15, 15, 'Primeiros Socorros', NULL, 2),
(16, 16, 'Semiologia', NULL, 1),
(17, 17, 'Anatomia', NULL, 1),
(18, 18, 'Farmacotecnica', NULL, 2),
(19, 19, 'Informatica', NULL, 1),
(20, 19, 'Laboratorio  de Informatica', NULL, 2),
(21, 16, 'Fisica quantica', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblmaterial`
--

CREATE TABLE IF NOT EXISTS `tblmaterial` (
  `materialid` int(11) NOT NULL,
  `materialnome` varchar(200) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `labid` int(11) NOT NULL,
  `tipolabid` int(11) NOT NULL,
  `unidadeid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblmaterial`
--

INSERT INTO `tblmaterial` (`materialid`, `materialnome`, `quantidade`, `labid`, `tipolabid`, `unidadeid`) VALUES
(4, 'Armário para equipamentos e materiais', 7, 1, 2, 1),
(5, 'Balança de Torção - IASKARA - EQ090', 6, 1, 2, 1),
(6, 'Bancadas com tampa de granito', 6, 1, 2, 1),
(7, 'Bancos de madeira 73 cm', 30, 1, 2, 1),
(8, 'Cadeira da mesa do técnico', 1, 1, 2, 1),
(9, 'Cadeira da mesa do professor', 1, 1, 2, 1),
(10, 'Calculadora T5 - 89 Titanium', 1, 1, 2, 1),
(11, 'Colchão de ar linear - CIDEPE - EQ001-16', 2, 1, 2, 1),
(12, 'Computador', 1, 1, 2, 1),
(13, 'Conjunto Matzenbacher para módulo de Young - EQ 200', 6, 1, 2, 1),
(14, 'Cronômetros digitais', 12, 1, 2, 1),
(15, 'Ebulidor de aluminio', 7, 1, 2, 1),
(16, 'Fita métrica de 10m', 1, 1, 2, 1),
(17, 'Fonte de alimentação digital - NADAL - CC -EQ030', 15, 1, 2, 1),
(18, 'Maleta com Hardness Tester TH170', 2, 1, 2, 1),
(19, 'Medidores Lab. Pro Vernier', 2, 1, 2, 1),
(20, 'Mesa do professor', 1, 1, 2, 1),
(21, 'Mesa do técnico de laboratório', 1, 1, 2, 1),
(22, 'Multímetro IDEL MD 5770', 2, 1, 2, 1),
(23, 'Multímetro Minipa ET 2042 c', 8, 1, 2, 1),
(24, 'Óculos de proteção', 63, 1, 2, 1),
(25, 'Painel de forças NDF - III - EQ032', 12, 1, 2, 1),
(26, 'Paquímetro Universal de Aço 250mm - DIGIMESS', 11, 1, 2, 1),
(27, 'Plano inclinado KERSTING II - EQ 001', 12, 1, 2, 1),
(28, 'Protetor auricular', 66, 1, 2, 1),
(29, 'Quadro branco', 1, 1, 2, 1),
(30, 'Régua de 50 cm de metal ADECK', 2, 1, 2, 1),
(31, 'Régua de 50 cm de plástico', 7, 1, 2, 1),
(32, 'Régua de 60 cm de metal MARBERG', 2, 1, 2, 1),
(33, 'Sensores de força DUAL-RANGE', 2, 1, 2, 1),
(34, 'Termômetros à álcool - 10°C a 110°C', 9, 1, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblperiodo`
--

CREATE TABLE IF NOT EXISTS `tblperiodo` (
  `periodoid` int(11) NOT NULL,
  `periododesc` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblperiodo`
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
-- Estrutura da tabela `tblreserva`
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
-- Extraindo dados da tabela `tblreserva`
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
-- Estrutura da tabela `tbltipolab`
--

CREATE TABLE IF NOT EXISTS `tbltipolab` (
  `tipolabid` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbltipolab`
--

INSERT INTO `tbltipolab` (`tipolabid`, `descricao`) VALUES
(2, 'FÍSICA'),
(3, 'QUÍMICA'),
(4, 'CIRCUITOS ELÉTRICOS'),
(5, 'ELETRÔNICA'),
(6, 'MATERIAIS DE CONSTRUÇÃO'),
(7, 'ANÁLISES CLÍNICAS'),
(8, 'BIOQUIMICA'),
(9, 'BROMATOLOGIA'),
(10, 'CONDICIONAMENTO OPERANTE'),
(11, 'CONTROLE DE QUALIDADE BIOLÓGICO'),
(12, 'FISIOLOGIA'),
(13, 'MICROSCOPIA'),
(14, 'PRÁTICAS DE ENFERMAGEM'),
(15, 'PRIMEIROS SOCORROS'),
(16, 'SEMIOLOGIA'),
(17, 'ANATOMIA'),
(18, 'FARMACOTÉCNICA'),
(19, 'INFORMÁTICA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbltipousuario`
--

CREATE TABLE IF NOT EXISTS `tbltipousuario` (
  `tipoid` int(11) NOT NULL,
  `tipodesc` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbltipousuario`
--

INSERT INTO `tbltipousuario` (`tipoid`, `tipodesc`) VALUES
(1, 'Administrador do Sistema'),
(2, 'Professor'),
(3, 'Técnico de Laboratório');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblturno`
--

CREATE TABLE IF NOT EXISTS `tblturno` (
  `turnoid` int(11) NOT NULL,
  `turnodesc` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblturno`
--

INSERT INTO `tblturno` (`turnoid`, `turnodesc`) VALUES
(1, 'Matutino'),
(2, 'Vespertino'),
(3, 'Noturno');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblunidade`
--

CREATE TABLE IF NOT EXISTS `tblunidade` (
  `unidadeid` int(11) NOT NULL,
  `unidadedesc` varchar(50) NOT NULL,
  `localizacaodesc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblunidade`
--

INSERT INTO `tblunidade` (`unidadeid`, `unidadedesc`, `localizacaodesc`) VALUES
(1, 'FACULDADE PITÁGORAS - TURU', NULL),
(2, 'FACULDADE PITÁGORAS - COHAMA', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblusuario`
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblusuario`
--

INSERT INTO `tblusuario` (`usuarioid`, `tipoid`, `nome`, `cpf`, `senha`, `matricula`, `email`, `contato`) VALUES
(1, 1, 'IVAN CABRAL BARRETO FILHO', '05145832311', '123456', '99999', 'IVAN@GMAIL.COM', '982566392'),
(3, 3, 'MARCOS JULIANO REGO', '25626351400', '123', '777777', 'MARCOS@GMAIL.COM', '988776653'),
(5, 3, 'ROBERTO PIMENTEL', '23002576544', 'semsenha', '1111111', 'roberto@gmail.com', '988645321'),
(6, 2, 'RODRIGO ALVES MESQUITA', '05065871345', '123', '321', 'rodrigo@gmail.com', '988645321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tblcurso`
--
ALTER TABLE `tblcurso`
  ADD PRIMARY KEY (`cursoid`);

--
-- Indexes for table `tbldisciplina`
--
ALTER TABLE `tbldisciplina`
  ADD PRIMARY KEY (`disciplinaid`);

--
-- Indexes for table `tblfiltroperiodo`
--
ALTER TABLE `tblfiltroperiodo`
  ADD PRIMARY KEY (`cursoid`),
  ADD KEY `periodoid` (`periodoid`);

--
-- Indexes for table `tblgrade`
--
ALTER TABLE `tblgrade`
  ADD UNIQUE KEY `cursoid` (`cursoid`,`disciplinaid`),
  ADD KEY `disciplinaid` (`disciplinaid`);

--
-- Indexes for table `tbllaboratorio`
--
ALTER TABLE `tbllaboratorio`
  ADD PRIMARY KEY (`labid`),
  ADD KEY `tipolabid` (`tipolabid`,`unidadeid`),
  ADD KEY `capacidade` (`capacidade`),
  ADD KEY `unidadeid` (`unidadeid`);

--
-- Indexes for table `tblmaterial`
--
ALTER TABLE `tblmaterial`
  ADD PRIMARY KEY (`materialid`),
  ADD KEY `tipolabid` (`tipolabid`),
  ADD KEY `unidadeid` (`unidadeid`),
  ADD KEY `labid` (`labid`);

--
-- Indexes for table `tblperiodo`
--
ALTER TABLE `tblperiodo`
  ADD PRIMARY KEY (`periodoid`);

--
-- Indexes for table `tblreserva`
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
-- Indexes for table `tbltipolab`
--
ALTER TABLE `tbltipolab`
  ADD PRIMARY KEY (`tipolabid`);

--
-- Indexes for table `tbltipousuario`
--
ALTER TABLE `tbltipousuario`
  ADD PRIMARY KEY (`tipoid`),
  ADD KEY `descricao` (`tipodesc`);

--
-- Indexes for table `tblturno`
--
ALTER TABLE `tblturno`
  ADD PRIMARY KEY (`turnoid`);

--
-- Indexes for table `tblunidade`
--
ALTER TABLE `tblunidade`
  ADD PRIMARY KEY (`unidadeid`);

--
-- Indexes for table `tblusuario`
--
ALTER TABLE `tblusuario`
  ADD PRIMARY KEY (`usuarioid`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `tipoid` (`tipoid`,`nome`,`matricula`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcurso`
--
ALTER TABLE `tblcurso`
  MODIFY `cursoid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tbldisciplina`
--
ALTER TABLE `tbldisciplina`
  MODIFY `disciplinaid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbllaboratorio`
--
ALTER TABLE `tbllaboratorio`
  MODIFY `labid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tblmaterial`
--
ALTER TABLE `tblmaterial`
  MODIFY `materialid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tblperiodo`
--
ALTER TABLE `tblperiodo`
  MODIFY `periodoid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblreserva`
--
ALTER TABLE `tblreserva`
  MODIFY `reservaid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbltipolab`
--
ALTER TABLE `tbltipolab`
  MODIFY `tipolabid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbltipousuario`
--
ALTER TABLE `tbltipousuario`
  MODIFY `tipoid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblturno`
--
ALTER TABLE `tblturno`
  MODIFY `turnoid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblunidade`
--
ALTER TABLE `tblunidade`
  MODIFY `unidadeid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblusuario`
--
ALTER TABLE `tblusuario`
  MODIFY `usuarioid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tblfiltroperiodo`
--
ALTER TABLE `tblfiltroperiodo`
  ADD CONSTRAINT `tblfiltroperiodo_ibfk_1` FOREIGN KEY (`periodoid`) REFERENCES `tblperiodo` (`periodoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblfiltroperiodo_ibfk_2` FOREIGN KEY (`cursoid`) REFERENCES `tblcurso` (`cursoid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tblgrade`
--
ALTER TABLE `tblgrade`
  ADD CONSTRAINT `tblgrade_ibfk_1` FOREIGN KEY (`cursoid`) REFERENCES `tblcurso` (`cursoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblgrade_ibfk_2` FOREIGN KEY (`disciplinaid`) REFERENCES `tbldisciplina` (`disciplinaid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tbllaboratorio`
--
ALTER TABLE `tbllaboratorio`
  ADD CONSTRAINT `tbllaboratorio_ibfk_1` FOREIGN KEY (`tipolabid`) REFERENCES `tbltipolab` (`tipolabid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbllaboratorio_ibfk_2` FOREIGN KEY (`unidadeid`) REFERENCES `tblunidade` (`unidadeid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tblmaterial`
--
ALTER TABLE `tblmaterial`
  ADD CONSTRAINT `tblmaterial_ibfk_1` FOREIGN KEY (`tipolabid`) REFERENCES `tbltipolab` (`tipolabid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblmaterial_ibfk_2` FOREIGN KEY (`unidadeid`) REFERENCES `tblunidade` (`unidadeid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblmaterial_ibfk_3` FOREIGN KEY (`labid`) REFERENCES `tbllaboratorio` (`labid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tblreserva`
--
ALTER TABLE `tblreserva`
  ADD CONSTRAINT `tblreserva_ibfk_1` FOREIGN KEY (`turnoid`) REFERENCES `tblturno` (`turnoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblreserva_ibfk_3` FOREIGN KEY (`usuarioid`) REFERENCES `tblusuario` (`usuarioid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblreserva_ibfk_4` FOREIGN KEY (`cursoid`) REFERENCES `tblcurso` (`cursoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblreserva_ibfk_5` FOREIGN KEY (`disciplinaid`) REFERENCES `tbldisciplina` (`disciplinaid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblreserva_ibfk_6` FOREIGN KEY (`periodoid`) REFERENCES `tblperiodo` (`periodoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblreserva_ibfk_7` FOREIGN KEY (`unidadeid`) REFERENCES `tblunidade` (`unidadeid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblreserva_ibfk_8` FOREIGN KEY (`labid`) REFERENCES `tbllaboratorio` (`labid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tblusuario`
--
ALTER TABLE `tblusuario`
  ADD CONSTRAINT `tblusuario_ibfk_1` FOREIGN KEY (`tipoid`) REFERENCES `tbltipousuario` (`tipoid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
