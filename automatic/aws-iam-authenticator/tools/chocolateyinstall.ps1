$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.12/aws-iam-authenticator_0.7.12_windows_amd64.exe'
  checksum64     = '7775502a7a031c126e10dd9f29c9ba7ca0fb0583ecd6c5ee9c08480b196d9eb9'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
