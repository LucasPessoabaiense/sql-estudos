-- Desafio 117
-- Pergunta: Quantidade de clientes em cada estado
-- Conceito: GROUP BY + COUNT(*)
-- Resultado: 16 linhas
-- Onde travei: Nada. Vale comparar com o 116: la sairam 9 estados, aqui saem 16.
--   Sao 7 estados que tem cliente cadastrado mas nenhuma venda, e o INNER JOIN
--   do 116 derruba justamente esses.

SELECT
    estado,
    COUNT(*) AS clientes
FROM clientes
GROUP BY estado;
