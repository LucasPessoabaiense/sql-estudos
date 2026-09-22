-- Desafio 085
-- Pergunta: Funcionários por cargo e, dentro do cargo, por maior salário
-- Conceito: ORDER BY com duas colunas
-- Resultado: 30 linhas
-- Nota: Cada coluna do ORDER BY tem seu próprio ASC ou DESC.

SELECT
    nome_funcionario,
    cargo,
    salario
FROM funcionarios
ORDER BY cargo ASC, salario DESC;
