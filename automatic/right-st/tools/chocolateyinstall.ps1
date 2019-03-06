$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.8.1/right_st-windows-amd64.zip'
  checksum64     = '1c37acd9b6ead1d5a15859d591aafbb3111a5d617b0e780603c319f50ebf5cb4'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
