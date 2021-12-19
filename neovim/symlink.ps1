$StartingLocation = Get-Location
Set-Location ~\AppData\Local
Remove-Item .\nvim
Set-Location $StartingLocation
New-Item -Path ~\AppData\Local\nvim -ItemType SymbolicLink -Value (Get-Item ".\nvim")
