. $PSScriptRoot\Configuration.ps1

If ($versioningOn -eq 1) {

    $folderExtension = Get-Date -Format "yyyy-MM-dd HH-mm"
    $foldername = 'save.{0}' -f ($folderExtension)

    $fileCount = ( Get-ChildItem $backupSavePath | Measure-Object ).Count

    New-Item -ItemType Directory -Force -Path $versioningPath\$foldername

    Copy-Item $backupSavePath\* $versioningPath\$foldername

    $currentCount = ( Get-ChildItem $versioningPath\$foldername | Measure-Object ).Count

    while($currentCount -ne $fileCount) {

        $currentCount = ( Get-ChildItem $versioningPath\$foldername | Measure-Object ).Count
    }
}

Remove-Item $backupSavePath\* -Recurse -Force

Copy-Item $localSavePath\* $backupSavePath
