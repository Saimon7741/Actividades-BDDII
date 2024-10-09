-- Comprobar duplicados en la tabla de pedidos
SELECT ID_pedido, COUNT(*) AS Cantidad
FROM jardineria_datasmart.dbo.FactPedidos
GROUP BY ID_pedido
HAVING COUNT(*) > 1;

-- Comprobar duplicados en clientes
SELECT ID_cliente, COUNT(*) AS Cantidad
FROM jardineria_datasmart.dbo.DimClientes
GROUP BY ID_cliente
HAVING COUNT(*) > 1;

-- Comprobar duplicados en clientes
SELECT ID_ubi_cliente, COUNT(*) AS Cantidad
FROM jardineria_datasmart.dbo.DimUbicacion
GROUP BY ID_ubi_cliente
HAVING COUNT(*) > 1;