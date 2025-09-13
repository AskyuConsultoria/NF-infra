
GRANT ALL PRIVILEGES ON *.* TO 'syntro'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

create database IF NOT EXISTS syntro;
use syntro;


CREATE TABLE IF NOT EXISTS nota_fiscal (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cnpj_contratante VARCHAR(20),
    nome_empresa VARCHAR(255),
    cnpj_fornecedor VARCHAR(20),
    endereco_fornecedor VARCHAR(255),
    data_vencimento DATE,
    numero INT,
    descricao TEXT,
    valor_total DOUBLE,
    ativo BOOLEAN default true
);


CREATE TABLE IF NOT EXISTS solicitacao_servico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    card_id INT,
    email VARCHAR(255),
    operacao VARCHAR(255),
    justificativa TEXT,
    nota_fiscal_id INT,
    ativo BOOLEAN default true,
    CONSTRAINT fk_nota_fiscal
        FOREIGN KEY (nota_fiscal_id)
        REFERENCES nota_fiscal(id)
);


INSERT INTO nota_fiscal (cnpj_contratante, nome_empresa, cnpj_fornecedor, endereco_fornecedor, data_vencimento, numero, descricao, valor_total) VALUES
('12.345.678/0001-00', 'Empresa Alpha Ltda', '98.765.432/0001-99', 'Rua das Flores, 123 - São Paulo/SP', '2025-07-01', 1001, 'Serviço de consultoria', 12500.00),
('23.456.789/0001-11', 'Empresa Beta SA', '87.654.321/0001-88', 'Av. Brasil, 456 - Rio de Janeiro/RJ', '2025-07-02', 1002, 'Manutenção de servidores', 8500.75),
('34.567.890/0001-22', 'Empresa Gama ME', '76.543.210/0001-77', 'Rua Central, 789 - Curitiba/PR', '2025-07-03', 1003, 'Desenvolvimento de software', 21500.00),
('45.678.901/0001-33', 'Empresa Delta EPP', '65.432.109/0001-66', 'Alameda Santos, 100 - São Paulo/SP', '2025-07-04', 1004, 'Consultoria tributária', 9800.40),
('56.789.012/0001-44', 'Empresa Epsilon Ltda', '54.321.098/0001-55', 'Av. Paulista, 200 - São Paulo/SP', '2025-07-05', 1005, 'Serviços de marketing', 15900.99),
('67.890.123/0001-55', 'Empresa Zeta SA', '43.210.987/0001-44', 'Rua Augusta, 300 - São Paulo/SP', '2025-07-06', 1006, 'Análise de dados', 12200.00),
('78.901.234/0001-66', 'Empresa Eta Ltda', '32.109.876/0001-33', 'Av. Ipiranga, 400 - Porto Alegre/RS', '2025-07-07', 1007, 'Infraestrutura de rede', 17200.00),
('89.012.345/0001-77', 'Empresa Teta SA', '21.098.765/0001-22', 'Rua XV de Novembro, 500 - Curitiba/PR', '2025-07-08', 1008, 'Serviço de segurança', 9200.00),
('90.123.456/0001-88', 'Empresa Iota Ltda', '10.987.654/0001-11', 'Rua das Palmeiras, 600 - Florianópolis/SC', '2025-07-09', 1009, 'Consultoria ambiental', 11000.00),
('01.234.567/0001-99', 'Empresa Kappa ME', '09.876.543/0001-00', 'Av. Beira Mar, 700 - Recife/PE', '2025-07-10', 1010, 'Instalação de software', 13450.00),
('11.111.111/0001-11', 'Empresa Lambda', '22.222.222/0001-22', 'Rua X, 123 - Cidade Y', '2025-07-11', 1011, 'Serviço de TI', 12345.67),
('33.333.333/0001-33', 'Empresa Mu', '44.444.444/0001-44', 'Rua Y, 321 - Cidade Z', '2025-07-12', 1012, 'Suporte técnico', 9876.54),
('55.555.555/0001-55', 'Empresa Nu', '66.666.666/0001-66', 'Rua Z, 456 - Cidade W', '2025-07-13', 1013, 'Design gráfico', 11200.10),
('12.112.112/0001-12', 'Empresa Sigma', '21.221.221/0001-21', 'Rua das Acácias, 800 - Belém/PA', '2025-07-11', 1011, 'Treinamento corporativo', 10250.75),
('13.113.113/0001-13', 'Empresa Tau', '31.331.331/0001-31', 'Rua Amazonas, 810 - Manaus/AM', '2025-07-12', 1012, 'Consultoria em RH', 11700.00),
('14.114.114/0001-14', 'Empresa Upsilon', '41.441.441/0001-41', 'Rua Rio Branco, 820 - Salvador/BA', '2025-07-13', 1013, 'Auditoria interna', 13300.00),
('15.115.115/0001-15', 'Empresa Phi', '51.551.551/0001-51', 'Av. das Nações, 830 - Brasília/DF', '2025-07-14', 1014, 'Serviço jurídico', 8900.00),
('16.116.116/0001-16', 'Empresa Chi', '61.661.661/0001-61', 'Rua da Aurora, 840 - Recife/PE', '2025-07-15', 1015, 'Licenciamento de software', 9500.00),
('17.117.117/0001-17', 'Empresa Psi', '71.771.771/0001-71', 'Av. Independência, 850 - Porto Alegre/RS', '2025-07-16', 1016, 'Hospedagem de sistemas', 10400.25),
('18.118.118/0001-18', 'Empresa Omega', '81.881.881/0001-81', 'Rua Boa Vista, 860 - São Paulo/SP', '2025-07-17', 1017, 'Consultoria financeira', 11200.00),
('19.119.119/0001-19', 'Empresa Nova Era', '91.991.991/0001-91', 'Rua Azul, 870 - Belo Horizonte/MG', '2025-07-18', 1018, 'Projetos ágeis', 12650.90),
('20.120.120/0001-20', 'Empresa Horizonte', '02.202.202/0001-02', 'Av. do Contorno, 880 - Vitória/ES', '2025-07-19', 1019, 'Sistema de BI', 13999.99),
('21.121.121/0001-21', 'Empresa AlfaTech', '12.212.212/0001-12', 'Rua Verde, 890 - Campinas/SP', '2025-07-20', 1020, 'Monitoramento remoto', 10800.00),
('22.122.122/0001-22', 'Empresa BetaCorp', '22.222.222/0001-22', 'Rua do Comércio, 900 - Santos/SP', '2025-07-21', 1021, 'Cloud hosting', 10100.00),
('23.123.123/0001-23', 'Empresa GamaPlus', '32.232.232/0001-32', 'Rua da Paz, 910 - Londrina/PR', '2025-07-22', 1022, 'Suporte 24/7', 9400.00),
('24.124.124/0001-24', 'Empresa Soluções BR', '42.242.242/0001-42', 'Av. Atlântica, 920 - Balneário Camboriú/SC', '2025-07-23', 1023, 'Soluções em rede', 11200.55),
('25.125.125/0001-25', 'Empresa Integrada', '52.252.252/0001-52', 'Rua São João, 930 - Fortaleza/CE', '2025-07-24', 1024, 'Consultoria em ERP', 11800.00),
('26.126.126/0001-26', 'Empresa Digital Way', '62.262.262/0001-62', 'Rua Ceará, 940 - Goiânia/GO', '2025-07-25', 1025, 'Treinamento online', 9700.00),
('27.127.127/0001-27', 'Empresa Nova Visão', '72.272.272/0001-72', 'Rua Goiás, 950 - Teresina/PI', '2025-07-26', 1026, 'Serviço técnico', 10850.00),
('28.128.128/0001-28', 'Empresa MaxPro', '82.282.282/0001-82', 'Rua Maranhão, 960 - São Luís/MA', '2025-07-27', 1027, 'Controle de acesso', 9200.00),
('29.129.129/0001-29', 'Empresa InfoServ', '92.292.292/0001-92', 'Rua Piauí, 970 - Aracaju/SE', '2025-07-28', 1028, 'Instalação elétrica', 8550.00),
('30.130.130/0001-30', 'Empresa CompCenter', '03.303.303/0001-03', 'Rua Sergipe, 980 - Palmas/TO', '2025-07-29', 1029, 'Gerenciamento de rede', 11000.00),
('31.131.131/0001-31', 'Empresa Soluções TI', '13.313.313/0001-13', 'Rua Bahia, 990 - João Pessoa/PB', '2025-07-30', 1030, 'Backup corporativo', 10750.00);

INSERT INTO solicitacao_servico (
    card_id, nota_fiscal_id, email, operacao, justificativa
) VALUES
(1001, 1, 'usuario1@empresa.com', 'Congelamento', 'Nota Duplicada.'),
(1002, 2, 'usuario2@empresa.com', 'Cadastro', 'Necessário cadastrar um usuário novo na plataforma.'),
(1003, 3, 'usuario3@empresa.com', 'Aprovação justificada', 'Nota precisa ser verificada a parte.'),
(1004, 4, 'usuario4@empresa.com', 'Congelamento', 'Possível fraude.'),
(1005, 5, 'usuario5@empresa.com', 'Cadastro', 'Necessário cadastrar nova empresa na plataforma.');

