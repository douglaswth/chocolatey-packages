$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\aws-iam-authenticator.exe"
  url64bit       = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.7.3/aws-iam-authenticator_0.7.3_windows_amd64.exe'
  checksum64     = '0fd21d39cb4f108baf2074afe31502b808bb0ff5423c259bffa9079af47fc9f7'
  checksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
