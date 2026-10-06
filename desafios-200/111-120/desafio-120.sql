-- Desafio 120
-- Pergunta: Preco medio dos produtos por categoria
-- Conceito: GROUP BY + AVG
-- Resultado: 14 linhas
-- Onde travei: Achei que precisava de CAST porque preco tem decimais. E o
--   contrario: o CAST serve quando a coluna e INT, porque ai o AVG trunca o
--   resultado. preco ja e DECIMAL, entao nao precisa.
--   Mantive id_categoria em vez do nome para ficar fiel ao enunciado, que pede
--   "categoria" e nao obriga o JOIN.

SELECT
    id_categoria,
    AVG(preco) AS preco_medio
FROM produtos
GROUP BY id_categoria;
