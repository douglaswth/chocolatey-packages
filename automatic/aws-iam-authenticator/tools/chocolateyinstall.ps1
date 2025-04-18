$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.1/aws-iam-authenticator_0.7.1_windows_amd64.exe'
  checksum64     = 'a17a82b412f81b8122a16d3bffa3e7a34a25a816db8c7274116cdd84ea1d69c2'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
