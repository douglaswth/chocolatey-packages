$ErrorActionPreference = 'Stop';

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://binaries.rightscale.com/rsbin/rsc/v6.4.0/rsc-windows-amd64.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64
  checksum64    = '24bf87d8e029f4da6b0e96611f3bdc4ba746f5de59c93896c9fb22d88458ecda'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
