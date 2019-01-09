$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/rsc/v6.11.0/rsc-windows-amd64.zip'
  checksum64     = '6debdba725604c2288d55104511c43d3e6afaf4b049d38b93962d55bb0b54f4d'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
