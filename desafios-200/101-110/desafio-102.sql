-- Desafio 102
-- Pergunta: Código e valor da maior venda
-- Conceito: TOP com ORDER BY
-- Resultado: 1 linha (venda 114, R$ 5.100,00)
-- Onde travei: Primeira tentativa foi TOP 1 sem ORDER BY, que devolve uma venda qualquer. TOP só significa 'os maiores' quando vem com ORDER BY.

SELECT TOP 1
    id_venda,
    valor_total
FROM vendas
ORDER BY valor_total DESC;
