$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://github.com/flexera-public/policy_sdk/releases/download/v1.7.0/fpt-windows-amd64-v1.7.0.zip'
  checksum64     = '3c5c44bbb1c65cdf99fee8f05687761e024148a6005f4a0b09724be45f992cf2'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
