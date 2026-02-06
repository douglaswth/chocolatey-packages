Import-Module au

$latest_release = 'https://bluebrick.lswproject.com/download.html'

function global:au_GetLatest {
    $ProgressPreference = 'SilentlyContinue'
    $download_page = Invoke-WebRequest -Uri $latest_release -UseBasicParsing
    $regex = '^.+/BlueBrick\.(\d+\.\d+\.\d+)\.zip$'
    $url = $download_page.Links | Where-Object href -Match $regex | Select-Object -First 1 -ExpandProperty href
    $url = [System.Uri]::new([System.Uri]$latest_release, $url).AbsoluteUri
    $version = $url -replace $regex, '$1'
    return @{ Version = $version; URL32 = $url }
}

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(\s+url\s+=\s+)('.*')"          = "`$1'$($Latest.URL32)'"
            "(\s+checksum\s+=\s+)('.*')"     = "`$1'$($Latest.Checksum32)'"
            "(\s+checksumType\s+=\s+)('.*')" = "`$1'$($Latest.ChecksumType32)'"
        }
    }
}

update -ChecksumFor 32
