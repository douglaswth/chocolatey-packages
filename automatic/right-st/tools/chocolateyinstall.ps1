$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.8.0/right_st-windows-amd64.zip'
  checksum64     = 'fe666bb24d750231120632056daea64542dfcd18b604f8576a245c0a0bae7a26'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
