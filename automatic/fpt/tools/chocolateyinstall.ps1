$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/fpt/v1.4.0/fpt-windows-amd64.zip'
  checksum64     = '5ae5b1dcbc14221064fb196a3d4d6354655e5f83017646f01a02096a3632236d'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
