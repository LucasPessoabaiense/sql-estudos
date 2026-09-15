# 04 - Subqueries e CTEs

Quando uma consulta precisa do resultado de outra consulta.

## Subquery

Uma consulta dentro da outra. Serve bem para casos curtos, tipo filtrar por um valor calculado.

## CTE (WITH)

Uma consulta nomeada, declarada antes da principal. Faz o mesmo que a subquery, mas dá para ler de cima para baixo.

## O que pratico aqui

- Quebrar uma consulta grande em etapas nomeadas com WITH
- Trocar subquery aninhada por CTE quando a leitura fica difícil
- CTE encadeada, uma usando o resultado da anterior

## Por que prefiro CTE

Consulta é escrita uma vez e lida muitas. CTE me deixa dar nome a cada etapa, e nome bom explica sozinho.

