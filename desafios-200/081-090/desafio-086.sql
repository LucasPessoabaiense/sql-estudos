-- Desafio 086
-- Pergunta: Valor total vendido pela loja
-- Conceito: SUM
-- Resultado: 1 linha (R$ 124.957,90)

SELECT SUM(valor_total) AS faturamento_total
FROM vendas;
