# Identidades y roles en Oracle Database

## Usuarios

Un usuario en Oracle puede acceder a la base de datos y poseer objetos propios.

## Crear usuario

```sql
CREATE USER estudiante_oracle IDENTIFIED BY "ClaveSegura123!";
```

## Permitir inicio de sesión

```sql
GRANT CREATE SESSION TO estudiante_oracle;
```

## Crear rol

```sql
CREATE ROLE rol_reportes;
```

## Otorgar privilegio de objeto

```sql
GRANT SELECT ON HR.EMPLEADOS TO rol_reportes;
```

## Asignar rol

```sql
GRANT rol_reportes TO estudiante_oracle;
```

## Revocar privilegio

```sql
REVOKE SELECT ON HR.EMPLEADOS FROM rol_reportes;
```

## Privilegios de sistema

| Privilegio | Función |
|---|---|
| CREATE SESSION | Iniciar sesión |
| CREATE TABLE | Crear tablas |
| CREATE VIEW | Crear vistas |
| CREATE PROCEDURE | Crear procedimientos |
| CREATE USER | Crear usuarios |
| ALTER USER | Modificar usuarios |
| DROP USER | Eliminar usuarios |

## Privilegios de objeto

| Privilegio | Función |
|---|---|
| SELECT | Consultar datos |
| INSERT | Insertar datos |
| UPDATE | Actualizar datos |
| DELETE | Eliminar datos |
| EXECUTE | Ejecutar procedimientos |
| REFERENCES | Crear llaves foráneas |

## Buenas prácticas

- No usar cuentas administrativas para tareas normales.
- Crear roles por perfil.
- Evitar asignar DBA a usuarios comunes.
- Usar perfiles para controlar contraseñas.
- Revisar privilegios periódicamente.
