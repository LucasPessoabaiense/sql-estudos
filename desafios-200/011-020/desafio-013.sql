-- Desafio 013
-- Pergunta: Cadastro completo do produto (nome, categoria, marca, preço, estoque)
-- Conceito: SELECT de colunas específicas
-- Resultado: 115 linhas

SELECT
    nome_produto,
    id_categoria,
    id_marca,
    preco,
    estoque
FROM produtos;
