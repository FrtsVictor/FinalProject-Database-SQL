
create database TechDB

use TechDB


create table cliente(
id_cliente int identity primary key,  
nome_cliente varchar (120)not null,
login_cliente char(15) unique not null, 
senha char(10)not null, 
email varchar (80) unique not null,
cpf char(11) unique not null, 
data_nasc date,
telefone char(13),
logradouro varchar(80) not null,
bairro varchar(80) not null,
cidade varchar(80)not null,
numero char (6) not null,
complemento varchar(15),
uf char(2) not null
)



create table funcionario(
id_funcionario tinyint identity primary key,
nome_funcionario varchar(80) not null, 
cpf char(11) unique not null, 
salario decimal (10,2) not null
)


create table categoria_produto(
id_categoria int identity primary key,
nome_categoria char (15) not null 
)

create table produto(
id_produto int identity primary key,
nome_produto varchar(100) not null unique, 
descricao varchar (80), 
qtd_estoque int not null default 0, 
data_fabricacao date,
valor decimal (10,2) not null, 
id_funcionario tinyint references funcionario (id_funcionario) not null,
data_cadastro date default getdate() not null,
id_categoria int references categoria_produto(id_categoria) not null
)


create table pedido(
id_pedido int identity primary key, 
id_cliente int references cliente (id_cliente) not null, 
data_pedido date default getdate() not null
constraint fk_delete_cadade foreign key (id_cliente)
references cliente (id_cliente)
on delete cascade
on update cascade

)


create table detalhe_pedido(
id_pedido int references pedido (id_pedido) not null, 
id_produto int references produto (id_produto) not null,
qtd_produto int not null,
constraint fk_dele_cascade foreign key (id_pedido)
references pedido (id_pedido)
on delete cascade
on update cascade
)






