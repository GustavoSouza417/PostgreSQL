-- ROLEs são criadas para gerenciar permissões
-- ROLEs são atribuídas para usuários

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


-- atribuindo as ROLEs aos usuários
GRANT administrador TO user1;
GRANT administrador TO user2;
GRANT tecnico TO user3;
GRANT tecnico TO user4;
GRANT cliente TO user5;
GRANT cliente TO user6;