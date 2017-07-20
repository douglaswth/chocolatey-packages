$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/rsc/v6.5.0/rsc-windows-amd64.zip'
  checksum64     = 'a2906b0460ed5e7c9c326879c22349065a96947f55b79a82bab5fe253df992e6'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
