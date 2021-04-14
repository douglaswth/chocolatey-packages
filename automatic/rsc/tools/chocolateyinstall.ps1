$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/rsc/v9.0.0/rsc-windows-amd64.zip'
  checksum64     = 'ba83f4be8dce604468523cd0150cff70aa7229d3192c67a5001290ee0a3bd4dd'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
