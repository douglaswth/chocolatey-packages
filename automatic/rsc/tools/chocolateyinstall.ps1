$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/rsc/v6.10.1/rsc-windows-amd64.zip'
  checksum64     = '0b6736ab41ad98bb4769996b04b69c1c58c8b595487bb01c560a59aeb1c94e09'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
