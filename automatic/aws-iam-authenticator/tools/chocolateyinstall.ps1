$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.5.1/aws-iam-authenticator_0.5.1_windows_amd64.exe'
  checksum64     = '7ce1508e6d371c6fa6d9835638861995dddb47f774319f12a61e9f88687bd9f4'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
