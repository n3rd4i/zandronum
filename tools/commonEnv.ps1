# Common env vars
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$AppName = 'Zandronum'
$installLocation = "$(Join-Path $toolsDir $AppName)"
$startMenuDir = [IO.Path]::Combine($ENV:ProgramData, 'Microsoft\Windows\Start Menu\Programs', $AppName)

$envZandronum = 'ZANDRONUM_INSTALL_DIR'
$cfgDir = [IO.Path]::Combine($ENV:LocalAppData, 'VirtualStore\ProgramData\chocolatey\lib\zandronum\tools', $AppName)
# $workDir = [IO.Path]::Combine($ENV:UserProfile, $AppName)
$workDir = $cfgDir
