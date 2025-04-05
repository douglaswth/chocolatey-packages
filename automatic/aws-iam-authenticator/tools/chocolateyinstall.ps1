$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.6.31/aws-iam-authenticator_0.6.31_windows_amd64.exe'
  checksum64     = '0a1aa391025cdfcf2c997a555f81e88367314d019650bdcff9b11bbbf9ac0d96'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
