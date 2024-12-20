-- quando um usuário é criado, ele tem algumas permissões padrões já ativadas
-- essas permissões são o INHERIT e o LOGIN
-- INHERIT: quer dizer que o usuário pode herdar ROLEs
-- LOGIN: quer dizer que o usuário pode logar
-- de resto, por padrão, o usuário não tem nenhum privilégio
-- você deve atribuir o restante para ele

-- criação do usuário
CREATE ROLE algumUsuarioAi PASSWORD '890' NOSUPERUSER NOINHERIT;

-- remove todas as permissões do usuário "Ferdinando"
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

-- você também pode configurar permissões de usuários sobre Views, Procedures e afins
-- você também pode configurar permissões sobre as próprias Views, Procedures e afins