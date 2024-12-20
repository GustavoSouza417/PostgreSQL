-- apesar do PostgreSQL ainda aceitar o uso de USER
-- a partir de sua versão 8, recomenda-se a utilização de ROLE
-- pois ROLE possui mais categorias de gerenciamento
-- a sintaxe é a mesma para ambos, tanto para o já visto
-- quanto para os conteúdos dos arquivos a seguir

-- criação de usuários
CREATE ROLE Ferdinando2;
CREATE ROLE Gabrielzinho2;
CREATE ROLE Irineu2;

-- você também pode adicionar senhas aos usuários
CREATE ROLE Patricia2 PASSWORD 'patricia';
CREATE ROLE Roberta2 PASSWORD 'roberta';
CREATE ROLE Priscila2 PASSWORD 'priscila';

-- você também pode conceder acesso de super usuário, que possui todas as permissões
CREATE ROLE Jonas2 PASSWORD '123' SUPERUSER;

-- você também pode negar o acesso de super usuário
CREATE ROLE Bianca2 PASSWORD '234' NOSUPERUSER;

-- você pode criar usuários com validade infinita
CREATE ROLE Helena2 PASSWORD '555' NOSUPERUSER VALID UNTIL 'INFINITY';

-- você pode criar usuários com validade finita
CREATE ROLE Raphael2 PASSWORD '555' NOSUPERUSER VALID UNTIL '21/12/2024';

-- você pode tornar usuários em super usuários após criá-los também
ALTER ROLE Irineu2 WITH SUPERUSER;