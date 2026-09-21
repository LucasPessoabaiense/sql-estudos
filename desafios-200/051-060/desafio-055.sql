-- Desafio 055
-- Pergunta: Produtos acima de R$ 1.000 com estoque disponível
-- Conceito: WHERE com AND
-- Resultado: 6 linhas

SELECT
    nome_produto,
    preco,
    estoque
FROM produtos
WHERE preco > 1000 AND estoque > 0;
