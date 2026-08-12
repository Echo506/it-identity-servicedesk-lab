# Modulo 04: Okta (SSO, Aprovisionamiento SCIM y MFA)

**Tiempo estimado: 2-3 horas**

## Objetivo

Configurar Single Sign-On (SSO), aprovisionamiento automatico de usuarios (SCIM) y autenticacion multifactor (MFA) usando Okta, uno de los proveedores de identidad como servicio (IDaaS) mas usados en la industria.

## Prerequisitos

- Cuenta gratuita en [Okta Developer Edition](https://developer.okta.com/).
- Conocimientos basicos de SSO adquiridos en la Fase 1 del roadmap (SAML, OAuth2, OIDC).

## Conceptos clave

- **SSO (Single Sign-On)**: permite a un usuario autenticarse una sola vez y acceder a multiples aplicaciones sin volver a ingresar credenciales.
- **IdP (Identity Provider) vs SP (Service Provider)**: Okta actua como IdP; las aplicaciones (ej. Salesforce, Slack, AWS) actuan como SP.
- **SCIM (System for Cross-domain Identity Management)**: protocolo estandar para automatizar la creacion, actualizacion y desactivacion de cuentas de usuario entre Okta y aplicaciones conectadas.
- **MFA (Multi-Factor Authentication)**: factores adicionales de autenticacion (Okta Verify, SMS, correo, llaves de seguridad).
- **Grupos y asignacion de aplicaciones**: como los grupos en Okta determinan que aplicaciones y niveles de acceso recibe un usuario.

## Practica sugerida

1. Crear una cuenta en Okta Developer Edition y explorar el panel de administracion.
2. Crear usuarios y grupos de prueba en Okta.
3. Agregar una aplicacion de ejemplo desde el catalogo de Okta (ejemplo: una app SAML de prueba) y configurar SSO.
4. Habilitar MFA (Okta Verify) para un grupo de usuarios de prueba y probar el flujo de inicio de sesion.
5. Explorar la configuracion de aprovisionamiento SCIM en una aplicacion compatible (muchas apps del catalogo de Okta lo soportan de forma nativa) y entender el flujo de creacion/desactivacion automatica de cuentas.
6. Documentar el proceso con capturas de pantalla.

## Checklist

- [ ] Cuenta de Okta Developer Edition creada.
- [ ] Usuarios y grupos de prueba creados.
- [ ] Aplicacion de ejemplo configurada con SSO (SAML u OIDC).
- [ ] MFA habilitado y probado para un grupo de usuarios.
- [ ] Flujo de aprovisionamiento SCIM explorado y documentado.

## Recursos sugeridos

- [Okta Developer Documentation](https://developer.okta.com/docs/)
- Guias oficiales de Okta sobre SCIM Provisioning.
- Documentacion de Okta sobre Adaptive MFA y factores de autenticacion.

## Resultado esperado

Poder configurar SSO basico en Okta, explicar como funciona el aprovisionamiento automatico via SCIM, y habilitar MFA para reducir el riesgo de cuentas comprometidas, conectando estos conceptos con lo aprendido sobre AD y Entra ID en los modulos anteriores.

> Anterior: [Modulo 03 - Microsoft Azure / Entra ID](../03-azure-entra-id/README.md)
> Siguiente: [Modulo 05 - Integracion de Incidentes e Identidad](../05-incident-identity-integration/README.md)
