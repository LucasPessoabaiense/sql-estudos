-- Desafio 068
-- Pergunta: Os 15 produtos mais baratos
-- Conceito: TOP com ORDER BY
-- Resultado: 15 linhas

SELECT TOP 15
    nome_produto,
    preco
FROM produtos
ORDER BY preco ASC;
