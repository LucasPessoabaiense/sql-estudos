-- Desafio 118
-- Pergunta: Quantidade de funcionarios por cargo
-- Conceito: GROUP BY + COUNT(*)
-- Resultado: 12 linhas
-- Onde travei: A consulta esta certa, mas o resultado engana. 'Vendedor' (7) e
--   'Vendedora' (5) aparecem como cargos diferentes, e o mesmo acontece com
--   'Supervisor'/'Supervisora'. O maior cargo da empresa tem 12 pessoas e nenhum
--   relatorio agrupado por cargo mostra isso: o GROUP BY agrupa por string exata.

SELECT
    cargo,
    COUNT(*) AS funcionarios
FROM funcionarios
GROUP BY cargo;
