$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.18/aws-iam-authenticator_0.7.18_windows_amd64.exe'
  checksum64     = '51fe83610dce3fd6efe6f97df91c93ce8f1b9fbb4eab48a541fc2a4016a2b24b'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
