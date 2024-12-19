-- apaga o banco de dados
DROP DATABASE IF EXISTS escola;


-- cria o banco de dados
CREATE DATABASE escola
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;


-- apaga as tabelas do banco de dados
DROP TABLE IF EXISTS disciplinas;
DROP TABLE IF EXISTS cursos;
DROP TABLE IF EXISTS professores;


CREATE TABLE professores
(
    -- esse SERIAL é o equivalente ao AUTO_INCREMENT
    pro_id SERIAL PRIMARY KEY NOT NULL,
    pro_nome VARCHAR(60) NOT NULL,
    pro_email VARCHAR(60) UNIQUE NOT NULL,

    pro_coordenador INT NULL,
    CONSTRAINT fk_pro_coordenador FOREIGN KEY (pro_coordenador) REFERENCES professores (pro_id)
);


CREATE TABLE cursos
(
    cur_id SERIAL PRIMARY KEY NOT NULL,
    cur_nome VARCHAR(40) NOT NULL,

    pro_coordenador_id INT NOT NULL,
    CONSTRAINT fk_pro_coordenador_id FOREIGN KEY (pro_coordenador_id) REFERENCES professores (pro_id)
);


CREATE TABLE disciplinas
(
    dis_id SERIAL PRIMARY KEY NOT NULL,
    dis_nome VARCHAR(40) NOT NULL,

    pro_id INT NOT NULL,
    CONSTRAINT fk_pro_id FOREIGN KEY (pro_id) REFERENCES professores (pro_id),

    cur_id INT NOT NULL,
    CONSTRAINT fk_cur_id FOREIGN KEY (cur_id) REFERENCES cursos (cur_id)
);