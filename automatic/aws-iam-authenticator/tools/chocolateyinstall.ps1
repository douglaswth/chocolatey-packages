$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\aws-iam-authenticator.exe"
  url64bit      = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.4.0/aws-iam-authenticator_0.4.0_windows_amd64.exe'
  checksum64    = 'd26ccd0e83667f79dea88a72072371fd87c2023895417b54c2bd0e4c55d7d5fa'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs
