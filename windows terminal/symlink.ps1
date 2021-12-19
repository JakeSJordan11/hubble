$StartingLocation = Get-Location
Set-Location $StartingLocation
$Path = '~\AppData\Local\Packages\Microsoft.WindowsTerminal_*\LocalState'
Set-Location $Path
Remove-Item .\settings.json
New-Item .\settings.json -ItemType SymbolicLink -Value (Get-Item "~\hubble\windows terminal\settings.json")
Set-Location $StartingLocation
