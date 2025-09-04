$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.6/aws-iam-authenticator_0.7.6_windows_amd64.exe'
  checksum64     = '2100bf0b1abe60c4456df5c8c2458b04f6f3a41ef19cde6ecf9623bdc20270b1'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
