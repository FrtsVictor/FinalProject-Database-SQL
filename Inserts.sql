
use TechDB


--Inserts Clientes


insert into cliente 
(nome_cliente, login_cliente, senha, email, cpf, data_nasc, telefone, logradouro, bairro, cidade, numero, complemento, uf) values
('Victor Freitas', 'Frts.Victor', '1586874', 'victor@gmail.com', '58968745219' , '1994-03-17', '21968645236' , 'Rua Yamatos', 'Agrioes', 'Petropolis', '379', 'casa04', 'RJ'),
('Evodio Aquino', 'Evodio.A', '5874598523', 'evodio@gmail.com', '59874512697', '1962-03-31', '2187452159', 'Rua guarei ', 'Fatima', 'Teresopolis', '205', 'casa04', 'RJ'),
('Lais Moreira', 'Lais.MM' ,'598561', 'lais@gmail.com', '569851585', '1989-01-03', '21698587', 'Rua Delfim Moreira', 'Varzea', 'Teresopolis', '203', 'apt' ,'RJ' ),
('Carlos Elian', 'Carlos.Elian', '587456877', 'carlos_elian@gmail.com', '59874563214', '2001-10-08', '2175848261', 'Rua Bonsucesso', 'Motas', 'Teresopolis', '172', 'casa', 'SP'),
('Priscila Pinheiro Barcala', 'Priscila.B' ,'5898745', 'priscila@gmail.com', '12987456987', '1992-11-20', '8596587458', 'Rua Diogo José', 'Alto', 'Teresopolis', '820', 'apto', 'RJ' ),
('Maria de Fátima', 'M.Fatima' ,'1587698526', 'maria@gmail.com', '82987456987', '1990-11-20', '2196587458', 'Rua Diogo Maria', 'Alto', 'Teresopolis', '620', 'apto', 'RJ' ),
('Joao Pinheiro', 'Joao.P' ,'758987458', 'joao@gmail.com', '12987453987', '1991-12-21', '2196887458', 'Rua dos coqueiros', 'Comary', 'Teresopolis', '520', 'casa 02', 'RJ' ),
('Joaquim Pereira', 'Joaquim.P' ,'5898745', 'joaquim@gmail.com', '12989456987', '1993-09-28', '2196589458', 'Rua Alberto Torres', 'Alto', 'Teresopolis', '02', 'casa', 'RJ' ),
('Eva Oliveira', 'Eva.O' ,'259876359', 'eva@gmail.com', '12997496987', '2012-11-20', '2196597958', 'Rua Carmela Dutra', 'Agrioes', 'Teresopolis', '500', 'apto 201', 'RJ' ),
('Rayza Alves', 'Rayza.A' ,'58898745', 'rayza@gmail.com', '15187456987', '1996-03-01', '8596567488', 'Rua Dr Santiago', 'Iucas', 'Teresopolis', '1200', 'casa', 'RJ' )



--insert Categoria

insert into categoria_produto (nome_categoria) values
('Desktop'), ('Notebook'), ('Tablet'), ('Celular'), ('Impressora')



--Insert Funcionario
insert into funcionario 
(nome_funcionario, cpf, salario) values 
('Joao da silva' , '98965892561', 1800.00),
('Maria da silva' , '18968982561', 2500.00),
('Joaquim da silva' , '38967592561', 1900.00),
('Paulo da silva' , '28964798561', 2200.00),
('Joana da silva' , '18964899561', 2100.00)




insert into produto 
(nome_produto, descricao, qtd_estoque, data_fabricacao, valor, id_categoria, id_funcionario)values
('Iphone XV', 'Iphone XV 500GB 16GB RAM Branco ', 50, '2020-07-20', 12000.99, 4, 1),
('Ipad XV', 'Ipad XV 240GB 12GB RAM Prata, Edicao Limitada',40, '2020-01-01', 8000.90, 3 , 2),
('MacBook Ulta Air Pro', 'Macbook Pro 1TB SSD 24GB RAM Prata, Edicao Gamer', 10,'2019-12-25', 25000.90, 2, 1),
('Micro Positivo', 'Computador Positivo 1TB 8GB RAM DDR4 Processador i7 5ª', 30, '2016-01-01', 900.90, 1, 3),
('Hp DeskJet', 'HP DeskJet Jato Tinta, Preta', 10, '2018-03-15', 320.50, 5, 4),
('Xiaomi Mi90 Pro','Xiaomi Mi90 Pro 240GB 12GB RAM, Azul', 50, '2019-03-16', 1600.50, 4, 5),
('Hp Elite Book', 'HP Elite Book, 240GB SSD 4GB RAM SerraTec', 20, '2015-05-16', 2100.00, 2, 1),
('Xiaomi Redmi 100','Xiaomi Redmi 100 240GB 8GB RAM Branco', 15, '2018-01-05', 1980.90 , 4, 5),
('AsusPad Z10', 'AsusPad Z10 500GB 12GBRAM Preto', 30, '2020-03-17', 3100.55, 3, 2),
('Zenfone 15', 'Asus Zenfone 15 120gb 8GB RAM Preto', 35, '2019-03-15', 1200.35, 4, 1)



--Insert Pedidos
insert into pedido 
(id_cliente) values 
(2),(1),(1),(2),(3),(4),(5),(6),(8),(6),(10),(7),(9),(10) 




--Insert qtd de items no detalhes do pedido
insert into detalhe_pedido 
(id_pedido, id_produto, qtd_produto) values
(1, 1, 2), 
(1, 2, 2), 
(2, 3, 1), 
(7, 3, 1), 
(6, 4, 5), 
(3, 4, 1), 
(7, 3, 3), 
(4, 5 ,1), 
(5, 3, 1), 
(5, 2, 2), 
(6, 9, 1),
(7, 2, 3),
(8, 10, 1),
(9, 9, 2),
(10, 6, 2),
(11, 7, 1),
(12, 8, 2),
(14, 9, 2),
(13, 10, 1)
