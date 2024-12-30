Use biblioteca;

-- Consulta 01: Selecionar o título e o gênero dos livros

Select titulo as Livro, genero as Tipo
from livros
order by livro asc;

-- Consulta 02: Apresentar uma listagem com as cidades onde
-- moram os funcionários 

Select distinct endereco as Cidade_Funcionarios
from funcionarios;

-- Consulta 03: Selecionar o título e o gênero dos livros, mostrando somente os 4 primeiros livros
Select titulo as Livro, genero as Tipo
from livros
order by livro desc
limit 4;