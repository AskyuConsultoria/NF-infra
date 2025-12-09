-- Desativa temporariamente checagem de FK
SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE contrato;
TRUNCATE TABLE departamento;
TRUNCATE TABLE empresa;
TRUNCATE TABLE endereco;
TRUNCATE TABLE grupo_permissao;
TRUNCATE TABLE log_atividade;
TRUNCATE TABLE log_validacao;
TRUNCATE TABLE nota_fiscal;
TRUNCATE TABLE permissao;
TRUNCATE TABLE solicitacao_servico;
TRUNCATE TABLE temp;
TRUNCATE TABLE token_reset_senha;
TRUNCATE TABLE tokens_reset_senha;
TRUNCATE TABLE usuario;

-- Reativa checagem de FK
SET FOREIGN_KEY_CHECKS = 1;

