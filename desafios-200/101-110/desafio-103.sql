-- Desafio 103
-- Pergunta: Quantos clientes diferentes compraram
-- Conceito: COUNT DISTINCT
-- Resultado: 1 linha (60 clientes compraram, de 90 cadastrados)
-- Onde travei: Primeira tentativa contou nome_cliente na tabela clientes (90). Quem comprou está em vendas: são 60. Os outros 30 nunca compraram.

SELECT COUNT(DISTINCT id_cliente) AS clientes_compradores
FROM vendas;
