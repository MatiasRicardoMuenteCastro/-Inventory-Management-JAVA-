-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 20-Nov-2019 às 22:00
-- Versão do servidor: 8.0.13-4
-- versão do PHP: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Pm4ip5J6rs`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `CPF` int(11) NOT NULL,
  `RG` int(11) DEFAULT NULL,
  `Nome` varchar(20) DEFAULT NULL,
  `Telefone` int(11) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`CPF`, `RG`, `Nome`, `Telefone`, `Email`) VALUES
(1312231135, 1304259647, 'Júlio', 557911466, 'julio@gmail.com'),
(2147221822, 1035983242, 'Gabriel', 723827232, 'gabriel@outlook.com'),
(1580290738, 1217827422, 'Mario', 327832823, 'mario@outlook.com'),
(1732632636, 1237181283, 'Oliver', 774327724, 'oliver@yahoo.com.br'),
(1284822423, 1292849032, 'Maria', 182187781, 'maria@gmail.com.br'),
(1276318783, 1198487184, 'Marcos', 487287432, 'marcos@outlook.com.br'),
(1627387891, 1218283094, 'Luiza', 173817314, 'Luiza@gmail.com'),
(1234991912, 1317782312, 'João', 437178231, 'João@yahoo.com'),
(1318187831, 1237178231, 'Guilherme', 213881728, 'Guilherme@outlook.com'),
(1437178381, 1126189231, 'Jeronimo', 298257822, 'Jeronimo@outlook.com'),
(1173437170, 1321727112, 'Marcos', 121237172, 'Marcos@outlook.com'),
(1287317728, 1128737131, 'Gabriela', 613727813, 'Gabriela@yahoo.com'),
(1381783112, 2112553461, 'Enzo', 212398891, 'Enzo@yahoo.com'),
(1731873121, 1317127833, 'Valdemir', 113891872, 'Valdemir@outlook.com'),
(1328182312, 1131387832, 'Matheus', 312873177, 'Matheus@outlook.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `NomeFornecedor` varchar(20) NOT NULL,
  `Produto` varchar(20) DEFAULT NULL,
  `Garantia` varchar(15) DEFAULT NULL,
  `DataRecebimento` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`NomeFornecedor`, `Produto`, `Garantia`, `DataRecebimento`) VALUES
('MotoresLTDA', 'Motor', '5 anos', '27/10/2019'),
('AutomoveisLTDA', 'Freio', '3 anos', '11/11/2019'),
('TPIndustries', 'Pneu', '2 anos', '26/09/2019'),
('PhillipieIndustries', 'Volante', '1 ano', '12/08/2019'),
('PamAutomoveis', 'Para-Choque', '3 anos', '17/09/2019'),
('CarrosLTDA', 'Volante', '1 ano', '16/11/2019'),
('EstradaLTDA', 'Pneu', '2 ano', '10/11/2019'),
('AutoPeçasLTDA', 'Janela', '2 anos', '11/11/2019'),
('SPAutomoveis', 'Para-Choque', '3 anos', '14/11/2019'),
('LideratCars', 'Para-brisa', '2 anos', '10/11/2019');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `CNPJ` int(11) NOT NULL,
  `EmpresaFornecedora` varchar(20) DEFAULT NULL,
  `Telefone` int(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`CNPJ`, `EmpresaFornecedora`, `Telefone`) VALUES
(172374221, 'TPIndustries', 137173711),
(328747828, 'PamAutomoveis', 182381289),
(371723113, 'AutomoveisLTDA', 138183891),
(341889123, 'PhillipieIndustries', 318989191),
(187238121, 'MotoresLTDA', 123718278),
(731887231, 'CarrosLTDA', 327713711),
(327472721, 'EstradaLTDA', 131276317),
(137188731, 'AutoPeçasLTDA', 317717173),
(287137178, 'SPAutomoveis', 213781723),
(187478123, 'LideratCars', 138187382);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `CPF` int(11) NOT NULL,
  `RG` int(11) DEFAULT NULL,
  `Nome` varchar(20) DEFAULT NULL,
  `Telefone` int(11) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`CPF`, `RG`, `Nome`, `Telefone`, `Email`) VALUES
(371723122, 391889131, 'Gabriela', 818287189, 'gabriela@yahoo.com.br'),
(328182381, 128328131, 'Miguel', 398192989, 'miguel@outlook.com.br'),
(209212194, 932124982, 'Afonso', 928348911, 'afonso@gmail.com.br'),
(931218981, 321192389, 'Olivia', 928348921, 'olivia@gmail.com.br'),
(329838912, 211828112, 'Marina', 212312313, 'marina@outlook.com.br'),
(283187832, 317287178, 'Jeremias', 371287781, 'jeremias@yahoo.com.br'),
(328178731, 318723718, 'Juliana', 127312872, 'juliana@gmail.com.br'),
(327817872, 137187287, 'Otavio', 129389132, 'otavio@hotmail.com.br'),
(381782871, 138178212, 'Oliveira', 127381727, 'oliveira@gmail.com.br'),
(218721872, 482178219, 'Renato', 128437191, 'renato@hotmail.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `NomeProd` varchar(20) NOT NULL,
  `PrecoProd` int(11) DEFAULT NULL,
  `DataEnvio` varchar(10) DEFAULT NULL,
  `DataEntrega` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`NomeProd`, `PrecoProd`, `DataEnvio`, `DataEntrega`) VALUES
('Para-Choque', 450, '28/10/2019', '31/10/2019'),
('Motor', 3250, '26/10/2019', '29/10/2019'),
('Pneu', 250, '30/10/2019', '02/11/2019'),
('Volante', 100, '31/10/2019', '03/11/2019'),
('Freio', 350, '01/11/2019', '04/11/2019'),
('Para-Brisa', 400, '04/11/2019', '08/11/2019'),
('Teto-Solar', 500, '05/11/2019', '10/11/2019'),
('Pneu de Caminhão', 550, '29/10/2019', '03/11/2019'),
('Gidão de moto', 230, '27/10/2019', '01/11/2019'),
('Velocimetro', 150, '30/10/2019', '04/11/2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`CPF`);

--
-- Indexes for table `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`NomeFornecedor`);

--
-- Indexes for table `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`CNPJ`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`CPF`);

--
-- Indexes for table `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`NomeProd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
