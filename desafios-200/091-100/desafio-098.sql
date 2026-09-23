-- Desafio 098
-- Pergunta: Total vendido em 2025
-- Conceito: SUM com WHERE
-- Resultado: 1 linha (R$ 98.223,20)

SELECT SUM(valor_total) AS total_vendido
FROM vendas
WHERE data_venda BETWEEN '2025-01-01' AND '2025-12-31';
