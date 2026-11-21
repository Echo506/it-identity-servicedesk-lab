# Identidades y roles en PostgreSQL

## Roles y usuarios

En PostgreSQL, los usuarios son roles con permiso de inicio de sesión.

## Crear usuario

```sql
CREATE USER alumno WITH PASSWORD 'ClaveSegura123!';
```

## Crear rol

```sql
CREATE ROLE lectores;
```

## Otorgar permisos

```sql
GRANT CONNECT ON DATABASE inventario TO lectores;
GRANT USAGE ON SCHEMA public TO lectores;
GRANT SELECT ON TABLE productos TO lectores;
```

## Asignar rol

```sql
GRANT lectores TO alumno;
```

## Revocar permisos

```sql
REVOKE SELECT ON TABLE productos FROM lectores;
```

## Permisos comunes

| Permiso | Función |
|---|---|
| CONNECT | Conectarse a una base de datos |
| USAGE | Usar un esquema |
| SELECT | Consultar datos |
| INSERT | Insertar datos |
| UPDATE | Actualizar datos |
| DELETE | Eliminar datos |
| EXECUTE | Ejecutar funciones |

## Buenas prácticas

- No usar el usuario postgres para aplicaciones.
- Crear roles por función.
- Evitar permisos directos cuando se pueden usar roles.
- Restringir el esquema public.
- Revisar permisos periódicamente.
