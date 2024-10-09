CREATE DATABASE jardineria_datasmart

-- Tabla para clientes
CREATE TABLE DimClientes (
    ID_cliente INT PRIMARY KEY,
    nombre_cliente VARCHAR(50) NOT NULL,
    nombre_contacto VARCHAR(30),
    apellido_contacto VARCHAR(30),
    telefono VARCHAR(20),
    limite_credito NUMERIC(15,2)
);

-- Tabla para productos
CREATE TABLE DimProducto (
    ID_producto INT PRIMARY KEY,
    nombre VARCHAR(70) NOT NULL,
    dimensiones VARCHAR(25),
    cantidad_en_stock SMALLINT,
    precio_venta NUMERIC(15,2),
    Categoria VARCHAR(50)
);

-- Tabla para oficinas
CREATE TABLE DimOficinas (
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
CREATE TABLE DimFecha (
    ID_fecha INT PRIMARY KEY,
    Dia INT,
    Mes INT,
    Año INT,
    nombre_dia VARCHAR(20),
    semestre SMALLINT,
    trimestre SMALLINT
);

-- Tabla para empleados
CREATE TABLE DimEmpleado (
    ID_empleado INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50),
    Puesto VARCHAR(50),
    nombre_jefe VARCHAR(50)
);

-- Tabla para ubicación de clientes
CREATE TABLE DimUbicacion (
    ID_ubi_cliente INT PRIMARY KEY,
    Ciudad VARCHAR(50),
    Region VARCHAR(50),
    Pais VARCHAR(50),
    codigo_postal VARCHAR(10)
);

-- Tabla para ubicación de oficinas
CREATE TABLE DimUbicacionoficina (
    ID_ubi_oficina INT PRIMARY KEY,
    Ciudad VARCHAR(50),
    Region VARCHAR(50),
    Pais VARCHAR(50),
    codigo_postal VARCHAR(10)
);

-- Tabla de hechos para pedidos
CREATE TABLE FactPedidos(
    ID_pedido INT IDENTITY(1,1) PRIMARY KEY,
    ID_cliente INT,
    ID_producto INT,
    ID_oficina INT,
    ID_empleado INT,
    ID_fecha INT,
    ID_ubi_cliente INT,
    ID_ubi_oficina INT,
    detalle_pedido TEXT,
    Estado VARCHAR(15),
    Comentarios TEXT,
    Cantidad INT,
    precio_unidad NUMERIC(15,2)
    FOREIGN KEY (ID_cliente) REFERENCES DimClientes(ID_cliente),
    FOREIGN KEY (ID_producto) REFERENCES DimProducto(ID_producto),
    FOREIGN KEY (ID_oficina) REFERENCES DimOficinas(ID_oficina),
    FOREIGN KEY (ID_empleado) REFERENCES DimEmpleado(ID_empleado),
    FOREIGN KEY (ID_fecha) REFERENCES DimFecha(ID_fecha),
    FOREIGN KEY (ID_ubi_cliente) REFERENCES DimUbicacion(ID_ubi_cliente),
    FOREIGN KEY (ID_ubi_oficina) REFERENCES DimUbicacionoficina(ID_ubi_oficina)
);
