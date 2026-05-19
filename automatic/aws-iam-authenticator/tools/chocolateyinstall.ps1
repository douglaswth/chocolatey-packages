$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.16/aws-iam-authenticator_0.7.16_windows_amd64.exe'
  checksum64     = '1fb1a49bbcc5ad3ee4da8796d03fe9cd90777c5be9e812a95c83ce165e35618f'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
