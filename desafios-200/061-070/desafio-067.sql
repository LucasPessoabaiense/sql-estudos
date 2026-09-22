-- Desafio 067
-- Pergunta: Estados dos clientes VIP, sem repetir
-- Conceito: DISTINCT com LIKE
-- Resultado: 9 linhas
-- Nota: Não existe coluna de perfil VIP: os clientes VIP são identificados pelo nome, com LIKE '%VIP%'. DISTINCT vai colado no SELECT e o filtro no WHERE.

SELECT DISTINCT
    estado
FROM clientes
WHERE nome_cliente LIKE '%VIP%';
