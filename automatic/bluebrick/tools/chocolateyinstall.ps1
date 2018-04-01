$ErrorActionPreference = 'Stop';

$packageName  = $env:ChocolateyPackageName
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$blueBrickExe = Join-Path $toolsDir 'BlueBrick.exe'
$blueBrickLnk = Join-Path ([System.Environment]::GetFolderPath('CommonPrograms')) 'BlueBrick.lnk'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = 'https://bluebrick.lswproject.com/download/BlueBrick1.8.1.zip'        # BlueBrick
  checksum      = '1bce9fe3e3ff1595ddab07765aaa8232362e34a4a4d666dab5d0573eb4725f4a'    # BlueBrick
  checksumType  = 'sha256'                                                              # BlueBrick
}
$partsPackageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = 'https://bluebrick.lswproject.com/download/AllAdditionalParts.zip'
  checksum      = 'f728151147d8c862ce88e50f1bf9cb2b748734f52417be8bb9c11fdf60f2150b'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyZipPackage @partsPackageArgs
Install-ChocolateyShortcut `
  -ShortcutFilePath $blueBrickLnk `
  -TargetPath $blueBrickExe `
  -Description 'Plan LEGO® Layout with BlueBrick'
