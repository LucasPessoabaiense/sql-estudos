-- Desafio 030
-- Pergunta: Clientes da cidade de São Paulo
-- Conceito: WHERE com igualdade de texto
-- Resultado: 9 linhas

SELECT
    nome_cliente,
    cidade
FROM clientes
WHERE cidade = 'São Paulo';
