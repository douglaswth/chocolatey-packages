$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.6.2/right_st-windows-amd64.zip'
  checksum64     = '1d09c68dc6fec430e6cc3e4ab2fe49f1614c077d280b66ca349efaad2070ffaf'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
