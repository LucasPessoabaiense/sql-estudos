-- Desafio 039
-- Pergunta: Produtos com estoque de 300 ou mais
-- Conceito: WHERE com operador de comparação
-- Resultado: 12 linhas

SELECT
    nome_produto,
    estoque
FROM produtos
WHERE estoque >= 300;
