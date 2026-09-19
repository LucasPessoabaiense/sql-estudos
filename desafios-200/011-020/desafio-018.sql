-- Desafio 018
-- Pergunta: Produto e "Estoque Atual"
-- Conceito: SELECT com alias (AS)
-- Resultado: 115 linhas

SELECT
    nome_produto AS Produto,
    estoque AS "Estoque Atual"
FROM produtos;
