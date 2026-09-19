-- Desafio 022
-- Pergunta: Data da venda e valor total como Faturamento
-- Conceito: SELECT com alias (AS)
-- Resultado: 160 linhas

SELECT
    data_venda,
    valor_total AS Faturamento
FROM vendas;
