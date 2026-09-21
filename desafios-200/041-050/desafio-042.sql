-- Desafio 042
-- Pergunta: Vendas do 1º trimestre de 2025
-- Conceito: WHERE com BETWEEN em datas
-- Resultado: 35 linhas

SELECT
    id_venda,
    data_venda,
    valor_total
FROM vendas
WHERE data_venda BETWEEN '2025-01-01' AND '2025-03-31'
ORDER BY data_venda ASC;
