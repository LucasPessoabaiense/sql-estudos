# 06 - Performance e Índices

Consulta que funciona e consulta que funciona rápido são coisas diferentes. Aqui estudo a segunda.

## O que pratico aqui

- Ler o plano de execução com EXPLAIN e EXPLAIN ANALYZE
- Diferença entre varredura de tabela inteira e uso de índice
- Quando criar índice e quando ele atrapalha, já que todo índice custa na escrita
- Índice composto e a importância da ordem das colunas

## Coisas que matam a performance

- Função aplicada na coluna dentro do WHERE, que impede o uso do índice
- SELECT * quando só preciso de três colunas
- Filtro com LIKE começando por curinga

## Como meço

Rodo a consulta, anoto o tempo, otimizo e comparo. Sem medir antes e depois não dá para dizer que melhorou.
