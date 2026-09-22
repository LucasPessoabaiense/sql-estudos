-- Desafio 080
-- Pergunta: Clientes mais antigos primeiro
-- Conceito: ORDER BY
-- Resultado: 90 linhas

SELECT
    nome_cliente,
    data_cadastro
FROM clientes
ORDER BY data_cadastro ASC;
