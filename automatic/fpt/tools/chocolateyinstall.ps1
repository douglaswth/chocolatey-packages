$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/fpt/v1.2.0/fpt-windows-amd64.zip'
  checksum64     = '3351114235afc647bede8f2eecf2a053fb8cb7e85a5b21db272e9f59565c8b22'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
