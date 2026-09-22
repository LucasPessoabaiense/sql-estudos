-- Desafio 075
-- Pergunta: Funcionários do maior para o menor salário
-- Conceito: ORDER BY
-- Resultado: 30 linhas

SELECT
    nome_funcionario,
    cargo,
    salario
FROM funcionarios
ORDER BY salario DESC;
