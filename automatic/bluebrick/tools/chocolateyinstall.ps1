$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$installDir = Join-Path (Get-ToolsLocation) 'bluebrick'
$blueBrickExe = Join-Path $installDir 'BlueBrick.exe'
$blueBrickLnk = Join-Path ([System.Environment]::GetFolderPath('CommonPrograms')) 'BlueBrick.lnk'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $installDir
  url           = 'https://bluebrick.lswproject.com/download/BlueBrick.1.9.1.zip'
  checksum      = 'fa45e235c6c21a3ca98b47b3c4f958c24214e124a5c9fdda3bce0622cba4ef77'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyShortcut `
  -ShortcutFilePath $blueBrickLnk `
  -TargetPath $blueBrickExe `
  -Description 'Plan LEGO® Layout with BlueBrick'
Install-BinFile -Name BlueBrick -Path $blueBrickExe -UseStart
