-- observação: os valores do INSERT só funcionam com aspas simples

-- inserindo os coordenadores
INSERT INTO professor (pro_nome, pro_email, pro_coordenador) VALUES
('Coordenador1', 'coordenador1@gmail.com', NULL),
('Coordenador2', 'coordenador2@gmail.com', NULL),
('Coordenador3', 'coordenador3@gmail.com', NULL);

-- inserindo os professores
INSERT INTO professor (pro_nome, pro_email, pro_coordenador) VALUES
('Professor1', 'professor1@gmail.com', 1),
('Professor2', 'professor2@gmail.com', 1),
('Professor3', 'professor3@gmail.com', 1),
('Professor4', 'professor4@gmail.com', 2),
('Professor5', 'professor5@gmail.com', 2),
('Professor6', 'professor6@gmail.com', 2),
('Professor7', 'professor7@gmail.com', 3),
('Professor8', 'professor8@gmail.com', 3),
('Professor9', 'professor9@gmail.com', 3);

-- inserindo os cursos
INSERT INTO curso (cur_nome, pro_coordenador_id) VALUES
('Análise e Desenvolvimento de Sistemas', 1),
('Segurança da Informação', 2),
('Ciência de Dados', 3);

-- inserindo as disciplinas
INSERT INTO disciplina (dis_nome, pro_id, cur_id) VALUES
('Programação Orientada a Objetos', 4, 1),
('Fator Humano', 5, 2),
('Processamento de Linguagem Natural', 6, 3);