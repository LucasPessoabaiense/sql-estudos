-- Desafio 056
-- Pergunta: Produtos do mais caro para o mais barato
-- Conceito: ORDER BY
-- Resultado: 115 linhas

SELECT
    nome_produto,
    preco
FROM produtos
ORDER BY preco DESC;
