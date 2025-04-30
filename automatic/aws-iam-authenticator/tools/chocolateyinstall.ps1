$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.2/aws-iam-authenticator_0.7.2_windows_amd64.exe'
  checksum64     = 'e0d995aa69917661fd43d34f181a99ac6fb8609936f387df8c3a3d32bd40aa31'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
