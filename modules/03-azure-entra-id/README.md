# Modulo 03: Microsoft Azure / Entra ID

**Tiempo estimado: 3-4 horas**

## Objetivo

Administrar identidades en la nube con Microsoft Entra ID (anteriormente Azure Active Directory): crear usuarios y grupos, asignar roles, y comprender la sincronizacion hibrida con Active Directory on-premise usando Microsoft Entra Connect.

## Prerequisitos

- Cuenta gratuita del [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program) (incluye un tenant de prueba con Entra ID).
- Completar el Modulo 02 (Active Directory) para practicar la sincronizacion hibrida.
- Familiaridad basica con el portal de Azure.

## Conceptos clave

- **Entra ID (Azure AD)**: servicio de identidad como servicio (IDaaS) de Microsoft para autenticacion y autorizacion en la nube.
- **Tenant**: instancia dedicada y aislada de Entra ID asociada a una organizacion.
- **Usuarios y grupos en la nube**: equivalentes a los de AD on-premise, pero gestionados via el portal de Azure o Microsoft Graph.
- **Roles de Azure AD (Entra ID roles)**: por ejemplo, Global Administrator, User Administrator, Helpdesk Administrator (relevante para roles de soporte).
- **Entra Connect (Azure AD Connect)**: herramienta que sincroniza identidades entre Active Directory on-premise y Entra ID, habilitando escenarios hibridos.
- **Conditional Access**: politicas que exigen condiciones (ej. MFA, ubicacion, dispositivo compatible) para permitir el acceso.

## Practica sugerida

1. Activar el tenant de prueba de Microsoft 365 Developer y acceder al portal de Entra ID.
2. Crear usuarios y grupos de prueba en Entra ID (nunca datos personales reales).
3. Asignar el rol "Helpdesk Administrator" a un usuario de prueba y explorar que permisos otorga (ejemplo: restablecer contraseñas de usuarios no administrativos).
4. Explorar (sin necesariamente implementar, dado que requiere infraestructura adicional) el funcionamiento de Microsoft Entra Connect para sincronizar objetos desde el Active Directory del Modulo 02.
5. Crear una politica de Conditional Access de ejemplo (ejemplo: exigir MFA para inicios de sesion fuera de un pais especifico) en modo de solo reporte (report-only) para no bloquear el acceso real.
6. Documentar el proceso con capturas de pantalla.

## Checklist

- [ ] Tenant de prueba de Microsoft 365 Developer activado.
- [ ] Usuarios y grupos de prueba creados en Entra ID.
- [ ] Rol de administrador delegado (ej. Helpdesk Administrator) asignado y explorado.
- [ ] Concepto de sincronizacion hibrida (Entra Connect) documentado con un diagrama simple.
- [ ] Politica de Conditional Access de prueba creada en modo report-only.

## Recursos sugeridos

- Documentacion oficial de Microsoft Entra ID.
- Microsoft Learn: "Manage user accounts in Microsoft Entra ID".
- Microsoft Learn: "What is Microsoft Entra Connect?".
- Documentacion sobre Conditional Access en Microsoft Entra ID.

## Resultado esperado

Poder explicar la diferencia entre Active Directory on-premise y Entra ID, describir como funciona la sincronizacion hibrida, y asignar roles administrativos delegados apropiados para funciones de soporte tecnico (principio de menor privilegio).

> Anterior: [Modulo 02 - Active Directory](../02-active-directory/README.md)
> Siguiente: [Modulo 04 - Okta](../04-okta-sso-scim/README.md)
