-- Desafio 051
-- Pergunta: Produtos de Eletrônicos, Utilidades Domésticas e Higiene Pessoal
-- Conceito: WHERE com IN
-- Resultado: 20 linhas
-- Onde travei: Enunciado pedia três colunas; a primeira versão trazia id_categoria a mais.

SELECT
    nome_produto,
    preco,
    estoque
FROM produtos
WHERE id_categoria IN (9, 11, 12);
