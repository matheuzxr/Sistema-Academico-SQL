--TABELA DE CURSOS
CREATE TABLE Cursos (
    id_curso INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(50) UNIQUE NOT NULL,
    carga_horaria INT NOT NULL,
    qtd_semestres INT Not NULL,
    modalidade VARCHAR(20) CHECK (modalidade IN ('Presencial', 'EAD', 'Híbrido'))
);

--TESTE DE INSERÇÃO DE VALORES
INSERT INTO Cursos
VALUES
    ('Engenharia de Produção', 3600, 10, 'presencial'),

--VISUALIZAÇÃO DA TABELA
SELECT * FROM Cursos;

--COMPLETANDO A TABELA
INSERT INTO Cursos (nome, carga_horaria, qtd_semestres, modalidade)
VALUES
    ('Medicina', 7200, 12, 'Presencial'),
    ('Fisioterapia', 4000, 8, 'Híbrido'),
    ('Psicologia', 4000, 10, 'EAD'),
    ('Direito', 3700, 10, 'Presencial'),
    ('Administração', 3000, 8, 'EAD'),
    ('Matemática', 3200, 8, 'Presencial'),
    ('Engenharia Civil', 3600, 10, 'Híbrido'),
    ('Zootecnia', 4000, 10, 'Presencial'),
    ('Sistemas de Informação', 3200, 8, 'EAD');