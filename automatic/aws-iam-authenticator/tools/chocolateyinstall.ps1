$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.13/aws-iam-authenticator_0.7.13_windows_amd64.exe'
  checksum64     = '320f14d5529737d95677946277bd1c9196d8c4e0fcafeba3d727a09ee2f19864'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
