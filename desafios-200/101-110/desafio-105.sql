-- Desafio 105
-- Pergunta: Quantos produtos têm estoque disponível
-- Conceito: COUNT com WHERE
-- Resultado: 1 linha (114 produtos)
-- Onde travei: Primeira tentativa usava COUNT(DISTINCT nome_produto). Deu certo por acaso, porque nenhum nome se repete. Produto se identifica pelo id, não pelo nome.

SELECT COUNT(*) AS produtos_com_estoque
FROM produtos
WHERE estoque > 0;
