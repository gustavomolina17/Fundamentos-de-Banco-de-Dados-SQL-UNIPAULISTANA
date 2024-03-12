
Use ProjetoFormula1;

Insert into Pilotos (codigo, nome, pais, idade, equipe, motor,codigo_ranking,pontos)
values (138, 'Sebastian Vettel', 'Alemanha', 25, 'Red Bull', 'Renault',1,256);

Select * from Pilotos;

/* Edit -> Preferences -> SQL Editor (descer a barra de rolagem) -> Desativar o check do safe update -> OK
   Query -> Reconnect to server */

Update Pilotos
set idade = idade+1; /*Executar 2x*/

Update Pilotos
set equipe = 'williams'
where idade > 25;

Update Pilotos
set pais= 'UNIP'
where idade = 28
or idade = 25;

Update Pilotos
set pais = 'Espanha',
idade = 28,
equipe = 'Ferrari',
pontos = 252
where codigo = 112;

Update Pilotos
set pais = 'Brasil'
where codigo = 116
or codigo = 120;

Update Pilotos
set pais = 'Alemanha'
where equipe = 'Hispania'
and codigo>120;

Select * from Pilotos;

Delete from Pilotos
where idade = 28;

Delete from Pilotos
where pais = 'Alemanha'
and idade > 21;

Delete from Pilotos; /*Apaga todos os dados, porém a tabela Pilotos permanecerá com sua estrutura física*/
