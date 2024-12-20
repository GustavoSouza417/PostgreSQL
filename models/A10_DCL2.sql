-- ROLEs são criadas para gerenciar permissões
-- ROLEs são atribuídas para usuários
-- Assim como usuários, ROLEs também não possuem nenhuma permissão quando criadas
-- portanto, é possível usar REVOKE nelas, mas aqui não será usado por não haver necessidade

-- você pode atribuir múltiplas ROLEs para usuários
-- se as permissões das ROLEs forem conflitantes
-- o PostgreSQL sempre optará pela permissão de concessão

-- criando os padrões de usuário
CREATE ROLE administrador;
CREATE ROLE tecnico;
CREATE ROLE cliente;

-- criando os usuários
CREATE USER user1;
CREATE USER user2;
CREATE USER user3;
CREATE USER user4;
CREATE USER user5;
CREATE USER user6;

-- configuração do padrão de usuário "administrador"
ALTER ROLE administrador WITH SUPERUSER;

-- configuração do padrão de usuário "técnico"
GRANT CONNECT ON DATABASE escola TO tecnico;
GRANT INSERT, SELECT ON ALL TABLES IN SCHEMA public TO tecnico;


-- atribuindo as ROLEs aos usuários
GRANT administrador TO user1;
GRANT administrador TO user2;
GRANT tecnico TO user3;
GRANT tecnico TO user4;
GRANT cliente TO user5;
GRANT cliente TO user6;