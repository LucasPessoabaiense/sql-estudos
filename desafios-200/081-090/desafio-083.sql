-- Desafio 083
-- Pergunta: Datas de venda, da mais antiga para a mais recente
-- Conceito: ORDER BY
-- Resultado: 160 linhas

SELECT
    data_venda
FROM vendas
ORDER BY data_venda ASC;
