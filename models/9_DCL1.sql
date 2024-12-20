-- criação de usuários faz parte do DDL
-- o que importa aqui é a concessão e remoção de permissões
CREATE USER Ferdinando;
CREATE USER Gabrielzinho;
CREATE USER Irineu;

-- remove todas as permissões do usuário "Ferdinando"
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM Ferdinando;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public FROM Ferdinando;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public FROM Ferdinando;

-- remove todas as permissões do usuário "Gabrielzinho"
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM Gabrielzinho;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public FROM Gabrielzinho;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public FROM Gabrielzinho;

-- dá acesso total ao banco de dados ao usuário "Irineu"
ALTER ROLE Irineu WITH SUPERUSER;