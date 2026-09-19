-- Desafio 027
-- Pergunta: Produtos com preço maior que R$ 100
-- Conceito: WHERE com operador de comparação
-- Resultado: 16 linhas

SELECT
    nome_produto,
    preco
FROM produtos
WHERE preco > 100;
