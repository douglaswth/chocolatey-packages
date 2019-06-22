$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.9.2/right_st-windows-amd64.zip'
  checksum64     = '5855bc382f7b214dbaf35b6bceabd217705660cf435ca8f6b998340a6cbb5d40'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
