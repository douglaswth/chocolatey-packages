$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/fpt/v1.0.8/fpt-windows-amd64.zip'
  checksum64     = '0a68cd97aa281d86354071d9eea39e1881ab14f9f2a771c23ce876cbe80eab62'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
