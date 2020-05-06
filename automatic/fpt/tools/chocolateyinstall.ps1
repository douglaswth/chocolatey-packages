$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/fpt/v1.1.0/fpt-windows-amd64.zip'
  checksum64     = 'b81f0d091ca1f0f0f6fa18affb23e4dad220bddaa61f39885f4299512f014f21'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
