$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.5.7/aws-iam-authenticator_0.5.7_windows_amd64.exe'
  checksum64     = '7aa1111392e3e06e15ecffec815827f8c8f81340307cee054c826dc42c6c92bd'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
