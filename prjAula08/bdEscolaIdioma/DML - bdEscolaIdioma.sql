USE bdEscolaIdioma
GO

-- ALUNOS
INSERT INTO tbAluno
(nomeAluno, rgAluno, cpfAluno, logradouroAluno, numLograAluno,
 complementoLograAluno, cepAluno, bairroAluno, cidadeAluno, dataNascAluno)
VALUES
('João Silva',      '12345678901', '11111111111', 'Rua das Flores',    '100', 'Apto 12', '01001000', 'Centro',     'São Paulo', '1985-03-15'),
('Maria Oliveira',  '23456789012', '22222222222', 'Av. Paulista',      '500', 'Sala 10', '01311000', 'Bela Vista', 'São Paulo', '2005-08-20'),
('Carlos Souza',    '34567890123', '33333333333', 'Rua da Paz',        '45',  NULL,      '02020000', 'Santana',    'São Paulo', '1998-12-01'),
('Ana Pereira',     '45678901234', '44444444444', 'Rua Verde',         '200', NULL,      '03030000', 'Mooca',      'São Paulo', '1978-06-10'),
('Lucas Santos',    '56789012345', '55555555555', 'Rua Azul',          '78',  'Casa B',  '04040000', 'Ipiranga',   'São Paulo', '2010-01-25');
GO

-- TELEFONES
INSERT INTO tbTelefoneAluno (numFoneAluno, idAluno)
VALUES
('11999990001', 1),
('11999990002', 2),
('11999990003', 3),
('11999990004', 4),
('11999990005', 5);
GO

-- CURSOS
INSERT INTO tbCurso (nomeCurso, valorCurso)
VALUES
('Inglês', 800.00),
('Espanhol', 650.00),
('Francês', 900.00),
('Alemão', 1200.00);
GO

-- NÍVEIS
INSERT INTO tbNivel (descricaoNivel)
VALUES
('Básico'),
('Intermediário'),
('Avançado');
GO

-- PERÍODOS
INSERT INTO tbPeriodo (descricaoPeriodo)
VALUES
('Manhã'),
('Tarde'),
('Noite');
GO

-- TURMAS
INSERT INTO tbTurma
(descricaoTurma, idCurso, idNivel, idPeriodo, horarioTurma, diaDaSemana)
VALUES
('Inglês Básico Manhã',      1, 1, 1, '08:00', 'Segunda'),
('Inglês Intermediário Noite',1, 2, 3, '19:00', 'Quarta'),
('Espanhol Básico Tarde',    2, 1, 2, '14:00', 'Terça'),
('Francês Avançado Noite',   3, 3, 3, '20:00', 'Quinta'),
('Alemão Básico Manhã',      4, 1, 1, '09:00', 'Sexta');
GO

-- MATRÍCULAS
INSERT INTO tbMatricula
(dataMatricula, idAluno, idTurma)
VALUES
('2024-01-10 09:00:00', 1, 1), -- primeira matrícula
('2024-02-15 14:00:00', 2, 3),
('2024-03-20 19:00:00', 3, 2),
('2024-04-18 20:00:00', 4, 4),
('2024-05-25 09:30:00', 5, 1),
('2024-06-30 10:00:00', 2, 2); -- última matrícula