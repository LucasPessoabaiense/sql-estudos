-- Desafio 111
-- Pergunta: Faturamento total por funcionário
-- Conceito: INNER JOIN com GROUP BY
-- Resultado: 10 linhas (só 10 dos 30 funcionários têm vendas)

SELECT
    f.nome_funcionario,
    SUM(v.valor_total) AS faturamento_total
FROM funcionarios AS f
INNER JOIN vendas AS v
    ON f.id_funcionario = v.id_funcionario
GROUP BY f.nome_funcionario;
