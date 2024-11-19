$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.6.28/aws-iam-authenticator_0.6.28_windows_amd64.exe'
  checksum64     = '4e88da292a73dfc61cdc7b6ab2f6276c0c0cd3f2c9cbe364eb3f4b38c92e36c8'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
