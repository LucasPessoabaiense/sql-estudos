-- Desafio 006
-- Pergunta: Nome e preço dos produtos renomeados para Produto e Valor
-- Conceito: SELECT com alias (AS)
-- Resultado: 115 linhas

SELECT
    nome_produto AS Produto,
    preco AS Valor
FROM produtos;
