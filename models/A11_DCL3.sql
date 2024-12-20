-- quando um usuário é criado, ele tem algumas permissões padrões já ativadas
-- essas permissões são o INHERIT e o LOGIN
-- INHERIT: quer dizer que o usuário pode herdar ROLEs
-- LOGIN: quer dizer que o usuário pode logar
-- de resto, por padrão, o usuário não tem nenhum privilégio
-- você deve atribuir o restante para ele

-- criação do usuários
CREATE ROLE algumUsuarioAi;

-- você pode alterar os dados do usuário e anexar suas informações posteriormente
-- isso pode ser feito com todos os dados que são atribuidos na criação do objeto
-- o resto precisa ser feito separadamente, com REVOKE ou GRANT
ALTER ROLE algumUsuarioAi PASSWORD '980';
ALTER ROLE algumUsuarioAi NOSUPERUSER; 
ALTER ROLE algumUsuarioAi NOINHERIT;
ALTER ROLE algumUsuarioAi VALID UNTIL 'INFINITY';
ALTER ROLE algumUsuarioAi NOLOGIN; -- remove a permissão de LOGIN
 






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

-- você também pode configurar permissões de usuários sobre Views, Procedures e afins
-- você também pode configurar permissões sobre as próprias Views, Procedures e afins