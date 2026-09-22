-- Desafio 078
-- Pergunta: Funcionários admitidos mais recentemente primeiro
-- Conceito: ORDER BY
-- Resultado: 30 linhas

SELECT
    nome_funcionario,
    data_admissao
FROM funcionarios
ORDER BY data_admissao DESC;
