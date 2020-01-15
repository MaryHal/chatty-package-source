$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/chatty/chatty/releases/download/v$($env:chocolateyPackageVersion)/Chatty_$($env:chocolateyPackageVersion)_win_standalone.zip"


$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'chatty*'

  checksum      = '67fc399507aa21252170f4ae1d13fea404512b42882e4ac7071cccdb6735c095'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage $packageName -UnzipLocation $toolsDir -Url $url -Checksum $checksum -ChecksumType $checksumType -Url64bit $url64 -Checksum64 $checksum64 -ChecksumType64 $checksumType64
