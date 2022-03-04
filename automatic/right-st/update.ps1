Import-Module au

$latest_release = 'https://github.com/flexera-public/right_st/releases/latest'

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $latest_release -UseBasicParsing
  $regex = '^.+/v(\d+\.\d+\.\d+)/right_st-windows-amd64\.zip$'
  $url64 = $download_page.Links | Where-Object href -Match $regex | Select-Object -First 1 -ExpandProperty href
  $version = $url64 -replace $regex, '$1'
  return @{ Version = $version; URL64 = $url64 }
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
