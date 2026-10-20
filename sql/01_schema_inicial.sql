-- Criação de tabelas de exemplo
CREATE TABLE IF NOT EXISTS departamentos (
    id_departamento SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS alunos (
    id_aluno SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_departamento INT REFERENCES departamentos(id_departamento),
    data_ingresso DATE DEFAULT CURRENT_DATE
);

-- Carga inicial de dados
INSERT INTO departamentos (nome) VALUES 
('Tecnologia da Informação'),
('Engenharia de Software');

INSERT INTO alunos (nome, id_departamento) VALUES 
('Lucas Silveira', 1),
('Mariana Costa', 1),
('Carlos Eduardo', 2);

-- Consulta de teste
SELECT 
    a.id_aluno,
    a.nome AS nome_aluno,
    d.nome AS departamento
FROM alunos a
JOIN departamentos d ON a.id_departamento = d.id_departamento;
