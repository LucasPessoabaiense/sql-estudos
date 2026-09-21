-- Desafio 045
-- Pergunta: Produtos das marcas Coca-Cola, Samsung e LG
-- Conceito: WHERE com IN
-- Resultado: 7 linhas

SELECT
    nome_produto,
    id_marca
FROM produtos
WHERE id_marca IN (1, 17, 18);
