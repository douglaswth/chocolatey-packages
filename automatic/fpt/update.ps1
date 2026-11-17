Import-Module au

$latest_release = 'https://api.github.com/repos/flexera-public/policy_sdk/releases/latest'

function global:au_GetLatest {
  $release = Invoke-RestMethod -Uri $latest_release -UseBasicParsing
  $regex = '^fpt-windows-amd64-v(\d+\.\d+\.\d+)\.zip$'
  $asset = $release.assets | Where-Object name -Match $regex | Select-Object -First 1
  $version = $asset.name -replace $regex, '$1'
  return @{ Version = $version; URL64 = $asset.browser_download_url }
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

update -ChecksumFor 64
