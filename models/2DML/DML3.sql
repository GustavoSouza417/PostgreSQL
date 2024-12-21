-- o EXPLAIN serve para fazer estimativas com o intuito de entender e otimizar consultas
-- essas estimativas indicam o tempo que a consulta levará para ser executada
-- quantas linhas serão exibidas como resultado
-- o tamanho de cada linha de resultado em bytes
-- e afins
-- por fim, ele pode receber parâmetros, como ANALYZE, VERBOSE e semelhantes

-- exibe estimativas referentes a essa operação, mas não executa a operação
EXPLAIN
UPDATE curso
SET cur_nome = 'Teste'
WHERE cur_id = 1;

-- exibe estimativas referentes a essa operação e executa a operação
EXPLAIN ANALYZE
UPDATE curso
SET cur_nome = 'Teste'
WHERE cur_id = 1;

-- exibe informações sobre as tabelas, colunas e ALIAS utilizados (não executa)
EXPLAIN VERBOSE
UPDATE curso
SET cur_nome = 'Teste'
WHERE cur_id = 1;

-- exibe igual ao EXPLAIN sozinho, mas sem visualização de custos (tempo gasto para execução) - (não executa)
EXPLAIN (COSTS OFF)
UPDATE curso
SET cur_nome = 'Teste'
WHERE cur_id = 1;

-- exibe o consumo de buffers durante a execução (não executa)
EXPLAIN (BUFFERS)
UPDATE curso
SET cur_nome = 'Teste'
WHERE cur_id = 1;

-- você pode combiná-los para efetuar a execução (não executa)
EXPLAIN (ANALYZE, VERBOSE, BUFFERS)
UPDATE curso
SET cur_nome = 'Teste'
WHERE cur_id = 1;

-- existem outros, como o TIMING, o FORMAT JSON e etc.