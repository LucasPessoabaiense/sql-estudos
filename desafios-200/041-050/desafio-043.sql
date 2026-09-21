-- Desafio 043
-- Pergunta: Produtos com estoque entre 100 e 200
-- Conceito: WHERE com BETWEEN
-- Resultado: 55 linhas

SELECT
    nome_produto,
    estoque
FROM produtos
WHERE estoque BETWEEN 100 AND 200;
