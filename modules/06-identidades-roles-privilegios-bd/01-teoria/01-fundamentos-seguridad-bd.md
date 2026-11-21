# Fundamentos de seguridad en bases de datos

## Autenticación y autorización

La autenticación verifica quién es el usuario o aplicación.

La autorización determina qué puede hacer ese usuario o aplicación dentro de la base de datos.

## Identidades

Las identidades pueden ser:

- Usuarios humanos
- Cuentas de servicio
- Aplicaciones
- Administradores
- Auditores

## Privilegios

Un privilegio es un permiso para realizar una acción específica.

Ejemplos:

- SELECT: consultar datos
- INSERT: insertar datos
- UPDATE: actualizar datos
- DELETE: eliminar datos
- EXECUTE: ejecutar procedimientos o funciones
- CREATE: crear objetos
- DROP: eliminar objetos

## Roles

Un rol agrupa permisos para asignarlos a uno o varios usuarios.

Ejemplo:

- rol_lectura
- rol_operador
- rol_administrador
- rol_auditor

## Principio de menor privilegio

Cada usuario debe tener únicamente los permisos necesarios para realizar su trabajo.

## Segregación de funciones

Ninguna persona debe tener control total sobre todos los procesos críticos.

## Riesgos comunes

- Uso de cuentas administrativas para tareas cotidianas
- Permisos excesivos
- Contraseñas débiles
- Falta de auditoría
- Falta de documentación
- Acceso directo de aplicaciones con permisos elevados
