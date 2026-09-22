-- Desafio 082
-- Pergunta: Produtos mais caros primeiro
-- Conceito: ORDER BY
-- Resultado: 115 linhas

SELECT
    nome_produto,
    id_marca,
    preco
FROM produtos
ORDER BY preco DESC;
