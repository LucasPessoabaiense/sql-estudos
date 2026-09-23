-- Desafio 106
-- Pergunta: Valor médio das vendas acima de R$ 1.000
-- Conceito: AVG com WHERE
-- Resultado: 1 linha (R$ 2.168,81)

SELECT AVG(valor_total) AS valor_medio
FROM vendas
WHERE valor_total > 1000;
