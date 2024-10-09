-- Verificar IDs de clientes
SELECT ID_cliente 
FROM jardineria_datasmart.dbo.FactPedidos
WHERE ID_cliente IS NOT NULL 
AND ID_cliente NOT IN (SELECT ID_cliente FROM jardineria_datasmart.dbo.DimClientes);

-- Verificar IDs de productos
SELECT ID_producto 
FROM jardineria_intermedia.dbo.Pedidos_Intermedia
WHERE ID_producto IS NOT NULL 
AND ID_producto NOT IN (SELECT ID_producto FROM jardineria_datasmart.dbo.DimProducto);

-- Verificar IDs de oficinas
SELECT ID_oficina 
FROM jardineria_intermedia.dbo.Pedidos_Intermedia
WHERE ID_oficina IS NOT NULL 
AND ID_oficina NOT IN (SELECT ID_oficina FROM jardineria_datasmart.dbo.DimOficinas);

-- Verificar IDs de empleados
SELECT ID_empleado 
FROM jardineria_intermedia.dbo.Pedidos_Intermedia
WHERE ID_empleado IS NOT NULL 
AND ID_empleado NOT IN (SELECT ID_empleado FROM jardineria_datasmart.dbo.DimEmpleado);

-- Verificar IDs de fechas
SELECT ID_fecha 
FROM jardineria_intermedia.dbo.Pedidos_Intermedia
WHERE ID_fecha IS NOT NULL 
AND ID_fecha NOT IN (SELECT ID_fecha FROM jardineria_datasmart.dbo.DimFecha);

-- Verificar IDs de ubicación de clientes
SELECT ID_ubi_cliente 
FROM jardineria_intermedia.dbo.Pedidos_Intermedia
WHERE ID_ubi_cliente IS NOT NULL 
AND ID_ubi_cliente NOT IN (SELECT ID_ubi_cliente FROM jardineria_datasmart.dbo.DimUbicacion);

-- Verificar IDs de ubicación de oficinas
SELECT ID_ubi_oficina 
FROM jardineria_intermedia.dbo.Pedidos_Intermedia
WHERE ID_ubi_oficina IS NOT NULL 
AND ID_ubi_oficina NOT IN (SELECT ID_ubi_oficina FROM jardineria_datasmart.dbo.DimUbicacionoficina);
