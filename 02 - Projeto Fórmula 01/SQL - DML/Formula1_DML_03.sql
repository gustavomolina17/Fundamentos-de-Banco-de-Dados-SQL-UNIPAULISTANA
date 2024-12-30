Use projetoformula1;
Select * from pilotos;

/* Consulta 30: Informar o número de pilotos existente nesse cadastro*/

select count(*) as Quantidade_de_Pilotos, pais
from pilotos
group by pais;


/* Consulta 31: Indicar o nº de pilotos que tenham 21 anos ou mais*/

select count(*) as Maiores_de_21, pais
from pilotos
where idade>=21
group by pais;



/* Consulta 32: Informar a média de idade dos pilotos da Alemanha ou da Inglaterra ou do Brasil*/
-- Média -> Average (avg)

Select avg(idade) as MediaIdadePiloto,pais
from pilotos
where pais in('Alemanha', 'Inglaterra', 'Brasil')
group by pais;

-- Média Alemanha: 23,14
-- Média Inglaterra: 21,5
-- Média Brasil: 25,5
-- Média: 23,38


/* Consulta 33: Informar a média dos pontos dos pilotos*/

Select avg(pontos) as Média_Pontuação, pais
from pilotos
group by pais;


/* Consulta 34: Informar o piloto mais novo*/
select min(idade) as IdadeMínima, nome
from pilotos;

/* Consulta 35: Indicar a pontuação máxima alcançada pelos pilotos*/
select max(pontos) as Pontuação, nome
from pilotos;


/* Consulta 36: Mostrar o total dos pontos dos pilotos da Inglaterra*/
-- Soma -> SUM

select sum(pontos) as Pontuação
from pilotos
where pais = 'Inglaterra';


/* Consulta 37: Mostrar a pontuação total por país dos pilotos de Fórmula 1 em ordem  decrescente*/

Select sum(pontos) as SomaPontos, pais as Pais
from pilotos
group by pais
order by SomaPontos desc;


/* Consulta 38: Listar a média da idade dos pilotos de cada país dessa tabela. Devem ser elencados somente
os países que apresentaram a média de idade dos pilotos maior que 20 anos. As médias devem ser ordenadas em 
ordem crescente*/

Select avg(idade) as MediaIdade, pais as Pais,idade
from pilotos
group by pais
having avg(idade)>20
order by MediaIdade asc;

/* Consulta 39: Mostrar a quantidade de pilotos de cada país que consta neste cadastro. Listar os países por número de pilotos em 
ordem decrescente*/

Select count(*) as QuantidadePilotos,pais as Pais
from pilotos
group by pais
order by QuantidadePilotos desc;
