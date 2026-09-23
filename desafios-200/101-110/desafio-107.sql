-- Desafio 107
-- Pergunta: Menor e maior venda
-- Conceito: MIN e MAX na mesma consulta
-- Resultado: 1 linha (R$ 95,80 e R$ 5.100,00)

SELECT MIN(valor_total) AS menor_venda, MAX(valor_total) AS maior_venda
FROM vendas;
