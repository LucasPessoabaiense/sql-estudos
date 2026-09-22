-- Desafio 070
-- Pergunta: Funcionários em ordem alfabética
-- Conceito: ORDER BY
-- Resultado: 30 linhas

SELECT
    nome_funcionario,
    cargo
FROM funcionarios
ORDER BY nome_funcionario ASC;
