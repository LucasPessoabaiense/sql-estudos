-- Desafio 032
-- Pergunta: Produtos com estoque zerado
-- Conceito: WHERE com operador de comparação
-- Resultado: 1 linha

SELECT
    nome_produto,
    estoque
FROM produtos
WHERE estoque = 0;
