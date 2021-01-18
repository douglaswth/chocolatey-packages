Import-Module au

$branches = 'https://github.com/rightscale/rsc/branches/all'

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $branches -UseBasicParsing
  $regex = '^/rightscale/rsc/tree/(v\d+\.\d+\.\d+)$'
  $tree = $download_page.Links | Where-Object href -Match $regex | Select-Object -First 1 -ExpandProperty href
  $branch = $tree -replace $regex, '$1'
  $version = $branch.Substring(1)
  $url64 = "https://binaries.rightscale.com/rsbin/rsc/$branch/rsc-windows-amd64.zip"
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
