$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installLocation = "$ENV:LocalAppData\Programs\Zandronum"
New-Item -ItemType Directory -Force -Path $installLocation

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $installLocation
  url           = 'https://zandronum.com/downloads/zandronum3.0-win32-base.zip'
  softwareName  = 'zandronum*'
  checksum      = 'C76D74E4A66D371719BFF6D29DC078E8'
  checksumType  = 'md5'
}
Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyShortcut `
  -ShortcutFilePath "$ENV:UserProfile\Desktop\Zandronum.lnk" `
  -TargetPath "$installLocation\zandronum.exe" `
  -IconLocation "$installLocation\zandronum.exe" `
  -Description "Zandronum" `
  -WorkingDirectory "$installLocation"
