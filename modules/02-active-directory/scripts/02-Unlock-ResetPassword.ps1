<#
.SYNOPSIS
    Desbloquea una cuenta de usuario en Active Directory y/o restablece su contrasena.

.DESCRIPTION
    Script de laboratorio que replica una de las tareas mas comunes de un analista
    de soporte tecnico (Nivel 1): desbloquear una cuenta de usuario bloqueada por
    intentos fallidos de inicio de sesion, y opcionalmente asignar una contrasena
    temporal forzando el cambio en el siguiente inicio de sesion.

    Pensado para usarse junto con el Modulo 05 (Integracion de Incidentes e Identidad):
    al recibir un ticket de "cuenta bloqueada", el analista ejecuta este script para
    resolver el incidente y luego documenta la accion en el ticket.

    USO EDUCATIVO UNICAMENTE. Ejecutar solo en un entorno de laboratorio/sandbox.

.PARAMETER SamAccountName
    Nombre de inicio de sesion (SamAccountName) del usuario a desbloquear.

.PARAMETER ResetPassword
    Switch opcional. Si se incluye, tambien restablece la contrasena del usuario
    a un valor temporal y obliga a cambiarla en el proximo inicio de sesion.

.EXAMPLE
    .\02-Unlock-ResetPassword.ps1 -SamAccountName "alopez"

.EXAMPLE
    .\02-Unlock-ResetPassword.ps1 -SamAccountName "alopez" -ResetPassword

.NOTES
    Requiere el modulo ActiveDirectory (RSAT) y permisos delegados de "Reset password"
    y "Unlock account" sobre la OU correspondiente (principio de menor privilegio:
    no se requiere ser Domain Admin para esta tarea).
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$SamAccountName,

    [switch]$ResetPassword,

    [string]$TempPassword = "CambieEstaClave!2026"
)

Import-Module ActiveDirectory -ErrorAction Stop

try {
    $usuario = Get-ADUser -Identity $SamAccountName -Properties LockedOut, PasswordLastSet -ErrorAction Stop
}
catch {
    Write-Error "No se encontro el usuario '$SamAccountName' en Active Directory."
    exit 1
}

Write-Host "Usuario encontrado: $($usuario.Name)" -ForegroundColor Cyan
Write-Host "Estado de bloqueo actual: $($usuario.LockedOut)"

if ($usuario.LockedOut) {
    Unlock-ADAccount -Identity $SamAccountName
    Write-Host "Cuenta desbloqueada correctamente." -ForegroundColor Green
}
else {
    Write-Host "La cuenta no estaba bloqueada. No se requiere accion de desbloqueo." -ForegroundColor Yellow
}

if ($ResetPassword) {
    $securePassword = ConvertTo-SecureString $TempPassword -AsPlainText -Force
    Set-ADAccountPassword -Identity $SamAccountName -NewPassword $securePassword -Reset
    Set-ADUser -Identity $SamAccountName -ChangePasswordAtLogon $true
    Write-Host "Contrasena restablecida. El usuario debera cambiarla en el proximo inicio de sesion." -ForegroundColor Green
}

Write-Host "Ticket sugerido: documentar causa raiz (bloqueo por intentos fallidos), accion tomada (desbloqueo/reset) y verificacion de acceso." -ForegroundColor Cyan
