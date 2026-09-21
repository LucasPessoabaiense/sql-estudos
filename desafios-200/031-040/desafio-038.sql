-- Desafio 038
-- Pergunta: Produtos com "Chocolate" no nome
-- Conceito: WHERE com LIKE
-- Resultado: 4 linhas

SELECT
    nome_produto,
    preco
FROM produtos
WHERE nome_produto LIKE '%Chocolate%';
