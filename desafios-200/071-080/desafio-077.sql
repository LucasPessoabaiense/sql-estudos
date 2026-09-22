-- Desafio 077
-- Pergunta: Cidades sem repetir, em ordem alfabética
-- Conceito: DISTINCT com ORDER BY
-- Resultado: 20 linhas

SELECT DISTINCT
    cidade
FROM clientes
ORDER BY cidade ASC;
