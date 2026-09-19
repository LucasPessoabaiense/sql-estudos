-- Desafio 033
-- Pergunta: Produtos com preço entre R$ 10 e R$ 20
-- Conceito: WHERE com BETWEEN
-- Resultado: 27 linhas

SELECT
    nome_produto,
    preco
FROM produtos
WHERE preco BETWEEN 10 AND 20;
