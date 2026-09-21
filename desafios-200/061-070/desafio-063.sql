-- Desafio 063
-- Pergunta: Funcionários do menor para o maior salário
-- Conceito: ORDER BY
-- Resultado: 30 linhas

SELECT
    nome_funcionario,
    cargo,
    salario
FROM funcionarios
ORDER BY salario ASC;
