CREATE DATABASE technova;

\c technova

CREATE TABLE departamentos (
    id_departamento SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE empleados (
    id_empleado SERIAL PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    correo VARCHAR(150) NOT NULL,
    id_departamento INT REFERENCES departamentos(id_departamento)
);

CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    correo VARCHAR(150) NOT NULL
);

CREATE TABLE productos (
    id_producto SERIAL PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    precio NUMERIC(10,2) NOT NULL
);

CREATE TABLE ventas (
    id_venta SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES clientes(id_cliente),
    id_producto INT REFERENCES productos(id_producto),
    cantidad INT NOT NULL,
    fecha_venta TIMESTAMP DEFAULT NOW()
);

CREATE TABLE auditoria (
    id_auditoria SERIAL PRIMARY KEY,
    usuario VARCHAR(100),
    accion VARCHAR(100),
    fecha TIMESTAMP DEFAULT NOW()
);
