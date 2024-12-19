-- apagando as tabelas renomeadas
DROP TABLE IF EXISTS disciplina;
DROP TABLE IF EXISTS curso;
DROP TABLE IF EXISTS professor;

-- alterando o nome das tabelas
ALTER TABLE professores RENAME TO professor;
ALTER TABLE cursos RENAME TO curso;
ALTER TABLE disciplinas RENAME TO disciplina;

-- removeria todos os dados das tabelas, caso tivessem dados
-- o CASCADE serve para forçar o TRUNCATE, pois tabelas que tem chave estrangeira não podem ser truncadas
TRUNCATE TABLE disciplina CASCADE;
TRUNCATE TABLE curso CASCADE;
TRUNCATE TABLE professor CASCADE;