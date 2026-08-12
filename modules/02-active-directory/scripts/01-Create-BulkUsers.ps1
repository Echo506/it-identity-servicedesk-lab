<#
.SYNOPSIS
    Crea usuarios en Active Directory de forma masiva a partir de un archivo CSV.

.DESCRIPTION
    Script de laboratorio para practicar la creacion de cuentas de usuario en AD DS.
    Lee un archivo CSV con columnas: Nombre, Apellido, SamAccountName, OU, Departamento
    y crea cada usuario en la Unidad Organizativa (OU) especificada, con una contrasena
    temporal que el usuario debera cambiar en el primer inicio de sesion.

    USO EDUCATIVO UNICAMENTE. Ejecutar solo en un entorno de laboratorio/sandbox.
    Nunca uses datos personales reales ni credenciales de produccion.

.PARAMETER CsvPath
    Ruta al archivo CSV con los datos de los usuarios a crear.

.EXAMPLE
    .\01-Create-BulkUsers.ps1 -CsvPath ".\usuarios-prueba.csv"

.NOTES
    Requiere el modulo ActiveDirectory (RSAT) y permisos delegados para crear
    objetos de usuario en las OUs de destino. Ejecutar en el controlador de
    dominio o en una maquina con RSAT instalado.
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$CsvPath,

    # Contrasena temporal generica para el laboratorio.
    # En un entorno real, nunca se debe hardcodear una contrasena en un script.
    [string]$TempPassword = "CambieEstaClave!2026"
)

Import-Module ActiveDirectory -ErrorAction Stop

if (-not (Test-Path $CsvPath)) {
    Write-Error "No se encontro el archivo CSV en la ruta: $CsvPath"
    exit 1
}

$usuarios = Import-Csv -Path $CsvPath
$securePassword = ConvertTo-SecureString $TempPassword -AsPlainText -Force

foreach ($u in $usuarios) {
    $displayName = "$($u.Nombre) $($u.Apellido)"

    try {
        if (Get-ADUser -Filter "SamAccountName -eq '$($u.SamAccountName)'" -ErrorAction SilentlyContinue) {
            Write-Warning "El usuario $($u.SamAccountName) ya existe. Se omite."
            continue
        }

        New-ADUser `
            -Name $displayName `
            -GivenName $u.Nombre `
            -Surname $u.Apellido `
            -SamAccountName $u.SamAccountName `
            -UserPrincipalName "$($u.SamAccountName)@lab.local" `
            -Path $u.OU `
            -Department $u.Departamento `
            -AccountPassword $securePassword `
            -ChangePasswordAtLogon $true `
            -Enabled $true

        Write-Host "Usuario creado: $displayName ($($u.SamAccountName))" -ForegroundColor Green
    }
    catch {
        Write-Error "Error al crear el usuario $($u.SamAccountName): $_"
    }
}

Write-Host "Proceso completado." -ForegroundColor Cyan
