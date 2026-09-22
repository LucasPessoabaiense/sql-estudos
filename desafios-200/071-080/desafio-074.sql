-- Desafio 074
-- Pergunta: Produtos em ordem alfabética
-- Conceito: ORDER BY
-- Resultado: 115 linhas

SELECT
    nome_produto,
    id_categoria,
    estoque
FROM produtos
ORDER BY nome_produto ASC;
