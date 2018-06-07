$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/rsc/v6.9.0/rsc-windows-amd64.zip'
  checksum64     = '810eb404c4c83655e29ae4d3a9f8dd1dfccd8d3c9ef22d7a15602821bd533326'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
