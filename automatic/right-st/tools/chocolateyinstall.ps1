$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/right_st/v1.7.3/right_st-windows-amd64.zip'
  checksum64     = '142dc2a5826a2923133633f9b505539ee21be6d0b488d81cc262eb97c0b8eb9c'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
