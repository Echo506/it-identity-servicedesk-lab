CREATE DATABASE inventario;

\c inventario

CREATE TABLE categorias (
    id_categoria SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE productos (
    id_producto SERIAL PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    precio NUMERIC(10,2) NOT NULL,
    id_categoria INT REFERENCES categorias(id_categoria)
);

CREATE TABLE movimientos (
    id_movimiento SERIAL PRIMARY KEY,
    id_producto INT REFERENCES productos(id_producto),
    tipo_movimiento VARCHAR(20) NOT NULL,
    cantidad INT NOT NULL,
    fecha_movimiento TIMESTAMP DEFAULT NOW()
);
