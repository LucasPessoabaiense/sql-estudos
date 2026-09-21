-- Desafio 057
-- Pergunta: Produtos do menor estoque para o maior
-- Conceito: ORDER BY
-- Resultado: 115 linhas

SELECT
    nome_produto,
    estoque
FROM produtos
ORDER BY estoque ASC;
