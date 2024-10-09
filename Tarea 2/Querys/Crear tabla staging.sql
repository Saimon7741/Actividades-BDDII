CREATE DATABASE stagingjardineria;

use stagingjardineria

-- Tabla para clientes
CREATE TABLE ClienteST (
    ID_cliente INT PRIMARY KEY,
    nombre_cliente VARCHAR(50) NOT NULL,
    nombre_contacto VARCHAR(30),
    apellido_contacto VARCHAR(30),
    telefono VARCHAR(20),
    limite_credito NUMERIC(15,2),
	 ciudad VARCHAR(30) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    region VARCHAR(50),
    codigo_postal VARCHAR(10),
    linea_direccion1 VARCHAR(50) NOT NULL,
    linea_direccion2 VARCHAR(50)
);

-- Tabla para productos
CREATE TABLE ProductoST (
    ID_producto INT PRIMARY KEY,
    nombre VARCHAR(70) NOT NULL,
    dimensiones VARCHAR(25),
    cantidad_en_stock SMALLINT,
    precio_venta NUMERIC(15,2),
    Categoria VARCHAR(50)
);

-- Tabla para oficinas
CREATE TABLE OficinasST (
    ID_oficina INT PRIMARY KEY,
    Descripcion VARCHAR(10) NOT NULL,
    ciudad VARCHAR(30) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    region VARCHAR(50),
    codigo_postal VARCHAR(10),
    telefono VARCHAR(20) NOT NULL,
    linea_direccion1 VARCHAR(50) NOT NULL,
    linea_direccion2 VARCHAR(50)
);

-- Tabla para fechas
CREATE TABLE PagoST (
fecha_pago DATE NOT NULL
);

-- Tabla para empleados
CREATE TABLE EmpleadoST (
    ID_empleado INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50),
    Puesto VARCHAR(50),
);

-- Tabla de hechos para pedidos
CREATE TABLE PedidoST (
    detalle_pedido TEXT,
    Estado VARCHAR(15),
    Comentarios TEXT,
    Cantidad INT,
    precio_unidad NUMERIC(15,2),
);