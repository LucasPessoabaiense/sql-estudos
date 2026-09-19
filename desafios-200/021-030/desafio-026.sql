-- Desafio 026
-- Pergunta: Produtos com estoque menor que 50
-- Conceito: WHERE com operador de comparação
-- Resultado: 19 linhas

SELECT
    nome_produto,
    estoque
FROM produtos
WHERE estoque < 50;
