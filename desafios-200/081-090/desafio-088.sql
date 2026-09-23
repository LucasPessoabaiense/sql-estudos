-- Desafio 088
-- Pergunta: Maior valor de venda
-- Conceito: MAX
-- Resultado: 1 linha (R$ 5.100,00)

SELECT MAX(valor_total) AS maior_venda
FROM vendas;
