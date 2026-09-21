-- Desafio 044
-- Pergunta: Clientes cujo nome começa com A
-- Conceito: WHERE com LIKE
-- Resultado: 5 linhas

SELECT
    nome_cliente,
    cidade
FROM clientes
WHERE nome_cliente LIKE 'A%';
