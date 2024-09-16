use full_join_vaz;

CREATE TABLE clientes (
    cliente_id INT,
    nome VARCHAR(50)
);

CREATE TABLE pedidos (
    pedido_id INT,
    cliente_id INT,
    produto VARCHAR(50)
);

INSERT INTO clientes (cliente_id, nome) VALUES
(1, 'Ana'),
(2, 'Bruno'),
(3, 'Carlos'),
(4, 'Diana');

INSERT INTO pedidos (pedido_id, cliente_id, produto) VALUES
(101, 1, 'Produto A'),
(102, 2, 'Produto B'),
(103, 5, 'Produto C');

SELECT clientes.cliente_id, clientes.nome, pedidos.pedido_id, pedidos.produto
FROM clientes
FULL JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id;

SELECT clientes.nome, pedidos.produto
FROM clientes
FULL JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id;

SELECT clientes.cliente_id, clientes.nome, pedidos.produto
FROM clientes
FULL JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id;

SELECT pedidos.pedido_id, pedidos.produto
FROM clientes
FULL JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.cliente_id IS NULL;

SELECT clientes.cliente_id, clientes.nome
FROM clientes
FULL JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.pedido_id IS NULL;

SELECT clientes.nome, pedidos.produto
FROM clientes
FULL JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.produto IS NOT NULL OR clientes.nome IS NOT NULL;

SELECT COUNT(*)
FROM clientes
FULL JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id;

SELECT COALESCE(clientes.nome, 'Sem Cliente') AS nome_cliente,
       COALESCE(pedidos.produto, 'Sem Produto') AS produto
FROM clientes
FULL JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id;

SELECT clientes.nome, pedidos.produto
FROM clientes
FULL JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id;

SELECT clientes.cliente_id AS ID_Cliente,
       clientes.nome AS Nome_Cliente,
       pedidos.pedido_id AS ID_Pedido,
       pedidos.produto AS Produto
FROM clientes
FULL JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id;

