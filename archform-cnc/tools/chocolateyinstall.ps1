$ErrorActionPreference = 'Stop'
$packageName = 'archform-cnc'
$url = 'https://download.archform.co/ArchForm_win_cnc_2_7_2_0.zip'
$checksum = 'f52a04a1b7796ee9e3ecc2bd35c936be0e35a968984de1a7006df3e283b2409a'
$checksumType = 'sha256'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  url           = $url
  checksum      = $checksum
  checksumType  = $checksumType
}

Install-ChocolateyZipPackage @packageArgs
