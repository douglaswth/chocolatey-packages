$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.6.3/right_st-windows-amd64.zip'
  checksum64     = '489bfc4cb2cd9ff2205fac581fa8be9241df8e4ac4ae59ec392abe648a23254b'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
