$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.19/aws-iam-authenticator_0.7.19_windows_amd64.exe'
  checksum64     = 'f6d280bcfb0b11b62f062ee0419aa11eeadef422bf7b4ec957aea88e6a76824a'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
