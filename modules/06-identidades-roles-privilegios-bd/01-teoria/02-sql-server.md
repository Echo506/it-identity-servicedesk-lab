# Identidades y roles en Microsoft SQL Server

## Logins y usuarios

Un login permite conectarse al servidor SQL Server.

Un usuario permite acceder a una base de datos específica.

## Crear login

```sql
CREATE LOGIN analista WITH PASSWORD = 'ClaveSegura123!';
```

## Crear usuario

```sql
USE EmpresaDB;
CREATE USER analista FOR LOGIN analista;
```

## Crear rol

```sql
CREATE ROLE rol_analista;
```

## Otorgar permisos

```sql
GRANT SELECT ON dbo.ventas TO rol_analista;
```

## Asignar rol

```sql
ALTER ROLE rol_analista ADD MEMBER analista;
```

## Revocar permisos

```sql
REVOKE SELECT ON dbo.ventas FROM rol_analista;
```

## Roles fijos de servidor

| Rol | Función |
|---|---|
| sysadmin | Control total del servidor |
| serveradmin | Configuración del servidor |
| securityadmin | Administración de logins |
| dbcreator | Creación de bases de datos |
| bulkadmin | Operaciones masivas |

## Roles fijos de base de datos

| Rol | Función |
|---|---|
| db_owner | Control total de la base de datos |
| db_datareader | Lectura de datos |
| db_datawriter | Escritura de datos |
| db_ddladmin | Creación y modificación de objetos |
| db_securityadmin | Administración de permisos |

## Buenas prácticas

- No usar la cuenta sa.
- No asignar sysadmin innecesariamente.
- Usar roles personalizados.
- Revisar permisos periódicamente.
- Documentar accesos.
