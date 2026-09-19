-- Desafio 031
-- Pergunta: Vendas acima de R$ 1.000
-- Conceito: WHERE com operador de comparação
-- Resultado: 24 linhas
-- Onde travei: Primeira tentativa trouxe id_cliente no lugar de id_venda. A query rodava, mas respondia outra pergunta.

SELECT
    id_venda,
    data_venda,
    valor_total
FROM vendas
WHERE valor_total > 1000;
