
CREATE TABLE Professores (
    id_professor INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especializacao VARCHAR(100)
);


CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    curso VARCHAR(50),
    email VARCHAR(100) UNIQUE
);


CREATE TABLE Disciplinas (
    id_disciplina VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
);


CREATE TABLE Matriculas (
    id_aluno INT,
    codigo_disciplina VARCHAR(10),
    carga_horaria char(3),
    PRIMARY KEY (id_aluno, codigo_disciplina, semestre),
	FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (codigo_disciplina) REFERENCES Disciplinas(codigo_disciplina)
);
