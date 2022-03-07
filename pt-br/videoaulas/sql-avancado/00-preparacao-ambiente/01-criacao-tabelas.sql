-- Ordem Compra
CREATE TABLE `aulas-sql-avancado`.`ordem_compra` (
  `id_ordem_compra` INT NOT NULL,
  `id_fornecedor` INT NULL,
  `data_ordem` DATE NULL,
  `descr` VARCHAR(255) NULL,
  PRIMARY KEY (`id_ordem_compra`));

-- Linha Ordem Compra
CREATE TABLE `aulas-sql-avancado`.`linha_ordem_compra` (
  `id_ordem_compra` INT NOT NULL,
  `linha` INT NOT NULL,
  `id_item` INT NULL,
  `qtd` DECIMAL NULL,
  `preco_item` DECIMAL NULL,
  `preco_total` DECIMAL NULL,
  PRIMARY KEY (`id_ordem_compra`, `linha`));

-- Item
CREATE TABLE `aulas-sql-avancado`.`item` (
  `id_item` INT NOT NULL,
  `data_ref` DATETIME NOT NULL,
  `nome` VARCHAR(45) NULL,
  PRIMARY KEY (`id_item`, `data_ref`));

-- Item Estoque
CREATE TABLE `aulas-sql-avancado`.`item_estoque` (
  `id_item` INT NOT NULL,
  `data_ref` DATE NOT NULL,
  `qtd` DECIMAL NULL,
  `preco` DECIMAL NULL,
  PRIMARY KEY (`id_item`, `data_ref`));

-- Fornecedor
CREATE TABLE `aulas-sql-avancado`.`fornecedor` (
  `id_fornecedor` INT NOT NULL,
  `data_ref` DATE NOT NULL,
  `nome` VARCHAR(255) NULL,
  PRIMARY KEY (`id_fornecedor`, `data_ref`));

-- Endereço Fornecedor
CREATE TABLE `aulas-sql-avancado`.`endereco_fornecedor` (
  `id_fornecedor` INT NOT NULL,
  `seq_endereco` INT NOT NULL,
  `data_ref` DATE NOT NULL,
  `logradouro` VARCHAR(255) NULL,
  PRIMARY KEY (`id_fornecedor`, `seq_endereco`, `data_ref`));

-- Fornecedor Item
CREATE TABLE `aulas-sql-avancado`.`fornecedor_item` (
  `id_fornecedor` INT NOT NULL,
  `id_item` INT NOT NULL,
  PRIMARY KEY (`id_fornecedor`, `id_item`));