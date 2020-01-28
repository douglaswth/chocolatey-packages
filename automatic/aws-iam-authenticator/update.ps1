Import-Module au

$latest_release = 'https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/latest'

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $latest_release -UseBasicParsing
  $regex = '^.+/aws-iam-authenticator_(\d+\.\d+\.\d+)_windows_amd64\.exe$'
  $url64 = "https://github.com$($download_page.Links | Where-Object href -Match $regex | Select-Object -First 1 -ExpandProperty href)"
  $version = $url64 -replace $regex, '$1'
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
