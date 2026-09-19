-- Desafio 035
-- Pergunta: Produtos das categorias Bebidas, Alimentos e Carnes
-- Conceito: WHERE com IN
-- Resultado: 42 linhas
-- Onde travei: Tentei JOIN sem ON e com WHERE no nome da tabela. Na Missão 2 a técnica é filtrar pelo ID (1, 2, 3). Número vai sem aspas.

SELECT
    nome_produto,
    id_categoria
FROM produtos
WHERE id_categoria IN (1, 2, 3);

-- versão alternativa com JOIN (prévia da Missão 6)
-- SELECT
--     p.nome_produto,
--     c.nome_categoria
-- FROM produtos AS p
-- JOIN categorias AS c
--     ON c.id_categoria = p.id_categoria
-- WHERE c.nome_categoria IN ('Bebidas', 'Alimentos', 'Carnes');
