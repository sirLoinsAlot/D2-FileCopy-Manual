. $PSScriptRoot\Configuration.ps1

Remove-Item $localSavePath\* -Recurse -Force

Copy-Item $backupSavePath\* $localSavePath
