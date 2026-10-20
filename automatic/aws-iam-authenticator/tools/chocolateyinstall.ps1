$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.23/aws-iam-authenticator_0.7.23_windows_amd64.exe'
  checksum64     = 'f19620486b58a41c2eb2e38c736747965bd86cb859191a2e544ca1bacb76346f'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
