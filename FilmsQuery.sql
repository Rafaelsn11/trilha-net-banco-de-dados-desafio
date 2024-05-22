-- 1
SELECT 
	Nome,
	Ano
FROM Filmes 

-- 2
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano

-- 3
SELECT 
	Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

-- 4
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

--6
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7
SELECT 
	Ano,
	Count(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT
	Filmes.Nome,
	Generos.Genero
FROM
	Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11
SELECT
	Filmes.Nome,
	Generos.Genero
FROM 
	Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

--12
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM
	Atores A
INNER JOIN ElencoFilme EF ON A.Id = EF.IdAtor
INNER JOIN Filmes F ON EF.IdFilme = F.Id
