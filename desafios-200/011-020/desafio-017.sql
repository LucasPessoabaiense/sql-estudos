-- Desafio 017
-- Pergunta: Nome do produto e preço como "Valor Unitário"
-- Conceito: SELECT com alias (AS)
-- Resultado: 115 linhas

SELECT
    nome_produto,
    preco AS "Valor Unitário"
FROM produtos;
