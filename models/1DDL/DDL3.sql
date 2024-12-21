-- comentários são úteis para documentação e consulta posterior
-- podem ser adicionados para qualquer objeto do banco de dados

-- adicionando comentários às tabelas
COMMENT ON TABLE professor IS 'Tabela que armazena informações de professores';
COMMENT ON TABLE curso IS 'Tabela que armazena informações de cursos';
COMMENT ON TABLE disciplina IS 'Tabela que armazena informações de disciplinas';

-- adicionando comentários às colunas da tabela "professor"
COMMENT ON COLUMN professor.pro_id IS 'Coluna de chave primária da tabela de professores';
COMMENT ON COLUMN professor.pro_nome IS 'Coluna que armazena o nome dos professores';
COMMENT ON COLUMN professor.pro_email IS 'Coluna que armazena o e-mail dos professores';
COMMENT ON COLUMN professor.pro_coordenador IS 'Coluna que armazena a chave estrangeira do coordenador de cada professor';