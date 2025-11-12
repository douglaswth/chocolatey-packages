$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.9/aws-iam-authenticator_0.7.9_windows_amd64.exe'
  checksum64     = '9a75396b4f3ca9db36945832dad29d58bea05c06239f4655466b6095b2b184b2'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
