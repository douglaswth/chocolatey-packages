$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.8.2/right_st-windows-amd64.zip'
  checksum64     = 'cb97877c9678952b33d4063e95190048735e68a14afe3316adf690427d46ba18'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
