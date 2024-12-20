-- criação de usuários e regras fazem parte do DDL
-- mas isso está relacionado com DCL

-- criação de usuários
CREATE USER Ferdinando;
CREATE USER Gabrielzinho;
CREATE USER Irineu;

-- você também pode adicionar senhas aos usuários
CREATE USER Patricia PASSWORD 'patricia';
CREATE USER Roberta PASSWORD 'roberta';
CREATE USER Priscila PASSWORD 'priscila';

-- você também pode conceder acesso de super usuário, que possui todas as permissões
CREATE USER Jonas PASSWORD '123' SUPERUSER;

-- você também pode negar o acesso de super usuário
CREATE USER Bianca PASSWORD '234' NOSUPERUSER;

-- você pode tornar usuários em super usuários após criá-los também
ALTER USER Irineu WITH SUPERUSER;





-- remove todas as permissões do usuário "Ferdinando"
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM Ferdinando;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public FROM Ferdinando;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public FROM Ferdinando;

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