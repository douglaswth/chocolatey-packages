$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/fpt/v1.2.1/fpt-windows-amd64.zip'
  checksum64     = 'b0a20322818de2edd318f4d47bc9a3cb1448657b0cc29d8c62fc8a394a35dd12'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
