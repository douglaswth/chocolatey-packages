$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.15/aws-iam-authenticator_0.7.15_windows_amd64.exe'
  checksum64     = 'c31495cf6713eafbd0cc73f12e98daab9ff61e72aa96e3292142a51c03a55d6e'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
