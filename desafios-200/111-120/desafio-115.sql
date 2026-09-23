-- Desafio 115
-- Pergunta: Faturamento por mês
-- Conceito: GROUP BY com função de data
-- Resultado: 16 linhas (jan/2025 a abr/2026)
-- Onde travei: Agrupar por ano E mês. Só por mês, janeiro de 2025 e de 2026 virariam uma linha só.

SELECT
    YEAR(data_venda) AS ano, MONTH(data_venda) AS mes, SUM(valor_total) AS faturamento
FROM vendas
GROUP BY YEAR(data_venda), MONTH(data_venda)
ORDER BY ano, mes;
