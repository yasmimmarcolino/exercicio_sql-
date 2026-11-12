-- query 1

SELECT produto.nome, vendedor.nome_loja, categoria.comissao
FROM produto
JOIN vendedor
ON produto.vendedor_id = vendedor.id
JOIN categoria
ON produto.categoria_id = categoria.id
ORDER BY produto.nome;

-- query 2
 
SELECT nome, preco
FROM produto
WHERE preco < 100
ORDER BY preco;

-- query 3

SELECT pedido.id, cliente.nome, pedido.criado_em
FROM pedido
JOIN cliente
ON pedido.cliente_id = cliente.id
WHERE pedido.status = 'entregue'
ORDER BY pedido.criado_em ASC;

-- query 4

SELECT cliente.nome
FROM cliente
LEFT JOIN pedido
ON cliente.id = pedido.cliente_id
WHERE pedido.id IS NULL;

-- query 5 

SELECT status, COUNT(*) AS pedidos
FROM pedido
GROUP BY status
ORDER BY status;

-- query 6 

SELECT pedido_id,
SUM(quantidade * preco_unitario) AS total
FROM item_pedido
GROUP BY pedido_id
ORDER BY total DESC, pedido_id ASC;

-- query 7 

SELECT vendedor.nome_loja,
SUM(item_pedido.quantidade * item_pedido.preco_unitario) AS faturamento
FROM item_pedido
JOIN pedido ON pedido.id = item_pedido.pedido_id
JOIN produto ON produto.id = item_pedido.produto_id
JOIN vendedor ON vendedor.id = produto.vendedor_id
WHERE pedido.status = 'entregue'
GROUP BY vendedor.id, vendedor.nome_loja
ORDER BY faturamento DESC;

-- query 8 

SELECT categoria.nome,
ROUND(SUM(item_pedido.quantidade * item_pedido.preco_unitario * categoria.comissao / 100.0), 2) AS comissao_da_plataforma
FROM item_pedido
JOIN pedido ON pedido.id = item_pedido.pedido_id
JOIN produto ON produto.id = item_pedido.produto_id
JOIN categoria ON categoria.id = produto.categoria_id
WHERE pedido.status = 'entregue'
GROUP BY categoria.id, categoria.nome
ORDER BY categoria.nome;