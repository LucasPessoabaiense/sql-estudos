-- Desafio 028
-- Pergunta: Produtos com preço menor que R$ 5
-- Conceito: WHERE com operador de comparação
-- Resultado: 20 linhas

SELECT
    nome_produto,
    preco
FROM produtos
WHERE preco < 5;
