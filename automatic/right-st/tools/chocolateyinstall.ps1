$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.7.2/right_st-windows-amd64.zip'
  checksum64     = 'fe3d6523e8d681bb473ee778bef9e991b5a9aafa45af9cdc63375ead6bd32864'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
