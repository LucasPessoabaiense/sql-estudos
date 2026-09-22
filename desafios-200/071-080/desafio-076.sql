-- Desafio 076
-- Pergunta: Vendas das menores para as maiores
-- Conceito: ORDER BY
-- Resultado: 160 linhas

SELECT
    id_venda,
    data_venda,
    valor_total
FROM vendas
ORDER BY valor_total ASC;
