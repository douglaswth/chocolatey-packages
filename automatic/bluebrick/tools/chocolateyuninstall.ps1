$ErrorActionPreference = 'Stop';

$blueBrickLnk = Join-Path ([System.Environment]::GetFolderPath('CommonPrograms')) 'BlueBrick.lnk'

Remove-Item -Path $blueBrickLnk -Force | Out-Null
