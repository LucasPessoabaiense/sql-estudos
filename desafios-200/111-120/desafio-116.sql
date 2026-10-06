-- Desafio 116
-- Pergunta: Faturamento por estado do cliente
-- Conceito: INNER JOIN + GROUP BY + SUM
-- Resultado: 9 linhas
-- Onde travei: Na primeira tentativa coloquei c.id_cliente junto com c.estado no
--   GROUP BY e voltaram 60 linhas, uma por cliente. O GROUP BY e quem define a
--   granularidade do resultado: se eu quero uma linha por estado, so o estado
--   pode estar ali.

SELECT
    c.estado,
    SUM(v.valor_total) AS faturamento
FROM clientes AS c
INNER JOIN vendas AS v
    ON c.id_cliente = v.id_cliente
GROUP BY c.estado
ORDER BY faturamento DESC;
