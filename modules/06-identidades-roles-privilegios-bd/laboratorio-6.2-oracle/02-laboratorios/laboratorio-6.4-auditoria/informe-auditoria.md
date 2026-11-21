# Informe de auditoría

## Objetivo

Revisar los usuarios, roles y permisos creados en la base de datos.

## Hallazgos

- El usuario administrador tiene permisos completos.
- El analista tiene permisos de lectura.
- El operador tiene permisos de inserción y actualización.
- El consultor tiene permisos de solo lectura.
- El auditor tiene permisos de lectura limitada.

## Recomendaciones

- Revocar permisos innecesarios.
- Usar roles en lugar de permisos individuales.
- Revisar accesos periódicamente.
- Documentar cada cambio de permiso.
- Aplicar el principio de menor privilegio.
