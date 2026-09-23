-- Desafio 113
-- Pergunta: Quanto cada cliente já gastou
-- Conceito: GROUP BY com ORDER BY
-- Resultado: 60 linhas
-- Onde travei: Primeira tentativa usava COUNT(*) (quantas compras) em vez de SUM (quanto gastou), e ordenava por v.valor_total, que não existe mais depois do GROUP BY. Depois de agrupar só dá para ordenar pelas colunas do GROUP BY ou por uma agregação (aqui, pelo alias).

SELECT
    c.id_cliente,
    c.nome_cliente,
    SUM(v.valor_total) AS total_gasto
FROM vendas AS v
INNER JOIN clientes AS c
    ON v.id_cliente = c.id_cliente
GROUP BY c.id_cliente, c.nome_cliente
ORDER BY total_gasto DESC;
