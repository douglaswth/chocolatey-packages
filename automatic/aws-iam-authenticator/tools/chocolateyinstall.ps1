$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.5.3/aws-iam-authenticator_0.5.3_windows_amd64.exe'
  checksum64     = 'ecb113138db03de52d14f6974986a90ce6cab4dcb6f3073a9e363e79e4754233'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
