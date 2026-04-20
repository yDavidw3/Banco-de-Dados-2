USE bdRecursosHumanos
GO

--O total de dependentes do funcionário de código 01
SELECT codFuncionario, COUNT(codDependente) 'Número de dependentes' 
	FROM tbDependente
		GROUP BY codFuncionario

--A média dos salários agrupados pelo código do departamento excluindo o departamento de código 10
SELECT codDepartamento, AVG (salarioFuncionario) 'Média salarial' FROM tbFuncionario
	WHERE codDepartamento != 10
		GROUP BY codDepartamento

--A soma dos salários do departamento de código 09
SELECT codDepartamento, SUM(salarioFuncionario) 'Soma dos Sálarios dos Funcionários dos Departamento 9' FROM tbFuncionario
	WHERE codDepartamento = 09
		GROUP BY codDepartamento

--A quantidade de dependentes do sexo masculino
SELECT codFuncionario, COUNT(sexoDependente) 'Dependentes do Sexo Masculino' FROM tbDependente
	WHERE sexoDependente = 'M'
		GROUP BY codFuncionario

--A quantidade de dependentes que nasceram no ano de 2000
SELECT codFuncionario, COUNT(dataNascimentoDependente) 'Dependentes nascidos em 2000' FROM tbDependente
	WHERE YEAR dataNascimentoDependente = 2000
		GROUP BY codFuncionario