$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://binaries.rightscale.com/rsbin/rsc/v6.4.1/rsc-windows-amd64.zip'
  checksum64     = '6a953408725537a9ca2e75ddb594eb37e5e72d925d271b2e92bca2a664b4542a'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
