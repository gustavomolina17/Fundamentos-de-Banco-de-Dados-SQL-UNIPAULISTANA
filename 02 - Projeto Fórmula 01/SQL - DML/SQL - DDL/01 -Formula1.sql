-- Criação da Base de Dados 

Create database ProjetoFormula1;

-- Acessar a base desejada

Use ProjetoFormula1;

-- Excluir a base de dados

drop database ProjetoFormula1;

-- Criação da 1ª tabela - Ranking

create table if not exists Ranking(codigo int(3) not null primary key,
                                   gp int(2) not null,
                                   classificacao1 int(2) not null,
                                   classificacao2 int(2),
                                   classificacao3 int(2),
                                   podio int (2) not null,
                                   numPoleposition int (2),
                                   voltaMaisRapida int (2));

-- Criação da Tabela Pilotos

create table if not exists Pilotos(numero int(2) not null primary key,
                                   codigo_ranking int(3),
                                   nome char(50) not null,
                                   pais char(30),
                                   endereco char (30),
                                   idade int(3),
                                   equipe int (10) not null,
                                   motor char(20));
                                   
 -- Criação da chave estrangeira na tabela Pilotos
 
 alter table Pilotos
 add foreign key(codigo_ranking)
 references Ranking(codigo);
 
 -- adição do campo pontos
 
 alter table Pilotos
 add pontos int(10);
 
 -- Mudança de campo 
 
 alter table Pilotos
 change equipe equipe char(25) not null;
 
 alter table Pilotos
 change equipe grupo char(25);
 
 -- Exclusão de um campo
 
 alter table Pilotos
 drop endereco;
 
 -- Selecionar todo o conteúdo das 2 tabelas
 Select * from Pilotos;
 Select * from Ranking;
 
 