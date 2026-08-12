# IT Identity & Service Desk Lab

Laboratorio practico orientado a roles de soporte tecnico, help desk y SOC/cloud security, enfocado en las herramientas mas usadas en la industria para gestion de tickets e identidad: **ServiceNow** (y sistemas de ticketing equivalentes), **Microsoft Azure / Entra ID**, **Active Directory** y **Okta**.

Este repositorio complementa el roadmap [cybersecurity-learning-roadmap](https://github.com/Echo506/cybersecurity-learning-roadmap) y el laboratorio [aws-iam-security-lab](https://github.com/Echo506/aws-iam-security-lab), extendiendo el enfoque de IAM hacia el mundo on-premise/hibrido (Active Directory), cloud (Azure/Entra ID), IDaaS (Okta) y gestion de incidentes/solicitudes (ServiceNow).

## Objetivos de aprendizaje

- Comprender el ciclo de vida de un ticket (incidente, solicitud, problema, cambio) en ServiceNow u otro ITSM equivalente (Jira Service Management, Zendesk, Freshservice).
- Administrar identidades y grupos en Active Directory on-premise (usuarios, OUs, GPOs basicas).
- Sincronizar identidades entre Active Directory y Microsoft Entra ID (Azure AD Connect) para escenarios hibridos.
- Configurar autenticacion y aprovisionamiento de usuarios en Okta (SSO, SCIM, MFA).
- Relacionar la gestion de identidades con la gestion de incidentes: como un cambio de acceso o un bloqueo de cuenta se documenta y resuelve via ticketing.

## Modulos del laboratorio

| Modulo | Tema | Tiempo estimado |
|---|---|---|
| 01 | Fundamentos de ITSM y ServiceNow (tickets, incidentes, CMDB) | 2-3 horas |
| 02 | Active Directory: usuarios, grupos, OUs y GPOs | 3-4 horas |
| 03 | Microsoft Azure / Entra ID: usuarios, grupos, roles y sincronizacion con AD | 3-4 horas |
| 04 | Okta: SSO, aprovisionamiento SCIM y MFA | 2-3 horas |
| 05 | Integracion: flujo de incidente de identidad de extremo a extremo (ticket -> AD/Entra/Okta -> resolucion) | 2-3 horas |

**Tiempo total estimado: 12-17 horas**

## Como usar este laboratorio

1. Sigue los modulos en orden; cada uno construye sobre el anterior.
2. Usa cuentas de prueba/trial (ServiceNow Developer Instance, Microsoft 365 Developer Tenant, Okta Developer Edition) — nunca uses cuentas de produccion ni datos reales.
3. Cada modulo incluye una guia dentro de la carpeta `modules/` con objetivos, pasos, capturas sugeridas y checklist.
4. Documenta tu progreso (capturas, notas) como evidencia de portafolio para entrevistas de soporte tecnico o SOC.
5. No subas credenciales, tokens ni datos sensibles a este repositorio; usa variables de entorno o archivos `.env` excluidos via `.gitignore`.

## Requisitos previos

- Cuenta de prueba de [ServiceNow Developer Program](https://developer.servicenow.com/) (gratuita).
- Tenant de prueba de [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program) (incluye Azure AD/Entra ID).
- Cuenta de [Okta Developer Edition](https://developer.okta.com/) (gratuita).
- Maquina virtual o entorno de laboratorio con Windows Server (evaluacion) para practicar Active Directory (por ejemplo, en VirtualBox/Hyper-V).

## Estructura del repositorio

```
it-identity-servicedesk-lab/
├── modules/
│   ├── 01-servicenow-fundamentals/
│   ├── 02-active-directory/
│   ├── 03-azure-entra-id/
│   ├── 04-okta-sso-scim/
│   └── 05-incident-identity-integration/
└── README.md
```

## Nota de seguridad

Este laboratorio es exclusivamente para fines educativos. Usa siempre entornos de prueba/sandbox, nunca sistemas de produccion, y jamas incluyas credenciales, API keys o datos personales reales en el repositorio.
