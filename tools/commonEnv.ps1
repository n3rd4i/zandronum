# Common env vars
$AppName = 'Zandronum'
$installLocation = "$(Join-Path $toolsDir $AppName)"
$startMenuDir = [IO.Path]::Combine($ENV:ProgramData, 'Microsoft\Windows\Start Menu\Programs', $AppName)
$envZandronum = 'ZANDRONUM_INSTALL_DIR'
$workDir = [IO.Path]::Combine($ENV:UserProfile, $AppName)

$cfgDir = [IO.Path]::Combine($ENV:LocalAppData, 'VirtualStore\ProgramData\chocolatey\lib\zandronum\tools', $AppName)
