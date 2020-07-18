INSERT INTO tbl_cliente(id,endereco_bairro,endereco_cep,endereco_cidade,endereco_complemento,endereco_logradouro,endereco_numero,endereco_uf,nome,saldo,email,telefone,cpf,data_atualizacao,nascimento) VALUES (1,"Tijuca", "20000-000","Rio de Janeiro", "","Rua Afonso Pena",100,"RJ","Paulo Marinho",0.00,"paulo@java.com","(21)2222-2222","111.222.333-44",utc_timestamp,utc_timestamp),(2,"Rio de Janeiro", "20000-001","Rio de Janeiro", "","Av. Rio Branco",200,"RJ","Danielle Patrício",0.00,"danielle@java.com","(21)2222-1111","222.222.333-44",utc_timestamp,utc_timestamp),(3,"Rio de Janeiro", "20000-002","Rio de Janeiro", "","Rua da Candelária",300,"RJ","Napoleão Henrique",0.00,"napoelao@java.com","(21)1111-2222","333.222.333-44",utc_timestamp,utc_timestamp);

INSERT INTO tbl_investidor(id,razao_social, cnpj, data_atualizacao, saldo, taxa) VALUES (1,"Crefisa S/A", "00.221.231-0001/01", utc_timestamp ,50000.00, 0.008);
INSERT INTO tbl_investidor(id,razao_social, cnpj, data_atualizacao, saldo, taxa) VALUES (2,"Banco Bonsucesso", "00.221.231-0001/01", utc_timestamp ,50000.00, 0.007);

UPDATE tbl_cliente SET ativo = true;

