$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/fpt/v1.2.2/fpt-windows-amd64.zip'
  checksum64     = 'd9c4764ec16ad0dab4454f27b56beaacc44917357efc4d04e533ad85c1041c81'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
