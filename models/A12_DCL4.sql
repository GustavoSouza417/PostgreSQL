-- GRANT: concede permissões
-- sempre usa o TO

-- REVOKE: nega permissões
-- sempre usa o FROM

-- criação de usuário
CREATE ROLE Julia;

-- permissões gerais
ALTER ROLE Julia PASSWORD '12345678';
ALTER ROLE Julia NOINHERIT;
ALTER ROLE Julia NOSUPERUSER;
ALTER ROLE Julia VALID UNTIL 'INFINITY';
ALTER ROLE Julia LOGIN;
ALTER ROLE Julia NOCREATEDB;
ALTER ROLE Julia NOCREATEROLE;

-- concedendo permissões com GRANT na tabela de professores
GRANT INSERT ON professor TO Julia;
GRANT SELECT ON professor TO Julia;
GRANT UPDATE ON professor TO Julia;
GRANT DELETE ON professor TO Julia;

-- você pode conceder várias permissões de uma vez
GRANT INSERT, SELECT, UPDATE, DELETE ON curso TO Julia;