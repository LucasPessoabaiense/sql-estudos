-- Desafio 104
-- Pergunta: Valor total estimado do estoque
-- Conceito: SUM com cálculo
-- Resultado: 1 linha (R$ 755.828,40 parados em estoque)

SELECT SUM(preco*estoque) AS valor_estoque
FROM produtos;
