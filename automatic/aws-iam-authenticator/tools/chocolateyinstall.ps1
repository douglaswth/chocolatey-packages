$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.5.9/aws-iam-authenticator_0.5.9_windows_amd64.exe'
  checksum64     = 'b7345e06c5f1d31b9459a38baffe0744343711cb5042cb31ff1e072d870c42f9'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
