# Modulo 05: Integracion de Incidentes e Identidad (Flujo End-to-End)

**Tiempo estimado: 2-3 horas**

## Objetivo

Integrar todo lo aprendido en los modulos anteriores simulando un flujo real de soporte tecnico: un usuario reporta un problema de acceso, se abre un ticket, y el analista resuelve el problema modificando la identidad del usuario en Active Directory, Entra ID u Okta, documentando cada paso.

## Prerequisitos

- Haber completado los Modulos 01-04.
- Acceso a las cuentas/entornos de prueba usados en los modulos anteriores (ServiceNow/ITSM, Active Directory, Entra ID, Okta).

## Escenario simulado

Un usuario de prueba ("Ana Lopez") reporta que no puede iniciar sesion en su correo corporativo. El analista de soporte debe:

1. Recibir y clasificar el ticket en la herramienta de ITSM (Modulo 01).
2. Investigar la causa: verificar el estado de la cuenta en Active Directory u Okta (cuenta bloqueada, contrasena expirada, MFA mal configurado).
3. Aplicar la solucion (ejemplo: desbloquear la cuenta en AD, restablecer la contrasena, o reconfigurar el factor MFA en Okta/Entra ID).
4. Verificar la resolucion probando el inicio de sesion del usuario de prueba.
5. Documentar la solucion en el ticket y cerrarlo siguiendo el proceso correcto (Resolved -> Closed).

## Practica sugerida

1. Crear un ticket de incidente en tu herramienta de ITSM describiendo el escenario ("Ana Lopez no puede iniciar sesion").
2. Simular la causa raiz: bloquea intencionalmente la cuenta de un usuario de prueba en AD (o Entra ID/Okta) para replicar el problema.
3. Diagnosticar el problema como lo haria un analista: revisar el estado de la cuenta, los logs de inicio de sesion (sign-in logs en Entra ID, o el visor de eventos en AD).
4. Aplicar la correccion (desbloqueo, reset de contrasena, ajuste de MFA) y verificar que el usuario puede iniciar sesion nuevamente.
5. Actualizar el ticket con las notas de resolucion (causa raiz, accion tomada, verificacion) y cerrarlo.
6. (Opcional) Repetir el ejercicio con un escenario diferente: alta de un nuevo empleado (onboarding) que requiere creacion de cuenta en AD/Entra ID, asignacion de grupos, y aprovisionamiento en Okta.

## Checklist

- [ ] Ticket de incidente creado con descripcion clara del problema.
- [ ] Causa raiz identificada usando logs/estado de la cuenta.
- [ ] Solucion aplicada en la plataforma de identidad correspondiente (AD, Entra ID u Okta).
- [ ] Resolucion verificada (el usuario puede iniciar sesion).
- [ ] Ticket documentado y cerrado correctamente.
- [ ] (Opcional) Escenario de onboarding practicado de extremo a extremo.

## Recursos sugeridos

- NIST SP 800-61 (Computer Security Incident Handling Guide) como referencia de proceso.
- Documentacion de sign-in logs de Microsoft Entra ID.
- Buenas practicas de documentacion de tickets (notas claras, causa raiz, pasos de resolucion).

## Resultado esperado

Poder demostrar, de principio a fin, el flujo de trabajo tipico de un analista de soporte o SOC: recepcion del ticket, diagnostico usando herramientas de identidad, resolucion tecnica, verificacion y documentacion. Esta experiencia integrada es evidencia solida de habilidades practicas para roles de soporte tecnico y ciberseguridad.

> Anterior: [Modulo 04 - Okta](../04-okta-sso-scim/README.md)
> Relacionado: [cybersecurity-learning-roadmap](https://github.com/Echo506/cybersecurity-learning-roadmap) y [aws-iam-security-lab](https://github.com/Echo506/aws-iam-security-lab)
