-- Criação do banco de dados

Create database ProjetoFormula1;

-- Acesso ao banco de dados

Use ProjetoFormula1;

# Caso seja necessário excluir o banco de dados

Drop database ProjetoFormula1;

-- Vamos agora criar a nossa tabela Ranking

Create table if not exists Ranking (codigo int (3) not null primary key,
gp int (2),
classificacao1 int (2),
classificacao2 int (2),
classificacao3 int (2),
podio int (2),
numPolePosition int (2),
voltaMaisRapida int (2));

/*Criação da Tabela dos Pilotos*/

Create table if not exists Pilotos(codigo int(3) not null primary key,
codigo_ranking int(3),
nome char(20) not null,
pais char(20),
endereco char(30),
idade int(6),
equipe int (10) not null,
motor char(20));

-- Criação da chave estrangeira na tabela Pilotos
alter table Pilotos
add foreign key(codigo_ranking)
references Ranking(codigo);

-- Adição do campo pontos na tabela Pilotos
Alter table Pilotos
add pontos int(10);

-- Mudança do tipo para char
Alter table Pilotos
change equipe equipe char(20) not null;

-- Exclusão do campo endereço
Alter table Pilotos
drop endereco;

 -- Selecionar todo o conteúdo das 2 tabelas
Select * from Pilotos;
Select * from Ranking;

/*Para criar o modelo de dados a partir do script seguir os passos abaixo:
1- Clique em File -> New Model
2- Clique novamente em File -> Import -> Reverse Engineer MySQL Create Script 
3- Na Janela que abrir selecione o script desejado
4 - Marque a opção place imported objects on a diagram
5- Clique em execute -> next -> finish */
