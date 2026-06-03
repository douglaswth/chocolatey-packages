$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.17/aws-iam-authenticator_0.7.17_windows_amd64.exe'
  checksum64     = 'c6d3743c75e999e69bf8f79d758425c7bb9fdb7654fd5edf3e4f24aca2932635'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
