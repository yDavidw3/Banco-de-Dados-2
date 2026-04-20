CREATE DATABASE bdRecursosHumanos;
GO

USE bdRecursosHumanos;
GO

CREATE TABLE tbDepartamento (
    codDepartamento INT PRIMARY KEY IDENTITY(1,1),
    nomeDepartamento VARCHAR(100) NOT NULL
);
GO

CREATE TABLE tbFuncionario (
    codFuncionario INT PRIMARY KEY IDENTITY(1,1),
    nomeFuncionario VARCHAR(100) NOT NULL,
    cpfFuncionario VARCHAR(14) NOT NULL,
    sexoFuncionario CHAR(1),
    dataNascimentoFuncionario DATE,
    salarioFuncionario DECIMAL(10,2),
    codDepartamento INT,

    CONSTRAINT FK_Funcionario_Departamento
    FOREIGN KEY (codDepartamento)
    REFERENCES tbDepartamento(codDepartamento)
);
GO


CREATE TABLE tbDependente (
    codDependente INT PRIMARY KEY IDENTITY(1,1),
    nomeDependente VARCHAR(100) NOT NULL,
    dataNascimentoDependente DATE,
    sexoDependente CHAR(1),
    codFuncionario INT,
    CONSTRAINT FK_Dependente_Funcionario
    FOREIGN KEY (codFuncionario)
    REFERENCES tbFuncionario(codFuncionario)
);
GO