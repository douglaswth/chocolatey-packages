$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/rsc/v8.0.0/rsc-windows-amd64.zip'
  checksum64     = '960730a54f9f1f0023dcc57177a1408e250184d0ab8d16380445e09ee4537567'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
