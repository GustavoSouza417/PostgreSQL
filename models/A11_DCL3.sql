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
ALTER ROLE algumUsuarioAi NOCREATEDB; -- não cria bancos de dados
ALTER ROLE algumUsuarioAi NOCREATEROLE; -- não cria ROLEs

-- inversão das permissões demonstradas acima
-- esse "WITH" é opcional, tanto que acima não utilizei
ALTER ROLE algumUsuarioAi WITH PASSWORD NULL;
ALTER ROLE algumUsuarioAi WITH SUPERUSER; 
ALTER ROLE algumUsuarioAi WITH INHERIT;
ALTER ROLE algumUsuarioAi WITH VALID UNTIL '20/12/2024';
ALTER ROLE algumUsuarioAi WITH LOGIN;
ALTER ROLE algumUsuarioAi WITH CREATEDB;
ALTER ROLE algumUsuarioAi WITH CREATEROLE;

-- você também pode configurar permissões de usuários sobre Views, Procedures e afins
-- você também pode configurar permissões sobre as próprias Views, Procedures e afins