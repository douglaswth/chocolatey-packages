$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/fpt/v1.3.0/fpt-windows-amd64.zip'
  checksum64     = 'cb360d26169529a338f28d5cb0cb4af3dbe512cb010fcae9681c28d2eab88630'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
