-- Verificar registros con campos nulos en la tabla de pedidos
SELECT * 
FROM jardineria_datasmart.dbo.FactPedidos
WHERE ID_cliente IS NULL OR ID_producto IS NULL OR ID_oficina IS NULL OR ID_empleado IS NULL OR ID_fecha IS NULL;
