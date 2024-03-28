create database comercio2;
use comercio2;
create table cliente (
id_cliente int primary key auto_increment UNIQUE,
nome varchar(40),
email varchar(50),
nascimento date
);
create table produtos (
id_produto int primary key auto_increment UNIQUE,
nome varchar(50),
preco float(7,2) signed,
descricao varchar (150),
qntd tinyint signed
);
create table pedido (
numero_pedido int primary key auto_increment UNIQUE,
id_produto int,
valor_unitario float (7,2),
valor_total float(7,2),
data_compra date,
estima_entrega date,
foreign key (id_produto) references produtos (id_produto)
);