USE bdRecursosHumanos;
GO

-- INSERT tbDepartamento
INSERT INTO tbDepartamento (nomeDepartamento) VALUES
('Recursos Humanos'),
('Financeiro'),
('TI'),
('Marketing'),
('Vendas');
GO

-- INSERT tbFuncionario
INSERT INTO tbFuncionario 
(nomeFuncionario, cpfFuncionario, sexoFuncionario, dataNascimentoFuncionario, salarioFuncionario, codDepartamento)
VALUES
('Ana Souza', '111.111.111-11', 'F', '1990-05-10', 3500.00, 1),
('Carlos Lima', '222.222.222-22', 'M', '1985-03-22', 5000.00, 2),
('Mariana Alves', '333.333.333-33', 'F', '1992-07-15', 4200.00, 3),
('João Pereira', '444.444.444-44', 'M', '1988-11-30', 6100.00, 3),
('Fernanda Costa', '555.555.555-55', 'F', '1995-01-18', 2800.00, 4),
('Ricardo Gomes', '666.666.666-66', 'M', '1982-09-05', 7500.00, 2),
('Juliana Martins', '777.777.777-77', 'F', '1998-12-25', 2600.00, 5),
('Bruno Rocha', '888.888.888-88', 'M', '1991-06-08', 3900.00, 5),
('Patrícia Dias', '999.999.999-99', 'F', '1987-04-14', 4700.00, 1);
GO

-- INSERT tbDependente
INSERT INTO tbDependente
(nomeDependente, dataNascimentoDependente, sexoDependente, codFuncionario)
VALUES
('Lucas Souza', '2015-02-10', 'M', 1),
('Marina Souza', '2018-06-20', 'F', 1),
('Pedro Lima', '2010-09-01', 'M', 2),
('Julia Alves', '2020-03-12', 'F', 3),
('Gabriel Pereira', '2012-07-07', 'M', 4),
('Larissa Pereira', '2016-11-23', 'F', 4),
('Rafael Costa', '2019-05-30', 'M', 5),
('Beatriz Gomes', '2008-01-17', 'F', 6),
('Sofia Martins', '2021-08-09', 'F', 7),
('Matheus Rocha', '2013-12-03', 'M', 8),
('Camila Dias', '2014-04-25', 'F', 9),
('Eduardo Dias', '2017-10-11', 'M', 9);
GO