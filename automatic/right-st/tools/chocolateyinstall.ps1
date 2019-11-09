$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.9.4/right_st-windows-amd64.zip'
  checksum64     = '0321a05b1c1866a7d6b5e6c62324c03cf56c6e82147d36a023c6ff76357ef013'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
