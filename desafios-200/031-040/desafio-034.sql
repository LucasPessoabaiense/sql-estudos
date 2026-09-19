-- Desafio 034
-- Pergunta: Clientes cadastrados no 1º trimestre de 2025
-- Conceito: WHERE com BETWEEN em datas
-- Resultado: 44 linhas
-- Onde travei: Primeira tentativa terminava em '2025-03-01' e perdia 13 clientes (31 linhas em vez de 44). Intervalo de mês fecha no último dia.

SELECT
    nome_cliente,
    data_cadastro
FROM clientes
WHERE data_cadastro BETWEEN '2025-01-01' AND '2025-03-31';
