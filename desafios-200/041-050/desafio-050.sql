-- Desafio 050
-- Pergunta: Clientes cadastrados no 2º semestre de 2025
-- Conceito: WHERE com BETWEEN em datas
-- Resultado: 21 linhas
-- Onde travei: Primeira tentativa começava em '2025-01-01' e trouxe o ano inteiro (80 linhas em vez de 21). Segundo semestre começa em julho.

SELECT
    nome_cliente,
    data_cadastro
FROM clientes
WHERE data_cadastro BETWEEN '2025-07-01' AND '2025-12-31';
