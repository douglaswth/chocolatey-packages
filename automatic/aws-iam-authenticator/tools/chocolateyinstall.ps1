$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.20/aws-iam-authenticator_0.7.20_windows_amd64.exe'
  checksum64     = '6bc77f1c0f1737c0367b46e399af83d561feeb837c8668dbfa07818e53639abb'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
