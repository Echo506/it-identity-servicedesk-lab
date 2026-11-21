# Auditoría y buenas prácticas

## Auditoría de privilegios

La auditoría permite revisar qué usuarios, roles y permisos existen en la base de datos.

## Preguntas clave

- ¿Qué usuarios existen?
- ¿Qué roles tienen asignados?
- ¿Qué permisos tienen?
- ¿Algún usuario tiene permisos excesivos?
- ¿Existen cuentas inactivas?
- ¿Las contraseñas cumplen políticas de seguridad?

## Matriz de control de acceso

| Usuario | Rol | SELECT | INSERT | UPDATE | DELETE | CREATE | DROP |
|---|---|---:|---:|---:|---:|---:|---:|
| admin_db | Administrador | Sí | Sí | Sí | Sí | Sí | Sí |
| analista | Analista | Sí | No | No | No | No | No |
| operador | Operador | Sí | Sí | Sí | No | No | No |
| consulta | Consultor | Sí | No | No | No | No | No |
| auditor | Auditor | Sí | No | No | No | No | No |

## Buenas prácticas

- Aplicar el principio de menor privilegio.
- Usar roles en lugar de permisos individuales.
- Revisar accesos periódicamente.
- Documentar usuarios, roles y permisos.
- Usar contraseñas seguras.
- Evitar cuentas compartidas.
- Revocar accesos cuando un usuario cambia de función.
- Realizar respaldos periódicos.
