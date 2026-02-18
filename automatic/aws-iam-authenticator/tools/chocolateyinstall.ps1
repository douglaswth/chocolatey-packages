$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.11/aws-iam-authenticator_0.7.11_windows_amd64.exe'
  checksum64     = 'e6bfb337fb129778b8e969c9724883edcaca2a87f5ab5d7b561b5f62d02859a4'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
