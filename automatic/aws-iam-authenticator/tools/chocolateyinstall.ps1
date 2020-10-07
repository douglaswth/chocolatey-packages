$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.5.2/aws-iam-authenticator_0.5.2_windows_amd64.exe'
  checksum64     = '3e1143387b0b0fac1749139c431c730fba784225420b96dbbf859fb32630be25'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
