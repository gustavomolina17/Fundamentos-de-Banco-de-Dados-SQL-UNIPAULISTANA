/* Consulta 01: Listar todos os dados da tabela Pilotos */

Select * from Pilotos;

/* Consulta 02: Listar nome, país e idade de todos os pilotos */

   Select nome,pais,idade
   from Pilotos;

/* Consulta 03: Mostrar os pilotos e suas respectivas equipes */

   Select codigo,nome,equipe
   from Pilotos;

/* Consulta 04: Selecionar o nome dos pilotos, sua nação e a equipe que pertencem. Mostrar no máximo 10 pilotos */

   Select nome as Piloto,pais as Nação, equipe as Equipe
   from Pilotos
   limit 10;
   
/* Consulta 05: Selecionar os países dos pilotos */

   Select distinct pais as Nação
   from Pilotos;
   
/* Consulta 06: Selecionar nome, idade, país e equipe dos pilotos. Os nomes devem estar em ordem alfabética*/

   Select nome as Nome, idade as Idade, pais as Pais, equipe as Equipe
   from Pilotos
   order by nome;

/* Consulta 07: Selecionar nome, idade, país, equipe e pontuação de cada piloto. Esses dados devem estar dispostos de acordo com a idade em ordem decrescente*/

   Select nome as Nome, idade as Idade, pais as Pais, equipe as Equipe, pontos as Pontuação
   from Pilotos
   order by idade desc;

/* Consulta 08: Mostrar os paises a que pertencem os pilotos em ordem alfabética*/

   Select distinct pais as Pais
   from Pilotos
   order by pais asc;
   
/* Consulta 09: No relatório requisitado sobre os pilotos de Fórmula 1, é necessário conter o nome dos pilotos, a equipe a que pertencem,
os pontos e um cálculo desses com a seguinte fórmula:((pontos-3)*1.5). Os dados devem estar dispostos em ordem decrescente e bastam
apenas os 10 primeiros classificados.*/

   Select nome as Piloto, equipe as Equipe, pontos as PontosAtuais,
   ((pontos-3)*1.5) as PontosAlterados
   from Pilotos
   order by pontos desc
   limit 10;
   
/* Consulta 10: Selecionar o nome dos pilotos, a equipe a que pertencem, sua pontuação correspondente e esta acrescida de 20 e dividida
por 5. Desses dados, devem ser mostrados somente os 10 pilotos com menor pontuação. */

   Select nome as Piloto, equipe as Equipe, pontos as PontosAtuais,
   ((pontos+20)/5) as PontosAlterados
   from Pilotos
   order by PontosAlterados asc
   limit 10;
   
/* Consulta 11: Selecionar nome, equipe e pontuação dos pilotos que são da Alemanha. Os dados devem estar dispostos de acordo com a
 equipe, em ordem alfabética*/

   Select nome as Nome, equipe as Equipe, pontos as Pontuação, pais as Pais
   from Pilotos
   where pais = 'Alemanha'
   order by equipe;
   
/* Consulta 12: Mostrar os pilotos que possuem uma pontuação diferente de zero. É necessário mostrar nome, equipe, pais e pontuação. Esses
dados devem estar dispostos em ordem decrescente de pontuação*/

   Select nome as Nome, equipe as Equipe, pais as Nação, pontos as Pontuação
   from Pilotos
   where pontos <>0
   order by pontos desc;
   
/* Consulta 13: Selecionar nome, idade, equipe e país dos pilotos que tenham idade igual ou superior a 25 anos.*/

   Select nome as Nome, idade as Idade, equipe as Equipe, pais as Nação, pontos as Pontuação
   from Pilotos
   where idade>=25
   order by idade;

/* Consulta 14: No relatório a ser emitido, devem constar apenas os pilotos que tenham menos que 50 pontos. Os dados
 que precisam aparecer são: nome, equipe, país e pontuação dos pilotos de fórmula 1*/

   Select nome as Nome, equipe as Equipe, pais as Nação, pontos as Pontuação
   from Pilotos
   where pontos <50;
   
/* Consulta 15: Selecionar todos os pilotos que tenham pontuação > 100. Devem ser exibidos: nome, equipe, país e pontuação*/

   Select nome as Nome, equipe as Equipe, pais as Nação, pontos as Pontuação
   from Pilotos
   where pontos >100;
   
/* Consulta 16: Listar os pilotos que que tenha idade <=20. Incluir nessa listagem: nome, idade, equipe, país e pontuação*/

   Select nome as Nome, idade as Idade, equipe as Equipe, pais as Nação, pontos as Pontuação
   from Pilotos
   where idade<=20
   order by idade;
   
/* Consulta 17: Selecionar por equipe os pilotos que utilizamos motores Ferrari; é importante mencionar nome, país e pontuação.*/

   Select nome as Nome, equipe as Equipe, pais as Nação, pontos as Pontos
   from Pilotos
   where motor like 'Ferrari'
   order by equipe;
   
/* Consulta 18: Selecionar os pilotos dos países que começam com a letra A. Mostrar nome, equipe, pontuação e país dos pilotos. É
importante que  os países estejam em ordem alfabética*/

   Select nome as Nome, equipe as Equipe, pais as Nação, pontos as Pontos
   from Pilotos
   where pais like 'A%'
   order by pais;

/* Consulta 19: Foi requisitada uma listagem dos pilotos que  que pertençam a equipes que terminem com 'auber'. Essa
lista deve ser por equipe e nela devem constar nome, equipe, pais e pontuação.*/

   Select nome as Nome, equipe as Equipe, pais as Nação, pontos as Pontos
   from Pilotos
   where equipe like '_auber'
   order by equipe;
   
/* Consulta 20: Faça uma listagem dos pilotos que representam países que não possuem a sílaba 'an' no meio
do seu nome. Essa listagem deve ser ordenada por país e constar de nome, equipe, país e pontuação.*/

   Select nome as Nome, equipe as Equipe, pais as Nação, pontos as Pontos
   from Pilotos
   where pais not like '%an%'
   order by pais;
   
/* Consulta 21: Selecionar os pilotos maiores de 25 anos e os com 30 anos ou menos. É necessário mostrar também: nome,
idade, equipe, país e pontuação*/

   Select nome as Nome, idade as Idade, equipe as Equipe, pais as Nação, pontos as Pontos
   from Pilotos
   where idade > 25
   and idade <=30;

/* Consulta 22: Selecionar os pilotos que pertençam a equipes cujo nome comece com F ou utilizem motores
cujos nomes iniciem com R. É necessário para essas informações constar nome, equipe e país.*/

   Select nome as Nome, equipe as Equipe, motor as Motor, pais as Nação
   from Pilotos
   where equipe like 'F%'
   or motor like 'R%';

/* Consulta 23: Listar nome, idade, equipe e motores utilizados pelos pilotos que tenham menos de 25 anos, mas também
façam parte de equipes cujo nome inicie com a letra R ou que utilizem motores com a letra M em seu nome*/

   Select nome as Nome, idade as Idade, equipe as Equipe, motor as Motor
   from Pilotos
   where (equipe like 'R%' or motor like '%m%')
   and idade <25;
   
/* Consulta 24: Listar os pilotos que alcançaram pontos de 136 até 252. Nessa listagem, é importante colocar nome,
idade, país e pontos dos pilotos*/

   Select nome,idade, pais, equipe, pontos
   from Pilotos
   where pontos between 136 and 252;
   
/* Consulta 25: Mostrar os pilotos  que tenham uma pontuação maior que 136 e também não estejam devendo nenhum ponto também. Inclua
nessa lista nome, idade, país, equipe e pontos*/

   Select nome,idade, pais, equipe, pontos
   from Pilotos
   where pontos  not between 0 and 136;
   
/* Consulta 26: Selecionar nome, idade, país e equipe dos pilotos que tenham idade igual a 22 ou 24 ou ainda 29. Ordenar
essa informação por idade*/

   Select nome,idade, pais, equipe
   from Pilotos
   where idade in (22,24,29)
   order by idade;
   
/* Consulta 27: Listar nome, idade, país e equipe dos pilotos que não sejam da Alemanha ou da Inglaterra ou da Espanha*/

   Select nome,idade, pais, equipe
   from Pilotos
   where pais not in ('Alemanha','Inglaterra','Espanha')
   order by pais;
   
/* Consulta 28: Selecionar os pilotos que não pontuaram ainda*/

   Select * from Pilotos
   where pontos IS NULL;

/* Consulta 29: Mostrar os dados dos pilotos que possuem pontuação  menor que 10*/

   Select * from Pilotos
   where pontos IS NOT NULL
   and pontos <10;