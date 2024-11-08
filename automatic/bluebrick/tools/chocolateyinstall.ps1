$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$installDir = Join-Path (Get-ToolsLocation) 'bluebrick'
$blueBrickExe = Join-Path $installDir 'BlueBrick.exe'
$blueBrickLnk = Join-Path ([System.Environment]::GetFolderPath('CommonPrograms')) 'BlueBrick.lnk'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $installDir
  url           = 'https://bluebrick.lswproject.com/download/BlueBrick.1.9.2.zip'
  checksum      = '4e0682a9083b4026cbf2a03e71dc9e8b3865cc72e3beac65c299197c7e492847'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyShortcut `
  -ShortcutFilePath $blueBrickLnk `
  -TargetPath $blueBrickExe `
  -Description 'Plan LEGO® Layout with BlueBrick'
Install-BinFile -Name BlueBrick -Path $blueBrickExe -UseStart
