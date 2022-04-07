$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.5.6/aws-iam-authenticator_0.5.6_windows_amd64.exe'
  checksum64     = 'eb86f10ef97e593d8bf42c274fe44843a0deaacdc57b73ed5458e3e61a1ec5c1'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
