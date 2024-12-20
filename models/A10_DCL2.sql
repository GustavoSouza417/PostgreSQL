-- apesar do PostgreSQL ainda aceitar o uso de USER
-- a partir de sua versão 8, recomenda-se a utilização de ROLE
-- pois ROLE possui mais categorias de gerenciamento
-- a sintaxe é a mesma para ambos, tanto para o já visto
-- quanto para os conteúdos dos arquivos a seguir

-- criação de usuários
CREATE ROLE Ferdinando;
CREATE ROLE Gabrielzinho;
CREATE ROLE Irineu;

-- você também pode adicionar senhas aos usuários
CREATE ROLE Patricia PASSWORD 'patricia';
CREATE ROLE Roberta PASSWORD 'roberta';
CREATE ROLE Priscila PASSWORD 'priscila';

-- você também pode conceder acesso de super usuário, que possui todas as permissões
CREATE ROLE Jonas PASSWORD '123' SUPERUSER;

-- você também pode negar o acesso de super usuário
CREATE ROLE Bianca PASSWORD '234' NOSUPERUSER;

-- você pode tornar usuários em super usuários após criá-los também
ALTER ROLE Irineu WITH SUPERUSER;