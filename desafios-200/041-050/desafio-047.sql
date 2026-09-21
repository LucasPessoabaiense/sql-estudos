-- Desafio 047
-- Pergunta: Vendas de 2026
-- Conceito: WHERE com BETWEEN em datas
-- Resultado: 40 linhas

SELECT
    id_venda,
    data_venda,
    valor_total
FROM vendas
WHERE data_venda BETWEEN '2026-01-01' AND '2026-12-31';
