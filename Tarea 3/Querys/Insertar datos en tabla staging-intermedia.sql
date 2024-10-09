-- Insertar datos de clientes desde jardineria a jardineria_intermedia
INSERT INTO jardineria_intermedia.dbo.Clientes_Intermedia (ID_cliente, nombre_cliente, nombre_contacto, apellido_contacto, telefono, limite_credito)
SELECT ID_cliente, nombre_cliente, nombre_contacto, apellido_contacto, telefono, limite_credito
FROM jardineria.dbo.cliente;

-- Insertar datos de productos desde jardineria a jardineria_intermedia
INSERT INTO jardineria_intermedia.dbo.Producto_Intermedia (ID_producto, nombre, dimensiones, cantidad_en_stock, precio_venta, Categoria)
SELECT ID_producto, nombre, dimensiones, cantidad_en_stock, precio_venta, Categoria
FROM jardineria.dbo.producto;

-- Insertar datos de oficinas desde jardineria a jardineria_intermedia
INSERT INTO jardineria_intermedia.dbo.Oficinas_Intermedia (ID_oficina, telefono, linea_direccion1, linea_direccion2)
SELECT ID_oficina, Descripcion, telefono, linea_direccion1, linea_direccion2
FROM jardineria.dbo.oficina;


-- Insertar datos de fechas desde jardineria a jardineria_intermedia
INSERT INTO jardineria_intermedia.dbo.Fecha_Intermedia (ID_fecha, Dia, Mes, Año, nombre_dia, semestre, trimestre)
SELECT ID_pedido, DAY(fecha_pedido), MONTH(fecha_pedido), YEAR(fecha_pedido), 
       DATENAME(WEEKDAY, fecha_pedido) AS nombre_dia,
       CASE WHEN MONTH(fecha_pedido) BETWEEN 1 AND 6 THEN 1 ELSE 2 END AS semestre,
       DATEPART(QUARTER, fecha_pedido) AS trimestre
FROM jardineria.dbo.pedido;



-- Insertar datos de empleados desde jardineria a jardineria_intermedia
INSERT INTO jardineria_intermedia.dbo.Empleado_Intermedia (ID_empleado, Nombre, apellido1, apellido2, Puesto, nombre_jefe)
SELECT ID_empleado, nombre, apellido1, apellido2, puesto, (SELECT CONCAT(nombre,' ',apellido1,' ',apellido2) FROM jardineria.dbo.empleado WHERE ID_empleado = e.ID_jefe)
FROM jardineria.dbo.empleado e;


-- Insertar datos de ubicación de clientes desde jardineria a jardineria_intermedia
INSERT INTO jardineria_intermedia.dbo.Ubicacion_Cliente_Intermedia (ID_ubi_cliente, Ciudad, Region, Pais, codigo_postal)
SELECT ID_cliente, ciudad, region, pais, codigo_postal
FROM jardineria.dbo.cliente;


-- Insertar datos de ubicación de oficinas desde jardineria a jardineria_intermedia
INSERT INTO jardineria_intermedia.dbo.Ubicacion_Oficina_Intermedia (ID_ubi_oficina, Ciudad, Region, Pais, codigo_postal)
SELECT ID_oficina, ciudad, region, pais, codigo_postal
FROM jardineria.dbo.oficina;
