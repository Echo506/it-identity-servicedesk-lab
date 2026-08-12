# Modulo 01: Fundamentos de ITSM y ServiceNow

**Tiempo estimado: 2-3 horas**

## Objetivo

Comprender los conceptos fundamentales de IT Service Management (ITSM) y practicar el ciclo de vida de un ticket usando una instancia de desarrollo de ServiceNow (o una herramienta equivalente como Jira Service Management, Zendesk o Freshservice).

## Prerequisitos

- Cuenta gratuita en [ServiceNow Developer Program](https://developer.servicenow.com/) (instancia Personal Developer Instance - PDI).
- Alternativa: cuenta de prueba en Jira Service Management, Zendesk o Freshservice si ServiceNow no esta disponible.

## Conceptos clave

- **Incidente**: interrupcion no planificada de un servicio (ej. un usuario no puede iniciar sesion).
- **Solicitud de servicio (Service Request)**: peticion estandar de un usuario (ej. alta de una nueva cuenta o acceso a una aplicacion).
- **Problema**: causa raiz subyacente a uno o mas incidentes.
- **Cambio (Change Request)**: modificacion controlada de un sistema o servicio, con proceso de aprobacion.
- **CMDB (Configuration Management Database)**: inventario de activos y su relacion con los servicios (Configuration Items - CI).
- **SLA (Service Level Agreement)**: tiempo maximo acordado para responder o resolver un ticket segun su prioridad/impacto.
- **Prioridad e Impacto**: como se determina la urgencia de un ticket (matriz impacto x urgencia = prioridad).

## Practica sugerida

1. Crear una instancia PDI en ServiceNow (o cuenta de prueba en la herramienta alternativa).
2. Explorar el modulo de Incident Management: crear un incidente de prueba (ejemplo: "Usuario no puede acceder a su correo").
3. Asignar prioridad, categoria y agente responsable al incidente.
4. Cambiar el estado del incidente a traves de su ciclo de vida: New -> In Progress -> Resolved -> Closed.
5. Crear una Service Request de ejemplo (ejemplo: "Solicitud de acceso a carpeta compartida").
6. Explorar la CMDB: identificar como un Configuration Item (ej. un servidor o una aplicacion) se relaciona con los incidentes.
7. Documentar con capturas de pantalla cada paso del ciclo de vida del ticket.

## Checklist

- [ ] Cuenta/instancia de ITSM creada.
- [ ] Incidente de prueba creado y resuelto siguiendo su ciclo de vida completo.
- [ ] Service Request de prueba creada.
- [ ] Relacion entre un CI de la CMDB y un incidente identificada.
- [ ] Capturas de pantalla documentadas.

## Recursos sugeridos

- [ServiceNow Developer Site - Learn](https://developer.servicenow.com/dev.do#!/learn)
- ITIL v4 Foundation (conceptos generales de gestion de servicios de TI).
- Documentacion de Jira Service Management / Zendesk / Freshservice como referencia alternativa.

## Resultado esperado

Poder describir el ciclo de vida completo de un ticket (incidente, solicitud, problema, cambio), explicar la diferencia entre estos tipos, y relacionar la gestion de incidentes con la gestion de identidades que se cubrira en los siguientes modulos.

> Siguiente: [Modulo 02 - Active Directory](../02-active-directory/README.md)
