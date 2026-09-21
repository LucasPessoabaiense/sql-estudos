-- Desafio 049
-- Pergunta: Produtos com estoque de 20 ou menos
-- Conceito: WHERE com operador de comparação
-- Resultado: 9 linhas

SELECT
    nome_produto,
    estoque
FROM produtos
WHERE estoque <= 20;
