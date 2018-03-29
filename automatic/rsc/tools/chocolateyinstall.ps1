$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/rsc/v6.8.0/rsc-windows-amd64.zip'
  checksum64     = '0a485109b49d8cf503ac660b714cbac325e226a674381e2027693ac79e893de5'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
