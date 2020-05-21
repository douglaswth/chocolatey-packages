$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/fpt/v1.1.2/fpt-windows-amd64.zip'
  checksum64     = '9d1ed9585cea5732e76872f8c5f1591b8b39fb9fb1136f92ecee4c93d42d8290'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
