-- Desafio 110
-- Pergunta: Faturamento das vendas feitas por vendedores
-- Conceito: INNER JOIN com SUM
-- Resultado: 1 linha (R$ 124.957,90 incluindo Vendedor e Vendedora)
-- Onde travei: O gabarito filtra só cargo = 'Vendedor' e dá R$ 59.520,60. Usei LIKE '%vendedor%' porque a base separa 'Vendedor' e 'Vendedora', e o gestor quer o time inteiro. Problema de qualidade de dado: o mesmo papel virou duas categorias.

SELECT SUM(v.valor_total) AS faturamento_vendedores
FROM vendas AS v
INNER JOIN funcionarios AS f
    ON f.id_funcionario = v.id_funcionario
WHERE f.cargo LIKE '%vendedor%';
