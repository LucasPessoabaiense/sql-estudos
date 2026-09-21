-- Desafio 041
-- Pergunta: Clientes fora de MG, SP e RJ
-- Conceito: WHERE com NOT IN
-- Resultado: 57 linhas

SELECT
    nome_cliente,
    estado
FROM clientes
WHERE estado NOT IN ('MG', 'SP', 'RJ');
