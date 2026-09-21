-- Desafio 053
-- Pergunta: Clientes com "Silva" no nome
-- Conceito: WHERE com LIKE
-- Resultado: 2 linhas

SELECT
    nome_cliente,
    estado
FROM clientes
WHERE nome_cliente LIKE '%Silva%';
