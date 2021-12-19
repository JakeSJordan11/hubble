# set variable values
$StartingLocation = Get-Location
$Directory = '~\Documents\PowerShell\'
$ProfileScript = 'Microsoft.PowerShell_profile.ps1'
$ProfilePath = $Directory+$ProfileScript

# remove any previous powershell script
Set-Location $Directory
Remove-Item $ProfileScript

# create symbolic link to hubble powershell profile
Set-Location $StartingLocation
New-Item -Path $ProfilePath -ItemType SymbolicLink -Value (Get-Item $ProfileScript)
