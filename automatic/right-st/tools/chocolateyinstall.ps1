$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.9.3/right_st-windows-amd64.zip'
  checksum64     = '26f512a0843681fd260997f62e64c7aea3474cb52f384b7f7ca13a81c5bdd924'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
