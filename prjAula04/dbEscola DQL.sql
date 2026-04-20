USE dbEscola;
GO

-- Exercício 1
SELECT nomeAluno AS 'Nome' , rgAluno AS RG, dataNascimentoAluno AS 'Data de Nascimento' FROM tbAluno
WHERE naturalidadeAluno IN ('SP');

-- Exercício 2
SELECT nomeAluno AS Nome, rgAluno AS RG FROM tbAluno
WHERE nomeAluno LIKE 'P%';

-- Exercício 3
SELECT nomeCurso AS Nome FROM tbCurso
WHERE cargaHorariaCurso>2000;

-- Exercício 4
SELECT nomeAluno AS Nome, rgAluno AS RG FROM tbAluno
WHERE nomeAluno LIKE '%Silva%';

-- Exercício 5
SELECT nomeAluno AS Nome, dataNascimentoAluno AS 'Data de Nascimento' FROM tbAluno
WHERE MONTH(dataNascimentoAluno) = 03;

-- Exercício 6
SELECT idAluno,dataMatricula 'Data da Matrícula' FROM tbMatricula
WHERE MONTH(dataMatricula) = 05;

-- Exercício 7
SELECT nomeAluno FROM tbAluno 
	WHERE idAluno IN ( 
		SELECT idAluno FROM tbMatricula 
			WHERE idTurma IN ( 
				SELECT idTurma FROM tbTurma 
					WHERE idCurso = ( 
						SELECT idCurso FROM tbCurso
						WHERE nomeCurso = 'Inglês' ) ) )


-- Exercício 8
SELECT idAluno FROM tbTurma 
	WHERE idAluno IN ( 
		SELECT idTurma FROM tbTurma
			WHERE idTurma = '1AA'

-- Exercício 9
SELECT * FROM tbAluno;

-- Exercício 10
SELECT * FROM tbTurma;