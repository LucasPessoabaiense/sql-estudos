-- Desafio 036
-- Pergunta: Funcionários com cargo de gerência
-- Conceito: WHERE com IN
-- Resultado: 3 linhas

SELECT
    nome_funcionario,
    cargo
FROM funcionarios
WHERE cargo IN ('Gerente Geral', 'Gerente Loja', 'Gerente Comercial');
