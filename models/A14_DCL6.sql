-- você pode atribuir uma ou mais ROLEs para usuários, como uma herança
-- assim, tudo que a outra ROLE tem de permissões passa para a outra ROLE
-- se duas ROLEs concederem permissões para uma terceira ROLE
-- e elas tiverem permissões conflitantes
-- o PostgreSQL sempre optará pela permissão de concessão

-- criando os padrões de usuário
CREATE ROLE administrador;
CREATE ROLE fornecedor;
CREATE ROLE tecnico;
CREATE ROLE cliente;

-- criando os usuários
CREATE ROLE Gabriel;
CREATE ROLE Gabriela;

-- configuração do padrão de usuário "administrador"
ALTER ROLE administrador SUPERUSER;

-- configuração do padrão de usuário "fornecedor"
GRANT SELECT ON ALL TABLES IN SCHEMA public TO fornecedor;

-- configuração do padrão de usuário "técnico"
GRANT CONNECT ON DATABASE escola TO tecnico;
GRANT INSERT, SELECT ON ALL TABLES IN SCHEMA public TO tecnico;

-- configuração do padrão de usuário "cliente"
REVOKE CONNECT ON DATABASE escola FROM cliente;
REVOKE INSERT, SELECT ON ALL TABLES IN SCHEMA public FROM cliente;

-- atribuindo uma ROLE a um usuário
GRANT administrador TO Gabriel;

-- atribuindo múltiplas ROLEs a um usuário
GRANT fornecedor, tecnico TO Gabriel;

-- atribuindo múltiplas ROLEs conflitantes a um usuário
GRANT tecnico, cliente TO Gabriela;