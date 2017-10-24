$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.7.0/right_st-windows-amd64.zip'
  checksum64     = '9df577e4500154a9878a58af0cddf16a7f01325e41a223dca0309b4a9b08ba0d'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
