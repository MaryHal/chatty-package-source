$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/chatty/chatty/releases/download/v$($env:chocolateyPackageVersion)-emotefix/Chatty_$($env:chocolateyPackageVersion)-emotefix_windows_standalone_fixed.zip"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'chatty*'

  checksum      = '00524c8d1a4f7dd7ea5673b6d1fcb1b19637aad07ad857f8330ef1f4978a1bb6'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage $packageName -UnzipLocation $toolsDir -Url $url -Checksum $checksum -ChecksumType $checksumType -Url64bit $url64 -Checksum64 $checksum64 -ChecksumType64 $checksumType64
