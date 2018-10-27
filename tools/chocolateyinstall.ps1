$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/chatty/chatty/releases/download/v$($env:chocolateyPackageVersion)/Chatty_$($env:chocolateyPackageVersion)_win_standalone.zip"


$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'chatty*'

  checksum      = 'b57eb0e7d65f479e8088b3646726a24e57d9bbb4534d280dc42bcd4c77f1d848'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage $packageName -UnzipLocation $toolsDir -Url $url -Checksum $checksum -ChecksumType $checksumType -Url64bit $url64 -Checksum64 $checksum64 -ChecksumType64 $checksumType64
