$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/fpt/v1.1.1/fpt-windows-amd64.zip'
  checksum64     = '5b9c529aabe174fb2f974dfe359ca4cbae679046550f4543ac47fd3d674e53d5'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
