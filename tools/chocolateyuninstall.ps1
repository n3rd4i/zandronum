$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
. "$(Join-Path $toolsDir commonEnv.ps1)"

Uninstall-ChocolateyEnvironmentVariable `
  -VariableName $envZandronum `
  -VariableType Machine

Remove-Item $installLocation -exclude *.ini, *.zds -recurse -force
Remove-Item $shortcutPath -force
