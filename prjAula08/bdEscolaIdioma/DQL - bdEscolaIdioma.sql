USE bdEscolaIdioma
GO

-- A) Criar uma consulta que retorne o nome e o preço dos cursos que custem abaixo do valor médio.
SELECT nomeCurso, valorCurso FROM tbCurso	
	WHERE valorCurso < (
		SELECT AVG(valorCurso) FROM tbCurso
		);

-- B) Criar uma consulta que retorne o nome e o rg do aluno mais novo.
SELECT nomeAluno, rgAluno FROM tbAluno
	WHERE dataNascAluno = (
		SELECT MAX(dataNascAluno) FROM tbAluno
	);

-- C) Criar uma consulta que retorne o nome do aluno mais velho.
SELECT nomeAluno FROM tbAluno
	WHERE dataNascAluno = (
		SELECT MIN(dataNascAluno) FROM tbAluno
	);

-- D) Criar uma consulta que retorne o nome e o valor do curso mais caro.
SELECT nomeCurso, valorCurso FROM tbCurso	
	WHERE valorCurso = (
		SELECT MAX(valorCurso) FROM tbCurso
		);

-- E) Criar uma consulta que retorne o nome do aluno e o nome do curso, do aluno que fez a última matrícula.
SELECT tbAluno.nomeAluno, tbCurso.nomeCurso FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
		INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
			INNER JOIN tbCurso ON tbTurma.idCurso = tbCurso.idCurso
				WHERE tbMatricula.dataMatricula = (
					SELECT MAX(dataMatricula)
					FROM tbMatricula
				);

-- F) Criar uma consulta que retorne o nome do primeiro aluno a ser matriculado na escola de Idiomas.
SELECT tbAluno.nomeAluno FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
		WHERE tbMatricula.dataMatricula = (
			SELECT MIN(dataMatricula)
			FROM tbMatricula
);

-- G) Criar uma consulta que retorne o nome, rg e data de nascimento de todos os alunos que estejam matriculados no curso de inglês.
SELECT tbAluno.nomeAluno, tbAluno.rgAluno, tbAluno.dataNascAluno FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
		INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
			INNER JOIN tbCurso ON tbTurma.idCurso = tbCurso.idCurso
				WHERE tbCurso.nomeCurso = 'Inglês';

	
	