use stagingjardineria;

INSERT INTO ClienteST (
    ID_cliente, 
    nombre_cliente, 
    nombre_contacto, 
    apellido_contacto, 
    telefono, 
    limite_credito,
    ciudad,
    pais,
    region,
    codigo_postal,
    linea_direccion1,
    linea_direccion2
)
SELECT 
    ID_cliente, 
    nombre_cliente, 
    nombre_contacto, 
    apellido_contacto, 
    telefono, 
    limite_credito,
    ciudad,
    pais,
    region,
    codigo_postal,
    linea_direccion1,
    linea_direccion2
FROM jardineria.dbo.cliente;

INSERT INTO ProductoST (
    ID_producto, 
    nombre, 
    dimensiones, 
    cantidad_en_stock, 
    precio_venta, 
    Categoria
)
SELECT 
    p.ID_producto, 
    p.nombre, 
    p.dimensiones, 
    p.cantidad_en_stock, 
    p.precio_venta, 
    c.Desc_Categoria AS Categoria
FROM 
    jardineria.dbo.producto p
JOIN 
    jardineria.dbo.Categoria_producto c
ON 
    p.Categoria = c.Id_Categoria;


INSERT INTO OficinasST (
    ID_oficina, 
    Descripcion, 
    ciudad, 
    pais, 
    region, 
    codigo_postal, 
    telefono, 
    linea_direccion1, 
    linea_direccion2
)
SELECT 
    ID_oficina, 
    Descripcion, 
    ciudad, 
    pais, 
    region, 
    codigo_postal, 
    telefono, 
    linea_direccion1, 
    linea_direccion2
FROM jardineria.dbo.oficina;

INSERT INTO PagoST (fecha_pago)
SELECT fecha_pago
FROM jardineria.dbo.pago;

INSERT INTO EmpleadoST (
    ID_empleado, 
    Nombre, 
    apellido1, 
    apellido2, 
    Puesto
)
SELECT 
    ID_empleado, 
    nombre, 
    apellido1, 
    apellido2, 
    puesto
FROM jardineria.dbo.empleado;


INSERT INTO PedidoST (
    detalle_pedido, 
    Estado, 
    Comentarios, 
    Cantidad, 
    precio_unidad
)
SELECT 
    CAST(dp.numero_linea AS VARCHAR(10)) AS detalle_pedido, -- Convertimos numero_linea a VARCHAR
    p.estado, 
    p.comentarios, 
    dp.cantidad, 
    dp.precio_unidad
FROM 
    jardineria.dbo.detalle_pedido dp
JOIN 
    jardineria.dbo.pedido p
ON 
    dp.ID_pedido = p.ID_pedido;
