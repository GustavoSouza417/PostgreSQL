-- existem níveis de permissão
-- as permissões são divididas entre permissões de:
-- - A nível de usuário
-- - Banco de dados;
-- - Schema;
-- - Tipos de Objetos;
-- - Objetos.

-- ao remover permissões de maior hierarquia
-- você pode remover todas as permissões abaixo, a depender do que fizer

-- aliás, cada nível de hierarquia possui seu conjunto de privilégios
-- você pode bloquear cada elemento do conjunto individualmente
-- ou pode bloquear tudo com "ALL PRIVILEGES"



-- criação de usuário
CREATE ROLE Lino;

-- a nível de usuário (é tudo que usa ALTER)
ALTER ROLE Lino PASSWORD '1234';
ALTER ROLE Lino NOINHERIT;
ALTER ROLE Lino NOSUPERUSER;
ALTER ROLE Lino VALID UNTIL '10/01/2025';
ALTER ROLE Lino NOLOGIN;
ALTER ROLE Lino NOCREATEDB;
ALTER ROLE Lino NOCREATEROLE;
-- não é possível remover todos os privilégios de uma vez

-- a nível de banco de dados
REVOKE CREATE ON DATABASE escola FROM Lino;
REVOKE TEMPORARY ON DATABASE escola FROM Lino; -- impede a criação de tabelas temporárias
REVOKE CONNECT ON DATABASE escola FROM Lino;
REVOKE ALL PRIVILEGES ON DATABASE escola FROM Lino; -- removendo todos os privilégios a nível banco de dados de uma vez

-- a nível de schema
REVOKE USAGE ON SCHEMA public FROM Lino; -- impede o uso de objetos desse schema
REVOKE CREATE ON SCHEMA public FROM Lino;
REVOKE ALL PRIVILEGES ON SCHEMA public FROM Lino; -- remove todos os privilégios a nível do schema

-- a nível de tipos de objetos (removendo só algumas permissões)
REVOKE SELECT, UPDATE, TRUNCATE ON ALL TABLES IN SCHEMA public FROM Lino;
REVOKE EXECUTE ON ALL FUNCTIONS IN SCHEMA public FROM Lino;
-- etc.

-- a nível de tipos de objetos (removendo todas as permissões)
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM Lino;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public FROM Lino;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public FROM Lino; -- abrange Procedures e Functions

-- a nível de objetos (removendo só algumas permissões)
REVOKE TRUNCATE ON TABLE professor FROM Lino;
REVOKE TRIGGER ON TABLE professor FROM Lino;

-- a nível de objetos (removendo todas as permissões)
REVOKE ALL PRIVILEGES ON TABLE professor FROM Lino;