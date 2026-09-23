# 2026-09-23 · Agregações e GROUP BY

Sessão de prática no SQL Server (SSMS 22), banco `Supermercado3`.
Desafios 086 a 115. Missão 4 concluída, Missão 5 começada.

## A virada de chave

Até a Missão 3, toda consulta devolvia **linhas de uma tabela**.
Agora ela devolve **um número calculado a partir de várias linhas** (Missão 4) ou **um número por grupo** (Missão 5).

## Agregações

| Função | Serve para |
|---|---|
| `SUM` | faturamento, volume total |
| `COUNT` | quantos pedidos, quantos clientes |
| `AVG` | ticket médio, preço médio |
| `MAX` e `MIN` | extremos |

- Sempre com alias: sem ele a coluna sai sem nome.
- `COUNT(*)` conta linhas; `COUNT(coluna)` ignora nulos. A diferença entre os dois revela buraco na base.
- `AVG` sobre coluna INT **corta os decimais** no SQL Server. Precisa de `CAST(coluna AS DECIMAL(10,2))`.
- Dá para calcular dentro da função: `SUM(preco * estoque)` dá o capital parado na prateleira.

## GROUP BY e HAVING

```sql
SELECT
    c.id_cliente,
    c.nome_cliente,
    SUM(v.valor_total) AS total_gasto
FROM vendas AS v
INNER JOIN clientes AS c
    ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nome_cliente
ORDER BY total_gasto DESC;
```

- Toda coluna do SELECT que não está numa agregação precisa estar no GROUP BY.
- `WHERE` filtra linhas **antes** de agrupar; `HAVING` filtra grupos **depois**.
- Depois de agrupar, só dá para ordenar pelas colunas do GROUP BY ou por uma agregação. O `ORDER BY` aceita o alias, porque é a última etapa executada.
- Agrupe por **identificador**, mostre o nome. Dois clientes homônimos virariam uma linha só.
- Agrupando por data, agrupe por ano **e** mês.

**Ordem das cláusulas:** `FROM` → `JOIN` → `WHERE` → `GROUP BY` → `HAVING` → `ORDER BY`

## Onde travei

| Desafio | Erro | Lição |
|---|---|---|
| 102 | `TOP 1` sem `ORDER BY` | TOP devolve "os primeiros que vierem", não "os maiores". |
| 103 | Contei na tabela errada | Perguntaram quem **comprou**: isso está em vendas (60), não em clientes (90). |
| 105 | `DISTINCT` por precaução | Só use DISTINCT de propósito. Por via das dúvidas, ele mascara duplicidade. |
| 109 | `AVG` sem `CAST` | Média de coluna inteira sai truncada sem avisar. |
| 112 | JOIN que não era usado | Se nenhuma coluna do SELECT vem da segunda tabela, o JOIN não deveria estar ali. |
| 113 | `ORDER BY` por coluna que o GROUP BY eliminou | Depois de agrupar, a coluna individual deixa de existir. |

## O que o banco me contou

- 90 clientes cadastrados, mas só **60 compraram**. Trinta nunca compraram nada.
- Dos 30 funcionários, só **10 têm vendas** registradas.
- R$ 755.828,40 parados em estoque.
- Os cargos 'Vendedor' e 'Vendedora' estão separados. Qualquer relatório por cargo sai partido ao meio: R$ 59.520,60 contra R$ 124.957,90. Perceber isso é o trabalho do analista.
