-- existem níveis de permissão
-- as permissões são divididas entre permissões de:
-- - Banco de dados;
-- - Schema;
-- - Objetos (os objetos também tem suas subclassificações de hierarquia)

-- ao remover permissões de maior hierarquia
-- você pode remover todas as permissões abaixo

-- aliás, cada nível de hierarquia possui seu conjunto de privilégios
-- você pode bloquear cada elemento do conjunto individualmente
-- ou pode bloquear tudo com "ALL PRIVILEGES"

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