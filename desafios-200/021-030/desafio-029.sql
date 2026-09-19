-- Desafio 029
-- Pergunta: Clientes de MG
-- Conceito: WHERE com igualdade de texto
-- Resultado: 12 linhas

SELECT
    nome_cliente,
    cidade,
    estado
FROM clientes
WHERE estado = 'MG';
