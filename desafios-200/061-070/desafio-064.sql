-- Desafio 064
-- Pergunta: Clientes mais recentes primeiro
-- Conceito: ORDER BY
-- Resultado: 90 linhas

SELECT
    nome_cliente,
    data_cadastro
FROM clientes
ORDER BY data_cadastro DESC;
