$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.7/aws-iam-authenticator_0.7.7_windows_amd64.exe'
  checksum64     = '03d78c7b93370a5a384351260557327eaee23d0db2784758f12146b7464366cc'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
