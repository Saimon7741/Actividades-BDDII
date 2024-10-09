use jardineria_datasmart

INSERT INTO DimClientes (
    ID_cliente, 
    nombre_cliente, 
    nombre_contacto, 
    apellido_contacto, 
    telefono, 
    limite_credito
)
SELECT 
    ID_cliente, 
    nombre_cliente, 
    nombre_contacto, 
    apellido_contacto, 
    telefono, 
    limite_credito
FROM jardineria_intermedia.dbo.Clientes_Intermedia;

INSERT INTO DimProducto (
    ID_producto, 
    nombre, 
    dimensiones, 
    cantidad_en_stock, 
    precio_venta, 
    Categoria
)
SELECT 
    ID_producto, 
    nombre, 
    dimensiones, 
    cantidad_en_stock, 
    precio_venta, 
    Categoria
FROM jardineria_intermedia.dbo.Producto_Intermedia;

INSERT INTO DimOficinas (
    ID_oficina, 
    Descripcion, 
    telefono, 
    linea_direccion1, 
    linea_direccion2
)
SELECT 
    ID_oficina, 
    Descripcion, 
    telefono, 
    linea_direccion1, 
    linea_direccion2
FROM jardineria_intermedia.dbo.Oficinas_Intermedia;

INSERT INTO DimFecha (
    ID_fecha, 
    Dia, 
    Mes, 
    Año, 
    nombre_dia, 
    semestre, 
    trimestre
)
SELECT 
    ID_fecha, 
    Dia, 
    Mes, 
    Año, 
    nombre_dia, 
    semestre, 
    trimestre
FROM jardineria_intermedia.dbo.Fecha_Intermedia;

INSERT INTO DimEmpleado (
    ID_empleado, 
    Nombre, 
    apellido1, 
    apellido2, 
    Puesto, 
    nombre_jefe
)
SELECT 
    ID_empleado, 
    Nombre, 
    apellido1, 
    apellido2, 
    Puesto, 
    nombre_jefe
FROM jardineria_intermedia.dbo.Empleado_Intermedia;

INSERT INTO DimUbicacion (
    ID_ubi_cliente, 
    Ciudad, 
    Region, 
    Pais, 
    codigo_postal
)
SELECT 
    ID_ubi_cliente, 
    Ciudad, 
    Region, 
    Pais, 
    codigo_postal
FROM jardineria_intermedia.dbo.Ubicacion_Cliente_Intermedia;

INSERT INTO DimUbicacionoficina (
    ID_ubi_oficina, 
    Ciudad, 
    Region, 
    Pais, 
    codigo_postal
)
SELECT 
    ID_ubi_oficina, 
    Ciudad, 
    Region, 
    Pais, 
    codigo_postal
FROM jardineria_intermedia.dbo.Ubicacion_Oficina_Intermedia;

INSERT INTO FactPedidos (
    ID_cliente, 
    ID_producto, 
    ID_oficina, 
    ID_empleado, 
    ID_fecha, 
    ID_ubi_cliente, 
    ID_ubi_oficina, 
    detalle_pedido, 
    Estado, 
    Comentarios, 
    Cantidad, 
    precio_unidad
)
SELECT 
    ID_cliente, 
    ID_producto, 
    ID_oficina, 
    ID_empleado, 
    ID_fecha, 
    ID_ubi_cliente, 
    ID_ubi_oficina, 
    detalle_pedido, 
    Estado, 
    Comentarios, 
    Cantidad, 
    precio_unidad
FROM jardineria_intermedia.dbo.Pedidos_Intermedia;

