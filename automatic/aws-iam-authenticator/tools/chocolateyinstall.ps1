$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.6.30/aws-iam-authenticator_0.6.30_windows_amd64.exe'
  checksum64     = 'f572178798a53c879454049c3ae488ab96d3dd354bd6ef1a89d4d9156e7e6a99'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
