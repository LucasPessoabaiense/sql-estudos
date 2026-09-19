-- Desafio 010
-- Pergunta: Código da venda e valor total como "Valor da Venda"
-- Conceito: SELECT com alias (AS)
-- Resultado: 160 linhas
-- Nota: Alias com espaço precisa de aspas duplas ou colchetes.

SELECT
    id_venda,
    valor_total AS "Valor da Venda"
FROM vendas;
