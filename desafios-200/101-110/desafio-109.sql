-- Desafio 109
-- Pergunta: Estoque médio dos produtos
-- Conceito: AVG com CAST
-- Resultado: 1 linha (146,54 unidades)
-- Onde travei: AVG sobre coluna INT corta os decimais no SQL Server. Sem o CAST sairia 146 em vez de 146,54.

SELECT AVG(CAST(estoque AS DECIMAL(10,2))) AS estoque_medio
FROM produtos;
