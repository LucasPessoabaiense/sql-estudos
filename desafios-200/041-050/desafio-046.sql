-- Desafio 046
-- Pergunta: Produtos com preço entre R$ 50 e R$ 200
-- Conceito: WHERE com BETWEEN
-- Resultado: 11 linhas

SELECT
    nome_produto,
    preco
FROM produtos
WHERE preco BETWEEN 50 AND 200;
