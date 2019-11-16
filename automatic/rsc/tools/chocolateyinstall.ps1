$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/rsc/v7.0.1/rsc-windows-amd64.zip'
  checksum64     = '317faf23a4e26e61140236b2e05faed5a19fdf069ef2de8afcb578a67b820df7'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
