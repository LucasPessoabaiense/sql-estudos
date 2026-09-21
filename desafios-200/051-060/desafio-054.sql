-- Desafio 054
-- Pergunta: Vendas abaixo de R$ 200
-- Conceito: WHERE com operador de comparação
-- Resultado: 8 linhas

SELECT
    id_venda,
    valor_total
FROM vendas
WHERE valor_total < 200;
