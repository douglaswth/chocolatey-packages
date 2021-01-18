$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$installDir = Join-Path (Get-ToolsLocation) 'bluebrick'
$blueBrickExe = Join-Path $installDir 'BlueBrick.exe'
$blueBrickLnk = Join-Path ([System.Environment]::GetFolderPath('CommonPrograms')) 'BlueBrick.lnk'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $installDir
  url           = 'https://bluebrick.lswproject.com/download/BlueBrick.1.9.0.zip'
  checksum      = 'e94924e9d0e529ee65990615429deda927923f8b65852205ebe4ef78bd53d820'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyShortcut `
  -ShortcutFilePath $blueBrickLnk `
  -TargetPath $blueBrickExe `
  -Description 'Plan LEGO® Layout with BlueBrick'
Install-BinFile -Name BlueBrick -Path $blueBrickExe -UseStart
