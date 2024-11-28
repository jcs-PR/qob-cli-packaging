$ErrorActionPreference = 'Stop';

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = "https://github.com/cl-qob/cli/releases/download/$($env:ChocolateyPackageVersion)/qob_$($env:ChocolateyPackageVersion)_win-x64.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksumType  = 'sha256'
  checksum64    = '2446c0662b0e62afdf938318d506f6d00ba2078cbc35a4a436beef32a97ab16b'
}

Install-ChocolateyZipPackage @packageArgs
