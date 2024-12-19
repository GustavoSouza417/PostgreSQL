-- apagando as tabelas renomeadas
DROP TABLE IF EXISTS disciplina;
DROP TABLE IF EXISTS curso;
DROP TABLE IF EXISTS professor;

-- alterando o nome das tabelas
ALTER TABLE professores RENAME TO professor;
ALTER TABLE cursos RENAME TO curso;
ALTER TABLE disciplinas RENAME TO disciplina;

-- adição de colunas
ALTER TABLE professor ADD pro_senha VARCHAR(20) NOT NULL;

-- alteração de colunas
ALTER TABLE professor ALTER COLUMN pro_senha TYPE INTEGER USING pro_senha::INTEGER; -- muda o tipo de dado
ALTER TABLE professor RENAME COLUMN pro_senha TO senha;

-- remoção de colunas
ALTER TABLE professor DROP COLUMN pro_senha;

-- removeria todos os dados das tabelas, caso tivessem dados
-- o CASCADE serve para forçar o TRUNCATE, pois tabelas que tem chave estrangeira não podem ser truncadas
TRUNCATE TABLE disciplina CASCADE;
TRUNCATE TABLE curso CASCADE;
TRUNCATE TABLE professor CASCADE;