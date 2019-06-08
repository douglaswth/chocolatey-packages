$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/rsc/v7.0.0/rsc-windows-amd64.zip'
  checksum64     = 'b05e6194b1fa882c8f5141aef2db2a554bb01b17fd79fbb07c775f1b75609142'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
