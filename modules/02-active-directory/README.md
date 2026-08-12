# Modulo 02: Active Directory (Usuarios, Grupos, OUs y GPOs)

**Tiempo estimado: 3-4 horas**

## Objetivo

Administrar identidades en un entorno on-premise usando Active Directory Domain Services (AD DS): crear usuarios y grupos, organizar la estructura con Unidades Organizativas (OUs) y aplicar politicas basicas mediante Group Policy Objects (GPOs).

## Prerequisitos

- Una VM con Windows Server (version de evaluacion, 180 dias gratis) ejecutandose en VirtualBox, Hyper-V o VMware Workstation.
- Conocimientos basicos de administracion de Windows Server.
- (Opcional) Una segunda VM con Windows 10/11 para unirla al dominio y probar GPOs.

## Arquitectura del laboratorio

- **Controlador de dominio (DC)**: VM con el rol AD DS instalado, promovida a controlador de dominio (ejemplo: `lab.local`).
- **Unidades Organizativas (OUs)**: estructura jerarquica para organizar usuarios, grupos y equipos (ejemplo: `Soporte`, `SOC`, `Gerencia`).
- **Usuarios y grupos**: cuentas de prueba organizadas por departamento, con grupos de seguridad para aplicar permisos.
- **GPOs**: politicas aplicadas a nivel de OU (ejemplo: bloqueo de pantalla tras inactividad, restriccion de panel de control).

## Practica sugerida

1. Instalar el rol Active Directory Domain Services y promover el servidor a controlador de dominio.
2. Crear una estructura de OUs (ejemplo: `Soporte`, `SOC`, `Gerencia`).
3. Crear usuarios de prueba dentro de cada OU (nunca usar datos personales reales).
4. Crear grupos de seguridad (ejemplo: `GG_Soporte_L1`, `GG_SOC_Analistas`) y asignar usuarios.
5. Crear una GPO simple (ejemplo: bloqueo de pantalla tras 10 minutos de inactividad) y enlazarla a una OU.
6. Unir una VM cliente al dominio y verificar que la GPO se aplica correctamente (`gpupdate /force` y `gpresult /r`).
7. Documentar el proceso con capturas de pantalla.

## Scripts de automatizacion

Esta carpeta del modulo incluye scripts de PowerShell para automatizar tareas administrativas comunes de AD. Ver [modules/02-active-directory/scripts](./scripts/README.md) para el detalle y ejemplos de uso:

- `01-Create-BulkUsers.ps1`: creacion masiva de usuarios desde un archivo CSV.
- `02-Unlock-ResetPassword.ps1`: desbloqueo de cuentas y reseteo de contrasena.
- `03-Get-InactiveUsersReport.ps1`: reporte de cuentas inactivas para revision de seguridad.

## Checklist

- [ ] Controlador de dominio instalado y promovido.
- [ ] Estructura de OUs creada.
- [ ] Usuarios y grupos de prueba creados y organizados.
- [ ] GPO creada, enlazada y verificada en un cliente unido al dominio.
- [ ] Capturas de pantalla documentadas.
- [ ] Scripts de automatizacion revisados y probados en el laboratorio.

## Recursos sugeridos

- Documentacion oficial de Microsoft sobre Active Directory Domain Services.
- Guias de Microsoft Learn: "Active Directory Domain Services Overview".
- Documentacion sobre Group Policy (GPO) en Microsoft Learn.

## Resultado esperado

Poder explicar la jerarquia de un dominio de Active Directory (dominio, OUs, usuarios, grupos), crear y aplicar una GPO basica, y entender como estos conceptos sirven de base para la sincronizacion con la nube en el siguiente modulo.

> Anterior: [Modulo 01 - Fundamentos de ITSM y ServiceNow](../01-servicenow-fundamentals/README.md)

> Siguiente: [Modulo 03 - Microsoft Azure / Entra ID](../03-azure-entra-id/README.md)
