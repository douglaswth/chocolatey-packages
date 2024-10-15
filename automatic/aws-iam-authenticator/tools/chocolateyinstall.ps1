$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.6.27/aws-iam-authenticator_0.6.27_windows_amd64.exe'
  checksum64     = '6ce12a69d0270d3ec97fcfc21caccd671b633ff51a31f41b0340dbe1c48bcba7'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
