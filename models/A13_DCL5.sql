-- existem níveis de permissão
-- as permissões são divididas entre permissões de:
-- - A nível de usuário
-- - Banco de dados;
-- - Schema;
-- - Objetos;
-- - Sub-hierarquias para cada objeto.

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




-- criação de usuário
CREATE ROLE NaoAcessaNada;

-- a melhor forma de bloquear um acesso de um usuário
-- é removendo a permissão dele de conexão
REVOKE 

-- comando para remover todas as permissões
REVOKE ALL PRIVILEGES ON SCHEMA public FROM NaoAcessaNada;


-- remove todas as permissões do usuário "algumUsuarioAi"
REVOKE CONNECT ON DATABASE escola FROM algumUsuarioAi;
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM algumUsuarioAi;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public FROM algumUsuarioAi;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public FROM algumUsuarioAi;

-- remove todas as permissões do usuário "Gabrielzinho"
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM Gabrielzinho;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public FROM Gabrielzinho;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public FROM Gabrielzinho;

-- permissões que o usuário "Ferdinando" possui
GRANT CONNECT ON DATABASE escola TO Ferdinando;
GRANT INSERT ON curso TO Ferdinando;
GRANT DELETE ON curso TO Ferdinando;
GRANT UPDATE ON curso TO Ferdinando;