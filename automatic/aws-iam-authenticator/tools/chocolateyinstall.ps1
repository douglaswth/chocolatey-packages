$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.6.29/aws-iam-authenticator_0.6.29_windows_amd64.exe'
  checksum64     = '7a8eaa81d42ec7356ccf16c87c66bb660f8523f4e5c1fbf96d57ce93c87fc6dc'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
