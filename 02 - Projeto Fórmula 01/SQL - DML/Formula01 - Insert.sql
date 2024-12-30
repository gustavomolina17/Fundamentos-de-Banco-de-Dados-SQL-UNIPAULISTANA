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

 -- Ignora a integridade referencial das chaves e dessa forma consigo inserir dados em ambas as tabelas
SET FOREIGN_KEY_CHECKS = 0;

/* Carga tabela Pilotos */

Insert into Pilotos (codigo, nome, pais, idade, equipe, motor,codigo_ranking,pontos)
values (111, 'Sebastian Vettel', 'Alemanha', 25, 'Red Bull', 'Renault',1,256),
       (112, 'Fernando Alonso', 'Espanha', 28, 'Ferrari', 'Ferrari',2,252),
       (113, 'Mark Webber', 'Austria', 26, 'Red Bull', 'Renault',3,242),
       (114, 'Lewis Hamilton', 'Inglaterra', 22, 'Maclaren', 'Mercedes',4,240),
       (115, 'Jenson Button', 'Inglaterra', 21, 'Maclaren', 'Mercedes',5,214),
       (116, 'Felipe Massa', 'Brasil', 27, 'Ferrari', 'Ferrari',6,144),
       (117, 'Nico Rosberg', 'Alemanha', 24, 'Mercedes', 'Mercedes',7,142),
       (118, 'Robert Kubica', 'Polonia', 21, 'Renault', 'Renault',8,136),
       (119, 'Michael Schumacher', 'Alemanha', 23, 'Mercedes', 'Mercedes',9,72),
       (120, 'Rubens Barrichello', 'Brasil', 29, 'Williams', 'Cosworth',10,47),
       (121, 'Adrian Sutil', 'Alemanha', 24, 'Force India', 'Mercedes',11,47),
       (122, 'Kamui Kobayashi', 'Japão', 23, 'Sauber', 'Ferrari',12,32),
       (123, 'Vitaly Petrov', 'Russia', 22, 'Renault', 'Renault',13,27),
       (124, 'Niko Hulkenberg', 'Alemanha', 20, 'Williams', 'Cosworth',14,22),
       (125, 'Vitantonio Liuzzi', 'Italia', 25, 'Force India', 'Mercedes',15,21),
       (126, 'Sebastien Buemi', 'Suiça', 16, 'ToroRosso', 'Ferrari',16,8),
       (127, 'Pedro de la Rosa', 'Espanha', 22, 'Sauber', 'Ferrari',17,6),
       (128, 'Nick Heidfield', 'Alemanha', 22, 'Sauber', 'Ferrari',18,6),
       (129, 'Jaime Alguersuari', 'Espanha', 27, 'ToroRosso', 'Ferrari',19,5),
       (130, 'Sakon Yamamoto', 'Japão', 20, 'Hispania', 'Cosworth',20,0),
       (131, 'Lucas Grassi', 'Brasil', 25, 'Virgin', 'Cosworth',21,0),
       (132, 'Jarno Trulli', 'Itália', 18, 'Lotus', 'Cosworth',22,0),
       (133, 'Heikki Kovalainen', 'Finlandia', 19, 'Lotus', 'Cosworth',23,0),
       (134, 'Timo Glock', 'Alemanha', 24, 'Virgin', 'Cosworth',24,0),
       (135, 'Christien Klien', 'Austrália', 20, 'Hispania', 'Cosworth',25,0),
       (136, 'Bruno Senna', 'Brasil', 21, 'Hispania', 'Cosworth',26,0),
       (137, 'Kaun Chandinol', 'India', 20, 'Hispania', 'Cosworth',27,0);

/* Carga tabela Ranking */

Insert into ranking (codigo,gp,classificacao1,classificacao2,classificacao3,podio,numPolePosition,voltaMaisRapida)
 values(111,5,2,3,4,6,8,0),
       (112,4,6,9,2,2,2,3),
       (113,3,2,2,4,3,3,9),
       (114,2,2,1,3,4,3,2),
       (115,1,2,0,1,5,2,8),
       (116,0,2,0,1,6,1,1),
       (117,0,2,1,2,6,1,7),
       (118,0,2,2,3,6,2,4),
       (119,9,2,3,3,6,3,5),
       (120,8,2,3,4,6,4,7),
       (121,7,2,4,4,6,3,6),
       (122,6,2,5,4,7,2,8),
       (123,5,2,6,5,8,1,9),
       (124,4,2,7,5,8,1,0),
       (125,4,2,8,6,9,2,9),
       (126,3,2,9,7,0,3,8),
       (127,3,2,9,8,1,4,7),
       (128,2,2,8,9,2,5,6),
       (129,2,2,7,3,3,6,5),
       (130,1,2,6,2,4,7,4),
       (131,1,2,5,1,5,8,3),
       (132,1,2,4,0,6,9,2),
       (133,0,2,2,0,7,0,1),
       (134,0,2,3,0,8,0,1),
       (135,0,2,0,3,9,0,0),
       (136,0,2,2,0,8,7,0),
       (137,5,2,1,1,6,8,0);
       
Select * from Pilotos;
Select * from Ranking;
