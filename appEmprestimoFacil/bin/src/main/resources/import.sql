INSERT INTO `tbl_cliente` (`id`,`ativo`,`cpf`,`data_atualizacao`,`email`,`endereco_bairro`,`endereco_cep`,`endereco_cidade`,`endereco_complemento`,`endereco_logradouro`,`endereco_numero`,`endereco_uf`,`nascimento`,`nome`,`saldo`,`telefone`) VALUES (1,TRUE,'111.222.333-44','2020-07-26 04:17:25','paulo@java.com','Tijuca','20000-000','Rio de Janeiro','','Rua Afonso Pena','100','RJ','2020-07-26 04:13:49','Paulo Marinho',2854,'(21)2222-2222');
INSERT INTO `tbl_cliente` (`id`,`ativo`,`cpf`,`data_atualizacao`,`email`,`endereco_bairro`,`endereco_cep`,`endereco_cidade`,`endereco_complemento`,`endereco_logradouro`,`endereco_numero`,`endereco_uf`,`nascimento`,`nome`,`saldo`,`telefone`) VALUES (2,TRUE,'222.222.333-44','2020-07-26 04:15:24','danielle@java.com','Rio de Janeiro','20000-001','Rio de Janeiro','','Av. Rio Branco','200','RJ','2020-07-26 04:13:49','Danielle Patrício',4032,'(21)2222-1111');
INSERT INTO `tbl_cliente` (`id`,`ativo`,`cpf`,`data_atualizacao`,`email`,`endereco_bairro`,`endereco_cep`,`endereco_cidade`,`endereco_complemento`,`endereco_logradouro`,`endereco_numero`,`endereco_uf`,`nascimento`,`nome`,`saldo`,`telefone`) VALUES (3,TRUE,'333.222.333-44','2020-07-26 04:17:41','napoelao@java.com','Rio de Janeiro','20000-002','Rio de Janeiro','','Rua da Candelária','300','RJ','2020-07-26 04:13:49','Napoleão Henrique',2646,'(21)1111-2222');
INSERT INTO `tbl_cliente` (`id`,`ativo`,`cpf`,`data_atualizacao`,`email`,`endereco_bairro`,`endereco_cep`,`endereco_cidade`,`endereco_complemento`,`endereco_logradouro`,`endereco_numero`,`endereco_uf`,`nascimento`,`nome`,`saldo`,`telefone`) VALUES (4,TRUE,'133.414.412-22','2020-07-26 04:17:16','edveloso@infnet.com','Centro','23133-222','Rio de Janeiro,',NULL,'Avenida Rio de Janeiro',NULL,'RJ','01/01/1980','Veloso Professor',2352,'(21) 2222-1222');

INSERT INTO `tbl_investidor` (`id`,`cnpj`,`data_atualizacao`,`razao_social`,`saldo`,`taxa`) VALUES (1,'00.221.231-0001/01','2020-07-26 04:17:41','Crefisa S/A',40236,0.008);
INSERT INTO `tbl_investidor` (`id`,`cnpj`,`data_atualizacao`,`razao_social`,`saldo`,`taxa`) VALUES (2,'00.221.231-0001/01','2020-07-26 04:14:42','Banco Bonsucesso',48007,0.007);

UPDATE tbl_cliente SET ativo = true;

INSERT INTO `tbl_emprestimo` (`id`,`data_atualizacao`,`data_movimento`,`numero_parcelas`,`valor`,`valor_base`,`cliente_id`,`investidor_id`) VALUES (1,'2020-07-26 04:14:39','2020-07-26 04:14:39',3,3021,3000,1,2);
INSERT INTO `tbl_emprestimo` (`id`,`data_atualizacao`,`data_movimento`,`numero_parcelas`,`valor`,`valor_base`,`cliente_id`,`investidor_id`) VALUES (2,'2020-07-26 04:15:19','2020-07-26 04:15:19',5,5040,5000,2,1);
INSERT INTO `tbl_emprestimo` (`id`,`data_atualizacao`,`data_movimento`,`numero_parcelas`,`valor`,`valor_base`,`cliente_id`,`investidor_id`) VALUES (3,'2020-07-26 04:15:40','2020-07-26 04:15:40',4,3528,3500,3,1);
INSERT INTO `tbl_emprestimo` (`id`,`data_atualizacao`,`data_movimento`,`numero_parcelas`,`valor`,`valor_base`,`cliente_id`,`investidor_id`) VALUES (4,'2020-07-26 04:15:57','2020-07-26 04:15:57',3,1260,1250,1,1);
INSERT INTO `tbl_emprestimo` (`id`,`data_atualizacao`,`data_movimento`,`numero_parcelas`,`valor`,`valor_base`,`cliente_id`,`investidor_id`) VALUES (5,'2020-07-26 04:17:14','2020-07-26 04:17:14',3,3528,3500,4,1);

INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (1,1,true,'2020-07-26 04:14:42',1007.00,'2020-08-25 04:14:39',1);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (2,2,false,NULL,1007.00,'2020-09-24 04:14:39',1);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (3,3,false,NULL,1007.00,'2020-10-24 04:14:39',1);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (4,1,true,'2020-07-26 04:15:24',1008.00,'2020-08-25 04:15:19',2);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (5,2,false,NULL,1008.00,'2020-09-24 04:15:19',2);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (6,3,false,NULL,1008.00,'2020-10-24 04:15:19',2);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (7,4,false,NULL,1008.00,'2020-11-23 04:15:19',2);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (8,5,false,NULL,1008.00,'2020-12-23 04:15:19',2);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (9,1,true,'2020-07-26 04:17:41',882.00,'2020-08-25 04:15:40',3);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (10,2,false,NULL,882.00,'2020-09-24 04:15:40',3);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (11,3,false,NULL,882.00,'2020-10-24 04:15:40',3);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (12,4,false,NULL,882.00,'2020-11-23 04:15:40',3);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (13,1,true,'2020-07-26 04:17:24',420.00,'2020-08-25 04:15:57',4);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (14,2,false,NULL,420.00,'2020-09-24 04:15:57',4);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (15,3,false,NULL,420.00,'2020-10-24 04:15:57',4);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (16,1,true,'2020-07-26 04:17:16',1176.00,'2020-08-25 04:17:14',5);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (17,2,false,NULL,1176.00,'2020-09-24 04:17:14',5);
INSERT INTO `tbl_parcela` (`id`,`numero`,`pago`,`quitacao`,`valor`,`vencimento`,`emprestimo_id`) VALUES (18,3,false,NULL,1176.00,'2020-10-24 04:17:14',5);
