-- Creaci�n de la base de datos staging para transformaci�n de datos
CREATE DATABASE jardineria_intermedia;
USE jardineria_intermedia;

-- Tabla para clientes
CREATE TABLE Clientes_Intermedia (
    ID_cliente INT PRIMARY KEY,
    nombre_cliente VARCHAR(50) NOT NULL,
    nombre_contacto VARCHAR(30),
    apellido_contacto VARCHAR(30),
    telefono VARCHAR(20),
    limite_credito NUMERIC(15,2)
);

-- Tabla para productos
CREATE TABLE Producto_Intermedia (
    ID_producto INT PRIMARY KEY,
    nombre VARCHAR(70) NOT NULL,
    dimensiones VARCHAR(25),
    cantidad_en_stock SMALLINT,
    precio_venta NUMERIC(15,2),
    Categoria VARCHAR(50)
);

-- Tabla para oficinas
CREATE TABLE Oficinas_Intermedia (
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
CREATE TABLE Fecha_Intermedia (
    ID_fecha INT PRIMARY KEY,
    Dia INT,
    Mes INT,
    A�o INT,
    nombre_dia VARCHAR(20),
    semestre SMALLINT,
    trimestre SMALLINT
);

-- Tabla para empleados
CREATE TABLE Empleado_Intermedia (
    ID_empleado INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50),
    Puesto VARCHAR(50),
    nombre_jefe VARCHAR(50)
);

-- Tabla para ubicaci�n de clientes
CREATE TABLE Ubicacion_Cliente_Intermedia (
    ID_ubi_cliente INT PRIMARY KEY,
    Ciudad VARCHAR(50),
    Region VARCHAR(50),
    Pais VARCHAR(50),
    codigo_postal VARCHAR(10)
);

-- Tabla para ubicaci�n de oficinas
CREATE TABLE Ubicacion_Oficina_Intermedia (
    ID_ubi_oficina INT PRIMARY KEY,
    Ciudad VARCHAR(50),
    Region VARCHAR(50),
    Pais VARCHAR(50),
    codigo_postal VARCHAR(10)
);

-- Tabla de hechos para pedidos
CREATE TABLE Pedidos_Intermedia (
    ID_pedido INT PRIMARY KEY,
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
    precio_unidad NUMERIC(15,2),
    FOREIGN KEY (ID_cliente) REFERENCES Clientes_Intermedia(ID_cliente),
    FOREIGN KEY (ID_producto) REFERENCES Producto_Intermedia(ID_producto),
    FOREIGN KEY (ID_oficina) REFERENCES Oficinas_Intermedia(ID_oficina),
    FOREIGN KEY (ID_empleado) REFERENCES Empleado_Intermedia(ID_empleado),
    FOREIGN KEY (ID_fecha) REFERENCES Fecha_Intermedia(ID_fecha),
    FOREIGN KEY (ID_ubi_cliente) REFERENCES Ubicacion_Cliente_Intermedia(ID_ubi_cliente),
    FOREIGN KEY (ID_ubi_oficina) REFERENCES Ubicacion_Oficina_Intermedia(ID_ubi_oficina)
);
