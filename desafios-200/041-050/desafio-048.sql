-- Desafio 048
-- Pergunta: Produtos com "Samsung" no nome
-- Conceito: WHERE com LIKE
-- Resultado: 2 linhas

SELECT
    nome_produto,
    preco
FROM produtos
WHERE nome_produto LIKE '%Samsung%';
