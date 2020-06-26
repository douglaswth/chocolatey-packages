$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/fpt/v1.1.3/fpt-windows-amd64.zip'
  checksum64     = '6d4b7870b4283e3a0335de69fcc87540790291f7e8dace03cb992b8a9c3e0700'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
