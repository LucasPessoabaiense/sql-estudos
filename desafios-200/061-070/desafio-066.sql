-- Desafio 066
-- Pergunta: Vendas da mais antiga para a mais recente
-- Conceito: ORDER BY
-- Resultado: 160 linhas

SELECT
    id_venda,
    data_venda,
    valor_total
FROM vendas
ORDER BY data_venda ASC;
