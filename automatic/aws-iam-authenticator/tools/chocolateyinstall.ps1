$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.21/aws-iam-authenticator_0.7.21_windows_amd64.exe'
  checksum64     = '4cdcb9073ecfdc8d6fa63973bf446050266e7d8f41763bdd66f2c1ddf4cbdfc2'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
