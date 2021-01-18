$ErrorActionPreference = 'Stop';

$installDir = Join-Path (Get-ToolsLocation) 'bluebrick'
$blueBrickExe = Join-Path $installDir 'BlueBrick.exe'
$blueBrickLnk = Join-Path ([System.Environment]::GetFolderPath('CommonPrograms')) 'BlueBrick.lnk'

Uninstall-BinFile -Name BlueBrick -Path $blueBrickExe
Remove-Item -Path $blueBrickLnk -Force
Remove-Item -Path $installDir -Recurse -Force
