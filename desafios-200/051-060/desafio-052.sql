-- Desafio 052
-- Pergunta: Funcionários admitidos antes de julho de 2025
-- Conceito: WHERE com operador de comparação
-- Resultado: 21 linhas

SELECT
    nome_funcionario,
    data_admissao
FROM funcionarios
WHERE data_admissao < '2025-07-01';
