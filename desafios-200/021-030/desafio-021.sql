-- Desafio 021
-- Pergunta: Nome, cargo e salário como Remuneracao
-- Conceito: SELECT com alias (AS)
-- Resultado: 30 linhas
-- Nota: Alias sem acento para não quebrar no Power BI, Excel ou Python.

SELECT
    nome_funcionario,
    cargo,
    salario AS Remuneracao
FROM funcionarios;
