use ProjetoFormula1_DML;

/* Consulta 30: Informar o número de pilotos existente nesse cadastro*/

Select Count(*) as NumeroPilotos
from Pilotos;

/* Consulta 31: Indicar o nº de pilotos que tenham 21 anos ou mais*/

Select Count(*) as NumeroPilotos
from Pilotos
where idade>=21;

/* Consulta 32: Informar a média de idade dos pilotos da Alemanha ou da Inglaterra ou do Brasil*/

Select avg(idade) as MediaIdadePilotos
from Pilotos
where pais in ('Alemanha', 'Inglaterra', 'Brasil');

/* Consulta 33: Informar a média dos pontos dos pilotos*/

Select avg(pontos) as MediaPontosPilotos
from Pilotos;

/* Consulta 34: Informar o piloto mais novo*/

Select min(idade) as IdadeMínima
from Pilotos;

/* Consulta 35: Indicar a pontuação máxima alcançada pelos pilotos*/

Select max(pontos) as PontuaçãoMáxima
from Pilotos;

/* Consulta 36: Mostrar o total dos pontos dos pilotos da Inglaterra*/

Select sum(pontos) as SomaDosPontos
from Pilotos
where pais ='Inglaterra';

/* Consulta 37: Mostrar a pontuação total por país dos pilotos de Fórmula 1*/

Select sum(pontos) as SomaDosPontos, pais as Pais
from Pilotos
group by pais
order by SomaDosPontos;

/* Consulta 38: Listar a média da idade dos pilotos de cada país dessa tabela. Devem ser elencados somente
os países que apresentaram a média de idade dos pilotos maior que 20 anos. As médias devem ser ordenadas em 
ordem crescente*/

Select avg(idade) as MediaDaIdade, pais as País
from Pilotos
group by pais
having avg(idade)>20
order by MediaDaIdade asc;

/* Consulta 39: Mostrar a quantidade de pilotos de cada país que consta neste cadastro. Listar os países por número de pilotos em 
ordem decrescente*/

Select Count(*) as NúmerosDePilotos, pais as País
from Pilotos
group by pais
order by NúmerosDePilotos desc;

