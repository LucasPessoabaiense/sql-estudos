-- Desafio 065
-- Pergunta: Vendas da maior para a menor
-- Conceito: ORDER BY
-- Resultado: 160 linhas

SELECT
    id_venda,
    id_cliente,
    valor_total
FROM vendas
ORDER BY valor_total DESC;
