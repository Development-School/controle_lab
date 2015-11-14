-- Banco de Dados do site cmaisd
-- version 0.2
-- Autor: Escritorio Escola

DROP DATABASE IF EXISTS controle_lab;
CREATE DATABASE controle_lab DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE controle_lab;

-- --------------------------------------------------------
-- Estrutura do codeigniter
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS ci_sessions (
  id varchar(40) NOT NULL,
  ip_address varchar(45) NOT NULL,
  timestamp int(10) UNSIGNED DEFAULT 0 NOT NULL,
  data blob NOT NULL,
  PRIMARY KEY (id),
  KEY ci_sessions_timestamp (timestamp)
);

-- --------------------------------------------------------
-- Estrutura Cursos
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS tblcurso (
  cursoid int(11) NOT NULL AUTO_INCREMENT,
  cursodesc varchar(50) NOT NULL,
  PRIMARY KEY (cursoid)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Extraindo dados da tabela tblcurso
--

INSERT INTO tblcurso (cursoid, cursodesc) VALUES
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

--
-- Estrutura da tabela tblfiltroperiodo
--

CREATE TABLE IF NOT EXISTS tblfiltroperiodo (
  cursoid int(11) NOT NULL,
  periodoid int(11) NOT NULL,
  PRIMARY KEY (cursoid),
  KEY periodoid (periodoid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela tblfiltroperiodo
--

INSERT INTO tblfiltroperiodo (cursoid, periodoid) VALUES
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
-- Estrutura da tabela tbllaboratorio
--

CREATE TABLE IF NOT EXISTS tbllaboratorio (
  labid int(11) NOT NULL AUTO_INCREMENT,
  tipolabid int(11) NOT NULL,
  labnome varchar(100) NOT NULL,
  capacidade int(11) DEFAULT NULL,
  unidadeid int(11) NOT NULL,
  PRIMARY KEY (labid),
  KEY tipolabid (tipolabid,unidadeid),
  KEY capacidade (capacidade),
  KEY unidadeid (unidadeid)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Extraindo dados da tabela tbllaboratorio
--

INSERT INTO tbllaboratorio (labid, tipolabid, labnome, capacidade, unidadeid) VALUES
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
-- Estrutura da tabela tblmaterial
--

CREATE TABLE IF NOT EXISTS tblmaterial (
  materialid int(11) NOT NULL AUTO_INCREMENT,
  materialnome varchar(200) NOT NULL,
  quantidade int(11) NOT NULL,
  PRIMARY KEY (materialid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela tblperiodo
--

CREATE TABLE IF NOT EXISTS tblperiodo (
  periodoid int(11) NOT NULL AUTO_INCREMENT,
  periododesc varchar(20) NOT NULL,
  PRIMARY KEY (periodoid)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela tblperiodo
--

INSERT INTO tblperiodo (periodoid, periododesc) VALUES
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
-- Estrutura da tabela tblreserva
--

CREATE TABLE IF NOT EXISTS tblreserva (
  reservaid int(11) NOT NULL AUTO_INCREMENT,
  usuarioid int(11) NOT NULL,
  cursoid int(11) NOT NULL,
  disciplina varchar(180) NOT NULL,
  periodoid int(11) NOT NULL,
  turnoid int(11) NOT NULL,
  labid int(11) NOT NULL,
  unidadeid int(11) NOT NULL,
  descricao longtext NOT NULL,
  data_reserva timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  data_aula date NOT NULL,
  titulo_aula varchar(50) NOT NULL,
  PRIMARY KEY (reservaid),
  KEY usuarioid (usuarioid,cursoid,periodoid,turnoid,labid),
  KEY instituicaoid (unidadeid),
  KEY turnoid (turnoid),
  KEY cursoid (cursoid),
  KEY periodoid (periodoid),
  KEY labid (labid)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela tbltipolab
--

CREATE TABLE IF NOT EXISTS tbltipolab (
  tipolabid int(11) NOT NULL AUTO_INCREMENT,
  descricao varchar(80) NOT NULL,
  PRIMARY KEY (tipolabid)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Extraindo dados da tabela tbltipolab
--

INSERT INTO tbltipolab (tipolabid, descricao) VALUES
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
-- Estrutura da tabela tbltipousuario
--

CREATE TABLE IF NOT EXISTS tbltipousuario (
  tipoid int(11) NOT NULL AUTO_INCREMENT,
  tipodesc varchar(50) NOT NULL,
  PRIMARY KEY (tipoid),
  KEY descricao (tipodesc)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela tbltipousuario
--

INSERT INTO tbltipousuario (tipoid, tipodesc) VALUES
(1, 'Administrador do Sistema'),
(2, 'Professor'),
(3, 'Técnico de Laboratório');

-- --------------------------------------------------------

--
-- Estrutura da tabela tblturno
--

CREATE TABLE IF NOT EXISTS tblturno (
  turnoid int(11) NOT NULL AUTO_INCREMENT,
  turnodesc varchar(50) NOT NULL,
  PRIMARY KEY (turnoid)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela tblturno
--

INSERT INTO tblturno (turnoid, turnodesc) VALUES
(1, 'Matutino'),
(2, 'Vespertino'),
(3, 'Noturno');

-- --------------------------------------------------------

--
-- Estrutura da tabela tblunidade
--

CREATE TABLE IF NOT EXISTS tblunidade (
  unidadeid int(11) NOT NULL AUTO_INCREMENT,
  unidadedesc varchar(50) NOT NULL,
  localizacaodesc varchar(50) DEFAULT NULL,
  PRIMARY KEY (unidadeid)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela tblunidade
--

INSERT INTO tblunidade (unidadeid, unidadedesc, localizacaodesc) VALUES
(1, 'FACULDADE PITÁGORAS - TURU', NULL),
(2, 'FACULDADE PITÁGORAS - COHAMA', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela tblusuario
--

CREATE TABLE IF NOT EXISTS tblusuario (
  usuarioid int(11) NOT NULL AUTO_INCREMENT,
  tipoid int(11) NOT NULL,
  nome varchar(75) NOT NULL,
  cpf varchar(11) NOT NULL,
  senha varchar(8) NOT NULL,
  matricula varchar(20) NOT NULL,
  email varchar(75) NOT NULL,
  contato varchar(12) NOT NULL,
  PRIMARY KEY (usuarioid),
  UNIQUE KEY cpf (cpf),
  KEY tipoid (tipoid,nome,matricula)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela tblusuario
--

INSERT INTO tblusuario (usuarioid, tipoid, nome, cpf, senha, matricula, email, contato) VALUES
(1, 1, 'IVAN CABRAL BARRETO FILHO', '05145832311', '123456', '99999', 'IVAN@GMAIL.COM', '982566392'),
(3, 3, 'MARCOS JULIANO REGO', '25626351400', '123', '777777', 'MARCOS@GMAIL.COM', '988776653'),
(5, 3, 'ROBERTO PIMENTEL', '23002576544', 'semsenha', '1111111', 'roberto@gmail.com', '988645321'),
(6, 2, 'RODRIGO ALVES MESQUITA', '05065871345', '123', '321', 'rodrigo@gmail.com', '988645321');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela tblfiltroperiodo
--
ALTER TABLE tblfiltroperiodo
  ADD CONSTRAINT tblfiltroperiodo_ibfk_1 FOREIGN KEY (periodoid) REFERENCES tblperiodo (periodoid) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT tblfiltroperiodo_ibfk_2 FOREIGN KEY (cursoid) REFERENCES tblcurso (cursoid) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela tbllaboratorio
--
ALTER TABLE tbllaboratorio
  ADD CONSTRAINT tbllaboratorio_ibfk_2 FOREIGN KEY (unidadeid) REFERENCES tblunidade (unidadeid) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT tbllaboratorio_ibfk_3 FOREIGN KEY (tipolabid) REFERENCES tbltipolab (tipolabid) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela tblreserva
--
ALTER TABLE tblreserva
  ADD CONSTRAINT tblreserva_ibfk_1 FOREIGN KEY (turnoid) REFERENCES tblturno (turnoid) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT tblreserva_ibfk_4 FOREIGN KEY (cursoid) REFERENCES tblcurso (cursoid) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT tblreserva_ibfk_6 FOREIGN KEY (periodoid) REFERENCES tblperiodo (periodoid) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT tblreserva_ibfk_7 FOREIGN KEY (unidadeid) REFERENCES tblunidade (unidadeid) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT tblreserva_ibfk_9 FOREIGN KEY (usuarioid) REFERENCES tblusuario (usuarioid) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela tblusuario
--
ALTER TABLE tblusuario
  ADD CONSTRAINT tblusuario_ibfk_1 FOREIGN KEY (tipoid) REFERENCES tbltipousuario (tipoid) ON DELETE NO ACTION ON UPDATE NO ACTION;
