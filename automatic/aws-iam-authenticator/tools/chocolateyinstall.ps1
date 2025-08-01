$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.5/aws-iam-authenticator_0.7.5_windows_amd64.exe'
  checksum64     = 'd65e2e36fb0d61107c0e0405100a5824d166e93917ae72384053bef07588a258'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
