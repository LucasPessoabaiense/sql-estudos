-- Desafio 112
-- Pergunta: Clientes com mais de uma compra
-- Conceito: GROUP BY com HAVING
-- Resultado: 60 linhas
-- Onde travei: A primeira versão trazia id_cliente e fazia um JOIN que não era usado. Se nenhuma coluna do SELECT vem da segunda tabela, o JOIN provavelmente não deveria estar ali.

SELECT
    c.id_cliente,
    c.nome_cliente,
    COUNT(*) AS quantidade
FROM vendas AS v
INNER JOIN clientes AS c
    ON v.id_cliente = c.id_cliente
GROUP BY c.id_cliente, c.nome_cliente
HAVING COUNT(*) > 1;
