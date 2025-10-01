$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.8/aws-iam-authenticator_0.7.8_windows_amd64.exe'
  checksum64     = 'e1cbce277131dd6cbe08d79975341e0aedac385ffc5bd8f792dcd849aeb6f5e1'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
