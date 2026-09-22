-- Desafio 079
-- Pergunta: Os 20 produtos com maior estoque
-- Conceito: TOP com ORDER BY
-- Resultado: 20 linhas

SELECT TOP 20
    nome_produto,
    estoque
FROM produtos
ORDER BY estoque DESC;
