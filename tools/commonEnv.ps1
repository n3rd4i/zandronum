# Common env vars
$AppName = 'Zandronum'
$installLocation = "$(Join-Path $toolsDir $AppName)"
$startMenuDir = [IO.Path]::Combine($ENV:ProgramData, 'Microsoft\Windows\Start Menu\Programs', $AppName)
$envZandronum = 'ZANDRONUM_INSTALL_DIR'