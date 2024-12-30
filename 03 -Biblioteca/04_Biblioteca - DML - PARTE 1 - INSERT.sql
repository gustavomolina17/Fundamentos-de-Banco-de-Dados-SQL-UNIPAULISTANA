/* Banco de Dados */

USE biblioteca;

/* Carga nas tabelas-Pais */

/* carga tabela funcionarios */

INSERT INTO funcionarios (CPF, nome, endereco, telefone, salario, funcao)
				VALUES ('30361290876', 'Ademir José Silva', 'Campinas', 22317865, 985.00, NULL);

INSERT INTO funcionarios (CPF, nome, endereco, telefone, salario, funcao)
				VALUES ('23161197770', 'Ana Salles Azir', 'Salto', 22317865, 1520.00, 'Recepcionista');

INSERT INTO funcionarios (CPF, nome, endereco, telefone, salario, funcao)
				VALUES
					('61254590871', 'Lucia Vicentim', 'São Paulo', 21316565, 1520.00, 'Bibliotecaria'),
					('20321295096', 'João Alberto Smith', 'Itatiba', 22447865, 1260.00, NULL),
					('32361298734', 'Luís Henrique Talles', 'Campinas', 21531785, 0, NULL),
					('45403612087', 'Francisco José Almeida', 'Indaiatuba', 25417761, 1260.00, NULL);

SELECT * FROM funcionarios;

/* carga tabela editoras */

INSERT INTO editoras
	VALUES 
		(2134000, 'Saraiva', 'São Paulo', 08003434),
		(2287000, 'Eras', 'Brasília', 08002432),
		(3557000, 'Summer', 'Curitiba', 08002198),
		(6655000, 'Pontos', 'São Paulo', 08005600),
		(9898000, 'Marks', 'Rio de Janeiro', 08009000);

SELECT * FROM editoras;

/* carga tabela de usuarios */
/* a ordem é establecida pela correspondência dos campos */

INSERT INTO usuarios (CPF, nome, telefone, endereco)
	VALUES
		('10122020232', 'Maria de Lourdes Amaral', 35440089, NULL),
		('19321122213', 'José Francisco de Paula', 27219756, NULL),
		('70964411900', 'Luiza Souza Prado', 34559087, NULL),
		('45399109881', 'Raquel Santos', 87603451, NULL),
		('22539910976', 'Ivete Medina Chernell', 48170352, NULL);

SELECT * FROM usuarios;

/* carga tabela de autores */

INSERT INTO autores (nome, nacionalidade, codigo)
	VALUES
		('Ethevaldo Siqueira', 'Brasileira',85668900),
		('Ana Lucia Jankovic Barduchi', 'Brasileira',77548854),
		('Adélia Prado', 'Brasileira',55490076),
		('Walter Isaacson', 'Americana',22564411),
		('Steven K. Scott', 'Americana',90984133);

SELECT * FROM autores;

/* carga tabelas de relacionamentos */

/*	carga na tabela livros - possui 4 chaves estrangeiras
	checagem de integridade referencial será feita */

INSERT INTO livros (numero, titulo, genero, edicao, ano_publicacao, CPF_funcionario,
			codigo_editora, CPF_usuarioRetirar, CPF_usuarioReservar)
	VALUES
		(87659908, 'Tecnologias que Mudam Nossa Vida', 'Tecnologia', 2, 2007, NULL,
			2134000, NULL, 70964411900),
		(67392217, 'Empregabilidade – Competências Pessoais e Profissionais', 'Administração', 22, 1977, 32361298734,
			9898000,NULL, NULL),
		(45112239, 'Steve Jobs – a Biografia', 'Biografia', 48, 2011, NULL,
			2287000, 19321122213, NULL),
		(77680012, 'A Duração do Dia', 'Poesia', 1, 2010, NULL,
			2134000, 10122020232, NULL),
		(32176500, 'Salomão – O Homem Mais Rico que Já Existiu', 'Romance', 2,2011, 61254590871,
			6655000, NULL, NULL),
		(67554421, 'Bagagem', 'Poesia', 5, 1972, NULL,
			6655000, NULL, 19321122213),
		(10277843, 'O Pelicano', 'Romance', 12, 1984, NULL,
			2134000, NULL, NULL);
SELECT * FROM livros;				

/*	carga do relacionamento livros_autores 
	checagem de integridade referencial será feita */

INSERT INTO Livros_autores (numero_livro, codigo_autor)
	VALUES
			(10277843, 55490076),
			(32176500, 90984133),
			(45112239, 22564411),
			(67392217, 77548854),
			(67554421, 55490076),
			(77680012, 55490076),
			(87659908, 85668900),
			(10277843, 85668900);
SELECT * FROM livros_autores;