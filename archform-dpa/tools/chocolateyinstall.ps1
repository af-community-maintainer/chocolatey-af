$ErrorActionPreference = 'Stop'
$packageName = 'archform-dpa'
$url = 'https://download.archform.co/ArchForm_win_dpa_2_7_2_0.zip'
$checksum = 'faf783624bcbabb41d00fc187035cc8d6fcee7d1111055c04f32eff2bed796ce'
$checksumType = 'sha256'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  url           = $url
  checksum      = $checksum
  checksumType  = $checksumType
}

Install-ChocolateyZipPackage @packageArgs
