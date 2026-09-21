-- Desafio 037
-- Pergunta: Produtos com "Coca" no nome
-- Conceito: WHERE com LIKE
-- Resultado: 4 linhas
-- Onde travei: Primeira tentativa usava '&Coca%'. O caractere curinga do LIKE é o %; o & é texto comum, então a consulta voltou vazia sem dar erro.

SELECT
    nome_produto,
    id_marca
FROM produtos
WHERE nome_produto LIKE '%Coca%';
