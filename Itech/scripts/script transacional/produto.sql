create table produto (
	cod_produto INT PRIMARY KEY,
	nome VARCHAR(14),
	valor INT,
	fornecedor INT,
	FOREIGN KEY (fornecedor) REFERENCES fornecedor(cod_fornecedor)
);
insert into produto (cod_produto, nome, valor, fornecedor) values (1, 'Gabinete', 382, 9);
insert into produto (cod_produto, nome, valor, fornecedor) values (2, 'Monitor', 746, 7);
insert into produto (cod_produto, nome, valor, fornecedor) values (3, 'Processador', 339, 10);
insert into produto (cod_produto, nome, valor, fornecedor) values (4, 'Mouse', 861, 12);
insert into produto (cod_produto, nome, valor, fornecedor) values (5, 'Fonte', 164, 4);
insert into produto (cod_produto, nome, valor, fornecedor) values (6, 'Placa de vídeo', 766, 3);
insert into produto (cod_produto, nome, valor, fornecedor) values (7, 'Ventoinha', 301, 12);
insert into produto (cod_produto, nome, valor, fornecedor) values (8, 'Processador', 433, 3);
insert into produto (cod_produto, nome, valor, fornecedor) values (9, 'Placa de vídeo', 906, 1);
insert into produto (cod_produto, nome, valor, fornecedor) values (10, 'Fonte', 867, 10);
insert into produto (cod_produto, nome, valor, fornecedor) values (11, 'Mouse', 375, 9);
insert into produto (cod_produto, nome, valor, fornecedor) values (12, 'Monitor', 641, 8);
insert into produto (cod_produto, nome, valor, fornecedor) values (13, 'Gabinete', 189, 11);
insert into produto (cod_produto, nome, valor, fornecedor) values (14, 'Memória', 559, 8);
insert into produto (cod_produto, nome, valor, fornecedor) values (15, 'Placa mãe', 919, 1);
insert into produto (cod_produto, nome, valor, fornecedor) values (16, 'Monitor', 440, 1);
insert into produto (cod_produto, nome, valor, fornecedor) values (17, 'Gabinete', 947, 9);
insert into produto (cod_produto, nome, valor, fornecedor) values (18, 'Placa de vídeo', 794, 11);
insert into produto (cod_produto, nome, valor, fornecedor) values (19, 'Gabinete', 647, 1);
insert into produto (cod_produto, nome, valor, fornecedor) values (20, 'Memória', 642, 10);
insert into produto (cod_produto, nome, valor, fornecedor) values (21, 'Gabinete', 175, 5);
insert into produto (cod_produto, nome, valor, fornecedor) values (22, 'Gabinete', 643, 10);
insert into produto (cod_produto, nome, valor, fornecedor) values (23, 'Placa mãe', 121, 7);
insert into produto (cod_produto, nome, valor, fornecedor) values (24, 'Ventoinha', 938, 8);
insert into produto (cod_produto, nome, valor, fornecedor) values (25, 'Placa mãe', 1000, 3);
insert into produto (cod_produto, nome, valor, fornecedor) values (26, 'Placa de vídeo', 817, 12);
insert into produto (cod_produto, nome, valor, fornecedor) values (27, 'Gabinete', 830, 6);
insert into produto (cod_produto, nome, valor, fornecedor) values (28, 'Ventoinha', 568, 3);
insert into produto (cod_produto, nome, valor, fornecedor) values (29, 'Placa mãe', 87, 2);
insert into produto (cod_produto, nome, valor, fornecedor) values (30, 'Placa mãe', 957, 12);
