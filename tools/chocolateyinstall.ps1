$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/chatty/chatty/releases/download/v$($env:chocolateyPackageVersion)/Chatty_$($env:chocolateyPackageVersion)_win_standalone.zip"


$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'chatty*'

  checksum      = 'c54504732eccac907b0c3c89a13624e2f5b3b0629e13f6621f22830590699104'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage $packageName -UnzipLocation $toolsDir -Url $url -Checksum $checksum -ChecksumType $checksumType -Url64bit $url64 -Checksum64 $checksum64 -ChecksumType64 $checksumType64
