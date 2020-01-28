$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.5.0/aws-iam-authenticator_0.5.0_windows_amd64.exe'
  checksum64     = '40ce29dbc020d91816cef3174d17eaee0a1263dd2ee3fd24a804a8e621dc9c1c'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
