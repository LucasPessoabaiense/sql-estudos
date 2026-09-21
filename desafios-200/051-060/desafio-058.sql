-- Desafio 058
-- Pergunta: Os 20 produtos mais caros
-- Conceito: TOP com ORDER BY
-- Resultado: 20 linhas
-- Nota: No SQL Server o TOP vem logo depois do SELECT. Em PostgreSQL e MySQL seria LIMIT 20 no fim. TOP sem ORDER BY devolve linhas quaisquer.

SELECT TOP 20
    nome_produto,
    id_categoria,
    preco
FROM produtos
ORDER BY preco DESC;
