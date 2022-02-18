$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.5.5/aws-iam-authenticator_0.5.5_windows_amd64.exe'
  checksum64     = '46654d5d6a1a8546911b61c4e0bf15cc17500bf4001d1e309b2809dbf54c1c5a'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
