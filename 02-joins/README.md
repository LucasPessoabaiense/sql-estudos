# 02 - Joins

Join é juntar linhas de tabelas diferentes usando uma coluna em comum.

| Tipo | O que traz |
|---|---|
| INNER JOIN | Só o que existe nos dois lados |
| LEFT JOIN | Tudo da esquerda, com NULL onde não há correspondência |
| RIGHT JOIN | Tudo da direita |
| FULL JOIN | Tudo dos dois lados |
| SELF JOIN | A tabela com ela mesma |

## O que pratico aqui

- Escolher o join pela pergunta que preciso responder, não pelo costume
- Perceber quando um LEFT JOIN virou INNER por causa de um filtro no WHERE
- Juntar mais de duas tabelas sem me perder na granularidade

## Erro que já me pegou

Contar linhas depois de um join e achar que o número está errado. Quase sempre é o join duplicando registros, não o dado.

