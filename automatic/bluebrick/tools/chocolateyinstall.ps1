$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$blueBrickExe = Join-Path $toolsDir 'BlueBrick.exe'
$blueBrickLnk = Join-Path ([System.Environment]::GetFolderPath('CommonPrograms')) 'BlueBrick.lnk'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = 'https://bluebrick.lswproject.com/download/BlueBrick1.8.2.zip'       # BlueBrick
  checksum      = '37645dc4fe22193843b8b662eda983192eaf92b88f5cf0b9542311bbc0857ae7'    # BlueBrick
  checksumType  = 'sha256'                                                              # BlueBrick
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyShortcut `
  -ShortcutFilePath $blueBrickLnk `
  -TargetPath $blueBrickExe `
  -Description 'Plan LEGO® Layout with BlueBrick'
