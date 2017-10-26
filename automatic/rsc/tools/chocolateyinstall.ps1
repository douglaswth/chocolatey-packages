$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/rsc/v6.6.0/rsc-windows-amd64.zip'
  checksum64     = '282f8664165677ba6a823bbdf079e302174e1aef882e399556aa4d96e02b3416'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
