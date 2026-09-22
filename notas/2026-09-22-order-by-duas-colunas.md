# 2026-09-22 · Fechando a Missão 3: ordenação em duas colunas

Sessão de prática no SQL Server (SSMS 22), banco `Supermercado3`.
Desafios 066 a 085. Missão 3 concluída.

## O que ficou

**ORDER BY com mais de uma coluna**

```sql
ORDER BY cargo ASC, salario DESC;
```

- A ordem em que escrevo as colunas é a ordem de prioridade.
- A segunda coluna só desempata o que ficou igual na primeira.
- Cada coluna tem seu próprio `ASC` ou `DESC`.
- É assim que sai relatório de gestor: "por região e, dentro da região, por faturamento".

**Ordem das cláusulas**

`SELECT` (com `DISTINCT` colado nele) → `FROM` → `WHERE` → `ORDER BY`.

**Filtro que não está onde parece**

O desafio 067 pede "clientes VIP", mas não existe coluna de perfil na tabela.
O que existe é o nome do cliente começando com "Cliente VIP". A regra de negócio estava escondida dentro de um campo de texto, e a solução foi `LIKE '%VIP%'`.

Isso é mais comum no trabalho do que parece: dado que deveria ser uma coluna própria acaba enfiado dentro de um texto livre.

## Progresso

Missões 1, 2 e 3 concluídas: 85 de 200 desafios.
Próxima: Missão 4, com `SUM`, `COUNT`, `AVG`, `MIN` e `MAX`.
