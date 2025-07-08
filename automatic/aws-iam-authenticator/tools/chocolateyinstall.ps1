$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.4/aws-iam-authenticator_0.7.4_windows_amd64.exe'
  checksum64     = 'f29568b436623edf4ac7646dddc5cd3edcdbd037363273d14d8f44050bbba481'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
