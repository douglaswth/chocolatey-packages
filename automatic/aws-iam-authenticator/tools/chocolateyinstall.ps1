$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.22/aws-iam-authenticator_0.7.22_windows_amd64.exe'
  checksum64     = '81028e0bb90b0a2522c0daf1c24fb85ead568d89b2d6b261a23302eebb173971'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
