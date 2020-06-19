$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/rsc/v8.1.0/rsc-windows-amd64.zip'
  checksum64     = 'e4ee267fd7f3bdd0bdb37767b8cb5093dde7b34918365dbeded37c79b5f070a7'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
