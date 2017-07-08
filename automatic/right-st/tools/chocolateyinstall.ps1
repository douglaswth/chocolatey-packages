$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.6.1/right_st-windows-amd64.zip'
  checksum64     = 'e9757a64203634e8eeb887c08ab50672837f73b1d83dd6af0d5d94ed6dff11e7'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
