-- criação de usuários, regras e afins fazem parte do DDL
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

-- você pode criar usuários com validade infinita
CREATE USER Helena PASSWORD '555' NOSUPERUSER VALID UNTIL 'INFINITY';

-- você pode criar usuários com validade finita
CREATE USER Raphael PASSWORD '555' NOSUPERUSER VALID UNTIL '21/12/2024';

-- você pode tornar usuários em super usuários após criá-los também
ALTER USER Irineu WITH SUPERUSER;