# Exercício de SQL

**Autora:** Yasmim Ferreira Marcolino

Atividade para praticar consultas SQL em um banco de dados de vendas, relacionando produtos, clientes, pedidos, vendedores e categorias.

## O que foi feito

O arquivo [exercico.sql](exercico.sql) reúne as oito consultas da Parte A:

1. Catálogo de produtos com loja e comissão da categoria.
2. Produtos que custam menos de R$ 100, do mais barato ao mais caro.
3. Pedidos entregues, do mais antigo ao mais novo.
4. Clientes que nunca fizeram pedidos.
5. Quantidade de pedidos por status.
6. Total de cada pedido, do maior ao menor, com desempate pelo id.
7. Faturamento de cada loja, considerando apenas pedidos entregues.
8. Comissão da plataforma por categoria, arredondada para duas casas.

O desafio extra sobre produtos que nunca foram vendidos ainda não está incluído no arquivo.

## Comandos e recursos usados

| Comando ou recurso | Para que usei |
| --- | --- |
| `SELECT` e `FROM` | Escolher as informações e a tabela de origem. |
| `JOIN` e `ON` | Juntar os dados de tabelas relacionadas pela condição informada. |
| `LEFT JOIN` | Manter todos os clientes, mesmo aqueles sem pedidos. |
| `WHERE` | Filtrar os dados, como produtos abaixo de R$ 100 e pedidos entregues. |
| `IS NULL` | Identificar clientes sem pedidos após o `LEFT JOIN`. |
| `GROUP BY` | Agrupar os dados por status, pedido, loja ou categoria. |
| `COUNT(*)` | Contar os pedidos de cada status. |
| `SUM()` | Somar os valores dos itens para calcular totais, faturamento e comissões. |
| `ROUND(..., 2)` | Arredondar a comissão para duas casas decimais. |
| `ORDER BY`, `ASC` e `DESC` | Ordenar os resultados em ordem crescente ou decrescente. |
| `AS` | Dar nomes às colunas calculadas, como `total` e `faturamento`. |
| `*` e `/` | Multiplicar quantidade pelo preço e calcular a comissão percentual. |

## Como executar

No playground indicado pelo professor, execute primeiro o `setup.sql` fornecido na atividade. Confira se `SELECT COUNT(*) FROM produto;` retorna **6** e depois execute as consultas de `exercico.sql`, comparando os resultados com o enunciado.

O `setup.sql` não está neste repositório. Na consulta 8, uma comissão de `10` representa 10%; no SQLite, valores como `12.00` podem aparecer como `12`.
