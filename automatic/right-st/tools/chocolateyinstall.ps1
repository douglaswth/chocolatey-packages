$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.7.1/right_st-windows-amd64.zip'
  checksum64     = 'ba981768a0eb4bf07305004506c25ca43142c0784a8688855428b75f607f9850'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
