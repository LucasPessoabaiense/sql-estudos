-- Desafio 059
-- Pergunta: Produtos com maior estoque primeiro
-- Conceito: ORDER BY
-- Resultado: 115 linhas
-- Onde travei: Primeira tentativa usava TOP 1. O pedido era ordenar todos os produtos pelo maior estoque, não trazer só o primeiro.

SELECT
    nome_produto,
    estoque
FROM produtos
ORDER BY estoque DESC;
