$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.9.0/right_st-windows-amd64.zip'
  checksum64     = '108b6902a4844a75cbdf54aabff47c78417f4243b902ad4e8c6c6867212de9fb'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
