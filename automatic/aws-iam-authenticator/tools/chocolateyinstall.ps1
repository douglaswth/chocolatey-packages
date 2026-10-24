$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.24/aws-iam-authenticator_0.7.24_windows_amd64.exe'
  checksum64     = 'eb35cf2c8d87a1dce3ee3de49c84c4ac26b5d8c930e20eaf812f62800da955fa'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
