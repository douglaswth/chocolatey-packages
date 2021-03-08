$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$installDir = Join-Path (Get-ToolsLocation) 'bluebrick'
$blueBrickExe = Join-Path $installDir 'BlueBrick.exe'
$blueBrickLnk = Join-Path ([System.Environment]::GetFolderPath('CommonPrograms')) 'BlueBrick.lnk'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $installDir
  url           = 'https://bluebrick.lswproject.com/download/BlueBrick.1.9.1.zip'
  checksum      = '2fc69f384a1232d8e33cf3fb91cda0d2b8e876cbcdb072e5acfe4da2153b72c5'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyShortcut `
  -ShortcutFilePath $blueBrickLnk `
  -TargetPath $blueBrickExe `
  -Description 'Plan LEGO® Layout with BlueBrick'
Install-BinFile -Name BlueBrick -Path $blueBrickExe -UseStart
