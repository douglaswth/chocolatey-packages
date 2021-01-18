$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$blueBrickExe = Join-Path $toolsDir 'BlueBrick.exe'
$blueBrickLnk = Join-Path ([System.Environment]::GetFolderPath('CommonPrograms')) 'BlueBrick.lnk'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = 'https://bluebrick.lswproject.com/download/BlueBrick.1.9.0.zip'       # BlueBrick
  checksum      = 'e94924e9d0e529ee65990615429deda927923f8b65852205ebe4ef78bd53d820'    # BlueBrick
  checksumType  = 'sha256'                                                              # BlueBrick
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyShortcut `
  -ShortcutFilePath $blueBrickLnk `
  -TargetPath $blueBrickExe `
  -Description 'Plan LEGO® Layout with BlueBrick'
