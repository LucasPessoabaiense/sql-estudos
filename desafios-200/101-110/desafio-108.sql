-- Desafio 108
-- Pergunta: Quantos produtos acima de R$ 500
-- Conceito: COUNT com WHERE
-- Resultado: 1 linha (8 produtos)

SELECT COUNT(*) AS quantidade_produtos
FROM produtos
WHERE preco > 500;
