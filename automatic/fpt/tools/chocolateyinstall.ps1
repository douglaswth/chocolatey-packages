$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/fpt/v1.1.4/fpt-windows-amd64.zip'
  checksum64     = '633a04469ad89e4e672a6b71fa984d859160d902f53a436e78c6725b0b3962d0'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
