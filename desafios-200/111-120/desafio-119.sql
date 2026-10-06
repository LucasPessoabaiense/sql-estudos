-- Desafio 119
-- Pergunta: Quantidade de produtos em cada categoria
-- Conceito: INNER JOIN + GROUP BY + COUNT
-- Resultado: 14 linhas
-- Onde travei: Fiquei na duvida se no ON eu ligava p.id_categoria com
--   c.nome_categoria. O ON liga chave com chave (id com id); o nome da categoria
--   e o que eu quero ver, entao ele vai no SELECT e no GROUP BY.
--   Obs: sao 14 das 15 categorias. A "Categoria Sem Produtos" nao tem produto
--   nenhum e o INNER JOIN a elimina.

SELECT
    c.nome_categoria,
    COUNT(*) AS quantidade_produtos
FROM produtos AS p
INNER JOIN categorias AS c
    ON p.id_categoria = c.id_categoria
GROUP BY c.nome_categoria
ORDER BY quantidade_produtos DESC;
