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
GRANT TRUNCATE ON professor TO Julia; -- pode truncar a tabela
GRANT REFERENCES ON professor TO Julia; -- pode usar essa tabela como chave estrangeira em outras tabelas
GRANT TRIGGER ON professor TO Julia; -- pode usar essa tabela em Triggers

-- você pode conceder várias permissões de uma vez
GRANT INSERT, SELECT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER ON curso TO Julia;

-- removendo permissões com o REVOKE
REVOKE INSERT ON professor FROM Julia;
REVOKE SELECT ON professor FROM Julia;
REVOKE UPDATE ON professor FROM Julia;
REVOKE DELETE ON professor FROM Julia;
REVOKE TRUNCATE ON professor FROM Julia;
REVOKE REFERENCES ON professor FROM Julia;
REVOKE TRIGGER ON professor FROM Julia;

-- você pode remover várias permissões de uma vez
REVOKE INSERT, SELECT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER ON curso FROM Julia;

-- ao invés de escrever manualmente todos os privilégios
-- sabendo que tabelas possuem apenas as permissões acima
-- você pode usar "ALL PRIVILEGES"
-- que dará o mesmo resultado
GRANT ALL PRIVILEGES ON professor TO Julia;

-- o mesmo serve para o REVOKE
REVOKE ALL PRIVILEGES ON curso FROM Julia;