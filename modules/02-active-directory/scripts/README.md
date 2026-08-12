# Active Directory Automation Scripts

This folder contains PowerShell scripts used to automate common Active Directory administrative tasks performed by IT Support / Identity Servicedesk teams. These scripts are designed for lab/training purposes and should be reviewed before use in a production environment.

## Scripts

### 01-Create-BulkUsers.ps1
Creates multiple Active Directory user accounts from a CSV input file. Useful for onboarding batches of new employees or populating a lab environment with test accounts.

**Usage:**
```powershell
.\01-Create-BulkUsers.ps1 -CsvPath "C:\Data\NewUsers.csv" -TargetOU "OU=Users,DC=lab,DC=local"
```

### 02-Unlock-ResetPassword.ps1
Unlocks a locked-out AD account and/or resets the user's password, forcing a change at next logon. Common first-line service desk action for lockout/password reset tickets.

**Usage:**
```powershell
.\02-Unlock-ResetPassword.ps1 -SamAccountName "jdoe" -NewPassword "TempPass123!" -Unlock
```

### 03-Get-InactiveUsersReport.ps1
Queries Active Directory for user accounts that have not logged on since a specified date threshold and exports the results to a CSV report, flagging enabled-but-inactive accounts as a security review priority.

**Usage:**
```powershell
.\03-Get-InactiveUsersReport.ps1 -DaysInactive 45 -RutaSalida "C:\Reports\InactiveUsers.csv"
```

## Notes
- All scripts require the ActiveDirectory PowerShell module (RSAT) and appropriate permissions.
- No credentials are hardcoded; parameters are passed at runtime.
- Intended for use in an isolated lab/training AD environment.
