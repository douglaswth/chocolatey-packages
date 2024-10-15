Import-Module au

$repo = 'https://github.com/kubernetes-sigs/aws-iam-authenticator'

function global:au_GetLatest {
  $release = Get-LatestReleaseOnGitHub -URL $repo -AccessToken $env:github_api_key
  $version = $release.Tag.trim('v.')
  $url64 = $release.Assets | Where-Object { $_.FileName -like '*_windows_amd64.exe' } | Select-Object -First 1 -ExpandProperty URL
  return @{ Version = $version; URL64 = $url64 }
}

function global:au_BeforeUpdate() {
  $algorithm = 'sha256'
  $Latest.Checksum64 = Get-RemoteChecksum $Latest.URL64 -Algorithm $algorithm
  $Latest.ChecksumType64 = $algorithm
}

function global:au_SearchReplace {
  @{
    'tools\chocolateyInstall.ps1' = @{
      "(^\s+url64bit\s+=\s+)('.*')"       = "`$1'$($Latest.URL64)'"
      "(^\s+checksum64\s+=\s+)('.*')"     = "`$1'$($Latest.Checksum64)'"
      "(^\s+checksumType64\s+=\s+)('.*')" = "`$1'$($Latest.ChecksumType64)'"
    }
  }
}

update -ChecksumFor none
