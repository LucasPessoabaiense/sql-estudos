-- Desafio 084
-- Pergunta: Produtos por categoria e, dentro dela, por nome
-- Conceito: ORDER BY com duas colunas
-- Resultado: 115 linhas
-- Nota: A ordem em que as colunas aparecem no ORDER BY é a ordem de prioridade; a segunda só desempata o que ficou igual na primeira.

SELECT
    id_categoria,
    nome_produto
FROM produtos
ORDER BY id_categoria ASC, nome_produto ASC;
