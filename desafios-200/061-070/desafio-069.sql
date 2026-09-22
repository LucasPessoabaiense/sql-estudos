-- Desafio 069
-- Pergunta: Os 10 produtos com maior estoque
-- Conceito: TOP com ORDER BY
-- Resultado: 10 linhas

SELECT TOP 10
    nome_produto,
    estoque
FROM produtos
ORDER BY estoque DESC;
