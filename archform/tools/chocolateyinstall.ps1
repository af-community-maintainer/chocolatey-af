$ErrorActionPreference = 'Stop'
$packageName = 'archform'
$url = 'https://download.archform.co/ArchForm_win_2_7_2.zip'
$checksum = 'f06cc66ad2f7930db38ea7ad22b1923349bdfc1c71c109c3149b045f161efb15'
$checksumType = 'sha256'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  url           = $url
  checksum      = $checksum
  checksumType  = $checksumType
}

Install-ChocolateyZipPackage @packageArgs
