-- Desafio 114
-- Pergunta: Funcionários com mais de 10 vendas
-- Conceito: GROUP BY com HAVING
-- Resultado: 9 linhas

SELECT
    f.id_funcionario,
    f.nome_funcionario,
    COUNT(v.id_venda) AS quantidade
FROM vendas AS v
INNER JOIN funcionarios AS f
    ON v.id_funcionario = f.id_funcionario
GROUP BY f.id_funcionario, f.nome_funcionario
HAVING COUNT(v.id_venda) > 10;
