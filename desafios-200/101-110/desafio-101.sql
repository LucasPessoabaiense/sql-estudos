-- Desafio 101
-- Pergunta: Ticket médio das vendas
-- Conceito: AVG
-- Resultado: 1 linha (R$ 780,99)

SELECT AVG(valor_total) AS ticket_medio
FROM vendas;
