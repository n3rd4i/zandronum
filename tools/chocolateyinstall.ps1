$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
. "$(Join-Path $toolsDir commonEnv.ps1)"

$url = 'https://zandronum.com/downloads/zandronum3.0.1-win32-base.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $installLocation
  url           = $url
  checksum      = '26EE9B65FE9227F02283759DF89E316BC5104A28399134134EC323E4DD508272'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyEnvironmentVariable `
  -VariableName $envZandronum `
  -VariableValue "$installLocation" `
  -VariableType Machine

Install-ChocolateyShortcut `
  -ShortcutFilePath "$(Join-Path $startMenuDir Zandronum.lnk)" `
  -TargetPath "$(Join-Path $installLocation zandronum.exe)" `
  -IconLocation "$(Join-Path $installLocation zandronum.exe)" `
  -WorkingDirectory "$installLocation"
