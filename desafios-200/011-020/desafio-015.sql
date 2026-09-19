-- Desafio 015
-- Pergunta: Nome do funcionário e data de admissão como "Data de Entrada"
-- Conceito: SELECT com alias (AS)
-- Resultado: 30 linhas

SELECT
    nome_funcionario,
    data_admissao AS "Data de Entrada"
FROM funcionarios;
