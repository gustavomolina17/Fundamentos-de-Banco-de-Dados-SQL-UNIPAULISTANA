Use projetoformula1;

-- Consulta 01 : Listar todos os registros da tabela Piloto;
Select * from pilotos;
Select * from ranking;

-- Consulta 02a: Listar nome, país e idade de todos os pilotos
Select nome, pais, idade from pilotos;
-- Consulta 02b: Listar codigo, gp e podio da tabela ranking
Select codigo, gp, podio from ranking;

-- Consulta 03: Listar código, nome e equipe dos pilotos 
Select codigo, nome, equipe from pilotos;

-- Consulta 04a: nome, pontos e idade dos 10 primeiros pilotos
select nome, pontos, idade from pilotos
limit 10; 
-- Consulta 04b: Listar codigo, gp e podio da tabela ranking dos 5 primeiros pilotos
select codigo, gp, podio from ranking
limit 5;

-- Consulta 05: Selecionar o pais dos pilotos
-- A cláusula distinct serve para que NÃO ocorra duplicidade
-- O comando "as" serve para dar um apelido à nossa tabela
select distinct pais as Nação
from pilotos;

-- Consulta 06: Selecionar nome, idade, pais e equipe dos pilotos. Os nomes devem aparecer em ORDEM ALFABÉTICA.
Select nome as Nome, idade as Idade, pais as Pais, equipe as Equipe
from pilotos 
order by nome;

-- Consulta 07: Selecionar nome, idade, pais, equipe e pontuação de cada piloto. Esses dados devem ser ordenados pela idade em ordem decrescente.
Select nome as Nome, idade as Idade, pais as Pais, equipe as Equipe, pontos as Pontuação
from pilotos
order by idade desc;

-- Consulta 08: Mostrar os países a que pertencem os pilotos (em ordem alfabética e sem repeticao)
Select distinct pais as Nação
from pilotos
order by pais asc;

-- Consulta 09: Faça um relatório contendo o nome dos pilotos, a equipe a que pertencem,
-- os pontos e um cálculo desses com a seguinte fórmula:
-- ((pontos-3)*1.5). Os dados devem ser apresentados em 
-- ordem decrescente e apenas para os 10 primeiros pilotos.

Select nome as Nome,equipe as Equipe, pontos as PontosAtuais,
((pontos-3)*1.5) as PontosAlterados
from pilotos
order by pontos desc
limit 10;

-- Consulta 10: Selecionar o nome dos pilotos, a equipe a que pertencem,
-- sua pontuação e crie um novo campo chamado Pontos Alterados onde o cálculo
-- é feito da seguinte maneira: ((pontos+20)/5). Mostrar somente
-- os 10 primeiros pilotos com a maior pontuação.

Select nome as Piloto, equipe as Equipe, pontos as Pontuação,
((pontos+20)/5) as PontosAlterados
from pilotos
order by pontos desc
limit 10;

-- Consulta 11: Selecionar nome, equipe e pontuação dos pilotos da ALEMANHA. A equipe deve estar em ordem alfabética  
Select nome as Piloto, pais as Pais, equipe as Equipe, pontos as Pontuação
from pilotos
where pais = 'Alemanha'
order by equipe;

-- Consulta 12: Mostrar os pilotos que possuem uma pontuação diferente de 0. É necessário mostrar nome,equipe,pais e pontuação. Os dados devem ser organizados em ordem decrescente de pontuação
Select nome as Piloto, equipe as Equipe, pais as Pais, pontos as Pontuação
from pilotos
where pontos <> 0
order by pontos desc;

-- Consulta 13: Mostrar nome e idade dos pilotos com 25 anos ou mais. Mostrar os resultados ordenados em ordem crescente.
Select nome as Piloto, idade as Idade
from pilotos
where idade>=25
order by idade;

-- Consulta 14: Faça um relatório onde apareça somente os pilotos com menos de 50 pontos. Os dados que precisam aparecer são:
-- nome, equipe, pais e pontuação.

Select nome as Piloto, equipe as Equipe, pais as Pais, pontos as Pontuação
from pilotos
where pontos <50;

-- Consulta 15: Faça um relatório onde apareça somente os pilotos com mais de 100 pontos. Os dados que precisam aparecer são:
-- nome, equipe, pais e pontuação. Ordene a lista por nome em ordem decrescente e somente para os 5 primeiros pilotos.
Select nome as Piloto, equipe as Equipe, pais as Pais, pontos as Pontuação
from pilotos
where pontos >100
order by nome desc
limit 5;


/* Consulta 16: Listar os pilotos que tenham idade <=20. Incluir nessa listagem: nome, idade, equipe, país e pontuação*/
Select nome as piloto, idade as Idade, equipe as Equipe, pais as Pais, pontos as Pontuação
from pilotos
where idade <=20
order by idade desc; 

/* Consulta 17: Selecionar por equipe os pilotos que utilizam os motores Ferrari; é importante mencionar nome, país e pontuação.*/
Select nome as Piloto, pais as Nação, pontos as Pontuação, motor as Motores, equipe as Equipe
from pilotos
where motor like 'Ferrari'
-- where motor ='Ferrari'
order by equipe;

/* Consulta 18: Selecionar os pilotos dos países que começam com a letra A. Mostrar nome, equipe, pontuação e país dos pilotos. É
importante que  os países estejam em ordem alfabética*/

Select nome as Piloto, equipe as Equipe, pais as Nação, pontos as Pontuação
from pilotos
where pais like 'A%'
order by pais;

/* Consulta 19: Foi requisitada uma listagem dos pilotos que pertençam a equipes que terminem com 'auber'. Essa
lista deve ser ordenada por equipe e nela devem constar nome, equipe, pais e pontuação.*/

Select distinct equipe from pilotos;

Select nome as Piloto, equipe as Equipe, pais as Nação, pontos as Pontuação
from pilotos
where equipe like '_auber'
order by equipe;

/* Consulta 20: Faça uma listagem dos pilotos que representam países que não possuem a sílaba 'an' no meio
do seu nome. Essa listagem deve ser ordenada por país e constar de nome, equipe, país e pontuação.*/
Select distinct pais from pilotos;

Select nome as Piloto, equipe as Equipe, pais as Nação, pontos as Pontuação
from pilotos
where pais not like '%an%'
order by pais;

/* Consulta 21: Selecionar os pilotos maiores de 25 anos e os com 30 anos ou menos. É necessário mostrar também: nome,
idade, equipe, país e pontuação*/

-- idade >25 e (and) <=30
-- 26,27,28,29 e 30 anos
Select nome as Piloto, idade as Idade,equipe as Equipe, pais as Nação, pontos as Pontuação
from pilotos
where idade > 25
and idade <=30;

/* Consulta 22: Selecionar os pilotos que pertençam a equipes cujo nome comece com F ou utilizem motores
cujos nomes iniciem com R. É necessário para essas informações constar nome, equipe e país.*/
Select nome as Piloto, equipe as Equipe, pais as Nação, motor as Motores
from pilotos
where equipe like 'F%'
or motor like 'R%';

/* Consulta 23: Listar nome, idade, equipe e motores utilizados pelos pilotos que tenham menos de 25 anos, mas também
façam parte de equipes cujo nome inicie com a letra R ou que utilizem motores com a letra M em seu nome*/
-- 1º fazer a parte do or
Select nome as Piloto, idade as Idade, equipe as Equipe,motor as Motores
from pilotos
where (equipe like 'R%' or motor like'%m%')
and idade <25;


/* Consulta 24: Listar os pilotos que alcançaram pontos de 136 até 252. Nessa listagem, é importante colocar nome,
idade, país e pontos dos pilotos*/
Select nome as Piloto, pontos as Pontuação
from pilotos
where pontos between 136 and 252
-- where pontos >=136 and pontos <=252
order by pontos;

/* Consulta 25: Mostrar os pilotos  que tenham uma pontuação maior que 136 e também não estejam devendo nenhum ponto também. Inclua
nessa lista nome, idade, país, equipe e pontos*/
 -- Quero as informações dos pilotos cuja pontuação NAO esteja entre 0 e 136
 
 Select nome as Piloto, pontos as Pontuação
 from pilotos
 where pontos not between 0 and 136;
 -- where pontos >136

/* Consulta 26: Selecionar nome, idade, país e equipe dos pilotos que tenham idade igual a 22 ou 24 ou ainda 29. Ordenar
essa informação por idade*/
Select nome as Piloto, idade as Idade
from pilotos
where idade in (22,24,29);

/* Consulta 27: Listar nome, idade, país e equipe dos pilotos que não sejam da Alemanha ou da Inglaterra ou da Espanha*/

Select nome as Piloto, pais as Nação
from pilotos 
where pais not in ('Alemanha', 'Inglaterra','Espanha');

/* Consulta 28: Selecionar os pilotos que não pontuaram ainda*/
Select * from pilotos
where pontos like 0;
-- where pontos is null;

/* Consulta 29: Mostrar os dados dos pilotos que possuem pontuação  menor que 10*/
Select * from pilotos
where pontos < 10;