$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.9.1/right_st-windows-amd64.zip'
  checksum64     = 'fb874dbf2a9ffa99b472390b43644b055e81b599d3e2fb56bdbea7cfc84202ec'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
