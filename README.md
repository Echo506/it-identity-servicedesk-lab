# IT Identity & Service Desk Lab

Laboratorio práctico orientado a roles de soporte técnico, help desk y SOC/cloud security, enfocado en las herramientas más usadas en la industria para gestión de tickets e identidad: **ServiceNow** (y sistemas de ticketing equivalentes), **Microsoft Azure / Entra ID**, **Active Directory** y **Okta**.

Este repositorio complementa el roadmap [cybersecurity-learning-roadmap](https://github.com/Echo506/cybersecurity-learning-roadmap) y el laboratorio [aws-iam-security-lab](https://github.com/Echo506/aws-iam-security-lab), extendiendo el enfoque de IAM hacia el mundo on-premise/híbrido (Active Directory), cloud (Azure/Entra ID), IDaaS (Okta), gestión de incidentes/solicitudes (ServiceNow) y administración de identidades, roles y privilegios en bases de datos.

## Objetivos de aprendizaje

- Comprender el ciclo de vida de un ticket (incidente, solicitud, problema, cambio) en ServiceNow u otro ITSM equivalente (Jira Service Management, Zendesk, Freshservice).
- Administrar identidades y grupos en Active Directory on-premise (usuarios, OUs, GPOs básicas).
- Sincronizar identidades entre Active Directory y Microsoft Entra ID (Azure AD Connect) para escenarios híbridos.
- Configurar autenticación y aprovisionamiento de usuarios en Okta (SSO, SCIM, MFA).
- Relacionar la gestión de identidades con la gestión de incidentes: cómo un cambio de acceso o un bloqueo de cuenta se documenta y resuelve vía ticketing.
- Crear y administrar identidades, roles y privilegios en bases de datos relacionales.
- Aplicar el principio de menor privilegio en Microsoft SQL Server, Oracle Database y PostgreSQL.
- Auditar usuarios, roles y permisos asignados en bases de datos.

## Módulos del laboratorio

| Módulo | Tema | Tiempo estimado |
|---|---|---|
| 01 | Fundamentos de ITSM y ServiceNow (tickets, incidentes, CMDB) | 2-3 horas |
| 02 | Active Directory: usuarios, grupos, OUs y GPOs | 3-4 horas |
| 03 | Microsoft Azure / Entra ID: usuarios, grupos, roles y sincronización con AD | 3-4 horas |
| 04 | Okta: SSO, aprovisionamiento SCIM y MFA | 2-3 horas |
| 05 | Integración: flujo de incidente de identidad de extremo a extremo (ticket -> AD/Entra/Okta -> resolución) | 2-3 horas |
| 06 | Identidades, roles y privilegios en bases de datos (SQL Server, Oracle y PostgreSQL) | 8-10 horas |

**Tiempo total estimado: 20-27 horas**

## Módulo 6: Identidades, roles y privilegios en bases de datos

Este módulo permite al estudiante crear y administrar identidades, roles y privilegios en bases de datos relacionales, aplicando principios de seguridad como el menor privilegio, la segregación de funciones y el control de acceso basado en roles.

### Motores de base de datos

- Microsoft SQL Server
- Oracle Database
- PostgreSQL

### Objetivos del módulo

- Diferenciar entre autenticación, autorización, usuario, rol y privilegio.
- Identificar riesgos por permisos excesivos o mal asignados.
- Crear usuarios y roles en SQL Server, Oracle y PostgreSQL.
- Asignar y revocar privilegios sobre bases de datos, esquemas, tablas y vistas.
- Aplicar el principio de menor privilegio.
- Diseñar una matriz de control de acceso.
- Realizar auditorías básicas de seguridad en bases de datos.
- Documentar usuarios, roles y accesos otorgados.

### Temas del módulo

- Fundamentos de seguridad en bases de datos.
- Autenticación y autorización.
- Identidades: usuarios, logins, cuentas de servicio y aplicaciones.
- Privilegios de sistema y privilegios de objeto.
- Roles y membresías.
- Permisos directos e indirectos.
- Principio de menor privilegio.
- Segregación de funciones.
- Control de acceso basado en roles.
- Auditoría de usuarios, roles y permisos.
- Revocación de accesos innecesarios.
- Documentación de accesos.

### Laboratorios del Módulo 6

| Laboratorio | Motor | Objetivo |
|---|---|---|
| 6.1 | Microsoft SQL Server | Crear usuarios, roles y permisos |
| 6.2 | Oracle Database | Administrar usuarios, roles y privilegios |
| 6.3 | PostgreSQL | Implementar control de acceso basado en roles |
| 6.4 | Multi-motor | Auditar privilegios y crear matriz de acceso |

### Proyecto final del Módulo 6

Diseñar e implementar un modelo de control de acceso para la empresa ficticia **TechNova**, creando perfiles para administradores, analistas, operadores, consultores y auditores.

| Perfil | Permisos requeridos |
|---|---|
| Administrador | Crear tablas, insertar, actualizar, eliminar y administrar usuarios |
| Analista | Leer todas las tablas y ejecutar reportes |
| Operador | Insertar y actualizar registros de ventas |
| Consultor | Solo lectura de información pública |
| Auditor | Leer registros de auditoría sin modificar datos |

### Entregables del Módulo 6

- Scripts SQL.
- Capturas de pantalla.
- Matriz de control de acceso.
- Informe de auditoría.
- Documentación de usuarios, roles y permisos.

## Cómo usar este laboratorio

1. Sigue los módulos en orden; cada uno construye sobre el anterior.
2. Usa cuentas de prueba/trial (ServiceNow Developer Instance, Microsoft 365 Developer Tenant, Okta Developer Edition) — nunca uses cuentas de producción ni datos reales.
3. Cada módulo incluye una guía dentro de la carpeta `modules/` con objetivos, pasos, capturas sugeridas y checklist.
4. Documenta tu progreso (capturas, notas) como evidencia de portafolio para entrevistas de soporte técnico o SOC.
5. No subas credenciales, tokens ni datos sensibles a este repositorio; usa variables de entorno o archivos `.env` excluidos vía `.gitignore`.

## Requisitos previos

- Cuenta de prueba de [ServiceNow Developer Program](https://developer.servicenow.com/) (gratuita).
- Tenant de prueba de [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program) (incluye Azure AD/Entra ID).
- Cuenta de [Okta Developer Edition](https://developer.okta.com/) (gratuita).
- Máquina virtual o entorno de laboratorio con Windows Server (evaluación) para practicar Active Directory (por ejemplo, en VirtualBox/Hyper-V).
- Entorno de práctica para bases de datos: SQL Server, Oracle Live SQL o PostgreSQL en la nube.

## Estructura del repositorio

```text
it-identity-servicedesk-lab/
├── modules/
│   ├── 01-servicenow-fundamentals/
│   ├── 02-active-directory/
│   ├── 03-azure-entra-id/
│   ├── 04-okta-sso-scim/
│   ├── 05-incident-identity-integration/
│   └── 06-database-identities-roles-privileges/
│       ├── 01-teoria/
│       ├── 02-laboratorios/
│       ├── 03-proyecto-final/
│       └── 04-recursos/
└── README.md
```

## Recursos oficiales

- [Documentación de Microsoft Entra ID](https://learn.microsoft.com/en-us/entra/identity/)
- [Microsoft Entra Conditional Access](https://learn.microsoft.com/en-us/entra/identity/conditional-access/)
- [Microsoft SQL Server Security](https://learn.microsoft.com/en-us/sql/relational-databases/security/security-center-for-sql-server-database-engine-and-azure-sql-database)
- [Oracle Database Security Guide](https://docs.oracle.com/en/database/oracle/oracle-database/19/dbseg/)
- [PostgreSQL Roles](https://www.postgresql.org/docs/current/user-manag.html)
- [PostgreSQL GRANT](https://www.postgresql.org/docs/current/sql-grant.html)
- [PostgreSQL REVOKE](https://www.postgresql.org/docs/current/sql-revoke.html)
- [ServiceNow Developers](https://developer.servicenow.com/)

## Nota de seguridad

Este laboratorio es exclusivamente para fines educativos. Usa siempre entornos de prueba/sandbox, nunca sistemas de producción, y jamás incluyas credenciales, API keys o datos personales reales en el repositorio.
