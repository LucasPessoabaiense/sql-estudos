-- Desafio 040
-- Pergunta: Produtos caros e com pouco estoque (risco de reposição)
-- Conceito: WHERE com AND
-- Resultado: 8 linhas

SELECT
    nome_produto,
    preco,
    estoque
FROM produtos
WHERE preco > 500 AND estoque < 50;
