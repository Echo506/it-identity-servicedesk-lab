<#
.SYNOPSIS
    Genera un reporte de auditoria de cuentas de usuario inactivas o deshabilitadas en Active Directory.

.DESCRIPTION
    Script de laboratorio orientado a tareas de auditoria/SOC: identifica cuentas de
    usuario que no han iniciado sesion en los ultimos N dias (por defecto 30), asi como
    cuentas ya deshabilitadas, y exporta un reporte a CSV. Util para detectar cuentas
    huerfanas ("orphan accounts") que representan riesgo de seguridad si permanecen
    habilitadas sin uso.

    Relacionado con el Modulo 05 (Integracion de Incidentes e Identidad) y con las
    practicas de auditoria del laboratorio aws-iam-security-lab.

    USO EDUCATIVO UNICAMENTE. Ejecutar solo en un entorno de laboratorio/sandbox.

.PARAMETER DiasInactividad
    Numero de dias sin inicio de sesion para considerar una cuenta como inactiva.
    Valor por defecto: 30.

.PARAMETER RutaSalida
    Ruta del archivo CSV donde se guardara el reporte. Por defecto: .\reporte-cuentas-inactivas.csv

.EXAMPLE
    .\03-Get-InactiveUsersReport.ps1 -DiasInactividad 45 -RutaSalida "C:\Reportes\inactivos.csv"

.NOTES
    Requiere el modulo ActiveDirectory (RSAT). Solo requiere permisos de lectura
    sobre el dominio (no se necesitan permisos de escritura para generar el reporte).
#>

[CmdletBinding()]
param(
    [int]$DiasInactividad = 30,
    [string]$RutaSalida = ".\reporte-cuentas-inactivas.csv"
)

Import-Module ActiveDirectory -ErrorAction Stop

$fechaLimite = (Get-Date).AddDays(-$DiasInactividad)

Write-Host "Buscando cuentas sin inicio de sesion desde: $fechaLimite (o que nunca han iniciado sesion)" -ForegroundColor Cyan

$usuarios = Get-ADUser -Filter * -Properties LastLogonDate, Enabled, PasswordLastSet, DistinguishedName |
    Where-Object {
        ($_.LastLogonDate -lt $fechaLimite -or -not $_.LastLogonDate)
    } |
    Select-Object `
        Name, `
        SamAccountName, `
        Enabled, `
        @{Name = "UltimoInicioSesion"; Expression = { if ($_.LastLogonDate) { $_.LastLogonDate } else { "Nunca" } } }, `
        @{Name = "UltimoCambioContrasena"; Expression = { $_.PasswordLastSet } }, `
        DistinguishedName

if ($usuarios) {
    $usuarios | Sort-Object Enabled -Descending | Export-Csv -Path $RutaSalida -NoTypeInformation -Encoding UTF8

    $totalInactivos = $usuarios.Count
    $totalHabilitadosInactivos = ($usuarios | Where-Object { $_.Enabled -eq $true }).Count

    Write-Host "Reporte generado: $RutaSalida" -ForegroundColor Green
    Write-Host "Total de cuentas inactivas encontradas: $totalInactivos" -ForegroundColor Yellow
    Write-Host "De estas, cuentas HABILITADAS pero inactivas (revisar con prioridad): $totalHabilitadosInactivos" -ForegroundColor Red
}
else {
    Write-Host "No se encontraron cuentas inactivas con el criterio especificado." -ForegroundColor Green
}

Write-Host "Recomendacion: las cuentas habilitadas e inactivas deben revisarse y, de ser apropiado, deshabilitarse (Disable-ADAccount) siguiendo el proceso de gestion de cambios." -ForegroundColor Cyan
