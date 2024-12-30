/* Cria o Banco de Dados biblioteca */

CREATE DATABASE If not exists biblioteca;
use biblioteca;

/* Criação das Tabelas do banco de dados Biblioteca */ 

CREATE TABLE if not exists funcionarios
(
	CPF char (11) not null,
	nome varchar (40) not null,
	endereco varchar (50) not null,
	telefone char (8) not null, -- telefone fixo sem DDD
	salario decimal (7,2) not null,
	funcao varchar (30),
	PRIMARY KEY (CPF)
);

CREATE TABLE if not exists editoras
(
	codigo int PRIMARY KEY not null,
	nome varchar (40) not null,
	endereco varchar (50) not null,
	contato int not null 
);

CREATE TABLE if not exists autores
(
	codigo int PRIMARY KEY not null,
	nome varchar (40) not null,
	nacionalidade varchar (20) not null 
);

CREATE TABLE if not exists usuarios
(
	CPF char (11) not null,
	nome varchar (50) not null,
	endereco varchar (50),
	telefone char (8) not null, -- telefone fixo sem DDD
	PRIMARY KEY (CPF)
); 

CREATE TABLE if not exists livros
(
	numero integer primary key not null,
	titulo varchar (60) not null,
	genero varchar (20) not null,
	edicao tinyint not null,
	ano_publicacao year not null,
	CPF_funcionario char (11),
	codigo_editora int not null,
	CPF_usuarioRetirar char (11),
	CPF_usuarioReservar char (11),
	CONSTRAINT FK_CPF_funcionarios FOREIGN KEY (CPF_funcionario)
		references funcionarios (CPF)
        on delete set null
        on update cascade,
 	CONSTRAINT FK_codigo_editoras FOREIGN KEY (codigo_editora)
 		references editoras (codigo)
 		on delete restrict
 		on update cascade,
 	CONSTRAINT FK_usuarioRetirar FOREIGN KEY (CPF_usuarioRetirar)
 		references usuarios (CPF)
 		on delete restrict
 		on update cascade,
 	CONSTRAINT FK_CPF_usuarioReservar FOREIGN KEY (CPF_usuarioReservar)
 		references usuarios (CPF)
 		on delete set null
 		on update cascade
);

CREATE TABLE if not exists livros_autores
(
	numero_livro int not null,
	codigo_autor int not null,
	CONSTRAINT PRIMARY KEY (numero_livro, codigo_autor)
);

ALTER TABLE livros_autores
	add CONSTRAINT FK_numero_livro FOREIGN KEY (numero_livro)
		references livros (numero)
		on delete cascade
		on update cascade;

ALTER TABLE livros_autores
	add CONSTRAINT FK_codigo_autor FOREIGN KEY (codigo_autor)
		references autores (codigo)
		on delete restrict
		on update cascade;		