$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.14/aws-iam-authenticator_0.7.14_windows_amd64.exe'
  checksum64     = '21addb84116d3447df0edd53132159d0ea7c1a904a06075a16ebdffe85e65e7b'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
