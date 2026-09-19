-- Desafio 005
-- Pergunta: Nome do produto e estoque com nome de coluna amigável
-- Conceito: SELECT com alias (AS)
-- Resultado: 115 linhas

SELECT
    nome_produto,
    estoque AS quantidade
FROM produtos;
