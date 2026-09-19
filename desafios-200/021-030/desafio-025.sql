-- Desafio 025
-- Pergunta: Produto, preço e "Quantidade Disponível"
-- Conceito: SELECT com alias (AS)
-- Resultado: 115 linhas

SELECT
    nome_produto AS Produto,
    preco,
    estoque AS "Quantidade Disponível"
FROM produtos;
