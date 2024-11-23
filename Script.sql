create database lojamusica

create table cliente (
	id serial primary key,
	nome varchar(100),
	idade INT,
	endereco varchar(100),
	telefone numeric,
	email varchar(100)
);

create table servico (
	id_servico serial primary key,
	id_cliente int references cliente(id) on delete cascade,
	tiposervico varchar(150),
	data date,
	hora numeric,
	valor INT
);

create table produto (
	id_produto serial primary key,
	id_cliente int references cliente(id) on delete cascade,
	nome varchar(100),
	codigoproduto INT,
	descricao varchar(500),
	preco numeric(10, 3),
	estoque INT,
	cupomdesconto numeric(5, 2)
);

create table marcas (
	id_marcas serial primary key,
	id_cliente int references cliente(id) on delete cascade,
	nome varchar(100),
	codigomarca INT,
	descricaomarca varchar(500)
);

create table revendedor (
	id_revendedor serial primary key,
	id_cliente int references cliente(id) on delete cascade,
	nome varchar(100),
	codigorevendedor INT,
	estoque INT,
	nivelrevendedor INT
);

alter table cliente add column telefone_novo varchar(20);

alter table servico drop column hora;

alter table servico add column hora_servico time;

insert into cliente(nome, idade, endereco, telefone_novo, email) values
('Reneé', 21, 'R. Medeiros de Albuquerque', '(55)83977778888', 'renee.w4lker@gmail.com');
insert into servico(tiposervico, data, hora_servico, valor) values
('Disco de vinil', '2024-07-27', '16:45:00', 20);
insert into produto(nome, codigoproduto, descricao, preco, estoque, cupomdesconto) values
('Speak Now', 980734, 'SNTaylorSwift', 499.50, 50, 0.30);
insert into marcas(nome, codigomarca, descricaomarca) values
('Green Day', 400987, 'Banda de punk rock');
insert into revendedor(nome, codigorevendedor, estoque, nivelrevendedor) values
('Carlos', 202411, 50, 2);

select * from cliente;

select * from servico;

select * from produto;

select * from marcas;

select * from revendedor;