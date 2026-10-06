# 2026-10-06 · Granularidade do GROUP BY

Sessão de prática no SQL Server (SSMS 22), banco `Supermercado3`.
Desafios 116 a 120, dentro da Missão 5. Primeira sessão depois de uns dias parado.

## A pergunta que resolve o GROUP BY

Antes de escrever a consulta, responder uma coisa só: **quantas linhas eu quero no resultado?**

A resposta é o GROUP BY. Nada mais.

No 116 eu queria faturamento por estado, ou seja uma linha por estado. Escrevi:

```sql
GROUP BY c.id_cliente, c.estado
```

e voltaram 60 linhas, uma por cliente. O `id_cliente` é único, então cada grupo tinha um cliente só e o `SUM` não somava nada. Tirando o `id_cliente`:

```sql
SELECT
    c.estado,
    SUM(v.valor_total) AS faturamento
FROM clientes AS c
INNER JOIN vendas AS v
    ON c.id_cliente = v.id_cliente
GROUP BY c.estado
ORDER BY faturamento DESC;
```

9 linhas. MG na frente com R$ 19.743,00.

**Regra:** o GROUP BY define a granularidade. Cada coluna que eu acrescento ali quebra os grupos em pedaços menores. Se eu quero uma linha por estado, só o estado pode estar no GROUP BY.

Isso não é o mesmo que a regra da Missão 4 ("toda coluna do SELECT fora de agregação precisa estar no GROUP BY"). Aquela diz o **mínimo** que precisa estar lá. Esta diz o **máximo**: nada além do que define a linha que eu quero.

## O ON liga chave com chave

No 119 travei numa dúvida boba: no `ON`, eu ligo `p.id_categoria` com `c.nome_categoria`?

Não. O `ON` existe para dizer **como as duas tabelas se encontram**, e isso é sempre id com id. O nome da categoria é o que eu quero *ver*, então ele vai no `SELECT` e no `GROUP BY`.

```sql
FROM produtos AS p
INNER JOIN categorias AS c
    ON p.id_categoria = c.id_categoria   -- como se encontram
GROUP BY c.nome_categoria                 -- o que eu quero ver
```

Comparar os tipos ajuda a lembrar: `id_categoria` é INT, `nome_categoria` é VARCHAR. Não tem como um ser igual ao outro.

## CAST: eu tinha invertido

Achei que `AVG(preco)` precisava de `CAST` porque `preco` tem decimais. É o contrário:

- Coluna **INT** → `AVG` trunca o resultado → precisa de `CAST(coluna AS DECIMAL(10,2))`.
- Coluna **DECIMAL** → `AVG` já devolve decimal → não precisa de nada.

O `CAST` conserta a divisão inteira. Se a coluna já é decimal, não existe o problema que ele resolve.

## O que o INNER JOIN esconde

Dois resultados da sessão que parecem erro e não são:

| Consulta | Resultado | Por quê |
|---|---|---|
| 117, clientes por estado | 16 estados | tabela `clientes` inteira |
| 116, faturamento por estado | 9 estados | 7 estados têm cliente cadastrado e nenhuma venda |
| 119, produtos por categoria | 14 categorias | a "Categoria Sem Produtos" não tem produto nenhum |

O `INNER JOIN` só mantém o que casa dos dois lados, então grupo vazio desaparece do relatório. Se a pergunta for "quais estados não vendem nada", o INNER JOIN é a ferramenta errada: aí é `LEFT JOIN`.

## Dado sujo não se agrupa

O 118 conta funcionários por cargo. A consulta está certa e o resultado engana:

```
Vendedor     7
Vendedora    5
Supervisor   1
Supervisora  1
```

O maior cargo da empresa tem 12 pessoas e nenhum relatório agrupado por `cargo` mostra isso. O `GROUP BY` agrupa por string exata, não por sentido. Ele não tem como adivinhar que 'Vendedor' e 'Vendedora' são a mesma coisa.

Isso é rotina em base de produção. Perceber é trabalho do analista; arrumar é `CASE`, tabela de domínio ou limpeza na origem.

## Detalhe de escrita: sempre `AS`

Escrevi `COUNT(*) clientes` sem o `AS` em dois desafios. O SQL Server aceita, mas esconde um erro feio: se eu esquecer uma vírgula no `SELECT`, a coluna seguinte silenciosamente vira alias da anterior e a consulta roda sem reclamar.

```sql
SELECT nome_cliente cidade FROM clientes;   -- uma coluna, não duas
```

Com `AS` sempre, isso vira erro de sintaxe em vez de resultado errado.

## Resumo

| Desafio | Conceito | Linhas |
|---|---|---|
| 116 | INNER JOIN + GROUP BY + SUM | 9 |
| 117 | GROUP BY + COUNT | 16 |
| 118 | GROUP BY + COUNT | 12 |
| 119 | INNER JOIN + GROUP BY + COUNT | 14 |
| 120 | GROUP BY + AVG | 14 |

Próximo: 121 a 125, que são esses mesmos com `HAVING` no fim.
