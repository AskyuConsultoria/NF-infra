
CREATE DATABASE IF NOT EXISTS syntro_flat;
USE syntro_flat;


GRANT ALL PRIVILEGES ON syntro.* TO 'syntro_flat'@'%' IDENTIFIED BY '12345678';
GRANT ALL PRIVILEGES ON syntro_flat.* TO 'syntro_flat'@'%' IDENTIFIED BY '12345678';


DROP TABLE IF EXISTS `flattened_data`;

CREATE TABLE `flattened_data` (
  `id_nota_fiscal` INT,
  `numero_identificador` VARCHAR(255),
  `cnpj_emitente` VARCHAR(255),
  `descricao` VARCHAR(255),
  `valor_total` DECIMAL(10, 2),
  `data_emissao` DATETIME,
  `data_vencimento` DATETIME,
  `data_aprovacao` DATETIME,
  `status` VARCHAR(50),
  `motivo_invalidacao` VARCHAR(255),
  `id_usuario` INT,
  `nome_usuario` VARCHAR(255),
  `cargo_usuario` VARCHAR(255),
  `id_empresa` INT,
  `nome_empresa` VARCHAR(255),
  `cnpj_empresa` VARCHAR(255),
  `id_fornecedor` INT,
  `nome_fornecedor` VARCHAR(255),
  `id_log_validacao` INT,
  `tipo_validacao` VARCHAR(255),
  `data_validacao` DATETIME,
  `resultado_validacao` VARCHAR(50),
  `id_log_atividade` INT,
  `descricao_atividade` VARCHAR(255),
  `data_atividade` DATETIME,
  `id_contrato` INT,
  `nome_servico` VARCHAR(255),
  `valor_contrato` DECIMAL(10, 2),
  `data_realizacao` DATETIME,
  `id_departamento` INT,
  `nome_departamento` VARCHAR(255),
  `id_endereco` INT,
  `cidade` VARCHAR(255),
  `estado` VARCHAR(255),
  `cep` VARCHAR(20),
  `tempo_analise` INT,
  `prioridade` VARCHAR(50),
  `status_pagamento` VARCHAR(50),
  `tipo_erro` VARCHAR(255),
  PRIMARY KEY (`id_nota_fiscal`)
);
