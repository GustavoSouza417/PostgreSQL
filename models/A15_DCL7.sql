-- você pode pesquisar por usuários, ROLEs e afins
-- dessa forma, você consegue verificar quais permissões eles possuem

SELECT * FROM pg_users;
SELECT * FROM pg_roles;

-- observação 1: é possível especificar melhor esses comandos para buscar
-- apenas um único usuário ou uma única ROLE

-- observação 2: execute apenas um SELECT desses por vez