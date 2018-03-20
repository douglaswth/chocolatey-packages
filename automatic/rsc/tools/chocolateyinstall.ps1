$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/rsc/v6.7.0/rsc-windows-amd64.zip'
  checksum64     = '6010523081996bf1229c6bdf55b7932f9b815c473bb4598581c4e418d4e3d05d'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
