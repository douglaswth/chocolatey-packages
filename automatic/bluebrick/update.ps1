Import-Module au

$latest_release = 'https://bluebrick.lswproject.com/download.html'

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $latest_release
    $regex         = '^.+/BlueBrick(\d+\.\d+\.\d+)\.zip$'
    $url           = $download_page.Links | ? href -Match $regex | select -First 1 -ExpandProperty href
    $url           = [System.Uri]::new([System.Uri]$latest_release, $url).AbsoluteUri
    $version       = $url -replace $regex, '$1'
    return @{ Version = $version; URL32 = $url }
}

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(\s+url\s+=\s+)('.*')(\s+#\sBlueBrick)"          = "`$1'$($Latest.URL32)'`$3"
            "(\s+checksum\s+=\s+)('.*')(\s+#\sBlueBrick)"     = "`$1'$($Latest.Checksum32)'`$3"
            "(\s+checksumType\s+=\s+)('.*')(\s+#\sBlueBrick)" = "`$1'$($Latest.ChecksumType32)'`$3"
        }
    }
}

update -ChecksumFor 32
