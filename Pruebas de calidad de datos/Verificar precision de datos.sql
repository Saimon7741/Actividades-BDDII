-- Verificar precios negativos en la tabla de pedidos
SELECT * 
FROM jardineria_datasmart.dbo.FactPedidos
WHERE precio_unidad < 0;

-- Verificar cantidades negativas
SELECT * 
FROM jardineria_datasmart.dbo.FactPedidos
WHERE Cantidad < 0;

-- Verificar si las dimensiones son válidas
SELECT * 
FROM jardineria_datasmart.dbo.DimProducto
WHERE dimensiones IS NULL OR dimensiones = '';
